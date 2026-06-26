# Cyclistic Bike-Share Analysis Case Study
Data analysis of Cyclistic bike-share trips using Python (Google Colab), Azure PostgreSQL, and Tableau Public to inform member conversion strategy.

## Project Overview
This project delivers a comprehensive analysis of Cyclistic’s historical bike-share trip data to understand the behavioral differences between casual riders and annual members. The final insights inform a targeted marketing strategy to convert casual riders into annual members.

* **Role:** Junior Data Analyst
* **Tools Used:** Python (Google Colab), SQL (Azure PostgreSQL), Tableau Public, Google Sheets, Google Docs

## The Data Analysis Process
Followed the industry-standard six-phase analysis process:
1. **Ask:** Defined the business task (converting casual riders to members).
2. **Prepare:** Verified data credibility, security, and integrity, ensuring zero use of personally identifiable information (PII).
3. **Process:** Cleaned and transformed data to ensure consistency.
4. **Analyze:** Uncovered behavioral trends (e.g., peak usage hours, trip duration differences).
5. **Share:** Created interactive visualizations to tell the data story.
6. **Act:** Formulated actionable recommendations for marketing initiatives.

## Technical Highlights
* **Resilient Data Pipeline:** Engineered an idempotent, self-healing pipeline using Python in Google Colab to automate ingestion and maintain data integrity during schema drift.
* **Configuration-Driven Architecture:** Decoupled table definitions (`master_schema.json`, `type_rules.json`) from execution logic, ensuring high reusability and scalability.
* **Automated Data Quality & Governance:**
    * **Contract Enforcement:** Implemented programmatic schema validation against a defined contract.
    * **Fault Isolation:** Developed an automated quarantine routing system in Azure PostgreSQL to isolate malformed records (outliers/schema violations) into an `error_quarantine_log`, preserving the primary production data stream.
    * **Traceability & Auditing:** Built a `job_log` system providing an end-to-end audit trail of all ingestion executions.

## Documentation Strategy
To ensure transparency, auditability, and clear business communication, this project maintains three distinct documentation tracks:
* **[Technical Design Document (TDD)](link-to-google-doc):** A comprehensive guide covering database architecture, schema enforcement logic, and pipeline system specs.
* **[Process Journal (Audit Ledger)](link-to-google-doc):** A forensic log tracking every data cleaning decision, outlier removed, and technical resolution to demonstrate analytical maturity.
* **[Business Report (Executive Summary)](link-to-google-doc):** A high-level report detailing findings, visual trends, and actionable marketing recommendations for stakeholders.

## Project Contents
- `/notebooks`: Contains the automated Python pipeline engine and data analysis code.
- `/docs`: Contains the TDD, Process Journal, and the Business Report.
- `Cyclistic_Case_Study_Report.pdf`: The full business report with findings and recommendations.

## Explore the Project
- [**Interactive Dashboard**](Insert_Tableau_Public_Link_Here)
- [**Full Case Study Report**](Insert_Google_Doc_Link_Here)
- [**Analysis Code (Google Colab)**](Insert_Colab_Link_Here)