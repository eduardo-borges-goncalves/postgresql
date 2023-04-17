-- aqui estamos implementando uma transação.
-- Quando alguma das operações falha, todas as operações são canceladas, 
-- é efetuado um comando de ROOLBACK e tudo é desfeito. 
-- Também pegamos a data atual com a função current_date e adicionamos 
-- um dia a ela com a palavra interval e tals. 
BEGIN;

UPDATE
  orders
SET
  date_delivery = current_date + INTERVAL '1 day'
WHERE
  value < 100;

ALTER TABLE
  customers
ADD
  phone varchar(15);

COMMIT;