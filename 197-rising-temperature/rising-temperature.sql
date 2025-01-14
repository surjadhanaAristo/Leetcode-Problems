# Write your MySQL query statement below
WITH PreviousWeather AS
(SELECT id, temperature, recordDate, LAG(temperature) OVER (ORDER BY recordDate) As PreviousTemp, LAG(recordDate) OVER (ORDER BY recordDate) As PreviousDate
FROM Weather)
SELECT id
FROM PreviousWeather
WHERE temperature > PreviousTemp AND recordDate = DATE_ADD(PreviousDate, INTERVAL 1 DAY);
