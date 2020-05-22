USE STAR_TREK_GAME

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
go

create procedure insert_imperio(
@id int,
@nombre varchar(25),
@temperatura int
)
as
begin
insert into Imperio
values(@id,@nombre,@temperatura)
end

GO

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

GO	

create procedure insert_destinos(
@id int,
@nombre varchar(20),
@planeta varchar (10),
@imperio int
)
as
begin
insert into Destino
values(@id,@nombre, @planeta, @imperio)
end

GO

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

GO

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

GO

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

GO


create procedure insert_maniobra(
@id int,
@nombre varchar(15),
@consumo int,
@descripcion varchar(30)
)
as
begin
insert into Maniobra
values (@id,@nombre,@consumo,@descripcion)
end

GO

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

GO

create procedure insert_montana(
@id int,
@nombre varchar(10),
@altura int,
@planeta varchar(10)
)
as
begin
insert into Montana
values(@id,@nombre,@altura,@planeta)
end

GO

create procedure insert_nave(
@id_nave int,
@modelo varchar(15),
@velocidad int,
@energia int,
@capitan int,
@flota int
)
as
begin
insert into Nave
values(@id_nave,@modelo,@velocidad,@energia,@capitan,@flota)
end

GO

create procedure insert_nave_maniobra(
@nave int,
@maniobra int
)
as
begin
insert into Nave_maniobra
values(@nave,@maniobra)
end

GO

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

GO

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

GO

create procedure insert_raza(
@raza varchar(10)
)
as
begin
insert into Raza
values(@raza)
end

GO

create procedure insert_raza_habilidad(
@raza varchar(10),
@habilidad int
)
as
begin
insert into Raza_Habilidad
values(@raza,@habilidad)
end

GO



exec insert_imperio
@id = 177013,
@nombre = 'Imperio Klingon',
@temperatura = 37

exec insert_imperio
@id = 139808,
@nombre = 'Imperio Estelar Romulano',
@temperatura = 31

exec insert_imperio
@id = 282856,
@nombre = 'Imperio Terrano',
@temperatura = 28

exec insert_imperio
@id = 264782,
@nombre = 'Imperio Cardass',
@temperatura = 32

exec insert_imperio
@id = 152889,
@nombre = 'Imperio Tkon',
@temperatura = 25



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
@imperio = 177013

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



exec insert_destinos
@id = 3647,
@nombre = 'Las Siete Cupulas',
@planeta = 'GJ 1214',
@imperio = 264782

exec insert_destinos
@id = 9874,
@nombre = 'Stardust City',
@planeta = 'Tauro 239',
@imperio = 177013

exec insert_destinos
@id = 3225,
@nombre = 'Canton',
@planeta = 'Gliese 876',
@imperio = 177013

exec insert_destinos
@id = 6484,
@nombre = 'Portage Creek',
@planeta = 'PSR B1257',
@imperio = 177013

exec insert_destinos
@id = 2458,
@nombre = 'Genesis',
@planeta = 'DEF 6541',
@imperio = 282856

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

exec insert_nave
@id_nave = 1,
@modelo = 'Aldara',
@velocidad = 0.5,
@energia = 400,
@capitan = 856,
@flota = 4687

exec insert_nave
@id_nave = 2,
@modelo = 'Norkova',
@velocidad = 0.35,
@energia = 100,
@capitan = 941,
@flota = 3548

exec insert_nave
@id_nave = 3,
@modelo = 'Batris',
@velocidad = 0.45,
@energia = 390,
@capitan = 027,
@flota = 9787

exec insert_nave
@id_nave = 4,
@modelo = 'Reklar',
@velocidad = 0.70,
@energia = 637,
@capitan = 356,
@flota = 5461

exec insert_nave
@id_nave = 5,
@modelo = 'Dorian',
@velocidad = 0.15,
@energia = 250,
@capitan = 455,
@flota = 3887


exec insert_montana
@id = 45,
@nombre = 'Kanchenjunga',
@altura = 8586,
@planeta = 'Tauro 239'

exec insert_montana
@id = 52,
@nombre = 'Lhotse',
@altura = 8516,
@planeta = 'GJ 1214'

exec insert_montana
@id = 37,
@nombre = 'Cho Oyu',
@altura = 8188,
@planeta = 'DEF 6541'

exec insert_montana
@id = 64,
@nombre = 'Makalu',
@altura = 8485,
@planeta = 'Gliese 876 d'

exec insert_montana
@id = 61,
@nombre = 'Manaslu',
@altura = 8163,
@planeta = 'PSR B1257'


exec insert_maniobra
@id = 215,
@nombre = 'Loop',
@consumo = 20,
@descripcion = 'Vuelta vertical que se realiza de forma ascendente'

exec insert_maniobra
@id = 136,
@nombre = 'Barrel roll',
@consumo = 14,
@descripcion = 'Conjunto de rotaciones realizadas sobre el eje de la nave'

exec insert_maniobra
@id = 371,
@nombre = 'Cobra',
@consumo = 5,
@descripcion = 'Cambio en la posicion de la nave en 90 grados mientras avanza'

exec insert_maniobra
@id = 290,
@nombre = 'Zig Zag',
@consumo = 17,
@descripcion = 'Movimiento secuencial alternando de izquierda a derecha'

exec insert_maniobra
@id = 419,
@nombre = '3/4',
@consumo = 20,
@descripcion = 'Vuelta horizontal que no alcanza a cerrar su trayectoria'


exec insert_mision
@id = 20,
@nombre = 'Neretva',
@descripcion = 'Robo de suministros al imperio vecino'

exec insert_mision
@id = 25,
@nombre = 'Greif',
@descripcion = 'Exploracion en el sistema solar j-35'

exec insert_mision
@id = 30,
@nombre = 'Hailstone',
@descripcion = 'Recoleccion de energia solar en Axanar'

exec insert_mision
@id = 35,
@nombre = 'Cerberus',
@descripcion = 'Escoltar nave de suministros al planeta Bajor'

exec insert_mision
@id = 40,
@nombre = 'Varsity',
@descripcion = 'Destruir la nave crucero del imperio Klingon'


exec insert_fecha_mision
@flota = 4687,
@mision = 20,
@inicio = '5/16/4000',
@fin = '9/2/4001'

exec insert_fecha_mision
@flota = 3548,
@mision = 25,
@inicio = '3/20/3999',
@fin = '12/20/3999'

exec insert_fecha_mision
@flota = 9787,
@mision = 30,
@inicio = '8/25/4001',
@fin = '10/20/4002'

exec insert_fecha_mision
@flota = 5461,
@mision = 35,
@inicio = '7/17/4015',
@fin = '1/30/4018'

exec insert_fecha_mision
@flota = 3887,
@mision = 40,
@inicio = '6/23/3980',
@fin = '4/8/3985'


exec insert_nave_maniobra
@nave = 1,
@maniobra = 215

exec insert_nave_maniobra
@nave = 2,
@maniobra = 136

exec insert_nave_maniobra
@nave = 3,
@maniobra = 371

exec insert_nave_maniobra
@nave = 4,
@maniobra = 290

exec insert_nave_maniobra
@nave = 5,
@maniobra = 419


exec insert_poblacion
@nombre_cientifico = 'Tauro 239',
@nombre_cientifico_raza = 'Romulanos',
@porcentaje = 40

exec insert_poblacion
@nombre_cientifico = 'GJ 1214',
@nombre_cientifico_raza = 'Klingons',
@porcentaje = 15

exec insert_poblacion
@nombre_cientifico = 'DEF 6541',
@nombre_cientifico_raza = 'Bajoranos',
@porcentaje = 70

exec insert_poblacion
@nombre_cientifico = 'Gliese 876 d',
@nombre_cientifico_raza = 'Humanos',
@porcentaje = 90 

exec insert_poblacion
@nombre_cientifico = 'PSR B1257',
@nombre_cientifico_raza = 'Andorianos',
@porcentaje = 25