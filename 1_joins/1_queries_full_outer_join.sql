/*
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;

Result: (192 rows)


SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;

Result: (173 rows)
*/

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;

Result: (193 rows)

/*

The LEFT OUTER JOIN will return all of the students, even ones without a cohort_id.
The RIGHT OUTER JOIN will return all cohorts, even ones without any students enrolled.
The FULL OUTER JOIN will return all cohorts and all students, even when there is no match.

An OUTER JOIN will join the tables similarly to an INNER JOIN but will return all results for one of the tables, even when the join condition is not met.
For any row where the condition was not met, a row is added with NULL data.

This is where the LEFT, RIGHT, and FULL, come in. We use these to specify which table should have all of its rows returned, regardless of the condition being met.

1. FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;
2. FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;
3. FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;

    The first query will return all students because students is to the LEFT of the word JOIN.
    The second query will return all of the cohorts because cohorts is to the RIGHT of the word JOIN.
    The third query will return all rows from both tables, even when there is no match.

*/