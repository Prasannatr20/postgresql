--GROUP BY--

/*
The inventory manager wants a report showing each stock quantity and the number of products that have that quantity.
Include products whose stock quantity is unknown.
*/

SELECT stock_quantity, COUNT(*)
FROM products
GROUP BY stock_quantity;

/*
The finance team wants the average listed product price for every stock quantity.
Label the average_price output column.
*/

SELECT AVG(price), stock_quantity
FROM products
GROUP BY stock_quantity;


/*
The purchasing team wants the lowest and highest product prices for every stock quantity.
Name the output columns cheapest_price and costliest_price.
*/

SELECT MIN(price) AS "cheapest_price",
	   MAX(price) AS "costliest_price",
	   stock_quantity
FROM products
GROUP BY stock_quantity;

/*
The inventory manager wants the total stock quantity represented by each known stock level.
Do not include products whose stock quantity is unknown. Name the calculated column total_stock.
*/

SELECT SUM(stock_quantity) AS "total_stock", stock_quantity
FROM products
WHERE stock_quantity IS NOT NULL
GROUP BY stock_quantity;

/*
The customer analytics team wants to know how many customer records belong to each city, including records with an unknown city.
Name the count customer_count.
*/

SELECT COUNT(*) AS "customer_count", city
FROM customers
GROUP BY city;

/*
For each known stock quantity, report the number of products in that group and the sum of their stock quantities.
Exclude products whose stock quantity is unknown.
*/


SELECT stock_quantity,
       COUNT(*) AS product_count,
       SUM(stock_quantity) AS total_stock
FROM products
WHERE stock_quantity IS NOT NULL
GROUP BY stock_quantity;










