-- This query returns the average experience years of employees for each project,
-- rounded to 2 decimal places
SELECT
    p.project_id, Round(SUM(e.experience_years)/Count(*), 2) as average_years
FROM
    Project as p
join Employee e
    on p.employee_id = e.employee_id
Group by 
    p.project_id; 