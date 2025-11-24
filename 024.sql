/* Q: Show patient_id, diagnosis from admissions. Find patients admitted multiple times for the same diagnosis.

Table Info: admissions

+---------------------+----------+
| Column Name         | Type     |
+---------------------+----------+
| patient_id          | INT      |
| admission_date      | DATE     |
| discharge_date      | DATE     |
| diagnosis           | TEXT     |
| attending_doctor_id | INT      |
+---------------------+----------+

*/

-- SOLUTION:

select patient_id, diagnosis 
from admissions
group by patient_id, diagnosis
having count(*) > 1;
