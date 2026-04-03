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

create table clients(
client_id number(10) primary key,
cart_id number(4),
c_name varchar2(30),
c_lastname varchar2(30),
age number (3),
c_location varchar2(100),
phone number(20),
email varchar2(30),
credit_card varchar2(30),
shipping_loc varchar2(100)
);

/*Inserting data on a table*/
insert into bill (bill_id, client_id, bill_date, total_bill) values (109051, 5258952, '10/03/2026', 451);
insert into bill (bill_id, client_id, bill_date, total_bill) values (109052, 5216589, '16/03/2026', 300);
insert into bill (bill_id, bill_date) values (109053, '07/03/2026');
insert into bill values (109054, 124598, '21/03/2026', 643);

INSERT INTO CLIENTS VALUES ('5258952', '1000', 'Marlon', 'Soria', '28', 'CALLE LIMA No 232', '942567845', 'marlon@gmail.com', '4557888466615485', 'CALLE LIMA No 232');
INSERT INTO CLIENTS VALUES ('5258474', '1001', 'Alfredo', 'Suarez', '37', 'CALLE RUBY No 242', '957678142', 'alfredo@gmail.com', '4557888487579985', 'CALLE RUBY No 242');
INSERT INTO CLIENTS VALUES ('5258141', '1002', 'Valentina', 'Suarez', '41', 'CALLE COLOMBIA No 841', '958754454', 'valentina@gmail.com', '455788841112466630', 'CALLE COLOMBIA No 841');
INSERT INTO CLIENTS VALUES ('5258771', '1003', 'Rodolfo', 'Caballero', '19', 'CALLE LOS ANGELES No 1037', '933374511', 'rodolfo@gmail.com', '4557888499456887', 'CALLE LOS ANGELES No 1037');
INSERT INTO CLIENTS VALUES ('5258884', '1004', 'Mariano', 'Salazar', '24', 'CALLE ALEMANIA No 914', '985585521', 'mariano@gmail.com', '4557888432600082', 'CALLE ALEMANIA No 914');

/*Updating data on a table*/
update clients set shipping_loc='CALLE 70 No 288';
commit;

update clients set shipping_loc=c_location where client_id<>5258141;
commit;

update clients set age=38, c_location='JIRON EL PORVENIR No 265' where client_id=5258474;
commit;

/*Deleting data on a table*/
delete from clients where age=19 or c_lastname='Suarez';
commit;

-- Deleting all clients
delete from clients;
commit;

--truncate table clients;

-- Save transactions
-- commit;