-- Ejercicio 3

-- 3.1
select * from almacenes;

-- 3.2
select * from cajas
where valor > 150;

-- 3.3
select distinct contenido
from cajas;

-- 3.4
select avg(valor) from cajas;

-- 3.5
select almacen, avg(valor)
from cajas
group by almacen;

-- 3.6
select almacen, avg(valor)
from cajas
group by almacen
having avg(valor) > 150;

-- 3.7
select numreferencia, lugar
from almacenes alm
inner join cajas caj
on alm.codigo = caj.almacen;

-- 3.8
select almacen, count(numreferencia)
from cajas
group by almacen;

-- 3.9
select codigo
from almacenes
where (select count(*) 
		from cajas 
        where almacen = codigo);

-- 3.10
select numreferencia
from almacenes alm left join cajas caj on (alm.codigo = caj.almacen)
where lugar = 'Bilbao';

-- 3.11
insert into almacenes values (6, 'Barcelona', 3);

-- 3.12
insert into cajas values ('H5RT', 'Papel', 200, 2);

-- 3.13
update cajas set valor = valor * 0.85;

-- 3.14
update cajas set valor = valor * 0.80 
where valor > (select avg(valor) from cajas);

-- 3.15
delete from cajas where valor < 100;

-- 3.16
delete from cajas
where ALMACEN in (select codigo 
					from almacenes 
					where capacidad < (select count(*) 
										from cajas 
										where almacen = codigo));