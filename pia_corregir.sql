create table Capitan(
id_capitan int primary key not null,
nombre_capitan varchar(30))

create table Nave(
id_nave int primary key not null,
modelo varchar(15),
vel_max varchar(20),
energia_acumulada varchar(20),
id_capitan int foreign key references Capitan(id_capitan))

create table Flota(
id_flota int primary key not null,
nombre_flota varchar(20),
id_nave int foreign key references Nave(id_nave))

create table Destino(
id_destino int primary key not null,
nombre_destino varchar(20),
id_flota int foreign key references Flota(id_flota))

create table Mision(
id_mision int primary key not null,
nombre_mision varchar(15),
descripcion varchar(30))

create table Raza(
nombre_cientifico_raza varchar(10) primary key not null)

create table Maniobra(
id_maniobra int primary key not null,
nombre_maniobra varchar(15),
consumo varchar(15),
descripcion varchar(30))

create table Habilidad(
id_habilidad int primary key not null,
nombre_habilidad varchar(10),
descripcion varchar(30))

create table Montana(
id_montana int primary key not null,
nombre_montana varchar(10),
altura varchar(50))

create table Planeta(
nombre_cientifico varchar(10) primary key not null,
nombre_comun varchar(10),
poblacion_total int,
coordenada_galactica varchar(50),
id_destino int foreign key references Destino(id_destino),
id_capitan int foreign key references Capitan(id_capitan),
id_montana int foreign key references Montana(id_montana))

create table Imperio(
id_galactico int primary key not null,
nombre_imperio varchar(25),
temperatura_promedio varchar(15),
id_flota int foreign key references Flota(id_flota),
id_destino int foreign key references Destino(id_destino),
id_capitan int foreign key references Capitan(id_capitan),
planeta varchar(10) foreign key references Planeta(nombre_cientifico))

create table Nave_maniobra(
id_nave int foreign key references Nave(id_nave),
id_maniobra int foreign key references Maniobra(id_maniobra),
primary key(id_nave, id_maniobra))

create table Poblacion(
nombre_cientifico varchar(10) foreign key references Planeta(nombre_cientifico),
nombre_cientifico_raza varchar(10) foreign key references Raza(nombre_cientifico_raza),
porcentaje_poblacion int,
primary key(nombre_cientifico, nombre_cientifico_raza))

create table Raza_habilidad(
nombre_cientifico_raza varchar(10) foreign key references Raza(nombre_cientifico_raza),
id_habilidad int foreign key references Habilidad(id_habilidad)
primary key(nombre_cientifico_raza, id_habilidad))

create table Fecha_mision(
id_flota int foreign key references Flota(id_flota),
id_mision int foreign key references Mision(id_mision),
fecha_inicio datetime,
fecha_fin datetime,
primary key(id_flota, id_mision))