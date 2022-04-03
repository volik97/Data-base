create table deportaments (
    id serial primary key,
    name_deportaments varchar(80) not null
);

create table staff (
    id serial primary key,
    name varchar(20) not null,
    surname varchar(20) not null,
    deportament_id integer references deportaments(id)
);

create table deportaments_head (
    deportament_id integer not null references deportaments(id),
    head_id integer not null references staff(id),
    constraint pk_deportaments_head primary key (deportament_id, head_id)
);