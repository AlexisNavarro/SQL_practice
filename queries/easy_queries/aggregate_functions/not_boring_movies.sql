--need to select a movie with an odd numbered id (use modulo)
--and select on that doesn't have "boring" in the description
--return the table ordered by rating in descending order

SELECT id, movie, description, rating
From Cinema
where id % 2 = 1
and description != "boring"
order by rating desc;

