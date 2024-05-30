---DATA ANALYSIS---

--Seleting table
SELECT * FROM employees


--1. List the employee number, last name, first name, sex, and salary of each employee
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
	FROM employees e
	JOIN salaries s ON e.emp_no = s.emp_no;

--2. List the first name, last name, and hire date for the mployees who were hired in 1986
Select e.first_name, e.last_name, e.hire_date
	FROM employees e
	WHERE hire_date >= '1986-01-01' AND hire_date < '1986-12-31';

--3. List the manager of each deparmtent along with their department number, department name, employee number, last name, and first name
Select dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
	FROM dept_manager dm
	JOIN departments d ON dm.dept_no =d.dept_no
	JOIN employees e ON dm.emp_no=e.emp_no;

--4. List the department number for each employee along with that employee's employee number, last name, first name, deaprtment name.
Select de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
	FROM dept_emp de
	JOIN departments d ON de.dept_no =d.dept_no
	JOIN employees e ON de.emp_no=e.emp_no;

--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select e.first_name, e.last_name, e.sex
	FROM employees e
	WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

--6. List each employee in the Sales department, include their employee number, last name and first name.
Select e.emp_no, e.last_name, e.first_name
	FROM employees e
	JOIN dept_emp de ON e.emp_no=de.emp_no
	WHERE de.dept_no= 'd007';

--7. List each employee in the Sales and Development departments, include their employee number, last name, first name, and department name.
Select e.emp_no, e.last_name, e.first_name, d.dept_name
	FROM employees e
	JOIN dept_emp de ON e.emp_no=de.emp_no
	JOIN departments d ON de.dept_no=d.dept_no
	WHERE de.dept_no='d007' OR de.dept_no ='d005';

--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select last_name, COUNT(*) AS frequency
	FROM employees
	GROUP BY last_name
	ORDER BY frequency DESC;

