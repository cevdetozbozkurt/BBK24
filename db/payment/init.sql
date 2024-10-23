create table if not exists payments(

	id serial primary key,
	user_id int not null,
	card_number varchar(16) unique
	expiration_date date,
	cvv int,
	foreign key (user_id) references users(id) on delete cascade
);

alter table payments add constraint unique_payment_card unique(user_id,card_number);

insert into payments (user_id, card_number, expiration_date, cvv)
values
(1, '1234567891234567', '2025-08-31', 123),
(1, '1234567812345678', '2026-12-31', 456);
