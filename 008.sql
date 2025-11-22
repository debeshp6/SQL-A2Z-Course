/* Q: Show how many patients have a birth_date with 2010 as the birth year.

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

select count(*)
from patients
where year(birth_date) = 2010;
