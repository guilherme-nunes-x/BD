create database instituicoes;
use instituicoes;

create table aluno(
matricula char(6) primary key,
nome varchar (100) not null,
email varchar(50) not null,
nascimento date not null
);

create table professor(
id char(5)  primary key,
nome varchar(100) not null,
titulacao varchar(200) not null
);

/*Modifiquei um unico insert para inserir os valores*/
insert into aluno values('15647','erica elias','leon.gamail','2009-08-23');

/*Modifiquei um unico insert*/
insert into professor values('15647','erica elias','Ex professor de de stanford');

desc aluno;
desc professor;

select * from instituicoes.aluno;
select * from instituicoes.professor;

