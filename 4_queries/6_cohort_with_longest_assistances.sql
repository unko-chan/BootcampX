select cohorts.name as name, AVG(completed_at - started_at) as average_assistance_time
from cohorts
join students on cohort_id = cohorts.id
join assistance_requests on student_id = students.id
group by cohorts.name
order by AVG(completed_at - started_at) desc
limit 1
