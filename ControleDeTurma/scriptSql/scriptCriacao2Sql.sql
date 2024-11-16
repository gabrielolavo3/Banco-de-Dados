CREATE DATABASE IF NOT EXISTS ControleDeTurma;
USE ControleDeTurma;

CREATE TABLE Curso
(
	IdCurso INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) not null,
    CH_Total INT NOT NULL
);

CREATE TABLE Turma
(
	IdTurma INT PRIMARY KEY AUTO_INCREMENT,
    Sala VARCHAR(12),
    Turno VARCHAR(15) NOT NULL,
    FK_Curso_idCurso INT,
    
    -- Adicionando Chave Estrangeira
    CONSTRAINT fkCurso FOREIGN KEY (FK_Curso_idCurso) 
    REFERENCES Curso(IdCurso) 
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE Disciplina
(
	IdDisciplina INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(30) NOT NULL,
    CargaHoraria INT
);

CREATE TABLE Professor
(
	IdProfessor INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(20) NOT NULL,
    Sobrenome VARCHAR(30) NOT NULL,
    Titulacao VARCHAR(25)
);

CREATE TABLE Ministra
(
	FK_Turma_IdTurma INT,
    FK_Disciplina_IdDisciplina INT,
    FK_Professor_IdProfessor INT,
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

CREATE TABLE Aluno
(
	Matricula VARCHAR(25) PRIMARY KEY,
    Nome VARCHAR(20) NOT NULL,
    Sobrenome VARCHAR(30) NOT NULL,
    CPF char(11) UNIQUE NOT NULL,
    RG char(10) NOT NULL,
    Email VARCHAR(62) NOT NULL,
    DataDeNascimento DATE,
    Logradouro VARCHAR(45),
    Numero VARCHAR(4),
    Bairro VARCHAR(35),
    Cidade VARCHAR(45),
    Estado CHAR(3),
    FK_Turma_IdTurma INT,
    
    CONSTRAINT fkIdTurma FOREIGN KEY(FK_Turma_IdTurma) REFERENCES Turma(IdTurma)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

CREATE TABLE Telefone
(
	IdTelefone INT PRIMARY KEY AUTO_INCREMENT,
    DDD INT NOT NULL,
    Numero INT NOT NULL,
    FK_Aluno_Matricula VARCHAR(25),
    
    CONSTRAINT fkAluno FOREIGN KEY(FK_Aluno_Matricula) REFERENCES Aluno(Matricula)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

-- Alteração de tabelas

ALTER TABLE aluno MODIFY COLUMN CPF char(14) UNIQUE NOT NULL, 
MODIFY COLUMN RG char(13) NOT NULL,
MODIFY COLUMN FK_Turma_IdTurma INT NOT NULL;

ALTER TABLE telefone MODIFY COLUMN FK_Aluno_Matricula VARCHAR(25) NOT NULL,
MODIFY COLUMN DDD CHAR(3) NOT NULL,
MODIFY COLUMN Numero VARCHAR(10) NOT NULL;

ALTER TABLE turma MODIFY COLUMN FK_Curso_idCurso INT NOT NULL;