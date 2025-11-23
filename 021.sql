/* Q: Display every patient's first_name.
Order the list by the length of each name and then by alphabetically.

Table Info: patients

+--------------+----------+
| Column Name  | Type     |
+--------------+----------+
| patient_id   | INT      |
| first_name   | TEXT     |
| last_name    | TEXT     |
| gender       | CHAR(1)  |
| birth_date   | DATE     |
| city         | TEXT     |
| province_id  | CHAR(2)  |
| allergies    | TEXT     |
| height       | INT      |
| weight       | INT      |
+--------------+----------+

*/

-- SOLUTION:

select first_name
from patients
order by length(first_name), first_name;
