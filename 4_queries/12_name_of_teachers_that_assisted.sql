select distinct teachers.name as teacher, cohorts.name as cohort
from teachers
join assistance_requests on teacher_id = teachers.id
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id
where cohorts.name = 'JUL02'
