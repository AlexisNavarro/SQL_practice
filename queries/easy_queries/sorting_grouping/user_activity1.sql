-- find the daily count of active users between the date '2019-07-27' and 30 days prior inclusive
-- return the activity_date and the count of unique users
Select activity_date as day, count(Distinct user_id) as active_users
FROM Activity
where activity_date between date_sub('2019-07-27', interval 29 day) and '2019-07-27'
group by activity_date;
