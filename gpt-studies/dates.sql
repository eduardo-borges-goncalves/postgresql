SELECT  *
FROM orders
WHERE EXTRACT( MONTH
FROM date_order ) = 3;
-- that's how we compare dates IN psql