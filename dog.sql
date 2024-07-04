drop database if exists petShop;
create database petShop;
use petShop;

create table cachorro (
id int primary key,
nome varchar(100),
raca varchar(100),
nascimento date,
cor varchar(100),
qtdPatas int
);

create table doeca(
id int primary key,
nome varchar(100),
tipo varchar(100),
sintomas text,
idCachorro int,
foreign key (idCachorro) references cachorro(id)
);

show tables;
desc doeca;
desc cachorro;
insert into cachorro values('1', 'Bruce', 'Boder colie', '2019/07/01','Preto e Branco', '4');
insert into doeca values('1', 'leptospirose', 'infecsiosa', 'fede a rato', '1');