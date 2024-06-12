create schema netology;
create table netology.CUSTOMERS(
id primary key serial not null,
name varchar(50) not null,
surname varchar(50) not null,
age int not null,
phone_number varchar(50) not null
);

insert into CUSTOMERS(id, name, surname, age, phone_number) values
(1, "irina", "ivanova", 23, "+79501223333"),
(2, "alexey", "petrov", 43, "+79321745532"),
(3, "egor", "ionov", 12, "+79123428843"),
(4, "pavel", "palov", 19, "+79013211234"
);

create table netology.ORDERS(
id primary key serial not null,
date date not null,
customer_id int not null,
product_name varchar(50) not null,
amount float not null,
foreign key (customer_id) references CUSTOMERS(id
);

insert into ORDERS(id, date, customer_id,product_name, amount) values
(1, 2024-04-24, 1, "bread", 45),
(2, 2024-04-12, 3, "potatoes", 70),
(3, 2024-04-12, "milk" 2, 50),
(4, 2024-04-10, "snacks", 115
);