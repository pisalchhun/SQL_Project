SELECT department_id 
FROM departments
MINUS
SELECT department_id
FROM employees
WHERE job_id = 'ST_CLERK';

select country_id, country_name
from countries
minus 
select distinct c.country_id , c.country_name
from countries c
join locations l on l.country_id = c.country_id;


select job_id,department_id
from employees
where department_id = 10
union all
select job_id ,department_id 
from employees
where department_id = 50
union all 
select job_id ,  department_id
from employees 
where department_id = 20;

select employee_id , job_id 
from employees
intersect 
select employee_id , job_id 
from job_history;

select e.last_name,e.department_id , d.department_name
from employees e
left join departments d on e.department_id = d.department_id
union
select e.last_name, e.department_id , d.department_name
from departments d
left join employees e on e.department_id = d.department_id;

