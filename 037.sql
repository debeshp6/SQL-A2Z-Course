/* Q: Display the total amount of patients for each province. Order by descending.

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

Table Info: province_names

+--------------+----------+
| Column Name  | Type     |
+--------------+----------+
| province_id  | CHAR(2)  |
| province_name| TEXT     |
+--------------+----------+

*/

-- SOLUTION:

select pr.province_name, count(*) as patient_count
from patients p 
join province_names pr 
on p.province_id = pr.province_id
group by
	pr.province_name
order by
	patient_count desc;
