CREATE DATABASE sistema_academico;
USE sistema_academico;
CREATE TABLE Aluno (
    matricula INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    nascimento DATE
);

CREATE TABLE Disciplina (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100),
    carga_horaria INT
);

CREATE TABLE Professor (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    titulacao VARCHAR(100)
);

CREATE TABLE Matriculado (
    matricula INT,
    codigo INT,
    nota NUMERIC(3,2),
    FOREIGN KEY (matricula) REFERENCES Aluno(matricula),
    FOREIGN KEY (codigo) REFERENCES Disciplina(codigo),
    PRIMARY KEY (matricula, codigo) -- Chave primária composta para garantir a unicidade da matrícula em cada disciplina
);

CREATE TABLE Ministra (
    codigo INT,
    id INT,
    FOREIGN KEY (codigo) REFERENCES Disciplina(codigo),
    FOREIGN KEY (id) REFERENCES Professor(id),
    PRIMARY KEY (codigo, id) -- Chave primária composta para garantir que um professor só ministre uma vez cada disciplina
);
show tables;
INSERT INTO Aluno (matricula, nome, email, nascimento)
VALUES
  (1, 'João da Silva', 'joao@email.com', '1998-05-12'),
  (2, 'Maria Pereira', 'maria@email.com', '2000-03-25'),
  (3, 'Pedro Santos', 'pedro@email.com', '1999-11-08'),
  (4, 'Ana Oliveira', 'ana@email.com', '2001-02-15'),
  (5, 'Lucas Gomes', 'lucas@email.com', '2002-07-28');

INSERT INTO Professor (id, nome, titulacao)
VALUES
  (1, 'Professor Alfa', 'Mestre'),
  (2, 'Professora Beta', 'Doutora'),
  (3, 'Professor Gama', 'Doutor');
INSERT INTO Disciplina (codigo, nome, carga_horaria)
VALUES
  (101, 'Banco de Dados', 60),
  (102, 'Programação', 45),
  (103, 'Matemática Discreta', 30);
INSERT INTO Matriculado (matricula, codigo, nota)
VALUES
  (1, 101, 8.5),
  (1, 102, 9.2),
  (1, 103, 7.8);
select * from Aluno;
select * from Matriculado;
select * from Professor;
