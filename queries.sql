-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary
FROM employees AS e
INNER JOIN 
salaries AS s 
ON s.emp_no=e.emp_no;

-- List employees who were hired in 1986.
SELECT emp_no, first_name, last_name, hire_date 
FROM employees 
WHERE hire_date LIKE ('1986%');

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dept_manager.dept_no, dept_manager.from_date, dept_manager.to_date,
departments.dept_name, employees.emp_no, employees.last_name, employees.first_name 
FROM departments
INNER JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees
ON employees.emp_no = dept_manager.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM departments
INNER JOIN dept_employee
ON dept_employee.dept_no = departments.dept_no
INNER JOIN employees
ON employees.emp_no = dept_employee.emp_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE ('B%');

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.first_name, employees.last_name, employees.emp_no, departments.dept_name
FROM departments
INNER JOIN dept_employee
ON dept_employee.dept_no = departments.dept_no
INNER JOIN employees
ON employees.emp_no = dept_employee.emp_no
WHERE departments.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.first_name, employees.last_name, employees.emp_no, departments.dept_name
FROM departments
INNER JOIN dept_employee
ON dept_employee.dept_no = departments.dept_no
INNER JOIN employees
ON employees.emp_no = dept_employee.emp_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY last_name desc;
