/* Q: Show first and last name, allergies from patients which have allergies to either 'Penicillin' or 'Morphine'. Show results ordered ascending by allergies then by first_name then by last_name.

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
where allergies in('Penicillin', 'Morphine')
order by allergies, first_name, last_name;

-- another solution

select first_name, last_name, allergies
from patients
where allergies = 'Penicillin' or allergies = 'Morphine'
order by
allergies asc,
first_name asc,
last_name asc;
