-- ============================================================
-- 06. Full names of employees with the lowest and highest
--     salaries in the entire history (single query)
-- ============================================================

WITH extremes AS (
    SELECT MIN(salary) AS min_sal, MAX(salary) AS max_sal
    FROM employee_salary
)
SELECT DISTINCT
    CONCAT_WS(' ', p.last_name, p.first_name, p.middle_name) AS fio,
    es.salary
FROM employee_salary es
JOIN employee e ON e.emp_id = es.emp_id
JOIN person   p ON p.person_id = e.person_id
CROSS JOIN extremes x
WHERE es.salary IN (x.min_sal, x.max_sal)
ORDER BY es.salary, fio;
