CREATE TABLE IF NOT EXISTS customers (
  id bigserial NOT NULL PRIMARY KEY,
  name varchar(50) NOT NULL
);

INSERT INTO
  customers(name)
VALUES
  ('pedro');

INSERT INTO
  customers(name)
VALUES
  ('monica');

INSERT INTO
  customers(name)
VALUES
  ('mauricio');

INSERT INTO
  customers(name)
VALUES
  ('vanessa');