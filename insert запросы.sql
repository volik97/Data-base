INSERT INTO author
VALUES
	(default, 'author_1'),
	(default, 'author_2'),
	(default, 'author_3'),
    (default, 'author_4'),
    (default, 'author_5'),
    (default, 'author_6'),
    (default, 'author_7'),
    (default, 'author_8');

INSERT INTO genre
VALUES
	(default, 'genre_1'),
	(default, 'genre_2'),
	(default, 'genre_3'),
	(default, 'genre_4'),
	(default, 'genre_5');

INSERT INTO album
VALUES
    (default, 'album_name_1', '1987'),
    (default, 'album_name_2', '1991'),
    (default, 'album_name_3', '2008'),
    (default, 'album_name_4', '1988'),
    (default, 'album_name_5', '1986'),
    (default, 'album_name_6', '1992'),
    (default, 'album_name_7', '2012'),
    (default, 'album_name_8', '2018'),
    (default, 'album_name_8', '2007');

INSERT INTO track
VALUES
	(default, 'track_1', 3.05, 1),
    (default, 'track_2', 3.10, 1),
    (default, 'track_3', 4.15, 2),
    (default, 'track_4', 3.15, 2),
    (default, 'track_5', 4.25, 3),
    (default, 'track_6', 5.05, 4),
    (default, 'track_7', 3.10, 4),
    (default, 'track_8', 4.00, 5),
    (default, 'track_9', 5.50, 5),
    (default, 'track_10', 2.30, 6),
    (default, 'track_11', 1.55, 6),
    (default, 'track_12', 4.40, 7),
    (default, 'track_13', 5.20, 8),
    (default, 'track_14', 2.45, 8),
    (default, 'my_15', 2.45, 9),
    (default, 'my_16', 1.45, 9),
	(default, 'track_17', 3.05, 9);

INSERT INTO genre_author
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 8),
	(1, 5),
	(2, 3),
	(2, 6),
	(2, 7),
	(2, 8),
	(3, 1),
	(3, 3),
	(3, 8),
	(4, 2),
	(4, 4),
	(4, 5),
	(4, 6),
	(5, 1),
	(5, 2),
	(5, 3),
	(5, 6);

INSERT INTO author_album
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 4),
	(3, 5),
	(4, 6),
	(6, 7),
	(7, 8),
	(8, 9);

INSERT INTO collection
VALUES
    (1, 'collection_1', '2016'),
    (2, 'collection_2', '2019'),
    (3, 'collection_3', '2020'),
    (4, 'collection_4', '2012'),
    (5, 'collection_5', '2006'),
    (6, 'collection_6', '2001'),
    (7, 'collection_7', '2005'),
    (8, 'collection_8', '2015');

INSERT INTO collection_track
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 8),
	(1, 10),
	(1, 11),
	(1, 15),
	(2, 1),
	(2, 2),
	(2, 6),
	(2, 7),
	(2, 8),
	(2, 10),
	(2, 11),
	(2, 16),
	(2, 17),
	(3, 1),
	(3, 5),
	(3, 7),
	(3, 8),
	(3, 13),
	(3, 14),
	(3, 15),
	(3, 16),
	(3, 17),
	(3, 12);