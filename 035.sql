/* Q: Show first_name, last_name, and the total number of admissions attended for each doctor.
Every admission has been attended by a doctor.

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
	  d.first_name,
    d.last_name,
    count(a.patient_id) as admissions_total
from doctors d

join admissions a 
on d.doctor_id = a.attending_doctor_id

group by
  d.doctor_id,
	d.first_name,
  d.last_name

order by
	admissions_total desc;
