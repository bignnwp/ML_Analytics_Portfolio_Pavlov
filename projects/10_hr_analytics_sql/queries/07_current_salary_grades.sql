-- ============================================================
-- 07. Current salary + salary grades it falls into
-- ============================================================
-- DISTINCT ON is the most idiomatic way to get the "latest"
-- record per employee in PostgreSQL.

WITH current_salary AS (
    SELECT DISTINCT ON (emp_id)
           emp_id,
           salary
    FROM employee_salary
    ORDER BY emp_id, effective_from DESC
)
SELECT
    cs.emp_id,
    cs.salary,
    STRING_AGG(gs.grade::text, ', ' ORDER BY gs.grade DESC) AS grades_as_string
FROM current_salary cs
LEFT JOIN grade_salary gs
       ON cs.salary BETWEEN gs.min_salary AND gs.max_salary
GROUP BY cs.emp_id, cs.salary
ORDER BY cs.emp_id;
