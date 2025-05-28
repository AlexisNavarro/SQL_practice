-- Query to be able to count the amount of times that no transactions occured
-- Via each visit id for a customer
SELECT v.customer_id, count(*) as count_no_trans
FROM Visits v
left join Transactions t on v.visit_id = t.visit_id
where t.visit_id is Null
group by v.customer_id
ORDER BY count_no_trans asc;