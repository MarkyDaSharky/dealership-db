CREATE TABLE salesperson(
	seller_id serial PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone_number VARCHAR(50),
	email VARCHAR(100)
);

SELECT * FROM salesperson;

CREATE TABLE mechanic(
	mechanic_id serial PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100),
	address VARCHAR(100),
	phone_number VARCHAR(50)
);

CREATE TABLE car(
	car_serial serial PRIMARY KEY,
	make VARCHAR(50),
	model VARCHAR(50),
	car_year VARCHAR(4),
	color VARCHAR(30),
	is_new BOOLEAN,
	car_price NUMERIC(6,2),
	seller_id INTEGER, 
	FOREIGN KEY(seller_id) REFERENCES salesperson(seller_id)
);

SELECT * FROM car;

CREATE TABLE service(
	service_id serial PRIMARY KEY,
	service_price NUMERIC(6,2),
	description VARCHAR(500),
	mechanic_id INTEGER,
	car_serial INTEGER,
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id),
	FOREIGN KEY(car_serial) REFERENCES car(car_serial)
);

SELECT * FROM service;

CREATE TABLE parts(
	part_id serial PRIMARY KEY,
	part_name VARCHAR(50),
	description VARCHAR(50),
	price NUMERIC(6,2),
	quantity INTEGER,
	service_id INTEGER,
	FOREIGN KEY(service_id) REFERENCES service(service_id)	
); 

SELECT * FROM parts


