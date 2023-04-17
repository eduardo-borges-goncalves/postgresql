SELECT  name
       ,COUNT(orders.id) AS orders
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id
GROUP BY  name
ORDER BY COUNT(orders.id) DESC;
-- this query return the customer who has made the higher order;

SELECT  name
       ,value
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.id
ORDER BY value DESC
LIMIT 1;