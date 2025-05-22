--query to select the name of a customer that is not referred by the id of 2, will be slower with large datasets
SELECT name 
from Customer
where referee_id !=2 or referee_id is null;

--faster query as it gets all referee_id = 2 and excludes those ids from the list to be returned
-- Then it excludes those IDs from the final result using NOT IN
--subquery: runs first to select the id of the customer referee_id = 2
--Outer query: (where not in) returns the customer who was not included in that list within the subquery
select name 
from customer
where id not in (
    select id
    from customer
    where referee_id = 2
);