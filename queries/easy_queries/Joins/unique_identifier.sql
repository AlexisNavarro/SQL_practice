--This query will select the unique id from the EmployeeUNI table and the name from Employees
--However, the selection will be based on the matching id from both tables
--In addition, if a unique_id is not found then unique id must appear as NULL
--This can be done with the use of left join as it will include every single column from the left table being employees and have unique_id be null
 
select EmployeeUNI.unique_id, Employees.name
from Employees
left Join EmployeeUNI on Employees.id = EmployeeUNI.id