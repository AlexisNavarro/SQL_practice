-- Find the follower count of each user
-- make sure return the table in ascending order

SELECT
    user_id, count(follower_id) as followers_count
From
    Followers
Group by
    user_id
Order by
    user_id asc;