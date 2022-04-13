create table genre (
	id serial primary key,
	genre_name varchar(40) not null
);

create table author (
	id serial primary key,
	nickname varchar(40) not null,
	id_genre integer references genre(id)
);

create table album (
	id serial primary key,
	album_name text not null,
	release_year integer not null,
	id_author integer references author(id)
);

create table Track (
	id serial primary key,
	track_name varchar(100) not null,
	duration real not null,
	id_album integer references album(id) not null
);
