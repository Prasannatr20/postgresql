--SUM--

SELECT SUM(price) AS "total_catalogue_price"
FROM products;


SELECT SUM(price*stock_quantity) AS "total_inventory_value"
FROM products;


SELECT SUM(price) AS "premium_price_total"
FROM products
WHERE price>1000;


SELECT SUM(price*stock_quantity) AS "usb_inventory_value"
FROM products
WHERE product_name ILIKE '%USB%';


SELECT SUM(price*stock_quantity) AS "high_value_inventory_total"
FROM products
WHERE (price*stock_quantity)>10000;
