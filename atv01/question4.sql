drop database if exists banco;
create database banco;
use banco;

create table trasacao(
nroTrasacao int,
data date,
valor float,
nroConta int,  
primary key (nroConta, nroTrasacao)
);

create table conta(
saldoConta float,
nroConta int primary key  
);

ALTER TABLE conta
ADD CONSTRAINT nroConta
FOREIGN KEY (nroConta)
REFERENCES trasacao (nroConta);
