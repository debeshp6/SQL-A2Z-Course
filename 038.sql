/* Q: For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.

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
	concat(pa.first_name, ' ', pa.last_name) as patient_name,
  ad.diagnosis,
  concat(doc.first_name, ' ', doc.last_name) as doctor_name
from patients pa 
join admissions ad on pa.patient_id = ad.patient_id
join doctors doc on ad.attending_doctor_id = doc.doctor_id;
