SELECT a.location_id,b.street_address,b.city,b.state_province,c.country_name FROM departments as a INNER JOIN locations as b ON a.location_id = b.location_id inner join countries as C on b.country_id = c.country_id;
SELECT a.first_name,a.last_name,a.department_id,b.department_name FROM employees as a INNER JOIN departments as b ON a.department_id = b.department_id;
SELECT a.first_name,a.last_name,c.job_title,a.department_id,b.department_name FROM employees as a INNER JOIN departments as b ON a.department_id = b.department_id INNER JOIN jobs as c on a.job_id = c.job_id INNER JOIN locations as d on b.location_id = d.location_id WHERE d.city = "London";
SELECT b.department_name,count(a.employee_id) FROM employees as a INNER JOIN departments as b ON a.department_id = b.department_id group by b.department_name;
SELECT first_name,last_name FROM employees WHERE HIRE_DATE > (SELECT HIRE_DATE from employees where last_name = "Jones");
