-- This query will obtain product name from the product table
-- The year and price from the sales table
-- While using the product id as a reference key
Select Product.product_name, Sales.year, Sales.price
From Sales
Join Product on Sales.product_id = Product.product_id;