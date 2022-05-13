
-- I was having a lot of syntax issues, so i was getting a little confused on whether I was creating tables right.
-- Once i know what i was doing wrong, ill be able to add text to finish the assignent














create table customer(
	customer_id serial primary key,
	first_name varchar(20),
	last_name varchar(50) not null
);


select * from customer;

create table movies(
	movie_id serial primary key,
	movie_name varchar(150),
	genre varchar(20),
	rating varchar(10)
);

select * from movies 


create table prices(
	prices_id serial primary key,
	snack_prices int,
	drink_prices int,
	ticket_prices int
);

create table tickets(
	ticket_id serial primary key,
	amount numeric(5,2),
	movies  varchar(20),
	foreign key(movies) references movies(movie_name),
	prices  int,
	foreign key(prices) references prices(movie_price)
);
	
	
	
	
	
create table concessions(
	snacks_id serial primary key,
	snack_name varchar(20),
	drink_names varchar(20)
	snack_prices int
	foreign key(snack_prices) references prices(snack_prices)
	drink_prices int
	foreign key(drink_prices) references prices(drink_prices)
);






