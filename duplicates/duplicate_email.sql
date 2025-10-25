/*
✅ Problem 3 – Find Duplicate Emails
Table:
Users(id, email)
Task:
Find all email addresses that appear more than once in the table.
*/

select email
from Users
group by email
having count(*) > 1;