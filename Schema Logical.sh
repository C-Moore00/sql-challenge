# Modify this code to update the DB schema diagram.
# To reset the sample schema, replace everything with
# two dots ('..' - without quotes).

titles
----
title_id PK varchar
title varchar

employees
----
emp_no PK int
emp_title_id char(5) FK >- titles.title_id
birth_date date
first_name varchar
last_name varchar
sex char(1)
hire_date date

departments
----
dept_no PK varchar
dept_name varchar

dept_emp
----
emp_no int FK >-< employees.emp_no
dept_no varchar FK >- departments.dept_no

salaries
----
emp_no int FK - employees.emp_no
salary int

dept_manager
----
dept_no varchar FK >- departments.dept_no
emp_no int FK -0< employees.emp_no