/*
We want to apply the count() function to groups of data, rather than the entire query. The groups in this case are the names of students. 
We want to apply the count() function for each students.name.

We will start by selecting the student's name from the students table, and the and the total submissions from the assignment_submissions table.


SELECT count(assignment_submissions.*) as total_submissions
FROM assignment_submissions;

SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id;
*/

SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING COUNT(assignment_submissions.*) < 100 ;
