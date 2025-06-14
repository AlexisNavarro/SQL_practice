-- In this query, retrieve the percentage of users for each contest
-- sort the data by descending for percentage and ascending on contest id if there is a tie
-- To do find the percentage get the number of users that attended the contest * 100
-- Then divide by the total number of users in the user table
SELECT
    r.contest_id,
    Round(Count(distinct r.user_id)*100 /total.total_users,2) as percentage
From 
    Register r,
    (Select Count(*) as total_users from users) as total
Group by
    r.contest_id
order by
    percentage desc,
    r.contest_id asc;
