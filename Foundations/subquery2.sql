--SUB QUERIES--

/*
Your store manager wants a list of products whose stock quantity does not match the stock quantity of any product priced above ₹10,000.
*/


SELECT product_name, price, stock_quantity
FROM products
WHERE stock_quantity NOT IN (SELECT stock_quantity
							 FROM products
							 WHERE price>10000)
ORDER BY stock_quantity ASC;



/*
The store manager now wants to find products whose stock quantity matches the stock quantity of at least one product priced above ₹10,000.
Return product_name, price, and stock_quantity.
Use a subquery.
Sort by stock_quantity in descending order.
Do not hardcode the stock quantities.
*/

SELECT product_name, price, stock_quantity
FROM products
WHERE stock_quantity IN (SELECT stock_quantity
						 FROM products
						 WHERE price>10000)
ORDER BY stock_quantity DESC;




/*
The store manager wants to identify products whose stock quantity is not shared by any product priced above ₹20,000.
Requirements:
- Return product_name, price, and stock_quantity.
- Sort by price from highest to lowest.
- Derive the stock quantities from the database; do not hardcode them
*/


SELECT product_name, price, stock_quantity
FROM products
WHERE stock_quantity NOT IN(SELECT stock_quantity
							FROM products
							WHERE price>20000)
ORDER BY price DESC;

/*
The store manager wants to list products whose stock quantity is not shared by any product priced above ₹20,000.
However, the manager also wants to include products whose stock quantity is unknown (NULL).
Requirements:
- Return product_name, price, and stock_quantity.
- Keep the subquery-based filtering.
- Sort by price descending.
- Ensure products with unknown stock quantity are included.
*/

SELECT product_name, price, stock_quantity
FROM products
WHERE stock_quantity IS NULL
   OR stock_quantity NOT IN (
       SELECT stock_quantity
       FROM products
       WHERE price > 20000
         AND stock_quantity IS NOT NULL
   )
ORDER BY price DESC;


/*
The store manager wants to find all products whose stock quantity matches the stock quantity of at least one product priced above ₹10,000.
Requirements:
- Return product_name, price, and stock_quantity.
- Sort by stock_quantity in ascending order.
- Derive the values using a subquery; do not hardcode them.
*/

SELECT product_name, price, stock_quantity
FROM products
WHERE stock_quantity IN (SELECT stock_quantity
						 From products
						 WHERE price>10000)
ORDER BY stock_quantity ASC;


/*
Find all products whose stock quantity does not match the stock quantity of any product priced above ₹20,000.
Requirements:
- Return product_name, price, and stock_quantity.
- Sort by price from highest to lowest.
- Use a subquery.
*/


SELECT product_name, price, stock_quantity
FROM products
WHERE stock_quantity NOT IN(SELECT stock_quantity
							 FROM products
							 WHERE price>20000)
ORDER BY price DESC;


/*
The manager wants products whose stock quantity matches that of at least one product priced between ₹2,000 and ₹15,000, inclusive.
Requirements:
- Return product_name, price, and stock_quantity.
- Sort by price in descending order.
- Use a subquery
*/

SELECT product_name, price, stock_quantity
FROM products
WHERE stock_quantity IN(SELECT stock_quantity
						FROM products
						WHERE price BETWEEN 2000 AND 15000)
ORDER BY price DESC;

/*
Find products whose stock quantity does not match any product priced above ₹20,000. Products with an unknown stock quantity must also be included.
Requirements:
- Return product_name, price, and stock_quantity.
- Sort by price in descending order.
- Handle NULL correctly in your query.
*/

SELECT product_name, price, stock_quantity
FROM products
WHERE stock_quantity IS NULL OR stock_quantity NOT IN(SELECT stock_quantity
												  FROM products
												  WHERE price>20000 AND stock_quantity IS NOT NULL)
ORDER BY price DESC;


/*
Find products whose stock quantity does not match any stock quantity returned by products priced above ₹10,000,
while ensuring that unknown stock values in the subquery do not incorrectly eliminate valid products.
Requirements:
- Return product_name, price, and stock_quantity.
- Include products with known stock that meet the condition.
- Sort by stock quantity in ascending order, with unknown stock values last.
- Use a subquery and handle NULL deliberately.
*/

SELECT product_name, price, stock_quantity
FROM products
WHERE stock_quantity NOT IN(SELECT stock_quantity
							FROM products
							WHERE price>10000 AND stock_quantity IS NOT NULL)
ORDER BY stock_quantity ASC NULLS LAST;

