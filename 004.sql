/* Q: Show first name and last name of patients that weight within the range of 100 to 120 (inclusive).

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

select first_name, last_name 
from patients
where weight between 100 and 120;
