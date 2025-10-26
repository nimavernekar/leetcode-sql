/*

🧩 4️⃣ Find Nth Highest Salary (3rd Highest Example)
Table: Employees(id, name, salary)
Task:
Return the 3rd highest salary in the company.
*/

/*
select distinct salary
from Employees
order by salary desc
limit 1 offset 2;
*/

select salary from (
select salary,
dense_rank() over (order by salary desc) as salary_rank
from Employees) as RankedSalaries
where salary_rank = N;