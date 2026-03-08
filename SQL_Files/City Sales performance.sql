Select 
City,
Round(Sum(Sales),0) As Total_Sales
From superstore
Group by City
Order by Total_Sales Desc
Limit 10; 
