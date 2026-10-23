# 1. Project Context & Objectives

## 1.1 Executive Summary
**Swiggy** is a major food delivery platform operating in India. A critical element of customer retention is the operational handling of incorrect, damaged, or delayed orders. This Business Requirements Document (BRD) analyzes the **Order Cancellation & Refund Workflow**, transforming a highly manual manual-intervention chat model into an **Automated Instant Resolution System**. 

## 1.2 Problem Statement
The current order-refund process relies heavily on customer support executives reviewing manual chat complaints. This leads to:
* **High Operational Costs:** Large customer support teams handling basic issues (e.g., missing tomato, wrong item).
* **High Average Handling Time (AHT):** Customers waiting 7–12 minutes on chat to get a resolution.
* **Customer Churn:** Frustration from rigid, script-based bot interactions before reaching a human.

## 1.3 Project Scope
* **In Scope:** Automated detection of missing/damaged items, photo-upload verification pipelines, instant Swiggy Money wallet or source account refund distribution logic, and automated fraud-detection checks based on historical customer claim limits.
* **Out of Scope:** Direct settlement negotiations with restaurant partners, processing delivery partner vehicle compliance, or logistics re-routing architectures.

## 1.4 Business Drivers & Success Metrics
The performance of the updated workflow will be measured against the following Key Performance Indicators (KPIs):

| KPI Metric | Current State Baseline | Target State Goal (6 Months Post-Launch) |
| :--- | :--- | :--- |
| **Average Handling Time (AHT)** | 9.5 Minutes | < 1.5 Minutes |
| **First Contact Resolution (FCR)** | 62% | > 88% |
| **Support Operational Cost** | Base Rate (100%) | Reduction of 35% |
| **Customer CSAT (Refunds)** | 3.2 / 5.0 | > 4.5 / 5.0 |

## 1.5 Stakeholders
* **Product Owner / Business Analyst:** Captures requirements and maps workflows.
* **Customer Support Operations Lead:** Manages support queue parameters and customer escalations.
* **Engineering Team (Backend/Frontend):** Implements automated validation layers and payment gateway webhooks.
* **Risk & Fraud Control Team:** Validates daily refund limits and suspicious transaction triggers.

## 1.6 Sources & Assumptions
* **Sources:** Swiggy App (Help & Support Menu), Swiggy Public Help & Policy Portals (https://swiggy.com), and public consumer complaints/reviews.
* **Access Date:** Accessed on 23 October 2026.
* **Assumptions:** Refund eligibility rules, verification SLAs, and automated thresholds shown here are simplified from public domain information for structural portfolio analysis.
