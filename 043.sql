/* Q: Display every patient that has at least one admission and show their most recent admission along with the patient and doctor's full name.

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

Table Info: doctors

+------------+----------+
| Column     | Type     |
+------------+----------+
| doctor_id  | INT      |
| first_name | TEXT     |
| last_name  | TEXT     |
| specialty  | TEXT     |
+------------+----------+

*/

-- SOLUTION:

SELECT
    CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
    a.admission_date AS most_recent_admission,
    CONCAT(d.first_name, ' ', d.last_name) AS doctor_name
FROM patients p
JOIN (
    SELECT patient_id, MAX(admission_date) AS latest_date
    FROM admissions
    GROUP BY patient_id
) x
    ON p.patient_id = x.patient_id
JOIN admissions a
    ON a.patient_id = x.patient_id
    AND a.admission_date = x.latest_date
JOIN doctors d
    ON d.doctor_id = a.attending_doctor_id
ORDER BY a.admission_date DESC;
