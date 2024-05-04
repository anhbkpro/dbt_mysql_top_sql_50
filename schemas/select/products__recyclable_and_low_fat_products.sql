Create table If Not Exists products__recyclable_and_low_fat_products (product_id int, low_fats ENUM('Y', 'N'), recyclable ENUM('Y','N'))
Truncate table products__recyclable_and_low_fat_products
insert into products__recyclable_and_low_fat_products (product_id, low_fats, recyclable) values ('0', 'Y', 'N')
insert into products__recyclable_and_low_fat_products (product_id, low_fats, recyclable) values ('1', 'Y', 'Y')
insert into products__recyclable_and_low_fat_products (product_id, low_fats, recyclable) values ('2', 'N', 'Y')
insert into products__recyclable_and_low_fat_products (product_id, low_fats, recyclable) values ('3', 'Y', 'Y')
insert into products__recyclable_and_low_fat_products (product_id, low_fats, recyclable) values ('4', 'N', 'N')
