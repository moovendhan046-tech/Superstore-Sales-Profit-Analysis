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