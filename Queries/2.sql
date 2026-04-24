SELECT location_id, street_address, city, state_province, country_name
    FROM locations
    NATURAL JOIN countries;

SELECT e.last_name, e.department_id, d.department_name
    FROM employees e JOIN departments d 
    ON e.department_id = d.department_id;

SELECT e.last_name, e.job_id, e.department_id, d.department_name
    FROM employees e JOIN departments d 
    ON e.department_id = d.department_id
        JOIN locations l 
    ON d.location_id = l.location_id
    WHERE l.city = 'Toronto';
    
SELECT e.last_name AS Employee, e.employee_id AS "Emp#",
       m.last_name AS Manager, m.employee_id AS "Mgr#"
    FROM employees e JOIN employees m 
    ON e.manager_id = m.employee_id;

SELECT e.last_name AS Employee, e.employee_id AS "Emp#",
       m.last_name AS Manager, m.employee_id AS "Mgr#"
    FROM employees e LEFT JOIN employees m 
    ON e.manager_id = m.employee_id
    ORDER BY e.employee_id;

SELECT e1.last_name AS "Employee", e1.department_id AS "Dept#", 
       e2.last_name AS "Colleague"
    FROM employees e1 JOIN employees e2 ON e1.department_id = e2.department_id
    WHERE e1.employee_id != e2.employee_id;

DESC job_grades;

SELECT e.last_name, e.job_id, d.department_name, e.salary, j.grade_level
    FROM employees e JOIN departments d ON e.department_id = d.department_id
        JOIN job_grades j 
    ON e.salary BETWEEN j.lowest_sal AND j.highest_sal;

SELECT last_name, hire_date
    FROM employees
    WHERE hire_date > (
        SELECT hire_date
        FROM employees
        WHERE last_name = 'Davies');

SELECT e.last_name AS "Employee", e.hire_date AS "Emp Hire Date",
       m.last_name AS "Manager", m.hire_date AS "Mgr Hire Date"
    FROM employees e JOIN employees m 
    ON e.manager_id = m.employee_id
    WHERE e.hire_date < m.hire_date;