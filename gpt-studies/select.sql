-- SELECT AVG(subquery.value) -- without outlier
-- FROM (
-- 		SELECT VALUE
-- 		FROM orders
-- 		WHERE date_order = CURRENT_DATE
-- 		ORDER BY VALUE DESC OFFSET 1
-- 		LIMIT (
-- 				SELECT COUNT(*)
-- 				FROM orders
-- 				WHERE date_order = CURRENT_DATE
-- 			) -2
-- 	) AS subquery
-- UNION
-- SELECT AVG(subqueryTwo.value) -- with minor outlier
-- FROM (
-- 		SELECT valueFROM orders
-- 		WHERE date_order = CURRENT_DATE
-- 		ORDER BY VALUE DESC OFFSET 1
-- 	) AS subqueryTwo;
SELECT customer_id,
	SUM(VALUE),
	CASE
		WHEN SUM(VALUE) > 20000 THEN 'platinum'
		WHEN sum(value) > 8000 THEN 'gold'
		ELSE 'Bronze'
	END AS customer_category
FROM orders
GROUP BY customer_id;