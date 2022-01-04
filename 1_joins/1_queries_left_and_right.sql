/*
LEFT and RIGHT

When we write a LEFT OUTER JOIN or a RIGHT OUTER JOIN, we can omit the word OUTER. In the rest of our examples, we will omit the OUTER keyword.

We could also rewrite any RIGHT JOIN as a LEFT JOIN, just by changing the order of the tables. So the following two queries would produce identical results:


1. FROM students LEFT JOIN cohorts ON cohorts.id = cohort_id;
2. FROM cohorts RIGHT JOIN students ON cohorts.id = cohort_id;

These two tables are going to be joined using the following criteria:

FROM students JOIN cohorts ON cohorts.id = cohort_id



INNER JOIN

FROM students JOIN cohorts ON cohorts.id = cohort_id
Only students that have a cohort_id and only cohorts that have students.

LEFT OUTER JOIN

FROM students LEFT JOIN cohorts ON cohorts.id = cohort_id

All students and only cohorts that have students. students is the table to the left of the word LEFT.
RIGHT OUTER JOIN

FROM students RIGHT JOIN cohorts ON cohorts.id = cohort_id

Only students that have a cohort_id and all cohorts. cohorts is the table to the right of the word RIGHT.
FULL OUTER JOIN

FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id

All students and all cohorts. 
*/