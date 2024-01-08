INSERT INTO salesman
VALUES (
        5001,
        'James Hoog',
        'New York',
        0.15
    ), (
        5002,
        'Nail Knite',
        'Paris',
        0.13
    ), (
        5005,
        'Pit Alex',
        'London',
        0.11
    ), (
        5006, 
        'Mc Lyon', 
        'Paris', 
        0.14
    ), (
        5003, 
        'Lauson Hen', 
        NULL, 
        0.12
    ), (
        5007, 
        'Paul Adam', 
        'Rome', 
        0.13
    );



INSERT INTO customer
VALUES
    (
        3002,
        'Nick Rimando',
        'New York',
        100,
        5001
    ),
    (
        3005,
        'Graham Zusi',
        'California',
        200,
        5002
    ),
    (
        3001,
        'Brad Guzan',
        'London',
        NULL,
        NULL
    ),
    (
        3004,
        'Fabian Johns',
        'Paris',
        300,
        5006
    ),
    (
        3007,
        'Brad Davis',
        'New York',
        200,
        5001
    ),
    (
        3009,
        'Geoff Camero',
        'Berlin',
        100,
        NULL
    ),
    (
        3008,
        'Julian Green',
        'London',
        300,
        5002
    ),
    (
        3003,
        'Jozy Altidor',
        'Moncow',
        200,
        5007
    );

INSERT INTO purchase
VALUES
    (
        70001,
        150.5,
        '2016-10-05',
        3005,
        5002
    ),(
        70009,
        270.65,
        '2016-09-10',
        3001,
        NULL
    ),(
        70002,
        65.26,
        '2016-10-05',
        3002,
        5001
    ),(
        70004,
        110.5,
        '2016-08-17',
        3009,
        NULL
    ),(
        70007,
        948.5,
        '2016-09-10',
        3005,
        5002
    ),(
        70005,
        2400.6,
        '2016-07-27',
        3007,
        5001
    ),(
        70008,
        5760,
        '2016-09-10',
        3002,
        5001
    ),(
        70010,
        1983.43,
        '2016-10-10',
        3004,
        5006
    ),(
        70003,
        2480.4,
        '2016-10-10',
        3009,
        NULL
    ),(
        70012,
        250.45,
        '2016-06-27',
        3008,
        5002
    ),(
        70011,
        75.29,
        '2016-08-17',
        3003,
        5007
    );