/*
We need to make sure that we can contact students through a phone number or through email. If student's don't have a phone number or email 
associated with their account, we'll need to message them on slack to update their details.

Get all of the students that don't have an email or phone number.

  -Get their name, id, and cohort_id.
*/

SELECT name, id, cohort_id, email, phone
FROM students
WHERE email ISNULL OR phone ISNULL;

/*
Expected Result:

       name       | id  
------------------+-----
 Aurore Yundt     | 160
 Cory Toy         | 161
 Kurt Turcotte    | 163
 Elda McClure     | 164
 Luisa Sipes      | 168
...
(17 rows)
*/