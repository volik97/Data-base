INSERT INTO author
VALUES
	(default, 'author_1'),
	(default, 'author_2'),
	(default, 'author_3'),
    (default, 'author_4'),
    (default, 'author_5'),
    (default, 'author_6'),
    (default, 'author_7'),
    (default, 'author_8'),
    (default, 'author_9'),
    (default, 'author_10'),
    (default, 'author_11'),
    (default, 'author_12'),
    (default, 'author_13'),
    (default, 'author_14'),
    (default, 'author_15');

INSERT INTO genre
VALUES
	(default, 'genre_1'),
	(default, 'genre_2'),
	(default, 'genre_3'),
	(default, 'genre_4'),
	(default, 'genre_5');

INSERT INTO album
VALUES
    (default, 'album_name_1', '2018')
    (default, 'album_name_2', '2010')
    (default, 'album_name_3', '2012')
    (default, 'album_name_4', '2015')
    (default, 'album_name_5', '2018')
    (default, 'album_name_6', '2019')
    (default, 'album_name_7', '2020')
    (default, 'album_name_8', '2002')
    (default, 'album_name_9', '2018'),
    (default, 'album_name_10', '2010'),
    (default, 'album_name_11', '2012'),
    (default, 'album_name_12', '2015'),
    (default, 'album_name_13', '2018'),
    (default, 'album_name_14', '2019'),
    (default, 'album_name_15', '2020'),
    (default, 'album_name_16', '2002'),
    (default, 'album_name_17', '2018'),
    (default, 'album_name_18', '2010'),
    (default, 'album_name_19', '2012'),
    (default, 'album_name_20', '2015');

INSERT INTO track
VALUES
	(default, 'track_1', 3.05, 17),
    (default, 'track_2', 3.10, 18),
    (default, 'track_3', 4.15, 19),
    (default, 'track_4', 3.15, 20),
    (default, 'track_5', 4.25, 1),
    (default, 'track_6', 5.05, 2),
    (default, 'track_7', 2.50, 3),
    (default, 'track_8', 4.00, 4),
    (default, 'track_9', 5.50, 5),
    (default, 'track_10', 2.30, 6),
    (default, 'track_11', 1.55, 7),
    (default, 'track_12', 4.40, 8),
    (default, 'track_13', 5.20, 9),
    (default, 'track_14', 2.45, 10),
    (default, 'my_14', 2.45, 11),
    (default, 'my', 1.45, 12),
	(default, 'track_15', 3.05, 1),
    (default, 'track_16', 3.10, 2),
    (default, 'track_17', 4.15, 3),
    (default, 'track_18', 3.15, 4),
    (default, 'track_19', 4.25, 5),
    (default, 'track_20', 5.05, 6),
    (default, 'track_21', 2.50, 7),
    (default, 'track_22', 4.00, 8),
    (default, 'track_23', 5.50, 9),
    (default, 'track_24', 2.30, 10),
    (default, 'track_25', 1.55, 11),
    (default, 'track_26', 4.40, 12),
    (default, 'track_27', 5.20, 13),
    (default, 'track_28', 2.45, 14),
    (default, 'mymymy123', 2.45, 15),
    (default, 'my32', 1.45, 16);

INSERT INTO genre_author
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 4),
	(2, 5),
	(2, 6),
	(3, 7),
	(3, 8),
	(3, 9),
	(4, 10),
	(4, 11),
	(4, 12),
	(5, 13),
	(5, 14),
	(5, 15);

INSERT INTO author_album
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10),
	(11, 11),
	(12, 12),
	(13, 13),
	(14, 14),
	(15, 15),
	(1, 16),
	(2, 17),
	(3, 18),
	(4, 19),
	(5, 20);

INSERT INTO collection
VALUES
    (1, 'collection_1', '2002'),
    (2, 'collection_2', '2010'),
    (3, 'collection_3', '2012'),
    (4, 'collection_4', '2015'),
    (5, 'collection_5', '2018'),
    (6, 'collection_6', '2019'),
    (7, 'collection_7', '2020'),
    (8, 'collection_8', '2018');

INSERT INTO collection_track
VALUES
	(1, 44),
	(1, 56),
	(1, 64),
	(2, 38),
	(2, 50),
	(2, 46),
	(2, 58),
	(2, 34),
	(3, 39),
	(3, 51),
	(3, 47),
	(3, 59),
	(3, 35),
	(4, 40),
	(4, 52),
	(4, 48),
	(4, 60),
	(4, 36),
	(5, 37),
	(5, 49),
	(5, 41),
	(5, 53),
	(6, 42),
	(6, 54),
	(6, 62),
	(7, 43),
	(7, 55),
	(7, 63),
	(8, 45),
	(8, 57),
	(8, 61),
	(8, 33);
