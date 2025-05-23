--This query will select invalid tweet ids that have content of characters of length greater than 15
SELECT tweet_id from Tweets where length(content) > 15