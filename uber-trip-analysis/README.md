# Uber Trip Analysis: A Business Intelligence Report

![SQL](https://img.shields.io/badge/SQL-Analysis-4B5563)
![Business Analysis](https://img.shields.io/badge/Business-Analysis-0F766E)
![KPI Reporting](https://img.shields.io/badge/KPI-Reporting-2563EB)

A SQL-driven business intelligence report on 20,000 ride-hailing trips across 4 cities: where revenue comes from, where it leaks, and what to change.

<!-- ADD: a screenshot of the report or a key chart here: ![Report preview](images/report-preview.png) -->

---

## Business Problem

A ride-hailing business needs to know which riders and zones drive revenue, why trips get cancelled, and how surge pricing and driver allocation affect results. This report answers those questions and ends with recommendations.

---

## Key Findings

| Finding | Value |
|---|---|
| Trips analyzed | 20,000 across 4 cities |
| Cancellation rate | 14.8% |
| Revenue concentration | 22% of riders generate 75% of total revenue |
| Estimated revenue leakage | about $106K |
| Estimated annual opportunity | $40K to $60K (based on project assumptions and improvement scenarios) |

<!-- VERIFY: your old portfolio also listed $604.6K total revenue. Confirm it and add it here if it is right. -->

---

## What I Analyzed

- Revenue and revenue concentration by rider
- Cancellations and their causes
- Surge pricing
- Rider behavior and segments
- Driver performance

<!-- VERIFY: list the SQL techniques you used (for example, CTEs, window functions, aggregations, CASE logic), only the ones in your scripts. -->

---

## Recommendations

1. **Rider retention:** protect the small group of riders that generates most of the revenue.
2. **Surge-zone coverage:** improve driver coverage where surge pricing is highest.
3. **Wait times:** reduce waiting time, which drives cancellations.
4. **Driver allocation:** place drivers where demand is concentrated.

<!-- VERIFY: add one sentence of evidence from your report under each recommendation. -->

---

## Assumptions and Limitations

- The $106K leakage and the $40K to $60K opportunity are **estimates** that depend on the assumptions in the report. <!-- ADD: list the assumptions in one or two lines. -->
- The data covers 20,000 trips, so results describe this sample.
- <!-- ADD: data source and whether it is real or synthetic. -->

---

## Repository Structure

```text
uber-trip-analysis/
├── sql/        # analysis queries
├── report/     # the written BI report (PDF)
├── images/     # charts and screenshots
├── data/       # dataset or a link to it
├── LICENSE
└── README.md
```

---

## Author

**Abdallah Tarek**, Data Analyst
[LinkedIn](https://www.linkedin.com/in/abdallaatarekk) · [Portfolio](https://abdallahportfolio-phi-ten.vercel.app) · abdallahtarek.work@gmail.com
