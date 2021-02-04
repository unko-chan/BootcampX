select name, count(student_id) as total_assistances
from students
join assistance_requests on student_id = students.id
where name = 'Elliot Dickinson'
group by name