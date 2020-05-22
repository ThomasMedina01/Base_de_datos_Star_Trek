use STAR_TREK_game
-- Selects de la base de datos.

--1 SELECCIONA id, nombre, nombre de la flota e imperio de los capitanes QUE PERTENECEN A LA FLOTA USS VOYAGER
SELECT C.id_capitan, C.nombre_capitan, F.nombre_flota, I.nombre_imperio FROM capitan C
inner join Flota as F on F.imperio = C.imperio 
inner join Imperio as I on I.id_galactico = C.imperio
WHERE F.id_flota = 9787

--2 Seleccionar las naves se dirigen hacia el planeta DEF 6541
SELECT n.id_nave, n.modelo, d.nombre_destino, d.planeta FROM nave n
inner join Flota as f on n.Flota = f.id_flota
inner join destino as d on d.id_destino = f.destino 
WHERE d.id_destino = 2458

--3 Cuantas montañas hay en cada imperio.
SELECT i.id_galactico, i.nombre_imperio, count(*) as 'Cantidad de montañas' From imperio i
inner join Planeta as p on p.imperio = i.id_galactico
group by i.id_galactico, i.nombre_imperio

--4 Selecciona las misiones de los capitanes que pertenecen a la flota USS VOYAGER
SELECT c.id_capitan, c.nombre_capitan, m.nombre_mision, m.descripcion, fm.fecha_inicio, fm.fecha_fin FROM Mision m
inner join Fecha_mision as fm on fm.id_mision = m.id_mision
inner join Flota as f on f.id_flota = fm.id_flota
inner join Nave as n on n.Flota = f.id_flota
inner join Capitan as c on c.id_capitan = n.id_capitan
WHERE F.id_flota = 9787 

--5 ¿Cual es la montaña mas alta del imperio Klingon?
SELECT top(1) id_montana, nombre_montana,nombre_cientifico as 'Planeta', m.altura_en_metros, i.nombre_imperio
FROM Montana m
inner join Planeta as p on p.nombre_cientifico = m.planeta 
inner join imperio as i on i.id_galactico = p.imperio
where i.id_galactico = 177013
 
 --¿Cual es la altura promedio de las montañas del imperio Kligon?
SELECT avg(m.altura_en_metros) as 'Velocidad maxima promedio del imperio Kligon 'FROM Montana m
inner join Planeta as p on p.nombre_cientifico = m.planeta
inner join Imperio as i on i.id_galactico = p.imperio
WHERE i.id_galactico = 282856





