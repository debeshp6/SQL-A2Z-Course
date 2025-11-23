/* Q: Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.
Primary diagnosis is stored in the admissions table.

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

Table Info: admissions

+---------------------+----------+
| column name         | type     |
+---------------------+----------+
| patient_id          | INT      |
| admission_date      | DATE     |
| discharge_date      | DATE     |
| diagnosis           | TEXT     |
| attending_doctor_id | INT      |
+---------------------+----------+

*/

-- SOLUTION:

select p.patient_id, p.first_name, p.last_name
from patients p
Join admissions ad 
ON p.patient_id = ad.patient_id
where ad.diagnosis = 'Dementia';
