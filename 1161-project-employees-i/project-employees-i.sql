# Write your MySQL query statement below
SELECT p.project_id, ROUND(AVG(e.experience_years), 2) as average_years
FROM Project as p
INNER JOIN Employee as e ON e.employee_id = p.employee_id
GROUP BY p.project_id