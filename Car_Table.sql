CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    cusomter_name VARCHAR(60), --misspelled
    customer_address VARCHAR(200),
    phone BIGINT,
    email VARCHAR(50) 
)

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) references customer(customer_id),
    year INTEGER,
    make VARCHAR(50),
    model VARCHAR(50),
    price NUMERIC(10,2),
    color VARCHAR(50)
)

CREATE TABLE saleperson(
    saleperson_id SERIAL PRIMARY KEY,
    store INTEGER,
    saleperson_name VARCHAR(60),
    email VARCHAR(60),
    phone BIGINT,
    saleperson_status VARCHAR(5)
)

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    store INTEGER,
    mechanic_name VARCHAR(60),
    email VARCHAR(60),
    phone BIGINT,
    mechanic_status VARCHAR(5)
)

CREATE TABLE carservice(
    carservice_id SERIAL PRIMARY KEY,
    mechanic_id INTEGER,
    FOREIGN KEY (mechanic_id) references mechanic(mechanic_id),
    cost NUMERIC(8,2)
)

CREATE TABLE sale(
    sale_id SERIAL PRIMARY KEY,
    saleperson_id INTEGER,
    FOREIGN KEY (saleperson_id) references saleperson(saleperson_id)
)

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    FOREIGN KEY (car_id) references car(car_id),
    sale_id INTEGER NULL,
    FOREIGN KEY (sale_id) references sale(sale_id),
    carservice_id INTEGER NULL,
    FOREIGN KEY (carservice_id) references carservice(carservice_id),
    date TIMESTAMP,
    price NUMERIC(10,2)
)