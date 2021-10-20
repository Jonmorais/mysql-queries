-- Exiba a submitted_date das purchase_orders
-- que estão entre 2006-01-26 00:00:00 e 2006-03-31 23:59:59
SELECT `submitted_date`
FROM northwind.purchase_orders
WHERE submitted_date >= '2006-01-26 00:00:00'
AND submitted_date <= '2006-03-31 23:59:59';