drop database if exists congressoNacional;
create database congressoNacional;
use congressoNacional;

create table congressista (
codCongressista char(15) primary key,
prenome varchar(35),
sobrenome varchar(35)
 );
 
 create table estado (
sigla char(5) primary key,
nome varchar(35),
regiao varchar(35)
 );
 
 create table eleito_por (
codCongressista char (15),
sigla char (5),
dataEleito date,
periodoMandato int,
primary key (codCongressista,sigla,dataEleito),
foreign key (codCongressista) references congressista(codCongressista),
foreign key (sigla) references estado(sigla)
 );
 
 create table partido (
sigla char (5) primary key,
nome varchar(35)
 );
 
 create table emendaProjeto (
codEmendaProjeto char(15) primary key,
nome varchar(50),
tipo varchar(50),
resultado varchar(15),
dataVotacao datetime,
codCongressista char(15),
foreign key (codCongressista) references congressista(codCongressista)
 );
 
 create table palChaveEmenda (
codEmendaProjeto char (15),
palavraChave varchar (35),
primary key (codEmendaProjeto, palavraChave),
foreign key (codEmendaProjeto) references emendaProjeto(codEmendaProjeto)
 );
 
 create table  vota (
codEmendaProjeto char (15),
codCongressista char (15),
opcao varchar (25),
primary key (codEmendaProjeto, codCongressista),
foreign key (codEmendaProjeto) references emendaProjeto(codEmendaProjeto),
foreign key (codCongressista) references congressista(codCongressista)
 );