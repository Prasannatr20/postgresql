--GROUP BY--

/*
The inventory manager wants a report for every known stock quantity,
showing both the number of products and the sum of their stock quantities.
*/


SELECT stock_quantity AS "stock_quantity",
	   COUNT(*) AS "product_count",
	   SUM(stock_quantity) AS "total_stock"
FROM products
WHERE stock_quantity IS NOT NULL
GROUP BY stock_quantity;


/*
The finance team wants the lowest and highest product prices for every combination of stock quantity and product name.
Return the stock quantity, product name, lowest price as cheapest_price, and highest price as costliest_price.
*/


SELECT stock_quantity, product_name,
	   MIN(price) AS "cheapest_price",
	   MAX(price) AS "costliest_price"
FROM products
GROUP BY stock_quantity, product_name;



/*
The customer analytics team wants to know how many customer records belong to each combination of city and email address.
Include customers whose city is unknown. Name the count customer_count.
*/


SELECT COUNT(*) AS "customer_count",
	   city,
	   email
FROM customers
GROUP BY city, email;




/*
The inventory manager wants a report for every combination of stock quantity and price.
Show how many products belong to each combination.
Exclude products with unknown stock quantities. Name the count product_count.
*/


SELECT stock_quantity, price, COUNT(*) AS "product_count"
FROM products
WHERE stock_quantity IS NOT NULL
GROUP BY stock_quantity, price;


/*
The finance team wants the average inventory value for each combination of stock quantity and product price.
Inventory value means price multiplied by stock quantity.
Exclude products with unknown stock quantities. Name the calculated result average_inventory_value.
*/


SELECT stock_quantity, price,
	   AVG(stock_quantity*price) AS "average_inventory_value"
FROM products
WHERE stock_quantity IS NOT NULL
GROUP BY stock_quantity, price;


/*
The customer analytics team wants to count customers for each combination of city and name.
Include customers whose city is unknown. Name the result customer_count.
*/


SELECT city, name, COUNT(*) AS "customer_count"
FROM customers
GROUP BY city, name;



