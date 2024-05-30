-- Create a new table employees
CREATE TABLE employees( 
	emp_no int PRIMARY KEY,
	empl_title_id VARCHAR(10),
  	birth_date DATE NOT NULL,
  	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(1)
		CHECK(sex='M' OR sex='F') NOT NULL,
	hire_date DATE NOT NULL
	);

-- Create a new table titles
CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(30)
);

-- Create a new table salaries
CREATE TABLE salaries (
	emp_no int PRIMARY KEY,
	salary int
);

-- Create a new table departments
CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(30)
);

-- Create a new table dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR(10) ,
	emp_no int PRIMARY KEY,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create a new table dept_emp
CREATE TABLE dept_emp (
	emp_no int ,
	dept_no VARCHAR(10),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--Deleting table
DROP TABLE dept_emp;



