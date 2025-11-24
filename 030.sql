/* Q: Show the province_id(s), sum of height; where the total sum of its patient's height is greater than or equal to 7,000.

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

select province_id, sum(height) as sum_height
from patients
group by province_id
having sum(height) >= 7000;
