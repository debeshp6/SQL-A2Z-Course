/* Q: For each doctor, display their id, full name, and the first and last admission date they attended.

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
	  d.doctor_id,
    concat(d.first_name, ' ', d.last_name) as full_name,
    min(a.admission_date) as first_admission_date,
    max(a.admission_date) as last_admission_date
from doctors d 
join admissions a 
on d.doctor_id = a.attending_doctor_id
group by 
	  d.doctor_id,
    d.first_name,
    d.last_name
order by 
	  d.doctor_id;
