-- ============================================================
-- 02. Number of vacant positions
-- ============================================================
-- Vacant = position with no employee assigned.
-- Classic anti-join pattern (LEFT JOIN + IS NULL).

SELECT COUNT(*) AS vacant_positions
FROM position p
LEFT JOIN employee e ON e.pos_id = p.pos_id
WHERE e.emp_id IS NULL;
