/*
Select the total number of students who were in the first 3 cohorts.
*/

SELECT COUNT(id)
FROM students
WHERE cohort_id BETWEEN 1 and 3;

/*
Expected Result:

 count 
-------
    48
(1 row)
*/