use ymir_clayton;
# In select_exercises.sql write queries to find the following information.
# Before each item, output a caption explaining the results:
# The name of all albums by Pink Floyd.
SELECT 'The name of all albums by Pink Floyd.' AS 'Caption';
SELECT name FROM albums WHERE artist = 'Pink Floyd';
# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Caption';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
# The genre for Nevermind
SELECT 'The genre for Sgt. Pepper''s Lonely Hearts Club Band' AS 'Caption';
SELECT genre FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
# Which albums were released in the 1990s
SELECT 'Albums released in the 1990s' AS 'Caption';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;
# Which albums had less than 20 million certified sales
SELECT 'Albums with less than 20 million certified sales' as 'Caption';
SELECT * FROM albums WHERE sales < 20.0;
# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT 'Rock albums' as 'Caption';
SELECT * FROM albums WHERE genre = 'Rock';
SELECT * FROM albums WHERE genre LIKE '%rock%';

alter table albums
add unique (artist, name);

create unique index artist_album_name
on ymir_clayton.albums (artist, name);

# Duplicate entry 'The Beatles-Abbey Road' for key 'artist_album_name'
insert into albums (artist, name, release_date, sales, genre)
values ('The Beatles', 'Abbey Road', 1969, 16.8, 'Rock');
