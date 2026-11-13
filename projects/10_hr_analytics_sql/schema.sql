-- ============================================================
-- HR Analytics — Schema (PostgreSQL 14+)
-- ============================================================

DROP VIEW IF EXISTS employee_info CASCADE;
DROP TABLE IF EXISTS employee_salary CASCADE;
DROP TABLE IF EXISTS projects CASCADE;
DROP TABLE IF EXISTS employee CASCADE;
DROP TABLE IF EXISTS position CASCADE;
DROP TABLE IF EXISTS structure CASCADE;
DROP TABLE IF EXISTS person CASCADE;
DROP TABLE IF EXISTS grade_salary CASCADE;

CREATE TABLE person (
    person_id   SERIAL PRIMARY KEY,
    last_name   VARCHAR(50) NOT NULL,
    first_name  VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    dob         DATE NOT NULL
);

CREATE TABLE structure (
    unit_id    SERIAL PRIMARY KEY,
    unit_title VARCHAR(100) NOT NULL
);

CREATE TABLE position (
    pos_id    SERIAL PRIMARY KEY,
    pos_title VARCHAR(100) NOT NULL,
    unit_id   INT NOT NULL REFERENCES structure(unit_id)
);

CREATE TABLE employee (
    emp_id    SERIAL PRIMARY KEY,
    person_id INT NOT NULL REFERENCES person(person_id),
    pos_id    INT NOT NULL REFERENCES position(pos_id),
    hire_date DATE NOT NULL,
    rate      NUMERIC(12,2)          -- legacy field, intentionally ignored in views
);

CREATE TABLE employee_salary (
    emp_id         INT NOT NULL REFERENCES employee(emp_id),
    salary         NUMERIC(12,2) NOT NULL CHECK (salary > 0),
    effective_from DATE NOT NULL,
    PRIMARY KEY (emp_id, effective_from)
);

CREATE TABLE projects (
    project_id   SERIAL PRIMARY KEY,
    name         VARCHAR(150) NOT NULL,
    employees_id INT[],
    assigned_id  INT REFERENCES employee(emp_id),
    amount       NUMERIC(14,2),
    created_at   DATE NOT NULL
);

CREATE TABLE grade_salary (
    grade      INT PRIMARY KEY,
    min_salary NUMERIC(12,2) NOT NULL,
    max_salary NUMERIC(12,2) NOT NULL,
    CHECK (min_salary <= max_salary)
);

-- Useful indexes
CREATE INDEX idx_employee_salary_emp_eff ON employee_salary (emp_id, effective_from DESC);
CREATE INDEX idx_projects_assigned ON projects (assigned_id);
CREATE INDEX idx_employee_pos ON employee (pos_id);
