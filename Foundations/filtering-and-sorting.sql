CREATE TABLE customers(
customer_id SERIAL PRIMARY KEY,
name VARCHAR(150) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
city VARCHAR(100)
)


CREATE TABLE products(
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(150) NOT NULL,
price NUMERIC(10,2) NOT NULL,
stock_quantity INTEGER
)

INSERT INTO products
(product_name, price, stock_quantity)
VALUES
('Laptop', 55000.00, 25);

select *
from products;

INSERT INTO products
(product_name, price, stock_quantity)
VALUES
('Wireless Mouse', 799.99, 50),
('Mechanical Keyboard', 2499.00, 25),
('Monitor', 12500.00, 15),
('USB Cable', 299.50, 100);

INSERT INTO products
(product_name, price, stock_quantity)
VALUES
('Smartphone', 25000.67, 27),
('Headphones', 2000, 50),
('USB Hub', 899, 100);

select product_name
from products;

select product_name, stock_quantity
from products;

select *
from products;

select product_id, product_name, price
from products;

--7/10/2026

select product_name, price
from products
where price>10000;

select product_name, stock_quantity
from products
where stock_quantity<30;

select *
from products
where product_name='Headphones';

select product_name, price
from products
where price>=2000;

select product_name, stock_quantity
from products
where stock_quantity=50;

select product_name, price, stock_quantity
from products
where stock_quantity>50 or price<1000;

select product_name, price, stock_quantity
from products
where stock_quantity<30 and price>2000;

select product_name, price, stock_quantity
from products
where (stock_quantity<30 or price>2000) and product_name <> 'Laptop';

select product_name, price, stock_quantity
from products
where (price>=1000 and price<=30000) and stock_quantity>=20;

select product_name, stock_quantity
from products
where stock_quantity=25 or stock_quantity=50 or stock_quantity=100;

select product_name, price
from products
where price IN(799.99, 899, 2000);

select product_name, stock_quantity
from products
where stock_quantity NOT IN(25, 50, 100);

select product_name, price, stock_quantity
from products
where stock_quantity IN(25, 50, 100) and price>1000;

select product_name, price, stock_quantity
from products
where stock_quantity NOT IN(25, 50, 100) OR price<1000;

select product_name, price, stock_quantity
from products
where stock_quantity IN(25, 50, 100) AND price NOT IN(2000);

select product_name, price
from products
where product_name LIKE '%USB%';

select product_name
from products
where product_name LIKE 'Wireless%';

select product_name, price
from products
where product_name LIKE '%phone';

select product_name
from products
where product_name LIKE '___Cable';

select product_name, price
from products
where product_name LIKE '%USB%' AND price<1000;

select product_name
from products
where product_name ILIKE '%usb%';

select product_name, price
from products
where product_name LIKE 'S%' OR product_name LIKE 's%' OR product_name LIKE 'W%' OR product_name LIKE 'w%';

INSERT INTO products
(product_name, price, stock_quantity)
VALUES
('Webcam', 3500, NULL);

SELECT *
FROM products;

SELECT product_name, stock_quantity
FROM products
WHERE stock_quantity IS NULL;

SELECT product_name, stock_quantity
FROM products
WHERE stock_quantity IS NOT NULL;

SELECT product_name, stock_quantity
FROM products
WHERE stock_quantity IS NOT NULL AND stock_quantity <> 50;

SELECT product_name, stock_quantity
FROM products
WHERE stock_quantity IS NULL OR stock_quantity < 20;

SELECT product_name, price
FROM products
ORDER BY price ASC;

SELECT product_name, price
FROM products
ORDER BY price DESC;

SELECT product_name, price
FROM products
ORDER BY product_name ASC;

SELECT product_name, price, stock_quantity
FROM products
ORDER BY price ASC, stock_quantity DESC;

SELECT product_name, stock_quantity
FROM products
ORDER BY stock_quantity ASC;

--Interview Level Questions

--1
SELECT product_name, price
FROM products
WHERE price BETWEEN 500 AND 10000
ORDER BY price DESC;

--2
SELECT product_name, price, stock_quantity
FROM products
WHERE product_name ILIKE '%phone%';

--3
SELECT product_name, price, stock_quantity
FROM products
WHERE stock_quantity IN(25, 50, 100)
ORDER BY stock_quantity DESC;

--4
SELECT product_name, price, stock_quantity
FROM products
WHERE price>1000 AND stock_quantity IN(25, 50, 100)
ORDER BY price ASC;

--5
SELECT product_name, price
FROM products
WHERE (product_name ILIKE 'u%' OR product_name ILIKE 'w%') AND price<5000;

--6
SELECT product_name, stock_quantity
FROM products
WHERE stock_quantity IS NOT NULL AND stock_quantity NOT IN(50, 100)
ORDER BY stock_quantity DESC;

--7
SELECT product_name, price, stock_quantity
FROM products
WHERE (stock_quantity IS NULL OR stock_quantity <30) AND price>=500

--8
SELECT product_name, price, stock_quantity
FROM products
WHERE stock_quantity IN(25, 50, 100) AND product_name NOT LIKE '%phone%'
ORDER BY price DESC;

--9
SELECT product_name, price, stock_quantity
FROM products
WHERE product_name ILIKE '%USB%' AND stock_quantity IS NOT NULL AND price BETWEEN 200 AND 1000
ORDER BY stock_quantity DESC, price ASC;

--10
SELECT product_name, price, stock_quantity
FROM products
WHERE (stock_quantity IS NULL OR stock_quantity<20 OR price>20000) AND product_name <> 'Laptop'
ORDER BY price DESC NULLS LAST;