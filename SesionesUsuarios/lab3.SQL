drop database if exists lab3;
create database lab3;
use lab3;

create table Usuario
(
	user varchar (60),
    password varchar (30)
);

insert into Usuario values('Miguel', 'Aguilar');
insert into Usuario values('Celeste', 'Juarez');
insert into Usuario values('Jorge', 'Cortes');
insert into Usuario values('Gaddi', 'Amaya');
insert into Usuario values('Kemry', 'Cardenas');


create table Usuarios
(
	email varchar (40),
    password varchar (30),
    tipo int
);

insert into Usuarios values('maguilarc117@gmail.com', '0123456789abcdef', 2);
insert into Usuarios values('eoropezag@ipn.mx', '0123456789abcdef', 1);
insert into Usuarios values('ponbizcocho@eldestructor.com', '0123456789abcdef', 4);
insert into Usuarios values('donjuan27@gmail.com', '0123456789abcdef', 3);

select * from Usuarios;