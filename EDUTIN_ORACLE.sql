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

create table product(
product_id number(5) primary key,
p_name varchar2(100),
unit_price number (12,2),
stock number (3),
category_id number(3)
);

/*Inserting data on a table*/
insert into bill (bill_id, client_id, bill_date, total_bill) values (109051, 5258952, '10/03/2026', 451);
insert into bill (bill_id, client_id, bill_date, total_bill) values (109052, 5216589, '16/03/2026', 300);
insert into bill (bill_id, bill_date) values (109053, '07/03/2026');
insert into bill values (109054, 124598, '21/03/2026', 643);
-- Repeating inserts for learning purposes, except some data from the attribute 'total_bill'
insert into bill values (109055, 5216589, '16/03/2026', 330);
insert into bill values (109056, 5258952, '10/03/2026', 451);
insert into bill values (109057, 5216589, '16/03/2026', 701);
insert into bill values (109058, 5258952, '10/03/2026', 754);
insert into bill values (109059, 124598, '21/03/2026', 643);
insert into bill values (109060, 5216589, '16/03/2026', 300);
insert into bill values (109061, 124598, '21/03/2026', 520);
insert into bill (bill_id, bill_date) values (109062, '07/03/2026');
insert into bill (bill_id, bill_date) values (109063, '07/03/2026');
insert into bill values (109064, 124598, '21/03/2026', 643);
insert into bill values (109065, 5216589, '16/03/2026', 300);

INSERT INTO CLIENTS VALUES ('5258952', '1000', 'Marlon', 'Soria', '28', 'CALLE LIMA No 232', '942567845', 'marlon@gmail.com', '4557888466615485', 'CALLE LIMA No 232');
INSERT INTO CLIENTS VALUES ('5258474', '1001', 'Alfredo', 'Suarez', '37', 'CALLE RUBY No 242', '957678142', 'alfredo@gmail.com', '4557888487579985', 'CALLE RUBY No 242');
INSERT INTO CLIENTS VALUES ('5258141', '1002', 'Valentina', 'Suarez', '41', 'CALLE COLOMBIA No 841', '958754454', 'valentina@gmail.com', '455788841112466630', 'CALLE COLOMBIA No 841');
INSERT INTO CLIENTS VALUES ('5258771', '1003', 'Rodolfo', 'Caballero', '19', 'CALLE LOS ANGELES No 1037', '933374511', 'rodolfo@gmail.com', '4557888499456887', 'CALLE LOS ANGELES No 1037');
INSERT INTO CLIENTS VALUES ('5258884', '1004', 'Mariano', 'Salazar', '24', 'CALLE ALEMANIA No 914', '985585521', 'mariano@gmail.com', '4557888432600082', 'CALLE ALEMANIA No 914');

INSERT INTO PRODUCT VALUES ('10001', 'Queso Gloria', '12', '45', '101');
INSERT INTO PRODUCT VALUES ('10002', 'Leche Condensada', '18', '38', '101');
INSERT INTO PRODUCT VALUES ('10003', 'Arroz Integral San Lucas 5KG', '20', '15', '102');
INSERT INTO PRODUCT VALUES ('10004', 'Cereal Kiwigen', '19', '27', '102');
INSERT INTO PRODUCT VALUES ('10005', 'Yogurt Laive 3L', '8', '44', '101');
INSERT INTO PRODUCT VALUES ('10006', 'Quinua 2KG', '19', '31', '102');
INSERT INTO PRODUCT VALUES ('10007', 'Leche en polvo 500GR', '6', '52', '101');
-- Repeating inserts for learning purposes
INSERT INTO PRODUCT VALUES ('10008', 'Cereal Kiwigen', '19', '27', '102');
INSERT INTO PRODUCT VALUES ('10009', 'Queso Gloria', '12', '45', '101');
INSERT INTO PRODUCT VALUES ('10010', 'Arroz Integral San Lucas 5KG', '20', '15', '102');
INSERT INTO PRODUCT VALUES ('10011', 'Quinua 2KG', '19', '31', '102');
INSERT INTO PRODUCT VALUES ('10012', 'Arroz Integral San Lucas 5KG', '20', '15', '102');
INSERT INTO PRODUCT VALUES ('10013', 'Leche Condensada', '18', '38', '101');
INSERT INTO PRODUCT VALUES ('10014', 'Yogurt Laive 3L', '8', '44', '101');
INSERT INTO PRODUCT VALUES ('10015', 'Quinua 2KG', '19', '31', '102');
INSERT INTO PRODUCT VALUES ('10016', 'Leche en polvo 500GR', '6', '52', '101');
INSERT INTO PRODUCT VALUES ('10017', 'Cereal Kiwigen', '19', '27', '102');
INSERT INTO PRODUCT VALUES ('10018', 'Leche Condensada', '18', '38', '101');
INSERT INTO PRODUCT VALUES ('10019', 'Arroz Integral San Lucas 5KG', '20', '15', '102');
INSERT INTO PRODUCT VALUES ('10020', 'Yogurt Laive 3L', '8', '44', '101');
INSERT INTO PRODUCT VALUES ('10021', 'Quinua 2KG', '19', '31', '102');
INSERT INTO PRODUCT VALUES ('10022', 'Cereal Kiwigen', '19', '27', '102');
INSERT INTO PRODUCT VALUES ('10023', 'Arroz Integral San Lucas 5KG', '20', '15', '102');
INSERT INTO PRODUCT VALUES ('10024', 'Leche en polvo 500GR', '6', '52', '101');

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

/*SQL queries*/
select * from clients;
select * from bill;
select * from product;

select client_id as ID, c_name as NAME, c_lastname as LAST_NAME, age from clients;

-- List distinct (or unique) names
select distinct p_name from product;

select product_id as ID, p_name as NAME, unit_price, stock from product;

select distinct client_id, total_bill from bill;

/* 'WHERE' clause*/


-- Save transactions
-- commit;