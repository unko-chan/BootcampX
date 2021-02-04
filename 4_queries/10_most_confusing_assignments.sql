select 
assignments.id as id,
assignments.name as name,
assignments.day as day,
assignments.chapter as chapter, 
count(assignment_id) as total_requests
from assignments
join assistance_requests on assignment_id = assignments.id
group by assignments.id
order by total_requests desc