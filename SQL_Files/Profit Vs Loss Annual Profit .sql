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

SELECT
   concat(Round((ABS(Sum(Profit))/ SUM(Sales))*100,2), '%') 
   As loss_percentage
   FROM superstore
   where profit<0;
select
    concat(Round((ABS(sum(profit))/ sum(sales))*100,2) , '%')
    AS Profit_percentage
    FROM superstore
    WHERE PROFIT>0;
    
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


Select 
`Sub-Category`,Round(ABS(Sum(Sales))) As Total_Sales
From superstore
Group by `Sub-Category`
Order by Total_Sales Asc;

Select 
Segment,
Round(ABS(SUM( Case WHEN Profit>0 Then Profit Else 0 End)),0) AS Total_Profit, 
Round(ABS(SUM(Case when Profit < 0 then profit Else 0 END)),0) AS Total_Loss
From superstore
Group by  Segment;
    
Select
`Product Name`,
Round(ABS(Sum(profit)),2) As Total_Profit
From superstore
Group by `Product Name`
Having Sum(profit) < 0
Order by Total_profit ASC
limit 10;    

Select
`Product Name`,
Sum(Case When Profit < 0 Then Profit Else 0 End)as Total_Loss
 From superstore
 Group by `Product Name`
 Order by Total_Loss ASC
 Limit 10;

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
    
    
    
    
    
    
Select


   
SELECT
Round(ABS(sum(Case
      When profit < 0 Then Profit
      Else  0 
      End)) ,0) as Total_loss
   FROM superstore;
   
   
SET SQL_Safe_Updates = 0;
UPDATE superstore 
SET `Order Date` = STR_TO_DATE(`order Date`, '%m/%d/%Y')
WHERE
`Order Date` IS NOT NULL;
SET SQL_Safe_Updates = 1;

Select
Year(`Order Date`) As year,
Round(Sum(profit)/Sum(Sales)*100 , 2) As profit_Margin
From superstore
Group by year(`order Date`)
Order by Year;

SELECT
   concat(Round((ABS(Sum(Profit))/ SUM(Sales))*100,2), '%') 
   As loss_percentage
   FROM superstore
   where profit<0;
select
    concat(Round((ABS(sum(profit))/ sum(sales))*100,2) , '%')
    AS Profit_percentage
    FROM superstore
    WHERE PROFIT>0;











Select Round(Sum(Sales),0),
       Round(Sum(Profit),0),
       Count(Sales),
       Round(Sum(Sales),0),
       Sum(Quantity),
       Count(`Customer ID`)
       From superstore;


Select distinct Segment
From superstore;
Select distinct `Ship Mode`
From superstore;
Select Distinct `Sub-Category`
From superstore;
Select Distinct `Product Name`
From superstore;
Select Distinct City
From superstore;


Select 
`Sub-Category`,Round(ABS(Sum(Quantity))) As Total_Quantity
From superstore
Group by `Sub-Category             `
Order by Total_Quantity Asc;

Select 
`Sub-Category`,Round(ABS(Sum(Sales))) As Total_Sales
From superstore
Group by `Sub-Category`
Order by Total_Sales Asc;

Select 
Segment , Round(ABS(Sum(Sales
))) As Total_Sales
From superstore
Group by Segment
Order by Total_Sales Desc;

Select
Segment , Round(ABS(Sum(Quantity))) As Total_Quantity
From superstore
Group by  Segment
Order by Total_Quantity Desc;


Select 
Segment,
Round(ABS(SUM( Case WHEN Profit>0 Then Profit Else 0 End)),0) AS Total_Profit, 
Round(ABS(SUM(Case when Profit < 0 then profit Else 0 END)),0) AS Total_Loss
From superstore
Group by  Segment;


  Select 
  `Customer Name`,
  Round(Sum(Sales)) as Total_Sales
  From superstore
  Group by `Customer Name`
  Order by Total_Sales DESC
  Limit 50;


Select
 `Sub-Category`,
  Round(ABS(Sum(Case When profit < 0 Then profit Else 0 End)),0) as Total_Loss
  From superstore
  Group by `Sub-Category`
  Order by Total_Loss DESC;
  


 
Select
City,
Round(Sum(Sales),0)  as Total_Sales
From superstore
Group by City
Order by Total_Sales DESC
LIMIT 10;


Select
City,
Sum(If(Profit < 0, Round(profit),0)) as Total_loss
From superstore
Group by City
Order by Total_loss Asc
Limit 10;
