Use JobMarketAnalytics;
Go
Select COUNT(*) AS
Total_Jobs
FROM Job_Market;

Select AVG(salary_in_usd) As
Average_Salary
From Job_Market;

Select experience_level,
Count(*) as total_jobs
from Job_Market
group by experience_level;

select employment_type,
Count(*) as total_jobs
from job_market
group by employment_type;

select remote_ratio,
count(*)
from job_market
group by remote_ratio;

select Top 10 job_title,
AVG(salary_in_usd)AS Avg_salary
from job_market
group by job_title
order by Avg_salary Desc;

select company_location,
count(*) as total_jobs
from job_market
group by company_location
order by total_jobs DESC

select experience_level,
Avg(salary_in_usd)AS average_salary
from job_market
group by experience_level
order by average_salary
Desc;

select work_year,
Avg(salary_in_usd)AS Avg_Salary
from Job_Market
group by work_year
order by work_year;

select top 10 company_location,
avg(salary_in_usd) as average_salary
from Job_Market
group by company_location
order by average_salary
Desc;

select top 10 job_title,
AVG(salary_in_usd) as average_salary,Rank() over(order by avg(salary_in_usd) DESC)
As Salary_Rank
from job_market
group by job_title
