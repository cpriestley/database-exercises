use ymir_clayton;
# Join Example Database
# Create a database named join_test_db and run the SQL provided in the Join Example DB section above; to create the same setup used for this lesson.
# Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
insert into users (name, email, role_id)
values ('michaelango', 'michaelango@tmnt.com', null),
('donatello', 'donatello@tmnt.com', 2),
('leonardo', 'leonardo@tmnt.com', 2),
('raphel', 'raphel@tmnt.com', 2);

# Use JOIN, LEFT JOIN, and RIGHT JOIN to combine results from the users and roles tables as we did in the lesson.
# Before you run each query, guess the expected number of results.
select u.name, u.email, r.name from users u
join roles r on u.role_id = r.id;

select u.name, u.email, r.name from users u
left join roles r on u.role_id = r.id;

select u.name, u.email, r.name from users u
right join roles r on u.role_id = r.id;

# Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries.
# Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a given role.
# Hint: You will also need to use GROUP BY in the query.
select r.name, count(*) as count from users u
join roles r on u.role_id = r.id
group by r.name;