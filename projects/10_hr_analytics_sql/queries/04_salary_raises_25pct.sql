-- ============================================================
-- 04. Employees who received an exact 25% salary raise
-- ============================================================
-- LAG + precise comparison (salary = prev * 1.25).
-- NULLIF protects against division by zero.

WITH salary_changes AS (
    SELECT
        emp_id,
        salary,
        LAG(salary) OVER (PARTITION BY emp_id ORDER BY effective_from) AS prev_salary,
        (salary - LAG(salary) OVER (PARTITION BY emp_id ORDER BY effective_from))
            * 100.0
            / NULLIF(LAG(salary) OVER (PARTITION BY emp_id ORDER BY effective_from), 0) AS change_percent
    FROM employee_salary
)
SELECT
    emp_id,
    salary,
    prev_salary,
    ROUND(change_percent, 2) AS change_percent
FROM salary_changes
WHERE salary = prev_salary * 1.25
ORDER BY emp_id;
