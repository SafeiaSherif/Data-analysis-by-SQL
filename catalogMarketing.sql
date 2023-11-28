select *
from [Catalog Marketing]

--the column Age is categorised by 3 numbers 1, 2 and 3
-- 1 for younger than 30
-- 2 from 30 to 50
-- 3 older than 50
-- query to show each class of Age and the summation and the average of its spent money
select Age, sum(Amount_Spent) as Sum_Amount_Spent, avg(Amount_Spent) as Avg_Amount_Spent
from [Catalog Marketing]
group by Age
order by Sum_Amount_Spent desc, Avg_Amount_Spent desc
-- the category of 2 is the highest spending
-- the category of 1 is the lowest spending


-- query to show total amount spent in each year
select Year(First_Purchase) as First_Purchase_Year, sum(Amount_Spent) as Sum_Amount_Spent
from [Catalog Marketing]
group by Year(First_Purchase)
order by Sum_Amount_Spent desc
-- 2015 shows the highest sum of first purchases
-- 2012 is second highest year, 2009 is the lowest one.


-- query to list the gender, avg of its salary, avg of amount spent 
-- and the percetage of the amount spent from the salary
-- the Gender column is encoded as 1 for males and 0 for females
select Gender, 
	AVG(Salary) as Avg_Salary,
	AVG(Amount_Spent) as Avg_Amount_Spent,
	AVG((Amount_Spent*1.0) / (Salary*1.0)) * 100 as Spending_Rate
from [Catalog Marketing]
group by Gender
order by Avg_Salary desc


-- query to list the own_house, Gender, avg of its salary, avg of amount spent
-- 1 for having a house and 0 for not having a house
select Own_Home, 
	Gender,
	AVG(Salary) as Avg_Salary,
	AVG(Amount_Spent) as Avg_Amount_Spent,
	AVG((Amount_Spent*1.0) / (Salary*1.0)) * 100 as Spending_Rate
from [Catalog Marketing]
group by Own_Home, Gender
order by Avg_Salary desc
-- people who own  homes earn higher salary and spend more money
-- males earn higher salary and spend more money
-- females who own homes earn higher salary and spend more money than males who don't own homes


-- query to list the number of children, avg of its salary, avg of amount spent 
-- and the percetage of the amount spent from the salary
select Children,
	AVG(Salary) as Avg_Salary,
	AVG(Amount_Spent) as Avg_Amount_Spent,
	AVG((Amount_Spent*1.0) / (Salary*1.0)) * 100 as Spending_Rate
from [Catalog Marketing]
group by Children
order by Avg_Salary desc
-- more children more salary
-- but, more children less spending money 


-- query to list Gender, number of children, avg of its salary, avg of amount spent 
-- and the percetage of the amount spent from the salary
select Gender,
	Children,
	AVG(Salary) as Avg_Salary,
	AVG(Amount_Spent) as Avg_Amount_Spent,
	AVG((Amount_Spent*1.0) / (Salary*1.0)) * 100 as Spending_Rate
from [Catalog Marketing]
group by Gender, Children
order by Avg_Salary desc
-- females with 0 children have the highest spending rate, the males with NO children
-- males have highest salary in all cases
-- MORE children LESS spending rate


-- query to list Own_Home, number of children, avg of its salary, avg of amount spent 
-- and the percetage of the amount spent from the salary
select Own_Home,
	Children,
	AVG(Salary) as Avg_Salary,
	AVG(Amount_Spent) as Avg_Amount_Spent,
	AVG((Amount_Spent*1.0) / (Salary*1.0)) * 100 as Spending_Rate
from [Catalog Marketing]
group by Own_Home, Children
order by Spending_Rate desc
-- people who own home and have No children are the highest spending rate


-- query to list Age, number of children, avg of its salary, avg of amount spent 
-- and the percetage of the amount spent from the salary
select Age,
	Children,
	AVG(Salary) as Avg_Salary,
	AVG(Amount_Spent) as Avg_Amount_Spent,
	AVG((Amount_Spent*1.0) / (Salary*1.0)) * 100 as Spending_Rate
from [Catalog Marketing]
group by Age, Children
order by Spending_Rate desc
-- people with NO children have the highest spending rate, no matter their age is


-- query State, avg salary, avg amount_spent and spending rate
select State,
	AVG(Salary) as Avg_Salary,
	AVG(Amount_Spent) as Avg_Amount_Spent,
	AVG((Amount_Spent*1.0) / (Salary*1.0)) * 100 as Spending_Rate
from [Catalog Marketing]
group by State
order by Spending_Rate desc
-- Indiana has the highest spending rate
-- Pennsylvania has the highest avg of spending