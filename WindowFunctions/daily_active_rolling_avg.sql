/*
🧩 5️⃣ Find Daily Active Users and 7-Day Rolling Average
Tables:
User_Logins(user_id, login_date)
Task:
For each date, show:
number of distinct active users, and
7-day rolling average of active users.
*/

select login_date,
count(distinct user_id) as daily_active_users,
round(AVG(count(distinct user_id)) OVER (
        ORDER BY login_date
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
),2) AS seven_day_rolling_avg
from User_Logins
group by login_date
order by login_date;