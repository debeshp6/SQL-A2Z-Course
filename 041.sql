/* Q: Show patient_id, first_name, last_name from patients whose does not have any records in the admissions table. (Their patient_id does not exist in any admissions.patient_id rows.)

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

+----------------------+----------+
| Column Name          | Type     |
+----------------------+----------+
| patient_id           | INT      |
| admission_date       | DATE     |
| discharge_date       | DATE     |
| diagnosis            | TEXT     |
| attending_doctor_id  | INT      |
+----------------------+----------+

*/

-- SOLUTION:

select
	p.patient_id,
    p.first_name,
    p.last_name
from patients p 
where p.patient_id not in (
  select a.patient_id
  from admissions a 
);
