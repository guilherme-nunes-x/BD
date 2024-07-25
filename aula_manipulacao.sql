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
/*chefe(CPF, nome, nascimento, especialidade, admissao, salario, chs)*/
insert into chefe values('12345678912','leonardo','2006/12/08','macarrao','2020/12/08','12000.00','23' );
show tables;
desc chefe;
