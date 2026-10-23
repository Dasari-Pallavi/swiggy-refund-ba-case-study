# 6. KPIs, Risks, Assumptions & Project Constraints

## 6.1 Key Performance Indicators (KPIs)
These measurable metrics monitor whether the implemented automated refund changes successfully hit our target business benchmarks.

| KPI Metric Description | Baseline (Assumed) | Target Goal (6 Months Post-Launch) | Linked Objective |
| :--- | :--- | :--- | :--- |
| **Refund-Related Support Contacts** | 12 per 1,000 orders | 9.6 per 1,000 orders (−20%) | O1 |
| **Self-Service Resolution Rate** | 55% of claims | 70% of claims | O2 |
| **Average Refund Resolution Time** | 48 Hours | 36 Hours (−25%) | O4 |
| **Customer Satisfaction (Refund CSAT)** | 3.6 / 5.0 | 4.2 / 5.0 | O3 |
| **Auto-Approval System Accuracy** | Not Applicable | ≥ 98% (Weekly Audit Guardrail) | Finance Control |

## 6.2 Project Risk Matrix & Mitigation Strategy
This matrix identifies operational threats to the automated pipeline and details exact preventive actions.

| Identified Threat Risk | Likelihood | Impact | Practical Mitigation Strategy |
| :--- | :--- | :--- | :--- |
| **Auto-approval rules increase systemic fraud.** | Medium | High | Enforce strict ₹500 transaction maximum caps, dynamic account claim velocity limits, and run automated weekly data sampling reviews. |
| **Third-party banking settlement delays.** | High | Medium | Build explicit real-time timeline interfaces showing expected clearing windows directly on the tracker screen to avoid repeat chat inputs. |
| **Customer mobile notification fatigue.** | Medium | Low | Restrict proactive message dispatches strictly to the four foundational infrastructure milestones. |
| **Merchant partner dispute deductions pushback.** | Medium | Medium | Implement granular, transparent dashboard summary cards visible directly within the merchant panel app console. |

## 6.3 Strategic Assumptions & Constraints
* **Baseline Accuracy:** All performance baseline figures are explicitly classified as illustrative estimates since live internal corporate data repositories are confidential.
* **API Dependencies:** Assumes the processing payment gateway nodes expose granular transaction status changes securely via outward webhooks.
* **Timeline Constraints:** The execution lifecycle is rigidly constrained to a delivery window spanning 2 consecutive agile sprints of 2 weeks each.
