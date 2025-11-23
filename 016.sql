/* Q: Write a query to find list of patients first_name, last_name, and allergies where allergies are not null and are from the city of 'Hamilton'.

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

select first_name, last_name, allergies
from patients
where city = 'Hamilton' and allergies is not null;
