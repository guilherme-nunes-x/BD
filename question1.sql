drop database if exists concessionaria_veiculos;
create database concessionaria_veiculos;
use concessionaria_veiculos;

create table marca(
codMarca char (5) primary key,
nomeMarca varchar(50)
);

create table modelo(
codModelo char (5) primary key,
codMarca char (5),
nomeModelo varchar(50),
foreign key (codMarca) references marca(codMarca)
);

create table veiculo (
chassi varchar(25) primary key,
 codModelo char(5),
 cor varchar (25),
 anoFabricacao date,
 quilometragem int,
 placa varchar(25),
 foreign key (codModelo) references modelo(codModelo)
 );
 
 create table corretor (
 matricula varchar (25) primary key,
 dataAdmissao datetime,
 nomeCorretor varchar (25)
 );
 
 create table comprador (
 cpfComprador varchar (25) primary key,
 nomeComprador varchar (50),
 estadoCivil enum("Casado","Solteiro","Viuvo","Divorciado")
 );
-- desc comprador;

create table venda (
 chassi varchar(25),
 matricula varchar (25),
 cpfComprador varchar (25),
 dataVenda date,
 valorVenda int,
 valorComissao int,
 primary key(chassi, matricula, cpfComprador),
 foreign key (chassi) references veiculo(chassi),
 foreign key (matricula) references corretor(matricula),
 foreign key (cpfComprador) references comprador(cpfComprador)
 );
 
 create table conjuge (
 cpfComprador varchar(25),
 cpfConjuge varchar(25) primary key,
 nome varchar(25),
 foreign key (cpfComprador) references comprador(cpfComprador)
 );