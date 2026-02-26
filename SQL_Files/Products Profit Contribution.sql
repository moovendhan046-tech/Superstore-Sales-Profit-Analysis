Select
`Product Name`,
Round(ABS(Sum(profit)), 0) As Total_Profit
From superstore
Group by `Product Name`
Having Sum(profit) < 0
Order by Total_profit desc
limit 10;







