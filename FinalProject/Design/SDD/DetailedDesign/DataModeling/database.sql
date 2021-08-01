create database flutter;
use flutter;

create table users (
	user_id integer primary key,
    user_name varchar(45),
    address varchar(45)
);

create table credit_card (
	card_id integer primary key,
    amount_money integer,
    app_code varchar(45),
    cvv_code integer,
    date_expired datetime,
    secret_key varchar(45),
    user_id integer,
    foreign key (user_id) references users(user_id)
);



create table park (
	park_id integer primary key,
    amount_bike integer,
    description_park varchar(45),
    name_park varchar(45)
);

create table bike (
	bike_id integer primary key,
    code_bike varchar(45),
    deposit integer,
    name_bike varchar(45),
    parking_id integer,
    state varchar(45),
    type_bike varchar(45),
    foreign key (parking_id) references park(park_id)
);

create table notification (
	notification_id integer,
	bike_id integer,
    user_id integer,
    time_notification datetime,
    description_nofification varchar(45),
    name_notification varchar(45),
    primary key (notification_id),
    foreign key (bike_id) references bike(bike_id),
    foreign key (user_id) references users(user_id)
);

create table transaction_history (
	transaction_id integer primary key,
    transaction_name varchar(45),
    bike_id integer,
    card_id integer,
    time_rent_bike datetime,
    payment_money float,
    foreign key (bike_id) references bike(bike_id),
    foreign key (card_id) references credit_card(card_id)
);

