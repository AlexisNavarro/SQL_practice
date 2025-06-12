-- This query will be returning the id from the weather table
-- where the current date temperature is greater than the previous date

-- To do this, use a self join and join on the current date
-- where prev record date plus 1 day matches the current date
SELECT current.id as Id
From Weather current
join Weather prev
on current.recordDate = prev.recordDate + Interval 1 day
and prev.temperature < current.temperature
