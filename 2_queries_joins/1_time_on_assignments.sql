--   total amount of time that a student has spent on all assignments

SELECT SUM(duration) AS total_duration 
FROM assignment_submissions 
INNER JOIN students 
ON student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';