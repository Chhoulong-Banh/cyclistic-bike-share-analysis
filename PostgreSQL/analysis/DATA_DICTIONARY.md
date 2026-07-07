# Cyclistic Data Analytics - Data Dictionary

This document defines the purpose and logic of the SQL views used for the Cyclistic membership conversion strategy analysis.

| View Name | Business Question Addressed | Key Metrics/Logic |
| :--- | :--- | :--- |
| `v_analysis_ready_trips` | What is the base state of trip data? | Duration (min), Day of Week, Month. Filtered for 0 < Duration < 24h. |
| `v_agg_ride_metrics_by_user` | How do usage patterns differ by user? | Total Trips, Avg Duration, aggregated by User Type, Day, Hour. |
| `v_diag_user_behavior` | Which casual riders are "overpaying"? | Segments riders into 'High-Duration' based on duration median. |
| `v_diag_marketing_hotspots` | Where should we deploy marketing? | Counts trip volume by station to identify casual usage density. |

---
## Detailed Logic
* **Data Integrity:** All views exclude rides < 0 minutes or > 24 hours to ensure outliers do not skew business intelligence.
* **Granularity:** Views are pre-aggregated to optimize dashboard performance in Tableau.