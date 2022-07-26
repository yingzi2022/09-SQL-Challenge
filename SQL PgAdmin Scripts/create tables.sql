-- Create a new table - 1. Title
CREATE TABLE "titles" (
    "title_id" VARCHAR,
    "title" VARCHAR,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

SELECT * FROM titles

-- Create a new table - 2. salaries
CREATE TABLE "salaries" (
    "emp_no" INT,
    "salary" INT,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

SELECT * FROM salaries

-- Create a new table - 3. department employee
CREATE TABLE "dept_emp" (
    "emp_no" INT,
    "dept_no" VARCHAR,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

SELECT * FROM dept_emp


-- Create a new table - 4. departments
CREATE TABLE "departments" (
    "dept_no" VARCHAR,
    "dept_name" VARCHAR,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no","dept_name"
     )
);

SELECT * FROM departments

-- Create a new table - 5. Dept manager
CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR,
    "emp_no" INT,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

SELECT * FROM dept_manager

-- Create a new table - 6. employees
-- Method 1: below
-- Method 2: Run SQL queries on jupyter notebook to create the 'employees' table and data upload. See jupyternote book "SQL Table Creation - employees" for reference

CREATE TABLE "employees" (
     "emp_no" INT,
     "emp_title_id" VARCHAR,
     "birth_date" DATE,
     "first_name" VARCHAR,
     "last_name" VARCHAR,
     "sex" VARCHAR,
     "hire_date" DATE,
      CONSTRAINT "pk_employees" PRIMARY KEY (
          "emp_no"
       )
);

SELECT * FROM employees