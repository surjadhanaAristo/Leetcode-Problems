# Write your MySQL query statement below
SELECT s.user_id, ROUND(COUNT(CASE WHEN c.action = 'confirmed' THEN 1 ELSE NULL END)/COUNT(*), 2) AS confirmation_rate
FROM Signups As s
LEFT JOIN Confirmations as c ON c.user_id = s.user_id
GROUP BY s.user_id