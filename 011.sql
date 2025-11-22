/* Q: Show the total number of admissions.

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

select count(patient_id) from admissions;
