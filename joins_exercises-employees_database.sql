use ymir_employees;
# Using the example in the Associative Table Joins section as a guide,
# write a query that shows each department along with the name of the current manager for
# that department.
select d.dept_name, concat(e.first_name, ' ', e.last_name ) as 'department manager'
from dept_manager
join employees e on dept_manager.emp_no = e.emp_no
join departments d on dept_manager.dept_no = d.dept_no
where to_date = '9999-01-01';

#Find the name of all departments currently managed by women.
select d.dept_name, concat(e.first_name, ' ', e.last_name ) as 'department manager'
from dept_manager
join employees e on dept_manager.emp_no = e.emp_no
join departments d on dept_manager.dept_no = d.dept_no
where to_date = '9999-01-01'
  and e.gender = 'F';

#Find the current titles of employees currently working in the Customer Service department.
select t.title, count(*) as total
from employees e
join titles t on e.emp_no = t.emp_no
join dept_emp de on de.emp_no = e.emp_no
join departments d on d.dept_no = de.dept_no
where t.to_date = '9999-01-01'
  and de.to_date = '9999-01-01'
  and d.dept_name = 'Customer Service'
group by t.title
order by total desc;

#Find the current salary of all current managers.
select d.dept_name, concat(e.first_name, ' ', e.last_name ) as 'manager', s.salary
from employees e
join dept_manager dm on e.emp_no = dm.emp_no
join departments d on dm.dept_no = d.dept_no
join salaries s on e.emp_no = s.emp_no
where dm.to_date = '9999-01-01'
     and s.to_date = '9999-01-01';

# Bonus Find the names of all current employees, their department name, and their current manager's name .
select concat(e.first_name, ' ', e.last_name ) as 'employee',
       d.dept_name,
       concat(e2.first_name, ' ', e2.last_name) as manager
from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
join dept_manager dm on d.dept_no = dm.dept_no
join employees e2 on e2.emp_no = dm.emp_no
where de.to_date = '9999-01-01' and dm.to_date = '9999-01-01';
