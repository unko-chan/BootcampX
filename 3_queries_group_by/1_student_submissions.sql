SELECT students.name as student, count(assignment_submissions.*) as total_submissons
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name
HAVING count(assignment_submissions.*) < 100;