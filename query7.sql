SELECT product_name, price 
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);

SELECT customer_id, amount
FROM transactions t1
WHERE t1.amount > (
    SELECT AVG(t2.amount)
    FROM transactions t2
    WHERE t2.customer_id = t1.customer_id
);

WITH total_pembelian AS (
    SELECT customer_id, product, quantity * price_per_unit AS "Total"
    FROM sales
)

SELECT customer_id,product, "Total"
FROM total_pembelian
WHERE product = 'Keyboard' AND "Total" > 25;

WITH product AS (
    SELECT product, COUNT(product) AS "Total Kemunculan"
    FROM sales
    GROUP BY product
)

SELECT s.customer_id, p.product, "Total Kemunculan"
FROM product p
JOIN sales s ON s.product = p.product
WHERE "Total Kemunculan" = 1;

WITH total_terjual AS (
    SELECT product_id, SUM(quantity) as "total"
    FROM sales
    GROUP BY product_id
)

SELECT p.name, p.price, t.total, p.price * t.total AS "penjualan"
FROM total_terjual t
JOIN products p ON p.id = t.product_id
WHERE total >= 7;

SELECT p.name, p.price, SUM(quantity) as "total", SUM(quantity) * p.price AS "penjualan"
FROM sales s
JOIN products p ON p.id = s.product_id
GROUP BY product_id, p.name, p.price;