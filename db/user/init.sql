create table if not exists users(

	id serial primary key,
	name varchar(100) not null,
	email varchar(100) unique not null,
	password varchar(255) not null
);

insert into users(name, email, password)
values('cevdet eren', 'cevdet@example.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd36b391d7bd165a648');
