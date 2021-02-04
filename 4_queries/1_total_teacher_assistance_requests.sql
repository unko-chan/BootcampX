select name, count(teacher_id) as total_assistances
from teachers
join assistance_requests on teacher_id = teachers.id
where name = 'Waylon Boehm'
group by name