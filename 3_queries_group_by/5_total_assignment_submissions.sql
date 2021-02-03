SELECT cohorts.name as cohort_name, count(assignment_submissions.*) as total_submissons
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.*) DESC;
