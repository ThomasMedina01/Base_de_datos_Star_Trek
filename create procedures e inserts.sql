select * from Capitan
select * from Destino
select * from Fecha_mision
select * from Flota
select * from Habilidad
select * from Imperio
select * from Maniobra
select * from Mision
select * from Montana
select * from Nave
select * from Nave_maniobra
select * from Planeta
select * from Poblacion
select * from Raza
select * from Raza_Habilidad
go;


create procedure insert_capitan(
@id int,
@nombre varchar(30),
@planeta varchar(10),
@imperio int
)
as
begin
insert into Capitan
values(@id,@nombre,@planeta,@imperio)
end

GO	;

create procedure insert_destino(
@id int,
@nombre varchar(20)
)
as
begin
insert into Destino
values(@id,@nombre)
end

GO;

create procedure insert_fecha_mision(
@flota int,
@mision int,
@inicio datetime,
@fin datetime
)
as
begin
insert into Fecha_mision
values(@flota,@mision,@inicio,@fin)
end

GO;

create procedure insert_flota(
@id int,
@nombre varchar(20),
@imperio int,
@destino int
)
as
begin
insert into Flota
values(@id,@nombre,@imperio,@destino)
end

GO;

create procedure insert_habilidad(
@id int,
@nombre varchar(10),
@desc varchar(30)
)
as
begin
insert into Habilidad
values(@id,@nombre,@desc)
end

GO;

create procedure insert_imperio(
@id int,
@nombre varchar(25),
@temperatura varchar(15)
)
as
begin
insert into Imperio
values(@id,@nombre,@temperatura)
end

GO;

create procedure insert_maniobra(
@id int,
@nombre varchar(15),
@consumo varchar(15),
@descripcion varchar(30)
)
as
begin
insert into Maniobra
values (@id,@nombre,@consumo,@descripcion)
end

GO;

create procedure insert_mision(
@id int,
@nombre varchar(15),
@descripcion varchar(30)
)
as
begin
insert into Mision
values(@id,@nombre,@descripcion)
end

GO;

create procedure insert_montana(
@id int,
@nombre varchar(10),
@altura varchar(50),
@planeta varchar(10)
)
as
begin
insert into Montana
values(@id,@nombre,@altura,@planeta)
end

GO;

create procedure insert_nave(
@nave int,
@modelo varchar(15),
@velocidad varchar(20),
@energia varchar(20),
@capitan int,
@flota int
)
as
begin
insert into Nave
values(@nave,@modelo,@velocidad,@energia,@capitan,@flota)
end

GO;

create procedure insert_nave_maniobra(
@nave int,
@maniobra int
)
as
begin
insert into Nave_maniobra
values(@nave,@maniobra)
end

GO;

create procedure insert_planeta(
@nombre_cientifico varchar(10),
@nombre_comun varchar(10),
@poblacion int,
@coordenadas varchar(50),
@imperio int
)
as
begin
insert into Planeta
values(@nombre_cientifico,@nombre_comun,@poblacion,@coordenadas,@imperio)
end

GO;

create procedure insert_poblacion(
@nombre_cientifico varchar(10),
@nombre_cientifico_raza varchar(10),
@porcentaje int
)
as
begin
insert into Poblacion
values(@nombre_cientifico,@nombre_cientifico_raza,@porcentaje)
end

GO;

create procedure insert_raza(
@raza varchar(10)
)
as
begin
insert into Raza
values(@raza)
end

GO;

create procedure insert_raza_habilidad(
@raza varchar(10),
@habilidad int
)
as
begin
insert into Raza_Habilidad
values(@raza,@habilidad)
end

GO;



exec insert_imperio
@id = 177013,
@nombre = 'Imperio Klingon',
@temperatura = '37 grados'

exec insert_imperio
@id = 139808,
@nombre = 'Imperio Estelar Romulano',
@temperatura = '31 grados'

exec insert_imperio
@id = 282856,
@nombre = 'Imperio Terrano',
@temperatura = '28 grados'

exec insert_imperio
@id = 264782,
@nombre = 'Imperio Cardass',
@temperatura = '32 grados'

exec insert_imperio
@id = 152889,
@nombre = 'Imperio Tkon',
@temperatura = '25 grados'



exec insert_planeta
@nombre_cientifico = 'Tauro 239',
@nombre_comun = 'Boreth',
@poblacion = 3274519,
@coordenadas = '156978° 819873´ 264875´´',
@imperio = 177013

exec insert_planeta
@nombre_cientifico = 'GJ 1214',
@nombre_comun = 'Cheron',
@poblacion = 89797435,
@coordenadas = '2133348° 8974668´ 987435´´',
@imperio = 264782

exec insert_planeta
@nombre_cientifico = 'DEF 6541',
@nombre_comun = 'Trax',
@poblacion = 3548764,
@coordenadas = '8974563° 1488796´ 6189974´´',
@imperio = 282856

exec insert_planeta
@nombre_cientifico = 'Gliese 876 d',
@nombre_comun = 'Qonos',
@poblacion = 45712863,
@coordenadas = '4565123° 588774´ 352148´´',
@imperio = 177013

exec insert_planeta
@nombre_cientifico = 'PSR B1257',
@nombre_comun = 'Rura Penthe',
@poblacion = 23548763,
@coordenadas = '568741° 56742´ 897874´´',
@imperio = 177013



exec insert_capitan
@id = 856,
@nombre = 'Worf',
@planeta = 'Gliese 876 d',
@imperio = 177013

exec insert_capitan
@id = 941,
@nombre = 'Jadzia Dax',
@planeta = 'Gliese 876 d',
@imperio = 139808

exec insert_capitan
@id = 027,
@nombre = 'Benjamin Sisko',
@planeta = 'Tauro 239',
@imperio = 282856

exec insert_capitan
@id = 356,
@nombre = 'Soong',
@planeta = 'GJ 1214',
@imperio = 264782

exec insert_capitan
@id = 455,
@nombre = 'Kirk',
@planeta = 'DEF 6541',
@imperio = 152889



exec insert_destino
@id = 3647,
@nombre = 'Las Siete Cupulas'

exec insert_destino
@id = 9874,
@nombre = 'Stardust City'

exec insert_destino
@id = 3225,
@nombre = 'Canton'

exec insert_destino
@id = 6484,
@nombre = 'Portage Creek'

exec insert_destino
@id = 2458,
@nombre = 'Genesis'



exec insert_flota
@id = 4687,
@nombre = 'Deep Space 9',
@imperio = 282856,
@destino = 2458

exec insert_flota
@id = 3548,
@nombre = 'Enterprise NX-01',
@imperio = 152889,
@destino = 3647

exec insert_flota
@id = 9787,
@nombre = 'USS Voyager',
@imperio = 177013,
@destino = 3225

exec insert_flota
@id = 5461,
@nombre = 'USS Enterprise NCC-1701',
@imperio = 152889,
@destino = 2458

exec insert_flota
@id = 3887,
@nombre = 'Terok Nor',
@imperio = 282856,
@destino = 9874



exec insert_raza
@raza = 'Romulanos'

exec insert_raza
@raza = 'Klingons'

exec insert_raza
@raza = 'Bajoranos'

exec insert_raza
@raza = 'Humanos'

exec insert_raza
@raza = 'Andorianos'



exec insert_habilidad
@id = 45,
@nombre = 'Guerrero',
@desc = 'Gran destreza con armas y eficientes en la batalla'

exec insert_habilidad
@id = 68,
@nombre = 'Diplomacia',
@desc = 'Buenos a la hora de negociar y llegar a acuerdos'

exec insert_habilidad
@id = 42,
@nombre = 'Sereno',
@desc = 'Mantienen la calma pase lo que pase'

exec insert_habilidad
@id = 98,
@nombre = 'Estudioso',
@desc = 'Aprende extremadamente rapido'

exec insert_habilidad
@id = 26,
@nombre = 'Creativo',
@desc = 'Dotados para el arte'



exec insert_raza_habilidad
@raza = 'Romulanos',
@habilidad = 68

exec insert_raza_habilidad
@raza = 'Klingons',
@habilidad = 45

exec insert_raza_habilidad
@raza = 'Bajoranos',
@habilidad = 42

exec insert_raza_habilidad
@raza = 'Humanos',
@habilidad = 98

exec insert_raza_habilidad
@raza = 'Andorianos',
@habilidad = 26