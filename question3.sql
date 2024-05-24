drop database if exists controle_bancario;
create database controle_bancario;
use controle_bancario;

create table agencia (
nroAgencia char(15) primary key,
cidadeAgencia varchar (25)
);

create table funcionario (
codFunc char (15) primary key,
endereco varchar(50),
salario int,
nome varchar (50),
nroAgencia char (15),
foreign key (nroAgencia) references agencia(nroAgencia)
 );
 
create table conta (
nroConta char (15) primary key,
saldoConta int
);

create table transacao (
nroConta char (15),
nroTransacao char (15),
data date,
valor int,
primary key (nroConta, nroTransacao),
foreign key (nroConta) references conta(nroConta) 
);

create table cliente (
codCliente char (15) primary key,
 RG char (25),
 nome varchar (50),
 cidade varchar (50)
 );
 
 create table ACC (
 codCliente char (15),
 nroConta char (15),
 nroAgencia char (15),
 primary key (codCliente,nroConta,nroAgencia),
 foreign key (codCliente) references cliente(codCliente),
 foreign key (nroConta) references conta(nroConta),
 foreign key (nroAgencia) references agencia(nroAgencia)
 );