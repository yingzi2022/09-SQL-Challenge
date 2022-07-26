--1. Join table employees and Salaries to list the following details of employees: 
-- employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, 
  employees.last_name, 
  employees.first_name, 
  employees.sex, 
  salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name,last_name,hire_date 
FROM employees
WHERE (hire_date > '1985-12-31' AND hire_date < '1987-01-01');

--3.List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT dept_manager.dept_no, 
  departments.dept_name, 
  employees.emp_no, 
  employees.last_name, 
  employees.first_name
FROM dept_manager
INNER JOIN departments ON
dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON
dept_manager.emp_no = employees.emp_no;

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT employees.emp_no,employees.last_name, employees.first_name,dept_emp.dept_no 
FROM dept_emp
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no;

--5. List first name, last name, and 
-- sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name,last_name,sex 
FROM employees
-- WHERE (first_name = 'Hercules');
WHERE (first_name = 'Hercules' AND last_name LIKE 'B%');

--6. List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
--Method 1:
SELECT employees.emp_no,employees.last_name, employees.first_name,departments.dept_name 
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

--Method 2:
SELECT employees.emp_no,employees.last_name, employees.first_name,departments.dept_name 
FROM dept_emp
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON
employees.emp_no = dept_emp.emp_no
WHERE dept_name = 'Sales';


--7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT employees.emp_no,employees.last_name, employees.first_name,departments.dept_name 
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--8. List the frequency count of employee last names 
-- (i.e., how many employees share each last name) in descending order.
SELECT last_name, COUNT(last_name) AS "employees count"
FROM employees
GROUP BY last_name
ORDER BY "employees count" DESC;
