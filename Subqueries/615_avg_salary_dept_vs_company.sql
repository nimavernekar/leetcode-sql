-- Problem: https://leetcode.com/problems/average-salary-departments-vs-company/description/
-- Concept: CTEs, Joins
-- Difficulty: Hard
-- Solution by: Nimisha Vernekar

with comp_avg as (select
avg(amount) as company_avg,
DATE_FORMAT(pay_date, '%Y-%m') as pay_month
from Salary
group by DATE_FORMAT(pay_date, '%Y-%m'))

,
 dept_avg as (
    select department_id,
    avg(amount) as department_avg,
    DATE_FORMAT(pay_date, '%Y-%m') AS pay_month 
    from Salary
    JOIN
    Employee
    on Salary.employee_id = Employee.employee_id
    group by 
    department_id, pay_month
)

select dept_avg.pay_month,
department_id,
case 
when department_avg > company_avg then 'higher'
WHEN department_avg < company_avg THEN 'lower' 
    ELSE 'same' 
  END AS comparison 
  from dept_avg
  join comp_avg
  on dept_avg.pay_month = comp_avg.pay_month