use mydb;

-- 1
SELECT * FROM products;
SELECT name, phone FROM shippers;

-- 2
SELECT 
    AVG(price) AS average_price,
    MAX(price) AS maximum_price,
    MIN(price) AS minimum_price
FROM products;

-- 3
SELECT DISTINCT category_id, price
FROM products
ORDER BY price DESC
LIMIT 10;

-- 4 
SELECT COUNT(*) AS product_count
FROM products
WHERE price BETWEEN 20 AND 100;

-- 5 
SELECT 
    supplier_id,
    COUNT(*) AS product_count,
    AVG(price) AS average_price
FROM products
GROUP BY supplier_id;
 