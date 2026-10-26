--SUB QUERIES--

/*
Find all products whose price is higher than the average price of every product in the store.
*/

SELECT product_name, price
FROM products
WHERE price>( SELECT AVG(price)
		      FROM products);


--Find products priced below the most expensive product in the store.

SELECT product_name, price
FROM products
WHERE price<(SELECT MAX(price)
		     FROM products)
ORDER BY price DESC;

--Find all products whose stock quantity matches the stock quantity of at least one product priced above ₹10,000.

SELECT product_name, price
FROM products
WHERE stock_quantity IN(SELECT stock_quantity
						 FROM products
						 WHERE price>10000)
ORDER BY stock_quantity DESC;
