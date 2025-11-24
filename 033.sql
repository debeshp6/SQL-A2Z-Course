/* Q: Show all columns for patient_id 542's most recent admission_date.

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

select *
from admissions
where patient_id = 542
order by admission_date desc
limit 1;
