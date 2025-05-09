--query to find all the authors that viewed at least one of their own articles.
--Return the result table sorted by id in ascending order.
--distinct helps eliminate duplicates author ids
--order by allows us to have the author ids by ascending order 
select distinct author_id as id 
from Views
where author_id = viewer_id
order by id ASC;