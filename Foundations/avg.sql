--AVG--


--The finance team wants the average listed price across all products. Name the result average_product_price.

SELECT AVG(price) AS "average_product_price"
FROM products;

/*The inventory manager wants the average stock quantity per product,
considering only products with a known stock quantity. Name the result average_stock_quantity
*/

SELECT AVG(stock_quantity) AS "average_stock_quantity"
FROM products
WHERE stock_quantity IS NOT NULL;


/*
Calculate the average listed price of products priced above ₹1,000. Name the result average_premium_price.
*/


SELECT AVG(price) AS "average_premium_price"
FROM products
WHERE price>1000;


/*
The purchasing team wants the average listed price of all USB-related products.
Match product names regardless of capitalization. Name the result average_usb_price.
*/

SELECT AVG(price) AS "average_usb_price"
FROM products
WHERE product_name ILIKE '%USB%';

/*
Calculate the average inventory value among products whose individual inventory value exceeds ₹10,000.
Products with unknown stock quantities must not contribute. Name the result average_high_value_inventory.
*/

SELECT AVG(price*stock_quantity) AS "average_high_value_inventory"
FROM products
WHERE (price*stock_quantity)>10000 AND stock_quantity IS NOT NULL;


