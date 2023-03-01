USE ymir_clayton;
DROP TABLE IF EXISTS ymir_clayton.albums;
CREATE TABLE albums (
                        id            int(10) unsigned NOT NULL AUTO_INCREMENT,
                        artist        varchar(50) NOT NULL,
                        name          varchar(50) NOT NULL,
                        release_date  int(11) NOT NULL,
                        sales         float NOT NULL,
                        genre         varchar(25) NOT NULL,
                        PRIMARY KEY (id)
);
DESCRIBE albums;
SHOW CREATE TABLE albums;