INSERT INTO customer(
    customer_id,
    cusomter_name, --misspelled
    customer_address,
    phone,
    email
) VALUES(
    1,
    'Justin Nguyen',
    '1234 Main St.',
    4691290,
    'justin@CT.com'
), (
    2,
    'Brandt Carlson',
    '1235 Main St.',
    123693,
    'brandt@CT.com'
)

INSERT INTO car(
    car_id,
    customer_id,
    year,
    make,
    model,
    price,
    color
) VALUES(
    1,
    2,
    2024,
    'Toyota',
    'Tundra',
    75894,
    'Terra'
), (
    2,
    2,
    2023,
    'Toyota',
    'Sequoia',
    86984,
    'Ice Cap'
), (
    3,
    2,
    2014,
    'Toyota',
    'Tacoma,',
    10000,
    'Super White'
)

INSERT INTO saleperson(
    saleperson_id,
    store,
    saleperson_name,
    email,
    phone,
    saleperson_status
) VALUES(
    1,
    1,
    'John Smith',
    'JohnSmith@CT.com',
    814786291,
    'A'
), (
    2,
    1,
    'Adam Jones',
    'AdamJones@CT.com',
    214856672,
    'A'
),(
    3,
    2,
    'Jeromy Jacobs',
    'JeromyJacobs@CT.com',
    972852018,
    'N/A'
)

INSERT INTO mechanic(
    mechanic_id,
    store,
    mechanic_name,
    email,
    phone,
    mechanic_status
) VALUES(
    1,
    1,
    'Jordan Smith',
    'JordanSmith@CT.com',
    7652718329,
    'A'
), (
    2,
    1,
    'Jacob Lee',
    'JacobLee@CT.com',
    29801202,
    'N/A'
), (
    3,
    2,
    'Peter Parker',
    'PeterParker@CT.com',
    8769820189,
    'A'
)

INSERT into carservice(
    carservice_id,
    mechanic_id,
    cost
) VALUES(
    1,
    3,
    799
), (
    2,
    1,
    2999
), (
    3,
    3,
    500
)

INSERT INTO sale(
    sale_id,
    saleperson_id
) VALUES(
    1,
    2
), (
    2,
    2
),(
    3,
    1
)

INSERT INTO invoice(
    invoice_id,
    car_id,
    sale_id,
    carservice_id,
    date,
    price
) VALUES(
    2,
    2,
    2,
    1,
    ('2023-12-10 01:45:56'),
    89983
), (
    3,
    1,
    2,
    3,
    ('2023-12-11 12:30:30'),
    76394
)
