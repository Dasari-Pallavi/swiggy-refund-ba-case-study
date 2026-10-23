# 2. Process Mapping & Workflow Design

## 2.1 Current State (AS-IS) Workflow
1. **Initiation:** The customer notices a missing or damaged item in their order and taps "Help".
2. **Chat Bottleneck:** The customer clicks through a multi-tiered generic automated text tree.
3. **Queue Wait:** If the issue isn't resolved, the ticket routes to a live support executive queue. Average wait time: 4 minutes.
4. **Manual Validation:** The executive requests a photo, manually verifies it against the order invoice, and makes a judgment call.
5. **Approval Chain:** If the refund amount exceeds ₹500, the executive must seek manual Slack/tool approval from a Team Lead.
6. **Execution:** The refund is manually triggered to the bank account (taking 3–5 working days).

## 2.2 Future State (TO-BE) Workflow
The target process completely automates simple validation scenarios using rule engines and instant payout systems.

### Visual Architecture Flowchart
![Swiggy Automated Refund Flowchart](../assets/process-map.png)

## 2.3 Process Gaps & Pain Points
* **Pain Point 1: Rigid Tool Boundaries.** Support executives use disjointed backend panels, checking order details in one tab and triggering payouts in another.
* **Pain Point 2: Fraud Vulnerability.** No dynamic system checks if a user has claimed a "missing item" refund on consecutive orders, leading to balance leakage.
* **Pain Point 3: Delayed Satisfaction.** Waiting days for a banking refund over a missing ₹60 beverage causes negative review loops.
