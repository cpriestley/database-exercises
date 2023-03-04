# Adlister Application
# We'll be building out the entire AdLister project in a later module,
# but for now, let's design the database!
# The AdLister is a small scale Craigslist clone where users can post ads for items.

# Specifications
# - Users sign up for the site with an email and password
# - Users create ads with a title and description and category.
# - Each ad is associated with the user that created it.
# - An ad can be in one or more categories
#       (for example, "help wanted", "giveaway", or "furniture")
create table users (
    id int not null,
    email varchar(50) unique not null,
    password varchar(50) not null,
    primary key (id)
);

create table ads (
    id int not null,
    title varchar(100),
    description varchar(300),
    content varchar(1000),
    user_id int,
    primary key (id),
    foreign key (user_id) references users(id)
);

create table categories (
    id int not null,
    name enum('','','') unique not null,
    primary key (id)
);

create table ads_categories (
    ad_id int not null,
    category_id int not null,
    primary key (ad_id, category_id),
    foreign key (ad_id) references ads(id),
    foreign key (category_id) references categories(id)
);

# Queries
# Write SQL queries to answer the following questions:
# - For a given ad, what is the email address of the user that created it?
set @ad_id := value;
select email
from users
where id = (select user_id
            from ads
            where id=@ad_id);

# - For a given ad, what category, or categories, does it belong to?
set @ad_id := value;
select c.name
from categories c
join ads_categories ac on c.id = ac.category_id;

# - For a given category, show all the ads that are in that category.
set @category := value;
select *
from ads a
join ads_categories ac on a.id = ac.ad_id
join categories c on ac.category_id = c.id
where c.name = @category;

# - For a given user, show all the ads they have posted.
set @user_id := value;
select *
from ads
join users u on ads.user_id = u.id
where u.id = @user_id;
