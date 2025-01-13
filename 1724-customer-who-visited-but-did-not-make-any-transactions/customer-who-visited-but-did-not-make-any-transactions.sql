# Write your MySQL query statement below
SELECT v.customer_id, COUNT(*) as count_no_trans
FROM Transactions as t
RIGHT JOIN Visits AS v ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY customer_id