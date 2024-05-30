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