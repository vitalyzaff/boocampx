-- total number of assignment submissions for each cohort

SELECT cohorts.name AS cohort_name, COUNT(assignment_submissions.*) AS total_submissions
FROM students 
JOIN assignment_submissions ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;