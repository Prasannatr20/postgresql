SELECT product_name, price
FROM products
ORDER BY price ASC
LIMIT 3 OFFSET 3;


SELECT product_name, price
FROM products
ORDER BY price ASC
LIMIT 3 OFFSET 6;


SELECT product_name, price
FROM products
WHERE price <30000
ORDER BY price DESC
LIMIT 3 OFFSET 2;


SELECT product_name, price
FROM products
WHERE stock_quantity IS NOT NULL
ORDER BY stock_quantity DESC
LIMIT 2 OFFSET 2;


SELECT product_name, price
FROM products
WHERE product_name ILIKE '%usb%'
ORDER BY price ASC
LIMIT 2 OFFSET 1;


SELECT product_name, stock_quantity
FROM products
WHERE stock_quantity>=20
ORDER BY price ASC
LIMIT 2 OFFSET 3;

SELECT product_name, stock_quantity, price
FROM products
WHERE price BETWEEN 500 AND 30000
ORDER BY price DESC, stock_quantity NULLS LAST
LIMIT 2 OFFSET 2;


SELECT product_name, price
FROM products
ORDER BY product_name ASC
LIMIT 4 OFFSET 2;


SELECT product_name, stock_quantity, price
FROM products
WHERE product_name ILIKE '%USB%' AND price<5000
ORDER BY price ASC
LIMIT 2 OFFSET 2;


SELECT product_name, price
FROM products
WHERE price<30000
ORDER BY price DESC
LIMIT 3 OFFSET 2;


-------------------------------------------------------------------


--1
SELECT DISTINCT stock_quantity
FROM products;

--2
SELECT DISTINCT price
FROM products;



INSERT INTO customers
(name, email, city)
VALUES
('Anbarasan Elango', 'anbu.elango@example.com', 'Chennai'),
('Kayalvizhi Pandian', 'kayal.p@example.com', 'Madurai'),
('Joseph D''Souza', 'joseph.d@example.com', 'Thoothukudi'),
('Senthil O''Connor', 'senthil.oc@example.com', 'Coimbatore'),
('Meenakshi Sundaram', 'meenakshi@gmail.com', 'Trichy'),
('Vijayakanth Alagarsamy', 'vijay.a@example.com', NULL),
('New User', 'user@gmail.com', NULL),
('Murugesh Sīrangan', 'murugesh@example.com', 'Salem'),
('Yasmin Fatima', 'yasmin@example.com', 'Vaniyambadi'),
('Karthik Subbaraj', 'karthik@example.com', 'Tirunelveli'),
('Thamarai Selvi', 'thamarai@example.com', 'Erode'),
('Prabhu Deva', 'prabhu@sub.company.co.in', 'Tiruppur'),
('Siva-Kumar Ganesan', 'siva+filter@gmail.com', 'Vellore'),
('E.V.R. Periyar', 'evr@rational.res.in', 'Erode'),
('U.V. Swaminathan', 'uvs@example.com', 'Thanjavur'),
('Ilaiyaraaja Vaidyanathan', 'raaja@music.com', 'Pannaipuram'),
('Dr. M.S. Swaminathan', 'ms.swami@agency.gov.in', 'Kumbakonam'),
('TNEB Sub Station', 'contact@tneb.gov.in', '4 Roads Junction'),
('RAJNIKANTH SHIVAJI', 'THALAIVAR@EXAMPLE.COM', 'CHENNAI'),
('muthuvel karunanidhi', 'MUTHU@domain.net', 'tiruvarur');

--3
SELECT DISTINCT city
FROM customers;

--4
SELECT DISTINCT price, stock_quantity
FROM products;


--5
SELECT DISTINCT stock_quantity 
FROM products
ORDER BY stock_quantity DESC;

--6
SELECT DISTINCT price
FROM products
ORDER BY price DESC
LIMIT 3;

--7
SELECT DISTINCT price, product_name
FROM products
ORDER BY price ASC;

--8
SELECT DISTINCT stock_quantity
FROM products
WHERE stock_quantity>20
ORDER BY stock_quantity DESC;

--9
SELECT DISTINCT price
FROM products
WHERE price BETWEEN 500 AND 30000
ORDER BY price DESC
LIMIT 3;

--10
SELECT DISTINCT price
FROM products
WHERE stock_quantity IS NOT NULL AND price>1000
ORDER BY price ASC;