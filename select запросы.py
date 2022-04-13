import sqlalchemy

db = 'postgresql://volik:volik@localhost:5432/music'
engine = sqlalchemy.create_engine(db)
connection = engine.connect()

# # название и год выхода альбомов, вышедших в 2018 году;
# print(connection.execute(
#     '''
#     SELECT album_name, release_year
#     FROM album
#     WHERE release_year = 2018;
#     ''').fetchall())
#
# # название и продолжительность самого длительного трека;
# print(connection.execute(
#     '''
#     SELECT track_name, duration
#     FROM track
#     ORDER BY duration DESC
#     ''').fetchall())
#
# # название треков, продолжительность которых не менее 3,5 минуты;
# print(connection.execute(
#     '''
#     SELECT track_name, duration
#     FROM track
#     WHERE duration >= 3.5;
#     ''').fetchall())
#
# # названия сборников, вышедших в период с 2018 по 2020 год включительно;
# print(connection.execute(
#     '''
#     SELECT  name_collection, release_year
#     FROM collection
#     WHERE release_year BETWEEN 2018 and 2020;
#     ''').fetchall())
#
# # исполнители, чье имя состоит из 1 слова;
# print(connection.execute(
#     '''
#     SELECT nickname
#     FROM author
#     WHERE nickname NOT iLIKE '%% %%';
#     ''').fetchall())
#
# # название треков, которые содержат слово "мой"/"my".
# print(connection.execute(
#     '''
#     SELECT track_name
#     FROM track
#     WHERE track_name iLIKE '%%my%%';
#     ''').fetchall())

# количество исполнителей в каждом жанре;
print(connection.execute(
    '''
    SELECT genre_id, COUNT(*) FROM genre_author
    GROUP BY genre_id
    ORDER BY genre_id;
    ''').fetchall())

# количество треков, вошедших в альбомы 2019-2020 годов;
print(connection.execute(
    '''
    SELECT COUNT(t.id) 
    FROM track t
    JOIN album a 
    ON t.id = a.id
    WHERE a.release_year BETWEEN 2019 AND 2020;
    ''').fetchall())

# средняя продолжительность треков по каждому альбому; (Не получается через ROUND округлить до 2-ух знаков)
print(connection.execute(
    '''
    SELECT id_album, AVG(duration)
    FROM track
    GROUP BY id_album
    ORDER BY id_album;
    ''').fetchall())

#все исполнители, которые не выпустили альбомы в 2020 году;
print(connection.execute(
    '''
    SELECT nickname FROM author
    WHERE nickname NOT IN (SELECT A.nickname 
                           FROM author A
                           LEFT JOIN author_album B ON A.id = B.author_id
                           LEFT JOIN album C ON B.album_id = C.id
                           WHERE release_year = 2020
                           ); 
    ''').fetchall())

# названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
print(connection.execute(
    '''
    SELECT DISTINCT name_collection
    FROM collection A
    LEFT JOIN collection_track B ON A.id = B.collection_id
    LEFT JOIN track C ON B.track_id = C.id
    LEFT JOIN album D ON C.id_album = D.id
    LEFT JOIN author_album E ON D.id = E.album_id
    LEFT JOIN author F ON E.author_id = F.id
    WHERE nickname LIKE '%%author_7%%';
    ''').fetchall())

# название альбомов, в которых присутствуют исполнители более 1 жанра;
print(connection.execute(
    '''
    SELECT album_name FROM album A
    LEFT JOIN author_album B ON A.id = B.album_id
    LEFT JOIN author C ON B.author_id = C.id
    LEFT JOIN (SELECT author_id, COUNT(genre_id) AS GENRE
               FROM genre_author
               GROUP BY author_id
               HAVING COUNT(genre_id) > 1) D
    ON A.id = D.author_id
    WHERE NOT D.GENRE IS NULL;
    ''').fetchall())

# наименование треков, которые не входят в сборники;
print(connection.execute(
    '''
    SELECT track_name FROM track
    WHERE id NOT IN (SELECT DISTINCT track_id FROM collection_track);
    ''').fetchall())

# исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
print(connection.execute(
    '''
    SELECT A.nickname FROM author A
    LEFT JOIN author_album B ON A.id = B.author_id
    LEFT JOIN album C ON B.album_id = C.id
    LEFT JOIN track E ON C.id = E.id_album
    GROUP BY A.nickname, E.duration
    HAVING E.duration = (SELECT MIN(duration) FROM track);
''').fetchall())

# название альбомов, содержащих наименьшее количество треков.
