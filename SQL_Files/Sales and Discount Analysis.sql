Select
Round(Discount , 1) as Discount_Level,
Round(sum(Profit)) as profit
From superstore
Group by Discount_Level
Order by Discount_Level;

Select
Year(`Order Date`) AS Year,
Round(Sum(Sales),0) as Total_Sales,
Round(Sum(Case when Profit > 0 then profit Else 0 End),0) as Total_profit
From superstore
Group by Year
Order by Year;