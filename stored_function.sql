select * from customer_w;

create or replace function add_customer_w(
	customer_id integer,
	first_name varchar(25),
	last_name varchar(25)
)
returns void
language plpgsql
as
$MAIN$
begin
	insert into customer_w(customer_id, first_name, last_name)
	values(customer_id, first_name, last_name);
end;
$MAIN$

select add_customer_w(2,'Jason', 'Kidd');

select * from customer_w where customer_id > 0;

-------------------------------------------------------------
select * from car_w;

create or replace function add_car_w(
	vin_num integer,
	car_year year,
	make varchar(25),
	model varchar(25),
	used boolean,
	sold boolean
)
returns void
language plpgsql
as
$MAIN$
begin
	insert into car_w(vin_num, car_year, make, model, used, sold)
	values(vin_num, car_year, make, model, used, sold);
end;
$MAIN$

select add_car_w(690,2021, 'Toyota', 'Camry', false, true);

select * from car_w where vin_num > 11;