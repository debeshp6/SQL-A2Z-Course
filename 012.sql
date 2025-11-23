/* Q: Show all the columns from admissions where the patient was admitted and discharged on the same day.

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

select * from admissions
where admission_date = discharge_date;
