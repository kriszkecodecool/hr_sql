SELECT first_name,last_name FROM employees WHERE salary > (SELECT salary from employees where last_name='Bull');
SELECT a.first_name,a.last_name FROM employees as a INNER JOIN departments as b ON a.department_id = b.department_id WHERE b.department_name = "IT";
SELECT a.first_name,a.last_name FROM employees as a INNER JOIN jobs as b ON a.job_id = b.job_id WHERE b.job_title LIKE "%Manager";
SELECT first_name,last_name FROM employees WHERE salary > (SELECT avg(salary) from employees);
SELECT a.first_name,a.last_name FROM employees as a INNER JOIN jobs as b ON a.job_id = b.job_id WHERE b.min_salary = salary;
SELECT first_name,last_name FROM employees WHERE salary = (SELECT min(min_salary) FROM jobs);
SELECT a.employee_id,a.first_name,a.last_name,b.department_name FROM employees as a INNER JOIN departments as b ON a.department_id = b.department_id;
SELECT * FROM employees ORDER BY employee_id DESC limit 10;