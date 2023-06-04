create table salesperson (
	salesperson_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table CUSTOMER (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);
create table car (
	car_vin SERIAL primary key,
	car_make VARCHAR(20),
	car_model VARCHAR(20),
	car_year Integer
);
drop table CUSTOMER
create table mechanic (
	mechanic_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);
create table parts_order (
	order_id SERIAL primary key,
	order_date DATE,
	supplier VARCHAR(20),
	order_amount NUMERIC(5,2)
);
create table service_ticket (
	ticket_id SERIAL primary key,
	ticket_date DATE,
	mechanic_id SERIAL,
	customer_id SERIAL,
	order_id SERIAL,
	foreign KEY(mechanic_id) references mechanic(mechanic_id),
	foreign key(customer_id) references CUSTOMER(customer_id),
	foreign KEY(order_id) references parts_order(order_id)
);
create table invoice (
	invoice_id SERIAL primary key,
	invoice_date DATE,
	salesperson_id SERIAL,
	customer_id SERIAL,
	car_vin SERIAL,
	foreign key(salesperson_id) references salesperson(salesperson_id),
	foreign key(customer_id) references CUSTOMER(customer_id),
	foreign key(car_vin) references car(car_vin)
);
insert into salesperson (
	salesperson_id,
	first_name,
	last_name
) values (
	default,
	'Michael',
	'Kelso'
);

insert into CUSTOMER (
	customer_id,
	fist_name,
	last_name
) values (
	default,
	'Willem',
	'Dafoe'
);
insert into car (
	car_vin,
	car_make,
	car_model,
	car_year
) values (
	3345643,
	'Toyota',
	'Camry',
	2009
);
insert into mechanic (
	mechanic_id,
	first_name,
	last_name
) values (
	default,
	'Huey',
	'Freeman'
);
insert into parts_order (
	order_id,
	order_date,
	supplier,
	order_amount
) values (
	default,
	TO_DATE('1/3/2023', 'MM/DD/YYYY'),
	'Parts n Stuff',
	612.06
);
insert into service_ticket (
	ticket_id,
	ticket_date,
	mechanic_id,
	customer_id,
	order_id
) values (
	default,
	TO_DATE('1/2/2023', 'MM/DD/YYYY'),
	1,
	2,
	default
);

select * from mechanic
select * from CUSTOMER
select * from salesperson
select * from car
select * from parts_order
select * from service_ticket