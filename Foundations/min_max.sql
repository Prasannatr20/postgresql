--MIN, MAX--

/*
The finance team wants the lowest and highest listed product prices.
Return the results as lowest_price and highest_price.
*/

SELECT MIN(price) AS lowest_price,
	   MAX(price) AS highest_price
FROM products;

/*
The inventory manager wants the smallest and largest known stock quantities.
Name the results minimum_stock and maximum_stock.
*/

SELECT MIN(stock_quantity) AS minimum_stock,
	   MAX(stock_quantity) AS maximum_stock
FROM products
WHERE stock_quantity IS NOT NULL;

/*
Find the highest listed price among products costing more than ₹10,000.
Name the result highest_premium_price.
*/

SELECT MAX(price) AS "highest_premium_price"
FROM products
WHERE price>10000;

/*
The purchasing team wants the cheapest and most expensive USB-related products, matching names regardless of capitalization.
Return the values as cheapest_usb_price and most_expensive_usb_price.
*/

SELECT MIN(price) AS "cheapest_usb_price",
	   MAX(price) AS "most_expensive_usb_price"
FROM products
WHERE product_name ILIKE '%usb%';


/*
Find the smallest and largest individual inventory values among products with known stock quantities whose inventory value exceeds ₹10,000.
Name the results minimum_high_value_inventory and maximum_high_value_inventory.
*/

SELECT MIN(price*stock_quantity) AS "minimum_high_value_inventory",
	   MAX(price*stock_quantity) AS "maximum_high_value_inventory"
FROM products
WHERE stock_quantity IS NOT NULL AND (price*stock_quantity)>10000;


/*
The customer analytics team wants to identify the alphabetically first and last known city names in the customers table.
Name the results first_city and last_city.
*/

SELECT MIN(city) AS "first_city",
	   MAX(city) AS "last_city"
FROM customers;

