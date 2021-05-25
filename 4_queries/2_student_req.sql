-- the total number of assistance_requests for a student

SELECT name, count(assistance_requests.*) AS total_assistances
FROM students
JOIN assistance_requests ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;