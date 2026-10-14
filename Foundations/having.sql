--HAVING--

/*
The inventory manager wants a list of stock quantities shared by at least two products.
Display the stock quantity and the number of products for each qualifying quantity.
Name the count column product_count.
*/


SELECT stock_quantity, COUNT(*) AS "product_count"
FROM products
GROUP BY stock_quantity
HAVING COUNT(*)>=2;


/*
The marketing team wants to see cities with more than one customer.
Display the city and its customer count. Exclude customers whose city is unknown.
Name the count column customer_count.
*/


SELECT city, count(*) AS "customer_count"
FROM customers
WHERE city IS NOT NULL
GROUP BY city
HAVING COUNT(*)>1;


/*
Management wants stock quantities whose combined inventory value exceeds ₹50,000.
For this report, calculate each product's inventory value as its price multiplied by its stock quantity,
add those values within each stock-quantity group, and display the stock quantity and combined value.
Exclude products with unknown stock. Name the calculated column total_inventory_value.
*/


SELECT stock_quantity, SUM(price*stock_quantity) AS "total_inventory_value"
FROM products
WHERE stock_quantity IS NOT NULL
GROUP BY stock_quantity
HAVING SUM(price*stock_quantity)>50000;


/*
Showing only cities that have more than one customer.
*/

SELECT city
FROM customers
GROUP BY city
HAVING COUNT(*)>1;
