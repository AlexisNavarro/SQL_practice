-- using a subquery find the user id's that logged in with 3 consecutive days
WITH consecutive as (
    SELECT prev.user_id 
    FROM UserActivity prev
    join UserActivity day1
    on prev.user_id = day1.user_id AND day1.activity_date = prev.activity_date + interval 1 day
    join UserActivity day2
    on  prev.user_id = day2.user_id AND day2.activity_date = prev.activity_date + interval 2 day
    join UserActivity day3
    on  prev.user_id = day3.user_id AND day3.activity_date = prev.activity_date + interval 3 day
)

SELECT DISTINCT user_id from consecutive;