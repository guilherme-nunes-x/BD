drop database if exists controleAcadêmico;
create database controleAcadêmico;
use controleAcadêmico;

create table aluno (
matricula varchar (25) primary key,
endereco varchar (25),
sexo char(1), 
nome varchar (50)
);

create table disciplina (
codDisciplina char(15) primary key,
nomeDisciplina varchar(25), 
nroCreditos varchar(25)
);

create table matriculado (
matricula varchar (25),
codDisciplina char(15),
primary key(matricula,codDisciplina),
foreign key (matricula) references aluno(matricula),
foreign key (codDisciplina) references disciplina(codDisciplina) 
);

create table pre_requisito (
codDisciplina char(15),
codPre_Requisito char(15),
primary key (codDisciplina,codPre_Requisito),
foreign key (codDisciplina) references disciplina(codDisciplina)
);

ALTER TABLE pre_requisito
ADD CONSTRAINT codPre_Requisito
FOREIGN KEY (codPre_Requisito)
REFERENCES disciplina (codDisciplina);

create table departamento (
codDepart char(15) primary key,
nomeDepart varchar(25)
);

create table curso (
codCurso char(15) primary key,
nomeCurso varchar(25),
codDepart char(15),
foreign key (codDepart) references departamento(CodDepart)
 );
 
 create table cursa (
 matricula varchar (25),
 codCurso char(15),
 primary key (matricula, codCurso),
 foreign key (matricula) references aluno(matricula),
 foreign key (codCurso) references curso(codCurso)
 );

create table concluida (
matricula varchar (25),
codDisciplina char(15),
 primary key (matricula, codDisciplina),
 foreign key (matricula) references aluno(matricula),
 foreign key (codDisciplina) references disciplina(codDisciplina)
);

create table oferece (
codCurso char(15),
codDisciplina char(15), 
tipoDisciplina varchar(25),
primary key (codCurso, codDisciplina),
foreign key (codCurso) references curso(codCurso),
 foreign key (codDisciplina) references disciplina(codDisciplina)
 );