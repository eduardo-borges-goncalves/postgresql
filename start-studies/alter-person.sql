-- ALTER TABLE
--   person
-- ADD
--   COLUMN if not exists car_id bigint;

-- ALTER TABLE
--   person
-- ADD
--   constraint car_fk foreign key(car_id) references car(id);

-- ALTER TABLE person 
-- ALTER COLUMN car_id 
-- SET not null;

-- TRYING ALTER TABLE PERSON TO SET CPF AS UNIQUE

-- ALTER TABLE PERSON 
-- ADD CONSTRAINT 
-- SET UNIQUE(cpf);

-- SELECT * FROM PERSON WHERE cpf = '1715833438';

-- DELETE FROM PERSON WHERE cpf = '1715833438';

-- THIS SINTAX HAVE A MISTAKE! kkkkkkk
-- We dont need use set to add a constraint. This code works, 
-- but set was considered the name of the constraint unique cpf, 
-- not a sql command;
-- ALTER TABLE PERSON 
-- ADD CONSTRAINT 
-- SET UNIQUE(cpf);
