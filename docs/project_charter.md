# Cyclistic Bike-Share Membership Conversion Strategy

**Project:** Cyclistic Bike-Share Membership Conversion Strategy  
**Version:** 1.0  
**Status:** Foundation Established

## Executive Summary

Cyclistic's growth has historically been driven by broad, transactional customer acquisition. To stabilise long-term cash flow and maximise Customer Lifetime Value (LTV), the company is pivoting towards a high-retention annual membership model.

This analysis identifies the behavioural drivers of high-intent casual riders, providing actionable customer segmentation to enable targeted, data-backed marketing interventions that improve marketing ROI and accelerate annual membership conversion.

## Business Goal

Accelerate the conversion of high-frequency casual riders into annual members to maximise Customer Lifetime Value (LTV) and improve long-term revenue stability.

This will be achieved by identifying behavioural patterns that distinguish high-intent casual riders from occasional users, enabling targeted marketing interventions that increase membership conversion by 5%.

## Success Metrics (KPIs)

To evaluate the effectiveness of the proposed strategy, the following KPIs will be monitored.

### 1. Primary KPI: Membership Conversion Rate (MCR)

- **Definition:** The percentage of identified high-intent casual riders who purchase an annual membership after receiving targeted marketing.
- **Target:** Increase the Membership Conversion Rate of the targeted segment by 5%.

### 2. Diagnostic KPI: Average Monthly Ride Frequency (Target Segment)

- **Definition:** The average number of rides per month taken by the identified high-intent casual rider segment.
- **Business Logic:** Increasing ride frequency indicates stronger engagement and habitual usage, suggesting greater readiness to convert to an annual membership.

### 3. Guardrail KPI: 90-Day Membership Churn Rate

- **Definition:** The percentage of newly converted annual members who cancel their membership within 90 days.
- **Target:** Maintain a churn rate below 10% to ensure conversion efforts generate sustainable long-term customer value rather than short-term acquisition gains.

## Stakeholders and Project Scope

### Key Stakeholders

| Stakeholder | Role | Interest |
|---|---|---|
| **Lily Moreno (Director of Marketing)** | Project sponsor and primary decision-maker | Requires evidence-based recommendations to improve casual rider conversion and support the membership growth strategy. |
| **Cyclistic Executive Team** | Strategic decision-makers | Evaluate the business value, feasibility, and expected impact of the proposed recommendations before approving future marketing investment. |
| **Marketing Team** | Campaign execution | Uses the identified customer segments and behavioural insights to design and deliver targeted membership campaigns. |

### Project Scope

#### In Scope

- Preparation and validation of 12 months of historical Cyclistic trip data.
- Behavioural analysis of casual and annual member riding patterns.
- Identification of high-intent casual rider segments with strong membership conversion potential.
- Development of data-backed recommendations to improve annual membership conversion.
- Communication of findings through executive-level dashboards and business recommendations.

#### Out of Scope

- Implementation or evaluation of marketing campaigns.
- Development of predictive or machine learning models.
- Analysis of external datasets, including competitor information or third-party demographic data.
- Processing or analysis of Personally Identifiable Information (PII).
- Financial budgeting, detailed ROI modelling, or marketing resource allocation.

## Risks and Assumptions

### Assumptions

The analysis is based on the following assumptions.

- **Trip Behaviour as a Segmentation Proxy:** The available trip data can be used to identify meaningful behavioural differences between casual riders and annual members, including ride frequency, ride duration, bike type, station usage, time of day, day of week, and seasonal patterns.

- **Behavioural Similarity Indicates Conversion Potential:** Casual riders whose riding patterns are more similar to existing annual members are assumed to represent stronger candidates for targeted membership marketing than casual riders with irregular, tourist-like, or one-off usage patterns.

- **Historical Data Reflects Typical Usage Patterns:** The 12-month historical trip dataset is assumed to provide a sufficiently representative view of rider behaviour across different months, weekdays, weekends, and seasonal conditions. A single month of data should not be treated as representative on its own.

- **Trip-Level Data Is Suitable for Diagnostic Analysis:** The dataset supports descriptive and diagnostic analysis of riding behaviour. However, because it does not include customer identifiers, membership purchase dates, campaign exposure, revenue, or Customer Lifetime Value (LTV), it cannot directly measure individual customer conversion, marketing response, churn, or financial return.

- **Data Quality Can Be Managed Through Cleaning:** Missing station fields, illogical trip durations, duplicate ride IDs, and incomplete coordinate records can be identified and handled through documented data-cleaning rules without materially weakening the overall analysis.

### Risks and Mitigation

| Risk | Potential Impact | Mitigation |
|---|---|---|
| **Customer-Level Conversion Cannot Be Directly Measured** | The trip data identifies whether each ride was taken by a casual rider or annual member, but it does not show whether a specific casual rider later converted to membership. This limits the ability to prove actual conversion behaviour. | Position the analysis as behavioural segmentation rather than direct conversion tracking. Recommend future integration with CRM, membership, or campaign data to measure true conversion outcomes. |
| **Tourist or One-Off Rider Distortion** | Casual riders may include tourists, visitors, or one-time users with little realistic potential to become annual members. Including them in the target segment may dilute the effectiveness of marketing recommendations. | Use behavioural rules such as repeated usage, station consistency, weekday patterns, and ride frequency to distinguish high-intent casual riders from occasional or tourist-like riders. |
| **Correlation vs. Causation** | Observed riding patterns may be associated with membership behaviour but may not directly cause conversion. For example, frequent weekday riding may indicate stronger membership fit, but it does not prove that targeting these riders will convert them. | Present findings as evidence-based indicators, not causal proof. Recommend pilot campaigns or A/B testing to validate whether the identified segments respond to membership offers. |
| **Seasonality Bias** | Rider behaviour may vary significantly by month, weather, holidays, and tourism patterns. If the analysis overweights one period, the resulting recommendations may not generalise across the full year. | Analyse a full 12-month period where available and compare weekday, weekend, and seasonal trends before defining final target segments. Avoid drawing strategic conclusions from a single month of data. |
| **Data Completeness and Cleaning Risk** | Missing station names, missing station IDs, incomplete coordinates, duplicate ride records, or abnormal ride durations may distort usage patterns if not handled consistently. | Conduct a documented data-quality audit before analysis. Exclude or flag invalid trips using transparent cleaning rules and report any material data limitations in the methodology section. |
| **Operational Capacity Constraints** | If membership conversion increases demand in specific locations or time periods, bike availability and docking station capacity may become strained, reducing service quality for both members and casual riders. | Include station-level and time-based demand analysis in the recommendations. Advise that campaign rollouts be coordinated with fleet and station capacity planning. |
| **Overstating Financial Impact** | The trip dataset does not contain revenue, cost, campaign spend, or LTV data. Overclaiming ROI or financial uplift from trip behaviour alone may weaken the credibility of the report. | Frame financial benefits as strategic rationale rather than directly measured outcomes. Recommend that Finance or CRM data be added in future analysis to quantify ROI, LTV, and cost per conversion. |