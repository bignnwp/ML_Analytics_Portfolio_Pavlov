# HR Analytics SQL Project

[English](README.md) | [Русский](README.ru.md)

**Project type:** Data Analytics / SQL Engineering  
**Technologies:** PostgreSQL 14+, pure SQL (window functions, arrays, CTEs, views)

## Overview

A senior-level SQL project built on a realistic HR database. The goal is to demonstrate production-quality query design for common HR analytics tasks: employee demographics, vacancy tracking, project staffing, salary history analysis, and grade mapping.

The database contains **~90 persons, 85 employees, full salary history with multiple raises (including exact +25%), 22 projects with teams and managers, organizational structure, and salary grades**. Edge cases are intentionally included (employees older than 65, vacant positions, project managers who are not always present in the team array).

## Business questions

- Which employees are older than 65?
- How many vacant positions exist?
- How many unique people work on each project (including the manager)?
- Who received an exact 25% salary raise?
- What is the average contract amount by year?
- Who has the lowest and highest salary in the entire history?
- What is the current salary of each employee and which grades does it fall into?
- How can we expose clean, reusable employee information via a view?

## What was done

- Designed a clean normalized schema (person → employee → position → structure, salary history, projects with arrays + manager).
- Populated realistic volume of data with historical salary changes.
- Wrote production-style queries using `DISTINCT ON`, `LAG`, `LATERAL`, `UNNEST`, CTEs and window functions.
- Created a reusable `employee_info` view that correctly derives current salary from history and includes both team members and project managers.
- Added extra analytical queries for portfolio demonstration (salary trajectories, manager workload, grade distribution, cost per employee).

## Key technical decisions

| Topic | Decision |
|-------|----------|
| Current salary | Taken from the latest `employee_salary` record via `DISTINCT ON`, not from the legacy `employee.rate` column |
| Project teams | Both `employees_id` array and `assigned_id` (manager) are counted |
| 25% raises | Precise comparison `salary = prev_salary * 1.25` using `LAG` |
| Vacant positions | Classic anti-join (`LEFT JOIN ... WHERE emp_id IS NULL`) |
| View design | CTE + set-based project aggregation, ready for production use |

## Repository contents

```text
10_hr_analytics_sql/
├── README.md
├── README.ru.md
├── schema.sql
├── seed.sql
├── views/
│   └── employee_info.sql
├── queries/
│   ├── 01_employees_over_65.sql
│   ├── 02_vacant_positions.sql
│   ├── 03_projects_employee_count.sql
│   ├── 04_salary_raises_25pct.sql
│   ├── 05_avg_contract_by_year.sql
│   ├── 06_min_max_salary.sql
│   ├── 07_current_salary_grades.sql
│   └── 08_extra_analytics.sql
└── docs/
    └── schema_overview.md
```

## How to run

```bash
psql -U postgres -c "CREATE DATABASE hr_analytics;"
psql -U postgres -d hr_analytics -f schema.sql
psql -U postgres -d hr_analytics -f seed.sql
psql -U postgres -d hr_analytics -f views/employee_info.sql
```

Then execute any file from `queries/`.

## Extra analytics (bonus)

`queries/08_extra_analytics.sql` contains additional senior-level examples:
- Salary growth trajectories
- Manager workload
- Grade distribution by current salary
- Project cost per employee
