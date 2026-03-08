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