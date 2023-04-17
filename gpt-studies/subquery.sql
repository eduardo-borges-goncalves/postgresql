-- isso aqui é massa demais!

SELECT
  name,
  value
FROM
  customers
  INNER JOIN orders ON customers.id = orders.customer_id
WHERE
  value > (
    SELECT
      avg(value)
    FROM
      orders
  );