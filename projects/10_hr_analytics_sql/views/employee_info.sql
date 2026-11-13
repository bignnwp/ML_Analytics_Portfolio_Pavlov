-- ============================================================
-- VIEW: employee_info
-- ============================================================
-- Design decisions:
-- 1. Current salary is taken from the latest record in employee_salary
--    (DISTINCT ON), not from the legacy employee.rate column.
-- 2. Projects include both team members (employees_id) and managers (assigned_id).
-- 3. COALESCE protects against NULL arrays.

CREATE OR REPLACE VIEW employee_info AS
WITH current_salary AS (
    SELECT DISTINCT ON (emp_id)
           emp_id,
           salary AS current_salary
    FROM employee_salary
    ORDER BY emp_id, effective_from DESC
)
SELECT
    CONCAT_WS(' ', p.last_name, p.first_name, p.middle_name) AS fio,
    pos.pos_title                                            AS должность,
    str.unit_title                                           AS подразделение,
    EXTRACT(YEAR FROM age(p.dob))::int                       AS полных_лет,
    (EXTRACT(YEAR FROM age(e.hire_date)) * 12
     + EXTRACT(MONTH FROM age(e.hire_date)))::int            AS месяцев_работы,
    cs.current_salary                                        AS текущий_оклад,
    (
        SELECT COALESCE(array_agg(DISTINCT pr.project_id ORDER BY pr.project_id), '{}'::int[])
        FROM projects pr
        WHERE e.emp_id = ANY (COALESCE(pr.employees_id, '{}'::int[]))
           OR e.emp_id = pr.assigned_id
    )                                                        AS проекты
FROM employee e
JOIN person          p   ON p.person_id = e.person_id
JOIN position        pos ON pos.pos_id  = e.pos_id
JOIN structure       str ON str.unit_id = pos.unit_id
LEFT JOIN current_salary cs ON cs.emp_id = e.emp_id;
