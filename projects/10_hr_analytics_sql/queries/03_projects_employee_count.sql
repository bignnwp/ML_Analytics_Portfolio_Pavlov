-- ============================================================
-- 03. Projects + unique employees count (including managers)
-- ============================================================
-- Includes both participants (employees_id) and project manager (assigned_id).
-- LATERAL + UNNEST gives a clean set-based plan.

SELECT
    p.name,
    COUNT(DISTINCT emp_id) AS emp_count
FROM projects p
LEFT JOIN LATERAL (
    SELECT UNNEST(COALESCE(p.employees_id, '{}'::int[])) AS emp_id
    UNION
    SELECT p.assigned_id
    WHERE p.assigned_id IS NOT NULL
) t ON TRUE
GROUP BY p.project_id, p.name
ORDER BY emp_count DESC, p.name;
