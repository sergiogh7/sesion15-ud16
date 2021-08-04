-- Ejercicio 4

-- 4.1
select nombre 
from peliculas;

-- 4.2
select distinct calificacionedad 
from peliculas;

-- 4.3
select * 
from peliculas 
where calificacionedad is null;

-- 4.4
select * 
from salas 
where pelicula is null;

-- 4.5
select * 
from salas sal left join peliculas pel on (sal.pelicula = pel.codigo);

-- 4.6
select * from salas s
right join peliculas p
on s.pelicula = p.codigo;

-- 4.7
select p.nombre
from salas sal right join peliculas pel on (sal.pelicula = pel.codigo)
where sal.pelicula is null;

-- 4.8
insert into peliculas values (10, 'Uno, Dos, Tres', 7);

-- 4.9
update peliculas set calificacionedad = 13 where calificacionedad is null;

-- 4.10
delete from salas
where pelicula in (select codigo from peliculas where calificacionedad = 'G');