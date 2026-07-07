# Phase 4: Analysis Process Journal

This journal documents the strategic decision-making process for the Analysis Phase of the Cyclistic Case Study.

## Sprint 4.1: Evidence Mapping & Diagnostic Design
- **Objective:** Bridge raw data to conversion strategy.
- **Decision:** Shifted from generic descriptive reporting to a three-tier diagnostic model (Financial, Operational, Targeting).
- **Rationale:** Standard descriptive metrics are surface-level. By building diagnostic views, we provide actionable intelligence that directly informs marketing campaign placement and ROI justification.

## Sprint 4.2: Data Suitability & Filtering
- **Audit Findings:** 5.5M rows verified; 29 invalid duration records identified.
- **Decision:** Implemented a filtering rule `(ended_at - started_at) > '00:00:00'` to remove false starts/system errors.
- **Rationale:** Maintaining data integrity is paramount. Cleaning at the view level ensures consistency across all downstream reports.

## Sprint 4.3: View Architecture
- **Decision:** Implemented modular SQL views rather than stored procedures.
- **Rationale:** Views provide better transparency for stakeholders and integration with Tableau, allowing for a cleaner "data lineage" to be shared in the portfolio.