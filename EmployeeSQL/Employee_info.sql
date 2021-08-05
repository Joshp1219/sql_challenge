CREATE TABLE titles (
    emp_title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (emp_title_id)
);
Select * FROM titles;

CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR   NOT NULL,
    birth_date date   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    gender VARCHAR   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_title_id) REFERENCES titles (emp_title_id)
);
Select * FROM employees;

CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);
Select * FROM salaries;


CREATE TABLE departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (dept_no)
);
Select * FROM departments;

CREATE TABLE dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);
Select * FROM dept_manager;

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);
Select * FROM dept_emp;
