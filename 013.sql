/* Q: Show the patient id and the total number of admissions for patient_id 579.

Table Info: admissions

| Column Name         | Type |
|---------------------|------|
| patient_id          | INT  |
| admission_date      | DATE |
| discharge_date      | DATE |
| diagnosis           | TEXT |
| attending_doctor_id | INT  |


*/

-- SOLUTION:

select patient_id,
count(*) as total_admissions
from admissions
where patient_id = 579;
