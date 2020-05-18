create table Imperio(
id_galactico int primary key not null,
nombre_imperio varchar(25),
temperatura_promedio varchar(15))

create table Planeta(
nombre_cientifico varchar(10) primary key not null,
nombre_comun varchar(10),
poblacion_total int,
coordenada_galactica varchar(50))

create table Flota(
id_flota int primary key not null,
nombre_flota varchar(20))

create table Destino(
id_destino int primary key not null,
nombre_destino varchar(20))

create table Capitan(
id_capitan int primary key not null,
nombre_capitan varchar(30))

create table Nave(
id_nave int primary key not null,
modelo varchar(15),
vel_max varchar(20),
energia_acumulada varchar(20))

create table Mision(
id_mision int primary key not null,
nombre_mision varchar(15),
descripcion varchar(30))

create table Raza(
nombre_cientifico_raza int primary key not null)

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

create table Nave_maniobra()

create table Poblacion(
porcentaje_poblacion int)

create table Raza_habilidad()

create table Fecha_mision(
fecha_inicio datetime,
fecha_fin datetime)