-- From the same table you want to select the name of the manager where they have
-- at least 5 employees reporting to them by their manager id
-- to do this, select the name of the manager from the employees table and join the same
-- table on the employee managerId and the mangagers id 
-- then we group by the manager id and name which has a count of at least 5 direct reports
Select m.name
from Employee e
Join Employee m on e.managerId = m.id
Group by m.id, m.name
Having Count(e.managerid) >= 5;

-- Instead of using JOINs, we can solve this problem using a subquery.
-- In the outer query, we select the name from the Employee table
-- where the employee's id is found in the result of the subquery.
-- The subquery selects managerId from the same Employee table,
-- groups the rows by managerId,
-- and filters to only include managers with at least 5 direct reports.
Select
    name
From
    Employee
WHERE id IN(
    select managerId
    From Employee
    Group by managerId
    Having count(*)>= 5
);
