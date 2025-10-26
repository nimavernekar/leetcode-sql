/*
🧩 2️⃣ Employees With Same Salary
Tables: Employees(id, name, salary, dept_id)
Task:
Find all employees who share the same salary with at least one other employee.
Show: salary, COUNT(*)
*/

/*select salary, 
       count(*) as employee_count
       from Employees
       group by salary
       having count(*) > 1;

*/

select salary, name from Employees
where salary in (
    select salary
    from Employees
    group by salary
    having count(*) > 1
)