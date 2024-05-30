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