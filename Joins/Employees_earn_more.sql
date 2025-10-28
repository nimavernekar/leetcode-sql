/*
🧩 3️⃣ Find Employees Who Earn More Than Their Manager
Tables:
Employees(emp_id, name, salary, manager_id)
Task:
Return employees whose salary is higher than their manager’s.*/

select e.name,
e.salary,
m.name,
m.salaryfrom Employees 
join Employees manager_id
ON m.emp_id = e.manager_id
where e.salary > m.salary;