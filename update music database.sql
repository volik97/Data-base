alter table author drop column id_genre
alter table album drop column id_author

create table genre_author (
	genre_id integer not null references genre(id),
	author_id integer not null references author(id),
	constraint pk_genre_author primary key (genre_id, author_id)
);

create table author_album (
	author_id integer not null references author(id),
	album_id integer not null references album(id),
	constraint pk_author_album primary key (author_id, album_id)
);

create table collection (
	id serial primary key,
	name_collection varchar(40) not null,
	release_year integer not null
);

create table collection_track (
	collection_id integer not null references collection(id),
	track_id integer not null references track(id),
	constraint pk_collection_track primary key (collection_id, track_id)
);