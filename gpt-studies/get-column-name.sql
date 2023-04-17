SELECT
  COLUMN_name
FROM
  information_schema.columns
WHERE
  table_name = 'orders'
UNION
ALL
SELECT
  COLUMN_name
FROM
  information_schema.columns
WHERE
  table_name = 'customers';