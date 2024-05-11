drop database if exists congresso;
create database congresso;
use congresso;

create table partido(
sigla varchar(10) primary key,
nome varchar(50)
);

create table filiado(
data date,
codigo int,
sigla varchar(10),
primary key (codigo, sigla)
);

ALTER TABLE filiado
ADD CONSTRAINT sigla
FOREIGN KEY (sigla)
REFERENCES partido (sigla);

create table congressista(
prenome varchar(50),
nome varchar(100),
codigo int primary key
);

ALTER TABLE congressista
ADD CONSTRAINT codigo
FOREIGN KEY (codigo)
REFERENCES filiado (codigo);
