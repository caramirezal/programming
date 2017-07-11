-- mysql notes based in the following tutorial:
-- https://dev.mysql.com/doc/refman/5.5/en/entering-queries.html

-- Openning a mysql connection is in general as follows
-- > mysql -u user -h host -p

-- In particular connecting to the same machine
mysql -u root -p

-- as described in https://www.digitalocean.com/community/tutorials/a-basic-mysql-tutorial

-- quit msql. 
mysql> QUIT      
-- Note that this expression does not need semicolon

-- display existing data bases
mysql> SHOW DATABASES;



-- create data base
mysql> CREATE nameDataBase;

-- add table
mysql> CREATE TABLE tableName (varName_1 VARTYPE_1(k_1), ..., varName_n VARTYPE_n(k_n))


-- display table
mysql> DESCRIBE pet;

-- display selected databases
mysql> SELECT DATABASE();

-- 


SELECT * FROM Customers;
