-- Ejercicio 1:

-- 1.1
select nombre 
from articulos;

-- 1.2
select nombre, precio 
from articulos;

-- 1.3
select nombre 
from articulos
where precio <= 200;

-- 1.4
select * 
from articulos
where precio between 60 and 120;

-- 1.5
select nombre, precio, precio * 166.386 as 'pesetas' 
from articulos;

-- 1.6
select avg(precio) as 'precio medio' 
from articulos;

-- 1.7
select avg(precio) as 'precio medio' 
from articulos
where fabricante = 2;

-- 1.8
select count(nombre) 
from articulos
where precio >= 180;

-- 1.9
select nombre, precio 
from articulos
where precio >= 180
order by precio desc, nombre;

-- 1.10
select * 
from articulos art inner join fabricantes fab on (art.fabricante = fab.codigo);

-- 1.11
select art.nombre, art.precio, fab.nombre as 'fabricante'
from articulos art inner join fabricantes fab on (art.fabricante = fab.codigo);

-- 1.12
select avg(art.precio), fab.codigo as 'fabricante'
from articulos art inner join fabricantes fab on (art.fabricante = fab.codigo)
group by fab.codigo;

-- 1.13
select avg(art.precio), fab.nombre as 'fabricante'
from articulos art inner join fabricantes fab on (art.fabricante = fab.codigo)
group by f.nombre;

-- 1.14
select fab.nombre
from fabricantes fab inner join articulos a on (art.fabricante = fab.codigo)
group by fab.nombre
having avg(a.precio) >= 150;

-- 1.15
select precio, nombre from articulos
where precio = (select min(precio) from articulos);

-- 1.16
select art.precio, art.nombre, art.nombre, art.codigo
from articulos art join fabricantes fab on (fab.codigo = art.fabricante)
where art.precio = (select max(art.precio) 
					from articulos 
                    where art.fabricante = fab.codigo);

-- 1.17
insert into articulos values (11, 'Altavoz', 70, 2);

-- 1.18
replace into articulos values (8, 'Impresora Laser', 270, 3);

-- 1.19
update articulos set precio = precio * 0.9;

-- 1.20
update articulos set precio = precio - 10
where precio  >= 120;