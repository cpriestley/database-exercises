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
                  and to_date > now());

# BONUS
# Find all the department names that currently have female managers.
select first_name, last_name
from employees
where gender = 'F'
  and emp_no in(select emp_no
                from dept_manager
                where to_date > now());


# Find all the department names that currently have female managers.
select dept_name
from departments
where dept_no in(select dept_no
                 from dept_emp
                 where emp_no in(select emp_no
                                 from employees
                                 where gender = 'F'
                                   and emp_no in(select emp_no
                                                 from dept_manager
                                                 where to_date > now())));

# Find the first and last name of the employee with the highest salary.
select first_name, last_name
from employees
where emp_no = (select emp_no
                from salaries
                where to_date > now()
                order by salary desc
                limit 1);
