CREATE DATABASE IF NOT EXISTS ControleDeTurma;
USE ControleDeTurma;

create table Curso
(
	IdCurso int primary key auto_increment,
    Nome varchar(100) not null,
    CH_Total int not null
);

create table Turma
(
	IdTurma int auto_increment,
    Sala varchar(12),
    Turno varchar(15) not null,
    FK_Curso_idCurso int,
    PRIMARY KEY(
		idTurma, 
        FK_Curso_idCurso
	)
);

create table Disciplina
(
	IdDisciplina int auto_increment,
    Nome varchar(30) not null,
    CargaHoraria int
);

create table Professor
(
	IdProfessor int auto_increment,
    Nome varchar(20) not null,
    Sobrenome varchar(30) not null,
    Titulacao varchar(25)
);

create table Ministra
(
	FK_Turma_IdTurma int,
    FK_Disciplina_IdDisciplina int,
    FK_Professor_IdProfessor int,
    PRIMARY KEY (
		FK_Turma_IdTurma, 
		FK_Disciplina_IdDisciplina, 
		FK_Professor_IdProfessor
    )
);

create table Aluno
(
	Matricula varchar(25),
    Nome varchar(20) not null,
    Sobrenome varchar(30) not null,
    CPF char(11) unique not null,
    RG char(10) not null,
    Email varchar(62) not null,
    DataDeNascimento date,
    Logradouro varchar(45),
    Numero varchar(4),
    Bairro varchar(35),
    Cidade varchar(45),
    Estado char(3),
    FK_Turma_IdTurma int,
    PRIMARY KEY(
		Matricula, 
        FK_Turma_IdTurma
	)
);

create table Telefone
(
	IdTelefone int auto_increment,
    DDD int not null,
    Numero int not null,
    FK_Aluno_Matricula varchar(25),
    PRIMARY KEY(
		IdTelefone, 
        FK_Aluno_Matricula
	)
);