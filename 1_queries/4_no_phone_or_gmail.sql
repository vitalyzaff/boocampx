-- all of the students without a gmail.com or phone number

SELECT name, email, id, cohort_id
FROM students 
WHERE phone IS NULL
AND email NOT LIKE '%gmail.com';