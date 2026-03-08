SELECT
   concat(Round((ABS(Sum(Profit))/ SUM(Sales))*100,2), '%') 
   As loss_percentage
   FROM superstore
   where profit<0;
   SELECT
   concat(Round((ABS(Sum(Profit))/ SUM(Sales))*100,2), '%') 
   As loss_percentage
   FROM superstore
   where profit<0;
   
Select
Year(`Order Date`) As year,
Round(Sum(profit)/Sum(Sales)*100 , 2) As profit_Margin
From superstore
Group by year(`order Date`)
Order by Year;