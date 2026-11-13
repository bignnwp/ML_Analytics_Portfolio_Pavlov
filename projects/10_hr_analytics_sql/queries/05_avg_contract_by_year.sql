-- ============================================================
-- 05. Average contract amount by year (rounded to 2 decimals)
-- ============================================================

SELECT
    EXTRACT(YEAR FROM created_at)::int AS year,
    ROUND(AVG(amount)::numeric, 2) AS avg_amount
FROM projects
GROUP BY 1
ORDER BY 1;
