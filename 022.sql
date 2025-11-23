/* Q: Show the total amount of male patients and the total amount of female patients in the patients table.
Display the two results in the same row.

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

select
    sum(gender = 'M') as total_males,
    sum(gender = 'F') as total_females
from patients;
