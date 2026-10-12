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

------------

SELECT DISTINCT product_name, stock_quantity
FROM products
ORDER BY stock_quantity DESC NULLS LAST;


SELECT DISTINCT price, product_name
FROM products
WHERE product_name ILIKE '%USB%'
ORDER BY price ASC;


--Alias--

SELECT DISTINCT product_name AS Product, price AS "Selling Price"
FROM products;

SELECT DISTINCT name AS "Customer Name", city AS "City Name"
FROM customers;

SELECT product_name AS Item,
	   price AS "Price in INR",
	   stock_quantity AS "Available Stock"
FROM products;


SELECT product_name Product, price Cost
FROM products;

SELECT product_name AS "ProductName"
FROM products;

--Calculated columns--

SELECT product_name,
	   price * stock_quantity AS "inventory_value"
FROM products
WHERE stock_quantity IS NOT NULL;


SELECT product_name,
	   price AS "Original Price",
	   price-200 AS "discounted_price"
FROM products
WHERE price>1000;



SELECT product_name, stock_quantity,
	   stock_quantity * price AS "stock_value"
FROM products
ORDER BY stock_value DESC NULLS LAST;



SELECT product_name,
	   price AS "current price",
	   price*1.10 AS "Projected Price"
FROM products
ORDER BY "Projected Price" DESC
LIMIT 3;



SELECT product_name, stock_quantity,
	   price*stock_quantity AS "Inventory value"
FROM products
WHERE  (price*stock_quantity)<10000
ORDER BY "Inventory value" ASC
LIMIT 4;

--SUM--


SELECT COUNT(*) AS "total_products"
FROM products;

SELECT COUNT(stock_quantity) AS "known_stock_count"
FROM products;

SELECT COUNT(email) AS "customers_with_email"
FROM customers;


SELECT COUNT(*) AS "distinct_stock_levels"
FROM products
WHERE stock_quantity IS NOT NULL;


SELECT COUNT(DISTINCT city) AS "distinct_customer_cities"
FROM customers;



SELECT COUNT(stock_quantity) AS "qualifying_products"
FROM products
WHERE price>1000;


SELECT COUNT(*) AS "result total_records"
FROM products;


SELECT COUNT(DISTINCT stock_quantity) AS "unique_stock_levels"
FROM products;


SELECT COUNT(city) AS "customers_with_city"
FROM customers;

SELECT COUNT(stock_quantity) AS "premium_in_stock_count"
FROM products
WHERE price>10000;


