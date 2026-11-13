-- ============================================================
-- 08. Extra Analytics (portfolio bonus)
-- ============================================================

-- 1. Salary growth trajectory for every employee
WITH salary_path AS (
    SELECT
        emp_id,
        salary,
        effective_from,
        LAG(salary) OVER (PARTITION BY emp_id ORDER BY effective_from) AS prev_salary,
        ROUND(
            (salary - LAG(salary) OVER (PARTITION BY emp_id ORDER BY effective_from))
            * 100.0 / NULLIF(LAG(salary) OVER (PARTITION BY emp_id ORDER BY effective_from), 0)
        , 1) AS growth_pct
    FROM employee_salary
)
SELECT
    e.emp_id,
    CONCAT_WS(' ', p.last_name, p.first_name) AS fio,
    sp.effective_from,
    sp.salary,
    sp.growth_pct
FROM salary_path sp
JOIN employee e ON e.emp_id = sp.emp_id
JOIN person p ON p.person_id = e.person_id
ORDER BY e.emp_id, sp.effective_from;


-- 2. Project managers workload
SELECT
    CONCAT_WS(' ', p.last_name, p.first_name) AS manager,
    COUNT(*) AS projects_count,
    SUM(CARDINALITY(COALESCE(pr.employees_id, '{}'))) AS total_team_members
FROM projects pr
JOIN employee e ON e.emp_id = pr.assigned_id
JOIN person p ON p.person_id = e.person_id
GROUP BY manager
ORDER BY projects_count DESC;


-- 3. Grade distribution (based on current salary)
WITH current_salary AS (
    SELECT DISTINCT ON (emp_id) emp_id, salary
    FROM employee_salary
    ORDER BY emp_id, effective_from DESC
)
SELECT
    gs.grade,
    COUNT(*) AS employees_count,
    ROUND(AVG(cs.salary)) AS avg_salary
FROM current_salary cs
JOIN grade_salary gs ON cs.salary BETWEEN gs.min_salary AND gs.max_salary
GROUP BY gs.grade
ORDER BY gs.grade;


-- 4. Project cost per employee
SELECT
    pr.name,
    pr.amount,
    COUNT(DISTINCT emp_id) AS team_size,
    ROUND(pr.amount / NULLIF(COUNT(DISTINCT emp_id), 0)) AS cost_per_employee
FROM projects pr
LEFT JOIN LATERAL (
    SELECT UNNEST(COALESCE(pr.employees_id, '{}')) AS emp_id
    UNION
    SELECT pr.assigned_id WHERE pr.assigned_id IS NOT NULL
) t ON TRUE
GROUP BY pr.project_id, pr.name, pr.amount
ORDER BY cost_per_employee DESC NULLS LAST;
