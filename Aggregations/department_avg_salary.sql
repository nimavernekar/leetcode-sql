/*
✅ Problem 1 – Employees Earning Above Their Department Average
Tables:
Employees(emp_id, name, salary, dept_id)
Departments(dept_id, dept_name)
Task:
Find all employees whose salary is greater than the average salary of their department.
*/

select e.emp_id, e.name, e.salary, d.dept_name
from Employees e
join Departments d on e.dept_id = d.dept_id
where e.salary > (
    select avg(salary)
    from Employees
    where dept_id = e.dept_id
);