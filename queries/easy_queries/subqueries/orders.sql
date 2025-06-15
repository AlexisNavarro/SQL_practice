-- Common Table Expression (CTE) to calculate the total amount spent by each user

with total as (
    SELECT customer_id, sum(amount) as total
    FROM orders as O
    Group by customer_id
)

select *
from total
where total > 70;
