-- ============================================================
-- 01. Employees older than 65 years
-- ============================================================
-- "Older than 65" = full years >= 66 → dob <= today - 66 years

SELECT
    CONCAT_WS(' ', p.last_name, p.first_name, p.middle_name) AS fio,
    p.dob,
    EXTRACT(YEAR FROM age(p.dob))::int AS years
FROM employee e
JOIN person p ON p.person_id = e.person_id
WHERE p.dob <= CURRENT_DATE - INTERVAL '66 years'
ORDER BY p.dob;
