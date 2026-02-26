Select
`Product Name`,
Round(ABS(Sum(profit)),2) As Total_Profit
From superstore
Group by `Product Name`
Having Sum(profit) < 0
Order by Total_profit ASC
limit 10;