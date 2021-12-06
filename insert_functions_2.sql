insert into salesperson_w (
	sales_id,
	first_name,
	last_name
)VALUES(
	'2',
	'Tyler',
	'Adams'
);
select * from salesperson_w
----------------------------------------------------------
insert into customer_w (
	customer_id,
	first_name,
	last_name
)VALUES(
	'1',
	'Mike',
	'Jones'
);
select * from customer_w

--------------------------------------------------------------
insert into car_w (
	vin_num,
	car_year,
	make,
	model,
	used,
	sold
)VALUES(
	 12,
	 2015,
	'Honda',
	'Civic',
	 true,
	 true
);
select * from car_w
----------------------------------------------------------------
insert into invoice_w(
    po_id,
	price,
	vin_num,
	customer_id,
	sales_id,
	date_time
)VALUES(
	 '2',
	 9999.99,
	 690,
	 2,
	 2,
	 '08-15-2020'
);
select * from invoice_w
----------------------------------------------------------------
insert into mechanic_w (
	mechanic_id,
	first_name,
	last_name
)VALUES(
	'2',
	'Mike',
	'Tyson'
);
select * from mechanic_w
-----------------------------------------------------------------
insert into parts_w (
	part_id,
	part_name,
	price
)VALUES(
	 206,
	'rear light bulb',
	17.00
);
select * from parts_w
-----------------------------------------------------------------
insert into service_ticket_w(
    st_id,
    customer_id,
	vin_num,
	mechanic_id,
	part_id,
	date_time,
	total_cost,
	servive_type
)VALUES(
	 '21',
	 '2',
	 690,
	 2,
	 205,
	 '09-22-2020',
	 41.00,
	 'Replaced 2 rear light bulbs'
);
select * from service_ticket_w
-------------------------------------------------------
insert into service_record_w (
	record_id,
	st_id
)VALUES(
	'21',
	'21'
);
select * from service_record_w
