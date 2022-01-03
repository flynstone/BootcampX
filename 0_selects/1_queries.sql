/*
Select their id and name.
Order them by their name in alphabetical order.
Since this query needs to work with any specific cohort, just use any number for the cohort_id.
*/

SELECT DISTINCT id, name, cohort_id
FROM students
WHERE cohort_id=1
ORDER BY name ASC

/*
Expected Result:

id |       name        
----+-------------------
  1 | Armand Hilll
 13 | Brian Jones
 16 | Carmel Grant
 14 | Clint Cremin
 17 | Colten Gutkowski
...
(18 rows)
*/
