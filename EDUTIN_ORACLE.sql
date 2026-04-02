/*Creating tables*/
create table bill(
bill_id number(7) primary key,
client_id number(10),
bill_date date,
total_bill number(12,2)
);

create table detail(
detail_num number (7) primary key,
bill_id number (7),
product_id number (8),
quantity number (4),
price number (12,2)
);

/*Inserting data on tables*/
insert into bill (bill_id, client_id, bill_date, total_bill) values (109051, 5258952, '10/03/2026', 451);
insert into bill (bill_id, client_id, bill_date, total_bill) values (109052, 5216589, '16/03/2026', 300);
insert into bill (bill_id, bill_date) values (109053, '07/03/2026');
insert into bill values (109054, 124598, '21/03/2026', 643);

-- Confirm changes
commit;