/*
Non Gmail Students

Recently we've been having trouble emailing students without a gmail account. 
To make sure that we can reliably contact all students, we'll need to make sure that student's without a gmail account have a phone number.

Get all of the students without a gmail.com account and a phone number.

    Get their name, email, id, and cohort_id.
*/


SELECT name, email, id, cohort_id 
FROM students 
WHERE email 
NOT LIKE '%@gmail.com'
AND 
phone IS NULL;


/*
Expected Result:

      name       | id  |           email           | cohort_id 
-----------------+-----+---------------------------+-----------
 Javonte Ward    | 178 | jessie_howell@hotmail.com |        12
 Jessika Jenkins | 187 | stephanie.koss@kevon.io   |        12
 Jerrold Rohan   | 189 | wehner.twila@hotmail.com  |        12
(3 rows)
*/