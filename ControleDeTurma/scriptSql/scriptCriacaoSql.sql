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
	IdTurma int primary key auto_increment,
    Sala varchar(12),
    Turno varchar(15) not null,
    FK_Curso_idCurso int,
    
    -- Adicionando Chave Estrangeira
    CONSTRAINT fkCurso FOREIGN KEY (FK_Curso_idCurso) 
    REFERENCES Curso(IdCurso) 
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

create table Disciplina
(
	IdDisciplina int primary key auto_increment,
    Nome varchar(30) not null,
    CargaHoraria int
);

create table Professor
(
	IdProfessor int primary key auto_increment,
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
		FK_Turma_IdTurma, FK_Disciplina_IdDisciplina, FK_Professor_IdProfessor
    ),
    
    CONSTRAINT fkTurma FOREIGN KEY(FK_Turma_IdTurma) REFERENCES Turma(IdTurma)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
    CONSTRAINT fkDisciplina FOREIGN KEY(FK_Disciplina_IdDisciplina) REFERENCES Disciplina(IdDisciplina)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    CONSTRAINT fkProfessor FOREIGN KEY(FK_Professor_IdProfessor) REFERENCES Professor(IdProfessor)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

create table Aluno
(
	Matricula varchar(25) primary key,
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
    
    CONSTRAINT fkIdTurma FOREIGN KEY(FK_Turma_IdTurma) REFERENCES Turma(IdTurma)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

create table Telefone
(
	IdTelefone int primary key auto_increment,
    DDD int not null,
    Numero int not null,
    FK_Aluno_Matricula varchar(25),
    
    CONSTRAINT fkAluno FOREIGN KEY(FK_Aluno_Matricula) REFERENCES Aluno(Matricula)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);