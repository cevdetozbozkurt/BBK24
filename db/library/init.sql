CREATE TABLE IF NOT EXISTS library (
    ID serial PRIMARY key,
    user_id int not null,
    name varchar(100),
    foreign key (user_id) references users(id) on delete cascade
);

alter table library add constraint unique_library_id unique (id, user_id);

create table songs(
	id serial primary key,
	library_id int references library(id) on delete cascade,
	title varchar(255),
	artist varchar(255)
);

insert into library (user_id, name)
values
(1, 'Cevdets pop collection')
(1, 'Cevdets chill songs');

insert into songs (library_id, title, artist)
values
(1, 'POP Song 1', 'Artist A'),
(1, 'POP Song 2', 'Artist B'),
(1, 'POP Song 3', 'Artist C'),
(1, 'POP Song 4', 'Artist D');

insert into songs(library_id, title, artist)
values
(2, 'Jazz Song 1', 'Artist K'),
(2, 'Jazz Song 2', 'Artist L'),
(2, 'Jazz Song 3', 'Artist M'),
(2, 'Jazz Song 4', 'Artist N');

