create table employee_details(EmployeeID serial primary key,FirstName varchar,	LastName varchar,
Department varchar,	City varchar,ManagerID int,	Salary bigint);
create table customer(CustomerID serial primary key,CustomerName varchar ,ContactNumber varchar(50));
create table product(ProductID serial primary key,	ProductName varchar,Category varchar);
create table sales(SaleID serial primary key,ProductID int,QuantitySold int,SaleDate timestamp);
create table event(EventID serial primary key,	EventName varchar,	EventDate timestamp);
create table participant(ParticipantID serial primary key,ParticipantName varchar,	Score int);
create table orders(OrderID serial primary key,CustomerID int references customer(CustomerID),OrderDate timestamp,
totalAmount double precision);

copy   employee_details from 'C:/excel sheet 1.csv' delimiter ',' csv header;
copy customer  from 'C:/excel sheet 2.csv' delimiter ',' csv header;
copy product  from 'C:/excel sheet 3.csv' delimiter ',' csv header;
copy sales  from 'C:/excel sales d.csv' delimiter ',' csv header;
copy event  from 'C:/excel sheet 5.csv' delimiter ',' csv header;
copy  participant from 'C:/excel sheet 6.csv' delimiter ',' csv header;
copy orders  from 'C:/excel sheet 7 d.csv' delimiter ',' csv header;
