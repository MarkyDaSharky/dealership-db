INSERT INTO car(
	make,
	model,
	car_year,
	color,
	is_new,
	car_price
) VALUES 
	('Honda',
	'CR-Z',
	'2012',
	'Royal_blue',
	FALSE,
	7500.00
);

SELECT * FROM car;

INSERT INTO car(
	make,
	model,
	car_year,
	color,
	is_new,
	car_price
) VALUES (
	'Honda',
	'Accord',
	'2016',
	'Blue',
	FALSE,
	6000.00
),(
	'Toyota',
	'Corolla',
	'2018',
	'Beige',
	FALSE,
	8000.00
);

SELECT * FROM car;

INSERT INTO mechanic(
	first_name,
	last_name,
	email,
	address,
	phone_number
) VALUES (
	'Mark',
	'Torres',
	'mtorres@mech.com',
	'222 Fairfield Lane',
	'222-444-5555'
),(
	'Jimmy',
	'Neutron',
	'jneutron@mech.com',
	'333 Brainblast Drive',
	'555-444-3022'
);

SELECT * FROM mechanic m 
	

INSERT INTO salesperson(
	first_name,
	last_name,
	email,
	phone_number
) VALUES (
	'Tim',
	'Boque',
	'Tboque@sales.com',
	'333-444-5542'
),(
	'Harry',
	'Wormwood',
	'HWorm@sales.com',
	'222-444-4123'
);


SELECT * FROM salesperson s;




INSERT INTO customer(
	first_name,
	last_name,
	phone_number,
	customer_email,
	address
) VALUES (
	'Cathy',
	'Warner',
	'222-444-5555',
	'CWarner@gmail.com',
	'222 Fairfield Lane'
),(
	'Eduardo',
	'Salamanca',
	'333-111-3022',
	'esalamander@yahoo.com',
	'333 pollo Drive'
);


SELECT * FROM customer;

SELECT * FROM car;

CREATE OR REPLACE PROCEDURE update_is_new()
LANGUAGE plpgsql
AS $$
BEGIN 
	UPDATE car 
	SET is_new = TRUE 
	WHERE car_year > 2015;
END
$$


CALL update_is_new()