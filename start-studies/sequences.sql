select
  *
from
  car_id_seq;

-- select  nextval('car_id_seq'::regclass);

-- it looks like the sequence restart to a number 
-- two numbers ahead we pass here. Ex, if we pass
-- 3, will start with 5; pass 10, start with 12.
ALTER SEQUENCE car_id_seq 
RESTART WITH 10;