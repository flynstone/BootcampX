/*
Student's Total Assignment Duration

Get the total amount of time that a student has spent on all assignments.

    This should work for any student but use 'Ibrahim Schimmel' for now.
    Select only the total amount of time as a single column.
*/

SELECT SUM(duration) 
FROM students JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
WHERE students.name = 'Ibrahim Schimmel';

/*
Expected Result:

 total_duration 
----------------
           6888
(1 row)
*/