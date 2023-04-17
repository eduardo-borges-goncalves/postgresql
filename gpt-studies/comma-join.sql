SELECT
  *
FROM
  orders,
  customers
WHERE
  customers.id = orders.customer_id;