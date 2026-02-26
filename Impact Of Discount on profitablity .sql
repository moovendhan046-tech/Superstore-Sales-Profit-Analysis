Select
Round(Discount , 1) as Discount_Level,
Round(sum(Profit)) as profit
From superstore
Group by Discount_Level
Order by Discount_Level;