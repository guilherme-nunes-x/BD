drop database if exists escola;
create database escola;
use escola;

create table disciplina(
codDiciplina int primary key,
nomeDiciplina varchar(50),
nroCreditos tinyint
);

create table matriculado(
matricula int,
codDiciplina int,
nota decimal(2,1),
primary key (matricula, codDiciplina)
);

ALTER TABLE matriculado
ADD CONSTRAINT codDiciplina
FOREIGN KEY (codDiciplina)
REFERENCES disciplina (codDiciplina);

create table aluno(
nome varchar(100),
sexo char(1),
endereco varchar(100),
matricula int primary key,
nascimento datetime  
);

ALTER TABLE aluno
ADD CONSTRAINT matricula
FOREIGN KEY (matricula)
REFERENCES matriculado (matricula);
