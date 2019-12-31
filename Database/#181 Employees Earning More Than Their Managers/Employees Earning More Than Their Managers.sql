# Write your MySQL query statement below
select a.Name as employee from Employee as a where a.Salary > (select b.Salary from Employee as b where a.ManagerId = b.Id )