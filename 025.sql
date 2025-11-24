/* Q: Show the city and the total number of patients in the city.
Order from most to least patients and then by city name ascending.

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

select city, count(*) as num_patients
from patients
group by city
order by
num_patients desc,
city asc;
