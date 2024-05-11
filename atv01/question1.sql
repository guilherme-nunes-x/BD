drop database if exists livraria;
-- comentarios 
create database livraria;  

use livraria; 

create table area (
codArea smallint primary key,
nomeArea varchar (100)
); 

create table livro(
editora varchar(20),
anoPublicacao char(4),
auto varchar(60), 
nome varchar(100),
ISBN char (13),
primary key(ISBN),
codArea smallint,
-- chave estrangeira e referenciar a chave de outra tabela
foreign key(codArea) references area(codArea)
);

-- show tables; mostrar tabelas
-- desc area; descrever tabelas