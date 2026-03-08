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