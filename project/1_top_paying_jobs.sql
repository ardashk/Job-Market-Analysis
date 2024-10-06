/*
Question: What are the top-paying data analyst jobs that are available remotely? specifying the name
of the companies that are offering these vacancies.
*/

select
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name as company_name
from
    job_postings_fact
left join company_dim on job_postings_fact.company_id = company_dim.company_id
where
    job_title_short = 'Data Analyst' AND
    job_location= 'Anywhere' AND
    salary_year_avg is not null
order by
    salary_year_avg desc
