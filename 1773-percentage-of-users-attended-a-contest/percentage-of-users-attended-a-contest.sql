# Write your MySQL query statement below
SELECT r.contest_id, round((count(*) / (select count(*) from Users)) * 100, 2) As percentage
FROM Register as r
INNER JOIN Users as u on u.user_id = r.user_id
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC

