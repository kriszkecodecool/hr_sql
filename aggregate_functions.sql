SELECT count(employee_id) from employees GROUP BY JOB_id;
SELECT MANAGER_ID,SALARY from employees WHERE SALARY = (SELECT min(salary) from employees);
SELECT department_id,sum(salary) from employees GROUP BY department_id;
SELECT avg(salary),job_id FROM employees WHERE job_id != "IT_PROG" GROUP BY job_id;
SELECT max(salary),job_id FROM employees WHERE SALARY >= 4000 group by job_id;
SELECT avg(salary),department_id FROM employees group by DEPARTMENT_ID having count(employee_id) > 10;