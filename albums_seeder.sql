USE ymir_clayton;

SET NAMES utf8mb4;

TRUNCATE `albums`;

INSERT INTO `albums` (`artist`, `name`, `release_date`, `sales`, `genre`) VALUES
('Michael Jackson',	'Thriller',	1982,	50.200000,	'Pop, post-disco, funk, rock'),
('AC/DC',	'Back in Black',	1980,	30.100000,	'Hard rock'),
('Pink Floyd',	'The Dark Side of the Moon',	1973,	24.800000,	'Progressive rock'),
('Eagles',	'Their Greatest Hits (1971–1975)',	1976,	41.200000,	'Country rock, soft rock, folk rock'),
('Eagles',	'Hotel California',	1976,	31.800000,	'Soft rock'),
('Fleetwood Mac',	'Rumours',	1977,	29.300000,	'Soft rock'),
('Led Zeppelin',	'Led Zeppelin IV',	1971,	30.400000,	'Hard rock, heavy metal, folk roc'),
('Michael Jackson',	'Bad',	1987,	21.100000,	'Pop, rhythm and blues, funk and '),
('Meat Loaf',	'Bat Out of Hell',	1977,	22.000000,	'Hard rock, glam rock, progressive rock'),
('Various artists',	'Dirty Dancing',	1987,	24.100000,	'Pop, rock, R&B'),
('Metallica',	'Metallica',	1991,	22.700000,	'Heavy metal'),
('Guns N\' Roses',	'Appetite for Destruction',	1987,	22.800000,	'Hard rock'),
('Bob Marley & The Wailers',	'Legend: The Best of Bob Marley & The Wailers',	1984,	22.900000,	'Reggae'),
('Bruce Springsteen',	'Born in the U.S.A.',	1984,	22.000000,	'Heartland rock'),
('Dire Straits',	'Brothers in Arms',	1985,	21.100000,	'Roots rock, blues rock, soft rock'),
('Madonna',	'The Immaculate Collection ',	1990,	19.800000,	'Pop, dance'),
('Pink Floyd',	'The Wall',	1979,	18.900000,	'Progressive rock'),
('The Beatles',	'Sgt. Pepper\'s Lonely Hearts Club Band',	1967,	18.300000,	'Rock'),
('Michael Jackson',	'Dangerous',	1991,	17.000000,	'New jack swing, R&B and pop'),
('The Beatles',	'Abbey Road',	1969,	16.800000,	'Rock');

SELECT * FROM `albums`;