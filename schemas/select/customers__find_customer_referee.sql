Create table If Not Exists customers__find_customer_referee (id int, name varchar(25), referee_id int)
Truncate table customers__find_customer_referee
insert into customers__find_customer_referee (id, name, referee_id) values ('1', 'Will', 'None')
insert into customers__find_customer_referee (id, name, referee_id) values ('2', 'Jane', 'None')
insert into customers__find_customer_referee (id, name, referee_id) values ('3', 'Alex', '2')
insert into customers__find_customer_referee (id, name, referee_id) values ('4', 'Bill', 'None')
insert into customers__find_customer_referee (id, name, referee_id) values ('5', 'Zack', '1')
insert into customers__find_customer_referee (id, name, referee_id) values ('6', 'Mark', '2')
