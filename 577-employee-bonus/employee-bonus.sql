# Write your MySQL query statement below
SELECT e.name, b.bonus
FROM Employee As e
LEFT JOIN Bonus as b ON b.empId = e.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL