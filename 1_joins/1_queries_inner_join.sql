/*
INNER JOIN

The kind of JOINing that we've done so far is called an INNER JOIN. In fact, we could rewrite the query to include the INNER keyword.
*/

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students INNER JOIN cohorts ON cohorts.id = cohort_id;

/* result: (172 rows) */