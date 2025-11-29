/* Q: Each admission costs $50 for patients without insurance, and $10 for patients with insurance. All patients with an even patient_id have insurance.

Give each patient a 'Yes' if they have insurance, and a 'No' if they don't have insurance. Add up the admission_total cost for each has_insurance group.

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
	case
		when patient_id % 2 = 0 then 'Yes'
        else 'No'
    end as has_insurance,
    sum (
      case 
      	when patient_id % 2 = 0 then 10
      	else 50
      end
    ) as cost_after_insurance
from admissions
group by has_insurance;
