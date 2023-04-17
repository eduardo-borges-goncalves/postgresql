CREATE VIEW orders_avg_higher AS
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

CREATE VIEW customer_number_orders AS
SELECT
  name,
  sum(value),
  count(orders.id)
FROM
  customers
  INNER JOIN orders ON customers.id = orders.customer_id
GROUP BY
  name;