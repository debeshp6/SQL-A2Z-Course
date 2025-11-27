/* Q: Display a single row with max_visits, min_visits, average_visits where the maximum, minimum and average number of admissions per day is calculated. Average is rounded to 2 decimal places.

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
	max(visits) as max_visits,
    min(visits) as min_visits,
    round(avg(visits), 2) as average_visits
from (
  	select admission_date, count(*) as visits
  	from admissions
  	group by admission_date
);
