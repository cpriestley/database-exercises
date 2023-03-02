use ymir_employees;
# 1. Create a new file named group_by_exercises.sql.
# 2. In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
select distinct title from titles;
# 3. Find your query for employees whose last names start and end with 'E'.
# Update the query to find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
select last_name from employees where last_name like 'e%e' group by last_name;
# 4. Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
select distinct first_name, last_name from employees where last_name like 'e%e';
# 5. Find the unique last names with a 'q' but not 'qu'. Your results should be:
select distinct last_name from employees where last_name rlike '^.*q[^u]*$';
# 6. Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
select count(*) as count, last_name from employees where last_name rlike '^.*q[^u]*$' group by last_name order by last_name;
# 7. Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:
select count(*) as count, gender from employees where first_name in('Irena', 'Vidya', 'Maya') group by gender;