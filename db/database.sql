-- Active: 1724694582988@@ben5ld9pxvoeo3lkstud-mysql.services.clever-cloud.com@3306@ben5ld9pxvoeo3lkstud
 CREATE DATABASE IF NOT EXISTS companydb;
 use company;
 CREATE TABLE empleados (
   id INT(11)NOT NULL AUTO_INCREMENT,
   nombre VARCHAR(255)DEFAULT NULL,
   salario INT(10)DEFAULT NULL,
   PRIMARY KEY(id)
 );

 INSERT INTO empleados VALUES
(1,'Milton',50),
(2,'Alonso',50),
(3,'Judith',50),
(4,'Luis',50)

CREATE DATABASE IF NOT EXISTS POS;
use POS;

CREATE TABLE usuario (
   id INT(11)NOT NULL AUTO_INCREMENT,
   nombre VARCHAR(255)DEFAULT NULL,
   apellido VARCHAR(255)DEFAULT NULL,
   email VARCHAR(255)DEFAULT NULL,
   password VARCHAR(255)DEFAULT NULL,
   password2 VARCHAR(255)DEFAULT NULL,
   
   
   PRIMARY KEY(id)
 );

CREATE TABLE usuarios (
   id INT(11)NOT NULL AUTO_INCREMENT,
   nombres VARCHAR(255)DEFAULT NULL,
   apellidos VARCHAR(255)DEFAULT NULL,
   email VARCHAR(255)DEFAULT NULL,
   direccion VARCHAR(255)DEFAULT NULL,
   telefono VARCHAR(255)DEFAULT NULL,
   comuna VARCHAR(255)DEFAULT NULL,
   region VARCHAR(255)DEFAULT NULL,
   codigoPostal VARCHAR(255)DEFAULT NULL,
   rut VARCHAR(255)DEFAULT NULL,
   codigoUsuario VARCHAR(255)DEFAULT NULL,
   clave VARCHAR(255)DEFAULT NULL,VARCHAR(255)DEFAULT NULL,
   remuneracion VARCHAR(255)DEFAULT NULL, 
   credito VARCHAR(255)DEFAULT NULL

   PRIMARY KEY(id)
 );

 CREATE TABLE equipos (
   id INT(11)NOT NULL AUTO_INCREMENT,
   nombre VARCHAR(255)DEFAULT NULL,
   logo VARCHAR(255)DEFAULT NULL,
   email VARCHAR(255)DEFAULT NULL,
   representante VARCHAR(255)DEFAULT NULL,
   capitan VARCHAR(255)DEFAULT NULL,
   
   PRIMARY KEY(id)
 );
use ben5ld9pxvoeo3lkstud

create table jugadores (
  id bigint primary key ,
  nombre VARCHAR(255)DEFAULT NULL,
  posicion VARCHAR(255)DEFAULT NULL,
  equipo_id bigint references equipos (id),
  edad int not null
  
);

create table partidos(
  id bigint primary key ,
  equipoLocal_id bigint references equipos  (id),
  equipoVisita_id bigint references equipos  (id),
  fechaPartido date not null,
  resultadoLocal VARCHAR(255)DEFAULT NULL,
  resultadoVisita VARCHAR(255)DEFAULT NULL
);


create table estadisticas (
  id bigint primary key ,
  equipo_id  bigint references equipos (id),
  partidosJugados int default 0,
  ganados int default 0,
  perdidos int default 0,
  empates int default 0,
  puntos int default 0
);
create table tarjetas (
  id bigint primary key ,
  partido_id bigint references partidos (id),
  jugador_id bigint references jugadores (id),
  tarjeta VARCHAR(255)DEFAULT NULL
 
);

create table goleadores (
  id bigint primary key ,
 partido_id bigint references partidos (id),
  jugador_id bigint references jugadores (id)
  
);
create table pasadores (
  id bigint primary key,
  partido_id bigint references partidos(id),
  jugador_id bigint references jugadores(id),
  goleador_id bigint references goleadores(id)
);
alter TABLE jugadores 
  DROP COLUMN edad,
  ADD fechaNacimiento VARCHAR(255)DEFAULT NULL

alter TABLE jugadores 
ADD email VARCHAR(255)DEFAULT NULL

 
alter TABLE jugadores 
ADD rut VARCHAR(255)DEFAULT NULL

ALTER TABLE jugadores 
MODIFY COLUMN id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE jugadores DROP PRIMARY KEY;

ALTER TABLE jugadores MODIFY COLUMN id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
