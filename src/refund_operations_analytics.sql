-- ====================================================================
-- SWIGGY AUTOMATED REFUND OPERATIONS & FRAUD PERFORMANCE METRICS
-- Author: Dasari Pallavi
-- Objective: Evaluate system KPIs (AHT, Refund Distribution, and Fraud Risk Flags)
-- ====================================================================

-- --------------------------------------------------------------------
-- QUERY 1: CORE BUSINESS KPI DASHBOARD
-- Calculates Total Orders, Total Refund Volume, and Average Handling Time (AHT)
-- --------------------------------------------------------------------
SELECT 
    COUNT(order_id) AS total_orders_reported,
    SUM(CASE WHEN refund_status = 'Approved' THEN refund_amount ELSE 0 END) AS total_amount_refunded,
    ROUND(AVG(EXTRACT(EPOCH FROM (resolution_time - claim_time)) / 60), 2) AS average_handling_time_minutes,
    ROUND((COUNT(CASE WHEN resolution_channel = 'Automated_System' AND refund_status = 'Approved' THEN 1 END) * 100.0) / COUNT(order_id), 2) AS self_service_automation_rate_pct
FROM 
    swiggy_refund_operations
WHERE 
    claim_date >= CURRENT_DATE - INTERVAL '30 days';


-- --------------------------------------------------------------------
-- QUERY 2: REFUND PAYMENT METHOD DISTRIBUTION
-- Tracks how many refunds are settled via Instant Swiggy Money Wallet vs. Source Banks
-- --------------------------------------------------------------------
SELECT 
    payout_method,
    COUNT(refund_id) AS total_transactions,
    SUM(refund_amount) AS total_payout_value,
    ROUND(AVG(EXTRACT(EPOCH FROM (settlement_time - approval_time))), 2) AS avg_settlement_seconds
FROM 
    swiggy_payout_ledger
WHERE 
    payout_status = 'Success'
GROUP BY 
    payout_method
ORDER BY 
    total_transactions DESC;


-- --------------------------------------------------------------------
-- QUERY 3: RISK CONTROL & REPEAT REFUND FRAUD MONITORING
-- Identifies high-risk accounts that have filed >= 2 separate refund claims within 
-- their last 5 historical completed orders, flag for security isolation.
-- --------------------------------------------------------------------
WITH UserClaimHistory AS (
    SELECT 
        user_id,
        order_id,
        claim_time,
        refund_amount,
        COUNT(order_id) OVER(
            PARTITION BY user_id 
            ORDER BY claim_time 
            ROWS BETWEEN 4 PRECEDING AND CURRENT ROW
        ) AS claims_in_last_five_orders
    FROM 
        swiggy_refund_operations
)
SELECT 
    user_id,
    COUNT(order_id) AS high_risk_claim_count,
    SUM(refund_amount) AS total_exploited_value
FROM 
    UserClaimHistory
WHERE 
    claims_in_last_five_orders >= 2
GROUP BY 
    user_id
HAVING 
    COUNT(order_id) >= 2
ORDER BY 
    total_exploited_value DESC;
