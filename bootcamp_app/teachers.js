const { Pool } = require('pg')
const input = process.argv.slice(2)

const pool = new Pool({
  user: 'kevinliang',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
select distinct teachers.name as teacher, cohorts.name as cohort
from teachers
join assistance_requests on teacher_id = teachers.id
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id
where cohorts.name LIKE '%${input[0] || 'JUL02'}%'
`)
.then(res => { 
  res.rows.forEach(teacher => {
    console.log(`${teacher.cohort}: ${teacher.teacher}`)
  })
})
.catch(err => console.error('query error', err.stack));