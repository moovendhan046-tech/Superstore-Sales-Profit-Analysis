SELECT
SUM(Sales) AS Total_sales
From superstore;
   
Select
sum(Quantity) As Total_stock
FROM superstore;
   
Select
COUNT(distinct `ORDER ID`) AS Total_orders
FROM superstore;

Select
Round(Sum(Case
   When Profit > 0 Then Profit
   Else 0
   End)) AS Total_Profit
   From superstore;
   
SELECT
Round(ABS(sum(Case
      When profit < 0 Then Profit
      Else  0 
      End)) ,0) as Total_loss
   FROM superstore;

