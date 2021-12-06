create TABLE salesperson_w(
	sales_id serial primary key,
	first_name varchar(25),
	last_name varchar(25)
);
select * from salesperson_w;

--------------------------------------------

create TABLE invoice_w(
	po_id serial primary key,
	price numeric(6,2),
	vin_num serial not null,
	customer_id serial not null,
	sales_id serial not null,
	date_time date,
	foreign key (vin_num) references car_w,
	foreign key (customer_id) references customer_w,
	foreign key (sales_id) references salesperson_w
);
select * from invoice_w;

--------------------------------------------------

create TABLE customer_w(
	customer_id serial primary key,
	first_name varchar(25),
	last_name varchar(25)
);
select * from customer_w;

---------------------------------------------------

create TABLE service_record_w(
	record_id serial primary key,
	st_id serial not null,
	foreign key (st_id) references service_ticket_w
);
select * from service_record_w;

---------------------------------------------------

create TABLE car_w(
	vin_num serial primary key,
	car_year year,
	make varchar(25),
	model varchar(25),
	used boolean,
	sold boolean
);
select * from car_w;

---------------------------------------------------

create TABLE service_ticket_w(
	st_id serial primary key,
	customer_id serial not null,
	vin_num serial not null,
	mechanic_id serial not null,
	part_id serial not null,
	date_time date,
	total_cost numeric(5,2),
	servive_type varchar(30),
	foreign key (customer_id) references customer_w,
	foreign key (vin_num) references car_w,
	foreign key (mechanic_id) references mechanic_w,
	foreign key (part_id) references parts_w
);
select * from service_ticket_w;

-----------------------------------------------------------------
create TABLE mechanic_w(
	mechanic_id serial primary key,
	first_name varchar(25),
	last_name varchar(25)
);
select * from mechanic_w;

-------------------------------------------------------------
create TABLE parts_w(
	part_id serial primary key,
	part_name varchar(25),
	price numeric(5,2)
);
select * from parts_w;