CREATE DATABASE STAR_TREK
USE STAR_TREK

CREATE PROCEDURE Crear_tablas_STAR_TREK(
@tabla1 varchar(50), 
@tabla2 varchar(50), 
@tabla3 varchar(50), 
@tabla4 varchar(50), 
@tabla5 varchar(50), 
@tabla6 varchar(50), 
@tabla7 varchar(50), 
@tabla8 varchar(50), 
@tabla9 varchar(50), 
@tabla10 varchar(50), 
@tabla11 varchar(50), 
@tabla12 varchar(50), 
@tabla13 varchar(50), 
@tabla14 varchar(50),
@tabla15 varchar(50)
)
AS
BEGIN
   Execute ('Create TABLE '+@tabla1+'(id_galactico int primary key not null, nombre_imperio varchar(25),temperatura_promedio varchar(15))')
   Execute ('Create TABLE '+@tabla2+'(nombre_cientifico varchar(10) primary key not null,nombre_comun varchar(10),poblacion_total int,coordenada_galactica varchar(50),
             imperio INT foreign key references Imperio(id_galactico))')
   Execute ('Create TABLE '+@tabla3+'(id_montana int primary key not null,nombre_montana varchar(10),altura varchar(50),
             planeta varchar(10) foreign key references Planeta(nombre_cientifico))')
   Execute ('Create TABLE '+@tabla4+'(id_capitan int primary key not null,nombre_capitan varchar(30),planeta_origen varchar(10) foreign key references Planeta(nombre_cientifico),
             imperio INT foreign key references Imperio(id_galactico)) ')
   Execute ('Create TABLE '+@tabla5+'(id_destino int primary key not null,nombre_destino varchar(20))')
   Execute ('Create TABLE '+@tabla6+'(id_flota int primary key not null,nombre_flota varchar(20),
             imperio INT foreign key references Imperio(id_galactico),destino INT foreign key references Destino(id_destino))')
   Execute ('Create TABLE '+@tabla7+'(id_mision int primary key not null,nombre_mision varchar(15),descripcion varchar(30))')
   Execute ('Create TABLE '+@tabla8+'(id_flota int foreign key references Flota(id_flota),
			 id_mision int foreign key references Mision(id_mision),fecha_inicio datetime,
			 fecha_fin datetime,primary key(id_flota, id_mision))')
   Execute ('Create TABLE '+@tabla9+'(id_nave int primary key not null,modelo varchar(15),vel_max varchar(20),energia_acumulada varchar(20),
             id_capitan int foreign key references Capitan(id_capitan),Flota int foreign key references Flota(id_flota))')
   Execute ('Create TABLE '+@tabla10+'(id_maniobra int primary key not null,nombre_maniobra varchar(15),consumo varchar(15),descripcion varchar(30))')
   Execute ('Create TABLE '+@tabla11+'(id_nave int foreign key references Nave(id_nave),id_maniobra int foreign key references Maniobra(id_maniobra),primary key(id_nave, id_maniobra))')
   Execute ('Create TABLE '+@tabla12+'(nombre_cientifico_raza varchar(10) primary key not null)')
   Execute ('Create TABLE '+@tabla13+'(id_habilidad int primary key not null,
             nombre_habilidad varchar(10),descripcion varchar(30))')
   Execute ('Create TABLE '+@tabla14+'(nombre_cientifico_raza varchar(10) foreign key references Raza(nombre_cientifico_raza),
             id_habilidad int foreign key references Habilidad(id_habilidad)
             primary key(nombre_cientifico_raza, id_habilidad))')
   Execute ('Create TABLE '+@tabla15+'(nombre_cientifico varchar(10) foreign key references Planeta(nombre_cientifico),
			 nombre_cientifico_raza varchar(10) foreign key references Raza(nombre_cientifico_raza),
			 porcentaje_poblacion int,primary key(nombre_cientifico, nombre_cientifico_raza))')
END

EXEC Crear_tablas_STAR_TREK
@tabla1 = 'Imperio',
@tabla2 = 'Planeta',
@tabla3 = 'Montana',
@tabla4 = 'Capitan',
@tabla5 = 'Destino',
@tabla6 = 'Flota',
@tabla7 = 'Mision',
@tabla8 = 'Fecha_mision',
@tabla9 = 'Nave',
@tabla10 = 'Maniobra',
@tabla11 = 'Nave_maniobra',
@tabla12 = 'Raza',
@tabla13 = 'Habilidad',
@tabla14 = 'Raza_Habilidad',
@tabla15 = 'Poblacion'
go

