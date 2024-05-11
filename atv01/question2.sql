drop database if exists concessionaria;

create database concessionaria;

use concessionaria;

create table marca (
nomeMarca int primary key,
codMarca varchar(50)
);

create table modelo(
nomeModelo varchar(50),
codModelo int primary key,
nomeMarca int,
foreign key (nomeMarca) references marca (nomeMarca) 
);

create table veiculo(
placa char(8),
chassi char(17) primary key,
cor varchar(50),
anoFabricacao smallint,
quilometragem int,
codModelo int,
foreign key (codModelo) references modelo (codModelo)
);
 show tables;
desc modelo;