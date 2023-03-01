USE ymir_clayton;
# Write SELECT statements for:
# Albums released after 1991
SELECT 'Albums Released After 1991' AS 'Caption';
DELETE FROM albums WHERE release_date > 1991;
# Albums with the genre 'disco'
SELECT 'Disco Albums' AS 'Caption';
DELETE FROM albums WHERE genre = 'disco';
# Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT 'Album by Bob Marley & The Wailers' AS 'Caption';
DELETE FROM albums WHERE artist = 'Bob Marley & The Wailers';