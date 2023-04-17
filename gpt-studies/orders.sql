CREATE TABLE IF NOT EXISTS orders (
  id bigserial NOT NULL PRIMARY KEY,
  customer_id bigint NOT NULL,
  date_order date NOT NULL,
  date_delivery date,
  value int NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers (id)
);

-- alter table orders 
-- alter COLUMN date_order set default current_date; 

INSERT INTO
  orders(customer_id, date_delivery, value)
VALUES
  (2, '2023-01-20', 900);

INSERT INTO
  orders(customer_id, date_delivery, value)
VALUES
  (2, '2023-01-29', 900);

INSERT INTO
  orders(customer_id, date_delivery, value)
VALUES
  (1, '2023-01-29', 900);

INSERT INTO
  orders(customer_id, date_delivery, value)
VALUES
  (3, '2023-01-20', 900);

INSERT INTO
  orders(customer_id, date_delivery, value)
VALUES
  (3, '2023-01-20', 900);

INSERT INTO
  orders(customer_id, date_delivery, value)
VALUES
  (3, '2023-01-29', 9500);

INSERT INTO
  orders(customer_id, date_delivery, value)
VALUES
  (4, '2023-01-20', 90);

INSERT INTO
  orders(customer_id, date_delivery, value)
VALUES
  (4, '2023-03-19', 20);

INSERT INTO
  orders(customer_id, date_delivery, value)
VALUES
  (1, '2023-03-17', 355);

INSERT INTO
  orders(customer_id, date_delivery, value)
VALUES
  (4, '2003-03-20', 589);

INSERT INTO
  orders(customer_id, date_delivery, value)
VALUES
  (4, '2003-03-19', 99);

INSERT INTO
  orders(customer_id, date_delivery, value)
VALUES
  (1, '2003-03-17', 63);

-- SELECT
--   customers.id,
--   name,
--   sum(value)
-- FROM
--   customers
--   INNER JOIN orders ON orders.customer_id = customers.id
-- GROUP BY
--   customers.id,
--   name,
--   date_order,
--   value
-- ORDER BY
--   value ASC;

-- SELECT
--   orders.customer_id,
--   AVG(orders.date_order - orders.date_delivery) AS avg_delivery_time
-- FROM
--   orders
-- WHERE
--   DATE_PART('quarter', orders.date_delivery) = DATE_PART('quarter', CURRENT_DATE - INTERVAL '1')
-- GROUP BY
--   orders.customer_id;

SELECT name, date_order,
  sum(value) AS total
FROM
  customers
  INNER JOIN orders ON customers.id = customer_id
  and extract('year' from date_delivery) < 2023
  GROUP BY NAME, date_order
  LIMIT 10;

select count(*) from orders where extract('year' from date_delivery) < 2023;

