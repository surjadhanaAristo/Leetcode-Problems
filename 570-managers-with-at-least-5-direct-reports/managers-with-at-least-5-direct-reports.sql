# Write your MySQL query statement below
WITH numEmpTable (empName, empNum) AS (SELECT name, (SELECT COUNT(*) FROM Employee as e2 WHERE e.id=e2.managerId) As numEmployee
FROM Employee as e)
SELECT empName as name
FROM numEmpTable
WHERE empNum >= 5

