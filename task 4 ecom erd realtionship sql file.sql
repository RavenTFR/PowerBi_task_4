create table dim_customer(
	customer_id varchar(255),
	customer_name varchar(255),
	segment varchar(255),
	age integer,
	postal_code bigint
	)

create table SUBdim_region(
	city varchar,
	state varchar,
	postal_code bigint,
	region varchar 
	)

create table dim_product(
	product_id varchar ,
	category_id bigint,
	product_name varchar
	)

copy dim_product(product_id, category_id, product_name)
from 'D:\arc\dim_product.csv'
delimiter ','
csv header;

select * from dim_product
	
create table SUBdim_productCategory(
	category_id int,
	sub_category varchar,
	category varchar 
	)
	

select * from SUBdim_productCategory
	
select * from dim_product
	
select * from SUBdim_region

select * from dim_customer