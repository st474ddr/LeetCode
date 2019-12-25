# Write your MySQL query statement below
Select max(salary) "SecondHighestSalary"
FROM Employee
WHERE Salary < (Select max(Salary) FROM Employee )
limit 1