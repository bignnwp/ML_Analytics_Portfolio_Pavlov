# Schema Overview

## Tables

### person
Personal data of individuals.

| Column       | Type         | Description          |
|--------------|--------------|----------------------|
| person_id    | SERIAL PK    | Unique identifier    |
| last_name    | VARCHAR(50)  | Last name            |
| first_name   | VARCHAR(50)  | First name           |
| middle_name  | VARCHAR(50)  | Middle name (optional) |
| dob          | DATE         | Date of birth        |

### structure
Organizational units.

| Column     | Type          | Description     |
|------------|---------------|-----------------|
| unit_id    | SERIAL PK     | Unique identifier |
| unit_title | VARCHAR(100)  | Unit name       |

### position
Job positions linked to organizational units.

| Column    | Type          | Description              |
|-----------|---------------|--------------------------|
| pos_id    | SERIAL PK     | Unique identifier        |
| pos_title | VARCHAR(100)  | Position title           |
| unit_id   | INT FK        | Reference to structure   |

### employee
Employees of the company.

| Column    | Type         | Description                          |
|-----------|--------------|--------------------------------------|
| emp_id    | SERIAL PK    | Unique identifier                    |
| person_id | INT FK       | Reference to person                  |
| pos_id    | INT FK       | Reference to position                |
| hire_date | DATE         | Hire date                            |
| rate      | NUMERIC      | Legacy salary field (not used in views) |

### employee_salary
Full salary history.

| Column         | Type         | Description                |
|----------------|--------------|----------------------------|
| emp_id         | INT FK       | Reference to employee      |
| salary         | NUMERIC      | Salary amount              |
| effective_from | DATE         | Date when salary became effective |

Primary key: `(emp_id, effective_from)`

### projects
Projects with teams and managers.

| Column       | Type         | Description                          |
|--------------|--------------|--------------------------------------|
| project_id   | SERIAL PK    | Unique identifier                    |
| name         | VARCHAR(150) | Project name                         |
| employees_id | INT[]        | Array of participant employee IDs    |
| assigned_id  | INT FK       | Project manager (employee)           |
| amount       | NUMERIC      | Contract amount                      |
| created_at   | DATE         | Creation / start date                |

### grade_salary
Salary grades.

| Column     | Type     | Description          |
|------------|----------|----------------------|
| grade      | INT PK   | Grade number         |
| min_salary | NUMERIC  | Minimum of the range |
| max_salary | NUMERIC  | Maximum of the range |

## Design Notes

- Current salary is always derived from the latest record in `employee_salary` using `DISTINCT ON`.
- Project teams correctly include both participants and the assigned manager.
- The legacy `employee.rate` column is intentionally ignored.
