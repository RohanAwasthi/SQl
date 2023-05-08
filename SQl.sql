SELECT * FROM sql_store.customers;

use sql_store;
select order_id,o.customer_id,first_name,last_name
from orders o
Join customers c
on
o.customer_id =c.customer_id;

select o.order_Id, note ,quantity
from order_item_notes o
Join order_items ot
on o.product_id=ot.product_id;




create table order_archive as
select * from order_item_notes;

select*
from order_items oi
Join sql_inventory.products p 
on oi.product_id=p.product_id;

use sql_hr;
select e.employee_id,e.first_name,m.first_name as manager
from employees e
join employees m
on e.reports_to=m.employee_id;

use sql_store;
Insert into customers(first_name,last_name ,phone,address,city,state)
values ('Rohan','Awasthi','9004008055','kalyan','mumbai','MH');


update customers
set city='Banglore'
where customer_id=1;


select *
from orders
where customer_id IN 
(select customer_id
from customers
where customer_id='5');

delete from customers
where customer_id=11;

drop table order_archive;

alter table customers
add Email varchar (200);


