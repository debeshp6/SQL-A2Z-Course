/* Q: Show first name of patients that start with the letter 'C'

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

select first_name from patients
where first_name like 'C%';
