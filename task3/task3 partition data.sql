select saleid,productid,sum(quantitysold)  
over(partition by productid order by saledate)from sales