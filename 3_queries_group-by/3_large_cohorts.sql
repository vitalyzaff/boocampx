-- all cohorts with 18 or more students

SELECT cohorts.name AS cohort_name, COUNT(students) AS student_count
FROM cohorts 
JOIN students ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING COUNT(students) >= 18
ORDER BY COUNT(students);