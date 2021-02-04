select 
teachers.name as teacher, 
students.name as student, 
assignments.name as assignment, 
(completed_at - started_at) as duration
from teachers
join assistance_requests on teacher_id = teachers.id
join assignments on assignments.id = assignment_id
join students on students.id = student_id
order by duration