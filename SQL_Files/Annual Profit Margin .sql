SET SQL_Safe_Updates = 0;
UPDATE superstore 
SET `Order Date` = STR_TO_DATE(`order Date`, 
'%m/%d/%Y')

WHERE
    `Order Date` IS NOT NULL;
SET SQL_Safe_Updates = 1;



Select
Year(`Order Date`) As year,
Round(Sum(profit)/Sum(Sales)*100 , 2) As profit_Margin
From superstore
Group by year(`order Date`)
Order by Year;