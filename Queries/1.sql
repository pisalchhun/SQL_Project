SELECT last_name, salary
FROM employees
WHERE salary > 12000;

SELECT last_name, department_id
FROM employees
WHERE employee_id = 176;

SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;

SELECT last_name, job_id, hire_date
FROM employees
WHERE last_name IN ('Matos', 'Taylor')
ORDER BY hire_date ASC;

SELECT last_name, department_id
FROM employees
WHERE department_id IN (20, 50)
ORDER BY last_name ASC;

SELECT last_name AS "Employee",
       salary AS "Monthly Salary"
FROM employees
WHERE salary BETWEEN 5000 AND 12000
  AND department_id IN (20, 50);

SELECT last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '01-JAN-1994' AND '31-DEC-1994';

SELECT last_name, job_id
FROM employees
WHERE manager_id IS NULL;

SELECT last_name,
       salary,
       commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY 2 DESC, 3 DESC;

SELECT LAST_NAME, SALARY
FROM employees
WHERE salary > &enter_salary;

SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE manager_id = &manager_id
ORDER BY
    CASE '&sort_column'
        WHEN 'employee_id' THEN employee_id
        WHEN 'last_name' THEN last_name
        WHEN 'salary' THEN salary
        WHEN 'department_id' THEN department_id
    END;

SELECT last_name
FROM employees
WHERE last_name LIKE '__a%';

SELECT last_name
FROM employees
WHERE last_name LIKE '%a%'
  AND last_name LIKE '%e%';

SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN ('SA_REP', 'ST_CLERK')
  AND salary NOT IN (2500, 3500, 7000);

SELECT last_name,
       salary,
       commission_pct
FROM employees
WHERE commission_pct = 0.20;