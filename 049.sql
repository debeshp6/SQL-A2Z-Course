/* Q: Show the provinces that has more patients identified as 'M' than 'F'. Must only show full province_name.

Table Info: patients

+--------------+----------+
| Column Name  | Type     |
+--------------+----------+
| patient_id   | INT      |
| first_name   | TEXT     |
| last_name    | TEXT     |
| gender       | CHAR(1)  |
| birth_date   | DATE     |
| city         | TEXT     |
| province_id  | CHAR(2)  |
| allergies    | TEXT     |
| height       | INT      |
| weight       | INT      |
+--------------+----------+

Table Info: province_names

+--------------+-------------+
| Column Name  | Type        |
+--------------+-------------+
| province_id  | CHAR(2)     |
| province_name| TEXT        |
+--------------+-------------+

*/

-- SOLUTION:

select
	pr.province_name 
    from province_names pr 
join patients p 
on pr.province_id = p.province_id
group by pr.province_name
having sum(p.gender = 'M') > sum(p.gender = 'F')
order by pr.province_name asc;
