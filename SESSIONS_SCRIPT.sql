/*Updating data on a table*/
update cliente set direccion_envio='CALLE 70 No 288';
commit;

update cliente set direccion_envio=direccion where id_cliente<>72265985;
commit;

update cliente set edad=38, direccion='JIRON EL PORVENIR No 265' where id_cliente=72266009;
commit;

/*Deleting data on a table*/
delete from detalle where cantidad<=50 or id_producto=8031;
commit;

-- Deleting all clients
delete from detalle;
commit;

/*SQL queries*/
select * from cliente;
select * from factura;
select * from producto;
select * from detalle;

select id_cliente as ID, nombre as NOMBRE, apellido as APELLIDO, edad from cliente;

-- List distinct (or unique) names
select distinct nombre_prod from producto;

select id_producto as ID, nombre_prod as NOMBRE, precio_unit, stock from producto;

select distinct id_client, total_factura from factura;

/* 'WHERE' clause*/
select * from cliente where edad > 50;

select * from factura where estado_fact = 'PENDIENTE';

select * from producto where stock < 30;

/* 'ORDER BY' clause*/
select * from cliente order by edad desc;
select * from cliente order by edad asc;

select * from detalle order by precio desc;

select * from producto order by stock asc;

select * from cliente order by nombre, edad asc;

select id_cliente, apellido, edad from cliente order by nombre desc;

select * from producto order by precio_unit desc;

/* Logical and comparison operators in queries */
select * from producto where precio_unit > 15 and stock < 30;
select * from producto where not (precio_unit > 15 and stock < 30);

select * from cliente where edad < 30 and direccion <> direccion_envio;

select * from detalle where cantidad > 40 and cantidad < 300 order by cantidad desc;

/* Math operators in queries */
select count(id_cliente) as cant_clientes from cliente;

select avg(edad) as promedio from cliente;

select sum(total_factura) as ventas_totales from factura;

select min(edad) as edad_minima from cliente;

select min(precio) as precio_menor from detalle;
select max(precio) as precio_mayor from detalle;

/* List products by category and stock sum as total_stock
- 'group by' is used to filter categories
- 'having' is used to include data where the 'total_stock'
  is less or equal to 120
- and finally, sort them in descending order */
select id_categori, sum(stock) as stock_total from producto
group by id_categori
having sum(stock) <= 120
order by sum(stock) desc;

/* Queries with multiple tables */

-- INNER JOIN
select a.nombre as nombre, a.apellido as apellido, a.direccion as direccion, b.estado_fact
from cliente a 
inner join factura b on a.id_cliente = b.id_client
order by b.estado_fact;

select a.id_categoria, a.nombre_cat as nombre_categoria, b.id_producto, b.nombre_prod as nombre_producto
from categoria a
inner join producto b on a.id_categoria = b.id_categori
order by a.id_categoria;

-- LEFT JOIN
select a.id_producto, a.nombre_prod as nombre_producto,
       b.num_detalle as detalle, b.id_fact
from producto a
left join detalle b on a.id_producto = b.id_producto
order by a.id_producto;

select a.nombre, a.apellido, a.direccion, b.estado_fact as estado_factura
from cliente a
left join factura b on a.id_cliente = b.id_client
order by b.estado_fact;

-- RIGHT JOIN
select b.nombre, b.apellido, a.id_carrito
from carrito a
right join cliente b on a.id_cliente=b.id_cliente;

select b.id_producto, b.nombre_prod as nombre_producto,
       a.num_detalle as numero_detalle
from detalle a
right join producto b on a.id_producto = b.id_producto;

-- FULL JOIN
select a.nombre, a.apellido, a.telefono, b.id_factura, b.total_factura
from cliente a
full join factura b on a.id_cliente = b.id_client;

select a.num_detalle as numero_detalle, b.id_factura, b.total_factura
from detalle a
full join factura b on a.id_fact = b.id_factura;

/* Subqueries */
select a.nombre, a.apellido, a.edad
from cliente a
where a.edad>(
    select round(avg(b.edad),2) from cliente b
);

-- Bill with more than a product
select a.id_factura, a.estado_fact as estado_factura, a.total_factura
from factura a
where a.id_factura in (
    select b.id_fact from detalle b 
    group by b.id_fact
    having count(b.id_producto)>1
);

-- Using inner join
select a.id_fact, b.estado_fact, count(a.id_producto) as cantidad_productos
from detalle a
inner join factura b on a.id_fact=b.id_factura
group by a.id_fact, b.estado_fact
having count(a.id_producto)>1;

-- Clients with more than 40 years,
-- Total bill with less than $500
-- Bill on 'PAID' status
select d.nombre, d.apellido, d.edad, b.id_carrito, a.id_factura, a.estado_fact,
       c.id_producto, a.total_factura, sum(c.cantidad) as cantidad_producto
from factura a
inner join carrito b on a.id_factura=b.id_factura
inner join detalle c on a.id_factura=c.id_fact
inner join cliente d on a.id_client=d.id_cliente
where d.edad>40
and a.total_factura<500
and a.estado_fact='PAGADA'
group by d.nombre, d.apellido, d.edad, b.id_carrito, a.id_factura, a.estado_fact,
         c.id_producto, a.total_factura;

-- Update a column
UPDATE factura f
SET total_factura = (
    SELECT SUM(d.cantidad * d.precio)
    FROM detalle d
    WHERE d.id_fact = f.id_factura
)
WHERE EXISTS (
    SELECT 1
    FROM detalle d
    WHERE d.id_fact = f.id_factura
);

/* UNION */
