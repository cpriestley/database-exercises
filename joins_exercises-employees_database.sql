use ymir_employees;
# Using the example in the Associative Table Joins section as a guide,
# write a query that shows each department along with the name of the current manager for
# that department.

select d.dept_name, concat(e.first_name, ' ', e.last_name ) as 'department manager' from dept_manager
join employees e on dept_manager.emp_no = e.emp_no
join departments d on dept_manager.dept_no = d.dept_no
where to_date > NOW();

#Find the name of all departments currently managed by women.
select d.dept_name, concat(e.first_name, ' ', e.last_name ) as 'department manager' from dept_manager
join employees e on dept_manager.emp_no = e.emp_no
join departments d on dept_manager.dept_no = d.dept_no
where to_date > NOW() and e.gender = 'F';

#Find the current titles of employees currently working in the Customer Service department.
select t.title, count(*) as total from employees e
join titles t on e.emp_no = t.emp_no
join dept_emp de on de.emp_no = e.emp_no
join departments d on d.dept_no = de.dept_no
where t.to_date > now() and de.to_date > now() and d.dept_name = 'Customer Service'
group by t.title
order by total desc;

#Find the current salary of all current managers.
select d.dept_name, concat(e.first_name, ' ', e.last_name ) as 'manager', format(salary, 0) as salary from employees e
join titles t on t.emp_no = e.emp_no
join dept_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
join salaries s on e.emp_no = s.emp_no
where t.title = 'Manager' and t.to_date > now() and s.to_date > now();

# Bonus Find the names of all current employees, their department name, and their current manager's name .
select concat(e.first_name, ' ', e.last_name ) as 'employee', d.dept_name, m.`department manager` as manager from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
join titles t on de.emp_no = t.emp_no
join (select d.dept_name, concat(e.first_name, ' ', e.last_name ) as 'department manager' from dept_manager
        join employees e on dept_manager.emp_no = e.emp_no
        join departments d on dept_manager.dept_no = d.dept_no
        where to_date > NOW()) as m on d.dept_name = m.dept_name
where de.to_date > now() and t.to_date > now();