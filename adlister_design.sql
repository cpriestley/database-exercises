# drop database adlister;

create schema if not exists adlister;

drop table ads_categories;
drop table ads;
drop table users;
drop table categories;

use adlister;

create table users (
    id int not null auto_increment,
    email varchar(50) unique not null,
    password varchar(50) not null,
    primary key (id)
);

insert into users (email, password)
values ('amy@gmail.com', 'password'),
       ('billy@gmail.com', 'password'),
       ('cathy@gmail.com', 'password'),
       ('debbie@gmail.com', 'password'),
       ('eddie@gmail.com', 'password');

create table ads (
    id int not null auto_increment,
    title varchar(100),
    description varchar(300),
    content varchar(1000),
    user_id int,
    primary key (id),
    foreign key (user_id) references users(id)
);

insert into ads (title, description, content, user_id)
values ('Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi debitis minima obcaecati placeat.',
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad animi assumenda autem deleniti dolor enim eum ipsa iusto pariatur possimus quia quibusdam repudiandae, sed sit temporibus unde voluptatibus. Amet, odit.',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed blandit libero volutpat sed cras ornare arcu dui vivamus. Mauris a diam maecenas sed enim ut. Urna nec tincidunt praesent semper feugiat nibh. Id nibh tortor id aliquet lectus proin. Lacus suspendisse faucibus interdum posuere lorem ipsum. Lacus laoreet non curabitur gravida arcu ac tortor dignissim. Sit amet venenatis urna cursus eget nunc scelerisque viverra mauris. Eu feugiat pretium nibh ipsum. Blandit massa enim nec dui nunc mattis. Bibendum est ultricies integer quis auctor elit. A pellentesque sit amet porttitor. Pretium lectus quam id leo in vitae turpis.',
        1),
       ('Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis dolores expedita fuga numquam.',
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium adipisci autem commodi consequuntur dignissimos dolores eaque eveniet, ipsa, maxime nisi odit perspiciatis possimus quibusdam, quod sapiente? Est neque suscipit totam?',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pulvinar pellentesque habitant morbi tristique senectus. In cursus turpis massa tincidunt dui ut ornare lectus sit. Dignissim convallis aenean et tortor at risus viverra adipiscing at. Venenatis urna cursus eget nunc. Aliquet nec ullamcorper sit amet risus nullam eget felis. Justo donec enim diam vulputate. Tortor at risus viverra adipiscing at in. Vel facilisis volutpat est velit egestas dui. Velit ut tortor pretium viverra. Fringilla ut morbi tincidunt augue interdum. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Auctor neque vitae tempus quam pellentesque nec. Magnis dis parturient montes nascetur ridiculus mus mauris vitae ultricies. Arcu ac tortor dignissim convallis aenean et tortor at risus.',
        2),
       ('Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est expedita maiores maxime nobis soluta.',
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab aliquid aspernatur consequuntur illo inventore quos reiciendis! Ad assumenda autem cum, eius eligendi, excepturi iste nam, natus praesentium quae quos tempora!',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Condimentum vitae sapien pellentesque habitant morbi tristique. Ipsum nunc aliquet bibendum enim facilisis gravida. Pharetra vel turpis nunc eget lorem dolor sed viverra ipsum. Lacus sed turpis tincidunt id aliquet risus feugiat in ante. Sit amet purus gravida quis. Nibh nisl condimentum id venenatis a condimentum vitae. Facilisi morbi tempus iaculis urna id volutpat. Et sollicitudin ac orci phasellus egestas tellus rutrum tellus. Eget velit aliquet sagittis id consectetur. Risus ultricies tristique nulla aliquet enim tortor at. Vitae elementum curabitur vitae nunc sed. Cursus sit amet dictum sit amet. Viverra nam libero justo laoreet sit amet cursus sit amet.',
        3),
       ('Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores illo incidunt sunt suscipit.',
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus amet cupiditate deleniti dolore ducimus ea eveniet, facere id incidunt inventore molestiae non provident quidem reiciendis, sapiente? Ad eum fugiat quo.',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tempus egestas sed sed risus pretium quam vulputate dignissim. Eu consequat ac felis donec et. Sed viverra ipsum nunc aliquet bibendum enim facilisis gravida. Nunc aliquet bibendum enim facilisis. Cursus vitae congue mauris rhoncus aenean vel elit. Mi sit amet mauris commodo quis. Id consectetur purus ut faucibus pulvinar. In nisl nisi scelerisque eu ultrices vitae auctor eu augue. Massa sapien faucibus et molestie ac feugiat sed. Mauris sit amet massa vitae tortor condimentum lacinia quis. Aenean sed adipiscing diam donec adipiscing tristique risus nec feugiat. Massa sed elementum tempus egestas sed sed risus pretium. Mi sit amet mauris commodo quis. Dui accumsan sit amet nulla facilisi morbi tempus iaculis. Ut tellus elementum sagittis vitae. Est ullamcorper eget nulla facilisi.',
        4),
       ('Lorem ipsum dolor sit amet, consectetur adipisicing elit. A assumenda aut doloribus eligendi esse.',
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad amet animi autem facilis, incidunt ipsum laudantium minus molestias nam nesciunt optio quis, tenetur unde? Blanditiis culpa facilis iusto sequi tempore.',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in. Nisi scelerisque eu ultrices vitae. Id aliquet risus feugiat in ante metus. Ultrices tincidunt arcu non sodales neque. Scelerisque purus semper eget duis at tellus at urna condimentum. Neque gravida in fermentum et sollicitudin ac orci phasellus egestas. Elementum facilisis leo vel fringilla est. Scelerisque in dictum non consectetur a erat nam at. A erat nam at lectus urna.',
        5);

create table categories (
    id int not null auto_increment,
    name varchar(50) unique not null,
    primary key (id)
);

insert into categories(name)
values ('help wanted'),
       ('giveaway'),
       ('furniture');

create table ads_categories (
    ad_id int not null auto_increment,
    category_id int not null,
    primary key (ad_id, category_id),
    foreign key (ad_id) references ads(id),
    foreign key (category_id) references categories(id)
);

insert into ads_categories (ad_id, category_id)
values (1, 1),
       (2, 1),
       (3, 2),
       (4, 2),
       (5, 3);

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