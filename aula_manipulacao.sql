create database restaurante_italiano;
use restaurante_italiano;

create table chefe (
	cpf char(11) primary key,
	nome varchar(50) not null,
	nasc date not null,
	especialidade enum('macarrao','lasanha','pizza','risoto') not null,
	admissao date not null,
	salario float not null,
	carga_time int not null
);

/* Esquema geral: chefe(CPF, nome, nascimento, especialidade, admissao, salario, chs)*/
/*Forma de inserir dados em um bd*/
insert into chefe values('12345673241','roberio','2004/09/28','pizza','2019/08/18','15000.00','56' );
/*Veriifca dados dos dados cadastrados*/
select * from restaurante_italiano.chefe;
