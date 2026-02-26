Select
Segment,
Round(Sum(Profit)/Sum(Sales)*100,2) As profit_Margin
From superstore
Group by Segment;