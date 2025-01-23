# Write your MySQL query statement below

SELECT students.student_id, students.student_name, sub.subject_name, COALESCE(e.attended_exams, 0) AS attended_exams
FROM Students as students
CROSS JOIN Subjects sub
LEFT JOIN (
    SELECT student_id, subject_name, COUNT(*) AS attended_exams
    FROM Examinations
    GROUP BY student_id, subject_name
) e USING (student_id, subject_name)
ORDER BY students.student_id, sub.subject_name