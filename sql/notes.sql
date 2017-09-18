
-- extract. Usage:
extract(Month from '2010-10-20')

-- extracting data by date
select created_on from str_order where extract(Month from created_on)='10';
