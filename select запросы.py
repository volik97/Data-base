import sqlalchemy

db = 'postgresql://volik:volik@localhost:5432/music'
engine = sqlalchemy.create_engine(db)
connection = engine.connect()

# название и год выхода альбомов, вышедших в 2018 году;
print(connection.execute(
    '''
    SELECT album_name, release_year 
    FROM album
    WHERE release_year = 2018;
    ''').fetchall())

# название и продолжительность самого длительного трека;
print(connection.execute(
    '''
    SELECT track_name, duration 
    FROM track
    ORDER BY duration DESC
    ''').fetchall())

# название треков, продолжительность которых не менее 3,5 минуты;
print(connection.execute(
    '''
    SELECT track_name, duration 
    FROM track
    WHERE duration >= 3.5;
    ''').fetchall())

# названия сборников, вышедших в период с 2018 по 2020 год включительно;
print(connection.execute(
    '''
    SELECT  name_collection, release_year
    FROM collection
    WHERE release_year BETWEEN 2018 and 2020;
    ''').fetchall())

# исполнители, чье имя состоит из 1 слова;
print(connection.execute(
    '''
    SELECT nickname
    FROM author
    WHERE nickname NOT iLIKE '%% %%';
    ''').fetchall())

# название треков, которые содержат слово "мой"/"my".
print(connection.execute(
    '''
    SELECT track_name
    FROM track
    WHERE track_name iLIKE '%%my%%';
    ''').fetchall())