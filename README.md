# HR Analytics & Leave Planner — Microsoft Fabric

An end-to-end HR absence planning and operations analytics solution built entirely on **Microsoft Fabric**.

## Architecture & Data Pipeline

1. **Dataflow Gen2 (`LeavePlanner.Dataflow`)**: Ingestion and ETL transformation pipeline cleansing raw department leave entries.
2. **OneLake Lakehouse (`LeavePlanner.Lakehouse`)**: Unified delta storage layer in OneLake housing curated operational tables.
3. **Direct Lake Semantic Model (`SM_LeavePlanner.SemanticModel`)**: Centralized business logic, role-playing calendar, and DAX measures.
4. **Power BI Reporting (`HRAnalytics.Report`)**: Executive dashboard tracking leave loads, department queues, and category distributions.

## Dashboard Highlights

- **Volume & Status:** Tracks 120 leave requests categorized by approval state (Pending: 44, Approved: 40, Planned: 36).
- **Departmental Load:** Analyzes leave days consumed across Engineering (99), Operations (72), HR (65), Sales (60), and Finance (52).
- **Absence Mix:** Categorizes 10 leave types including Emergency, Annual, Sick, WFH, and Mental Health Days.
- **Slicers:** Dynamic departmental filtering for departmental heads and HR business partners.# Fabric
