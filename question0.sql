drop database if exists clube_livro;
create database clube_livro;
use clube_livro;

create table area(
codArea int primary key,
nomeArea varchar(100) 
);

create table livro(
ISBN int primary key,
anoPublicacao date,
autor varchar(100), 
editora varchar(100),
codArea int,
foreign key  (codArea) references area(codArea)
);

create table aluno(
matricula varchar(25) primary key,
nome varchar(100)
);

create table emprestado(
matricula varchar(25),
ISBN int,
dataEmprestimo datetime,
dataDevolucaoPrevista date,
dataDevolucaoEfetiva datetime,
primary key (matricula, ISBN, dataEmprestimo),
foreign key (matricula) references aluno(matricula),
foreign key (ISBN) references livro(ISBN)
);