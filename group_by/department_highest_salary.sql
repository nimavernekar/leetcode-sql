SELECT dept_id, MAX(salary) AS highest_salary
FROM Employees
GROUP BY dept_id;


SELECT d.dept_name, MAX(e.salary) AS highest_salary
FROM Employees e
JOIN Departments d ON e.dept_id = d.id
GROUP BY d.dept_name;
