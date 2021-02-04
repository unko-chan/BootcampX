select cohorts.name as cohort, sum(completed_at - started_at) as total_duration
from cohorts
join students on cohort_id = cohorts.id
join assistance_requests on student_id = students.id
group by cohorts.name
order by total_duration