/*
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students OUTER JOIN cohorts ON cohorts.id = cohort_id;


This is the same query as before but INNER has been replaced with OUTER.

We will get the following error message:

ERROR:  syntax error at or near "OUTER"

That is because there are 3 different types of OUTER JOIN and we need to specify which one we want to perform: LEFT, RIGHT, or FULL.


SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;

Result: (192 rows)

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;

Result: (173 rows)
*/ 
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;

/* Result: (193 rows) */