# Write your MySQL query statement below
select Name as Customers from Customers as a where Id not in (select CustomerId from Orders as b where b.CustomerId = a.Id)