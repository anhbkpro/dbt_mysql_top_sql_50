Create table If Not Exists lc1193_Transactions (id int, country varchar(4), state enum('approved', 'declined'), amount int, trans_date date);
Truncate table lc1193_Transactions;
insert into lc1193_Transactions (id, country, state, amount, trans_date) values ('121', 'US', 'approved', '1000', '2018-12-18');
insert into lc1193_Transactions (id, country, state, amount, trans_date) values ('122', 'US', 'declined', '2000', '2018-12-19');
insert into lc1193_Transactions (id, country, state, amount, trans_date) values ('123', 'US', 'approved', '2000', '2019-01-01');
insert into lc1193_Transactions (id, country, state, amount, trans_date) values ('124', 'DE', 'approved', '2000', '2019-01-07');
