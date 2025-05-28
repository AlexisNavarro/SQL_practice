-- Find avg selling price for each product rounded by 2 decimal places
-- if a product doesn't have any sold units, assume it to be 0
-- return the table in any order

-- Prices table: product_id, start_date, end_date, price
-- UnitsSold table: product_id, purchase_date, units
-- output : product_id, average_price

-- Notes: make sure to be able to match the date it was purchased hence the checking of
-- puchase_date between start_date and end_date since there will be different pricing
-- Round will round the avg price to 2 decimal places
-- Coalesce will allow us to return 0 if we find nothing

SELECT p.product_id,
  ROUND(COALESCE(SUM(u.units * p.price) * 1.0 / SUM(u.units), 0), 2) AS average_price
From Prices p
left Join UnitsSold u 
on p.product_id = u.product_id
and u.purchase_date between p.start_date and p.end_date
group by p.product_id;