create view  Active_customers as (select c.customerid,customername,orderid,orderdate from
customer c inner join orders o on c.customerid = o.customerid where extract (year from 
orderdate)=2024);