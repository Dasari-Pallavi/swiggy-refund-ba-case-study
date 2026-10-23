# 4. Requirements & Requirements Traceability Matrix (RTM)

## 4.1 Business Requirements (BR)
Business Requirements outline **what** high-level business goals the platform intends to achieve.

| ID | Requirement | Linked Objective |
|---|---|---|
| **BR-01** | Customers shall be able to view end-to-end refund status details. | O1, O3 |
| **BR-02** | The system shall provide clear approval/rejection reasons to users. | O3 |
| **BR-03** | Eligible low-value refunds shall be auto-approved without human agents. | O2, O4 |
| **BR-04** | The customer shall be shown explicit refund mode choices with processing timelines. | O3 |
| **BR-05** | Refund transaction abuse and revenue leakage patterns shall be monitored. | Finance Control |

## 4.2 Functional Requirements (FR)
Functional Requirements define **how** the system must behave under specific user interactions.

| ID | Requirement Description | Priority (MoSCoW) | Linked BR |
|---|---|---|---|
| **FR-01** | Show a visual timeline tracker interface (Requested > Approved > Initiated > Credited). | Must | BR-01 |
| **FR-02** | Trigger automated real-time Push, SMS, and Email logs on every status change event. | Must | BR-01 |
| **FR-03** | Display specific error codes and text explanations transparently upon claim rejection. | Must | BR-02 |
| **FR-04** | Auto-approve claims under ₹500 (configurable) when the account check passes rules. | Should | BR-03 |
| **FR-05** | Present side-by-side mode comparisons (Swiggy Money = Instant vs. Source Bank = 3-7 Days). | Should | BR-04 |
| **FR-06** | Guide user uploads via native interface overlays (size restrictions, frame targets, re-try flags). | Should | PP-03 |
| **FR-07** | Flag and isolate user profiles tracking abnormal claim intervals directly to a Fraud queue. | Could | BR-05 |
| **FR-08** | Dispatch automated transactional dispute outcome summaries to restaurant dashboards. | Could | PP-08 |

## 4.3 Non-Functional Requirements (NFR)
Non-Functional Requirements represent operational constraints defining **how well** the system must work.

| ID | Category | Requirement Description |
|---|---|---|
| **NFR-01** | Performance | The dynamic refund tracker page must load inside **2.0 seconds** under 3G connections. |
| **NFR-02** | Availability | The core refund automation API microservice must maintain **99.9% uptime** annually. |
| **NFR-03** | Security | All customer banking info must be tokenized and masked in logs to align with **PCI-DSS**. |
| **NFR-04** | Audit | Every automated ledger decision must log an immutable audit trail with an actor timestamp. |
| **NFR-05** | Accessibility | System layout workflows must pass **WCAG 2.1 AA** color contrast and screen-reader standards. |
| **NFR-06** | Scalability | System infrastructure must auto-scale to process up to **15,000 requests/min** during dinner peaks. |

## 4.4 Requirements Traceability Matrix (RTM)
The RTM maps links directly backwards from user stories to business objectives to ensure nothing is missed.

| Business Objective | Business Requirement (BR) | Functional Requirement (FR) | Linked User Story |
| :--- | :--- | :--- | :--- |
| O1 / O3 | BR-01 | FR-01, FR-02 | US-01, US-02 |
| O3 | BR-02 | FR-03 | US-03 |
| O2 / O4 | BR-03 | FR-04 | US-04 |
| O3 | BR-04 | FR-05 | US-05 |
| Control | BR-05 | FR-07 | US-07 |
| O2 | BR-03 | FR-06 | US-06 |
| Partner | BR-02 | FR-08 | US-08 |
