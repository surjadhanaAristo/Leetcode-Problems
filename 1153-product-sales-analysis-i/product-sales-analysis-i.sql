# Write your MySQL query statement below
SELECT p.product_name, s.year, s.price
FROM Product as p
INNER JOIN Sales as s on s.product_id = p.product_id