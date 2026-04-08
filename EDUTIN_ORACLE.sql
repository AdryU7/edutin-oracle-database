/*Creating tables*/
create table bill(
bill_id number(7) primary key,
client_id number(10),
bill_date date,
status varchar2(10),
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

create table categories(
category_id number(3) primary key,
cat_name varchar2(40),
cat_description varchar2(255)
);

/*Inserting data on a table*/
INSERT INTO CLIENTS VALUES ('5258952', '1000', 'Marlon', 'Soria', '28', 'CALLE LIMA No 232', '942567845', 'marlon@gmail.com', '4557888466615485', 'CALLE LIMA No 232');
INSERT INTO CLIENTS VALUES ('5258474', '1001', 'Alfredo', 'Suarez', '37', 'CALLE RUBY No 242', '957678142', 'alfredo@gmail.com', '4557888487579985', 'CALLE RUBY No 242');
INSERT INTO CLIENTS VALUES ('5258141', '1002', 'Valentina', 'Suarez', '41', 'CALLE COLOMBIA No 841', '958754454', 'valentina@gmail.com', '455788841112466630', 'CALLE COLOMBIA No 841');
INSERT INTO CLIENTS VALUES ('5258771', '1003', 'Rodolfo', 'Caballero', '19', 'CALLE LOS ANGELES No 1037', '933374511', 'rodolfo@gmail.com', '4557888499456887', 'CALLE LOS ANGELES No 1037');
INSERT INTO CLIENTS VALUES ('5258884', '1004', 'Mariano', 'Salazar', '24', 'CALLE ALEMANIA No 914', '985585521', 'mariano@gmail.com', '4557888432600082', 'CALLE ALEMANIA No 914');
INSERT INTO CLIENTS VALUES ('5258885', '1005', 'Adriano', 'Dominquez', '30', 'CALLE INGLATERRA No 988', '999855454', 'adriano@gmail.com', '4557888432600082', 'CALLE INGLATERRA No 988');
INSERT INTO CLIENTS VALUES ('5258886', '1006', 'Romeo', 'Ronaldo', '47', 'CALLE ESPAÑA No 961', '922121200', 'romeo@gmail.com', '4557888432600082', 'CALLE LOS RUBIES No 1551');
INSERT INTO CLIENTS VALUES ('5258887', '1007', 'Gael', 'Muñoz', '21', 'CALLE PORTUGAL No 931', '934525852', 'gael@gmail.com', '4557888432600082', 'CALLE MEXICO No 1242');
INSERT INTO CLIENTS VALUES ('5258888', '1008', 'Rodrigo', 'Quiroz', '18', 'CALLE PANAMA No 967', '988588211', 'rodrigo@gmail.com', '4557888432600082', 'CALLE PANAMA No 967');
INSERT INTO CLIENTS VALUES ('5258889', '1009', 'Salomon', 'Palomino', '35', 'CALLE SUIZA No 769', '900124014', 'salomon@gmail.com', '4557888432600082', 'CALLE SUIZA No 769');
INSERT INTO CLIENTS VALUES ('5258890', '1010', 'Pedro', 'Castillo', '50', 'CALLE GUAM No 254', '922004744', 'pedro@gmail.com', '4557888432600082', 'CALLE GUAM No 254');
INSERT INTO CLIENTS VALUES ('5258891', '1011', 'Eliana', 'Cosavalente', '44', 'CALLE ITALIA No 343', '944411011', 'eliana@gmail.com', '4557888432600082', 'CALLE ROSMELLY No 1445');
INSERT INTO CLIENTS VALUES ('5258892', '1012', 'Marco', 'Caballero', '33', 'CALLE BOSTON No 271', '998544100', 'marco@gmail.com', '4557888432600082', 'CALLE BOSTON No 271');
INSERT INTO CLIENTS VALUES ('5258893', '1013', 'Soledad', 'Bustamante', '26', 'CALLE CANADA No 545', '965522212', 'soledad@gmail.com', '4557888432600082', 'CALLE KENNEDY No 1174');

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
-- Adding more products
INSERT INTO PRODUCT VALUES ('10025', 'Azucar 4KG', '12', '47', '103');
INSERT INTO PRODUCT VALUES ('10026', 'Sal de Mar 2KG', '8', '34', '104');
INSERT INTO PRODUCT VALUES ('10027', 'Estevia 500GR', '6', '40', '103');
INSERT INTO PRODUCT VALUES ('10028', 'Sal Comun 500GR', '5', '54', '104');
INSERT INTO PRODUCT VALUES ('10029', 'Azucar Integral 3KG', '17', '31', '103');
INSERT INTO PRODUCT VALUES ('10030', 'Coca Cola 2L', '4', '67', '105');
INSERT INTO PRODUCT VALUES ('10031', 'Fanta 3L', '7', '45', '105');
INSERT INTO PRODUCT VALUES ('10032', 'Guarana 1.5L', '3', '38', '105');
INSERT INTO PRODUCT VALUES ('10033', 'Azucar Rubia 5KG', '17', '24', '103');
INSERT INTO PRODUCT VALUES ('10034', 'Lays Bolsa Mediana', '2', '68', '106');
INSERT INTO PRODUCT VALUES ('10035', 'Maní Confitado 35 uni.', '7', '44', '106');

INSERT INTO CATEGORIES VALUES ('101', 'Lacteos', '');
INSERT INTO CATEGORIES VALUES ('102', 'Trigo', '');
INSERT INTO CATEGORIES VALUES ('103', 'Edulcorantes', '');
INSERT INTO CATEGORIES VALUES ('104', 'Sales', '');
INSERT INTO CATEGORIES VALUES ('105', 'Bebidas', '');
INSERT INTO CATEGORIES VALUES ('106', 'Snacks', '');

insert into bill (bill_id, client_id, bill_date, status, total_bill) values (109051, 5258884, '10/03/2026', 'PAID', 451);
insert into bill (bill_id, client_id, bill_date, status, total_bill) values (109052, 5258888, '16/03/2026', 'PENDING', 300);
insert into bill (bill_id, bill_date) values (109053, '07/03/2026');
insert into bill values (109054, 5258892, '21/03/2026', 'PAID', 643);
-- Doing more inserts including 'client_id' from their table
insert into bill values (109055, 5258952, '16/03/2026', 'PAID', 330);
insert into bill values (109056, 5258474, '10/03/2026', 'PENDING', 451);
insert into bill values (109057, 5258886, '16/03/2026', 'PAID', 701);
insert into bill values (109058, 5258890, '10/03/2026', 'PENDING', 754);
insert into bill values (109059, 5258885, '21/03/2026', 'PENDING', 643);
insert into bill values (109060, 5258893, '16/03/2026', 'PENDING', 300);
insert into bill values (109061, 5258891, '21/03/2026', 'PAID', 520);
insert into bill (bill_id, bill_date) values (109062, '07/03/2026');
insert into bill (bill_id, bill_date) values (109063, '07/03/2026');
insert into bill values (109064, 5258887, '21/03/2026', 'PENDING', 643);
insert into bill values (109065, 5258141, '16/03/2026', 'PAID', 300);

insert into detail values (771001, 109057, 10019, 4, 80);
insert into detail values (771002, 109054, 10024, 10, 60);
insert into detail values (771003, 109065, 10021, 2, 38);
insert into detail values (771004, 109060, 10013, 5, 90);
insert into detail values (771005, 109055, 10028, 8, 40);
insert into detail values (771006, 109057, 10017, 7, 133);
insert into detail values (771007, 109056, 10010, 4, 80);
insert into detail values (771008, 109061, 10014, 11, 88);
insert into detail values (771009, 109051, 10007, 8, 48);
insert into detail values (771010, 109064, 10020, 8, 64);
insert into detail values (771011, 109052, 10004, 11, 209);

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
select * from detail;

select client_id as ID, c_name as NAME, c_lastname as LAST_NAME, age from clients;

-- List distinct (or unique) names
select distinct p_name from product;

select product_id as ID, p_name as NAME, unit_price, stock from product;

select distinct client_id, total_bill from bill;

/* 'WHERE' clause*/
select * from clients where age > 30;

select * from bill where total_bill > 600;

select * from product where stock < 30;

/* 'ORDER BY' clause*/
select * from clients order by age desc;
select * from clients order by age asc;

select * from bill order by total_bill desc;

select * from product order by stock asc;

select * from clients order by c_name, age asc;

select client_id, c_lastname, age from clients order by c_name desc;

select * from product order by unit_price desc;

/* Logical and comparison operators in queries */
select * from product where unit_price>15 and stock<30;
select * from product where not (unit_price>15 and stock<30);

select * from clients where age<30 and c_location<>shipping_loc;

select * from bill where total_bill>500 and total_bill<700 order by total_bill desc;

/* Math operators in queries */
select count(client_id) as q_clients from clients;

select avg(age) as average from clients;

select sum(total_bill) as total_sales from bill;

select min(age) as minimum_age from clients;

select min(total_bill) as lower_sales from bill;
select max(total_bill) as major_sales from bill;

/* List products by category and stock sum as total_stock
- 'group by' is used to filter categories
- 'having' is used to include data where the 'total_stock'
  is less or equal to 120
- and finally, sort them in descending order */
select category_id, sum(stock) as total_stock from product
group by category_id
having sum(stock)<=120
order by sum(stock) desc;

/* Queries with multiple tables */

-- INNER JOIN
select a.c_name as name, a.c_lastname as last_name, a.c_location as location, b.status
from clients a 
inner join bill b on a.client_id=b.client_id
order by b.status;

select a.category_id, a.cat_name as category_name, b.product_id, b.p_name as product_name
from categories a
inner join product b on a.category_id=b.category_id
order by a.category_id;

-- LEFT JOIN
select a.product_id, a.p_name as product_name,
       b.detail_num as detail, b.bill_id
from product a
left join detail b on a.product_id=b.product_id
order by a.product_id;

select a.c_name as name, a.c_lastname as last_name,
       a.c_location as location, b.status as bill_status
from clients a
left join bill b on a.client_id=b.client_id
order by b.status;

-- RIGHT JOIN
select b.product_id, b.p_name as product_name,
       a.detail_num as detail_number
from detail a
right join product b on a.product_id=b.product_id;

-- FULL JOIN
select a.c_name as name, a.c_lastname as last_name,
       b.bill_id, b.total_bill
from clients a
full join bill b on a.client_id=b.client_id;

select a.detail_num as detail_number, b.bill_id, b.total_bill
from detail a
full join bill b on a.bill_id=b.bill_id;

-- Save transactions
-- commit;