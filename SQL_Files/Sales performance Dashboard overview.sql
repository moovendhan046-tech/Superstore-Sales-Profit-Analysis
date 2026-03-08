SELECT
Round(SUM(Sales),0) AS Total_sales,
sum(Quantity) As Total_stock,
COUNT(distinct `ORDER ID`) AS Total_orders,
Round(Sum(Case When Profit > 0 Then Profit Else 0 End)) AS Total_Profit,
Round(ABS(sum(Case When profit < 0 Then Profit Else  0  End)) ,0) as Total_loss
From superstore;

Select
Segment,
Round(Sum(Profit)/Sum(Sales)*100,2) As profit_Margin
From superstore
Group by Segment;

Select
 `Product Name`,
 Round(ABS(Sum(Sales)),0) As Total_sales
 From superstore
 Group by `Product Name`
 Order by Total_Sales DESC
 Limit 10;