Create table If Not Exists lc570_Employee (id int, name varchar(255), department varchar(255), managerId int);
Truncate table lc570_Employee;
insert into lc570_Employee (id, name, department, managerId) values ('101', 'John', 'A', null);
insert into lc570_Employee (id, name, department, managerId) values ('102', 'Dan', 'A', '101');
insert into lc570_Employee (id, name, department, managerId) values ('103', 'James', 'A', '101');
insert into lc570_Employee (id, name, department, managerId) values ('104', 'Amy', 'A', '101');
insert into lc570_Employee (id, name, department, managerId) values ('105', 'Anne', 'A', '101');
insert into lc570_Employee (id, name, department, managerId) values ('106', 'Ron', 'B', '101');
