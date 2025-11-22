/* Q: Show all columns for patients who have one of the following patient_ids: 1,45,534,879,1000.

Table Info: patient

| Column Name   | Type     | Details        |
|---------------|----------|----------------|
| patient_id    | INT      | primary key    |
| first_name    | TEXT     |                |
| last_name     | TEXT     |                |
| gender        | CHAR(1)  |                |
| birth_date    | DATE     |                |
| city          | TEXT     |                |
| province_id   | CHAR(2)  | primary key    |
| allergies     | TEXT     |                |
| height        | INT      |                |
| weight        | INT      |                |

*/

-- SOLUTION:

select * from patients
where patient_id in(1,45,534,879,1000);
