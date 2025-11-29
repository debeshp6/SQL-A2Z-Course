/* Q: Show patient_id, first_name, last_name, and attending doctor's specialty.
Show only the patients who has a diagnosis as 'Epilepsy' and the doctor's first name is 'Lisa'

Check patients, admissions, and doctors tables for required information.

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

Table Info: doctors

+------------+----------+
| Column     | Type     |
+------------+----------+
| doctor_id  | INT      |
| first_name | TEXT     |
| last_name  | TEXT     |
| specialty  | TEXT     |
+------------+----------+

*/

-- SOLUTION:

select 
	p.patient_id,
    p.first_name,
    p.last_name,
    d.specialty
from patients p
join admissions a 
on p.patient_id = a.patient_id
join doctors d 
on a.attending_doctor_id = d.doctor_id
where
	a.diagnosis = 'Epilepsy'
    and d.first_name = 'Lisa';
