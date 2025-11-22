/* Q: Show first name, last name, and the full province name of each patient.

Example: 'Ontario' instead of 'ON'

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

Table Info: province_names

| Column Name   | Type    | Details      |
|---------------|---------|--------------|
| province_id   | CHAR(2) | primary key  |
| province_name | TEXT    |              |

*/

-- SOLUTION:

SELECT
p.first_name,
p.last_name,
pr.province_name
from patients p
JOIN province_names pr 
ON p.province_id = pr.province_id;
