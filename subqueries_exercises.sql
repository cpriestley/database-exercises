use ymir_employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
select *
from employees
where hire_date = (select hire_date
                   from employees
                   where emp_no = 101010);

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
select title
from titles
where emp_no in(select emp_no
                from employees
                where first_name = 'Aamod');

# Find all the current department managers that are female.
select first_name, last_name
from employees
where gender = 'F'
  and emp_no in(select emp_no
                from titles
                where title = 'manager'
                  and to_date = '9999-01-01');

# BONUS
# Find all the department names that currently have female managers.
select first_name, last_name
from employees
where gender = 'F'
  and emp_no in(select emp_no
                from dept_manager
                where to_date = '9999-01-01');


# Find all the department names that currently have female managers.
select d.dept_name
from employees e
join dept_manager dm on e.emp_no = dm.emp_no
join departments d on dm.dept_no = d.dept_no
where gender = 'F' and to_date = '9999-01-01';

# Find the first and last name of the employee with the highest salary.
select first_name, last_name
from employees
where emp_no = (select emp_no
                from salaries
                where to_date = '9999-01-01'
                order by salary desc
                limit 1);
