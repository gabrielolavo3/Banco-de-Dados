USE ControleDeTurma;

-- Inserção na tabela Curso
INSERT INTO curso (Nome, CH_Total) VALUES ('Desenvolvimento de Sistema', 1200);
INSERT INTO curso (Nome, CH_Total) VALUES ('Logística', 1000);
INSERT INTO curso (Nome, CH_Total) VALUES ('Segurança Cibernética', 1500);

-- Inserção na tabela Turma
INSERT INTO turma (Sala, Turno, FK_Curso_idCurso) VALUES ('B10', 'Vespertino', 1);
INSERT INTO turma (Sala, Turno, FK_Curso_idCurso) VALUES ('C10', 'Matutino', 1);
INSERT INTO turma (Sala, Turno, FK_Curso_idCurso) VALUES ('B10', 'Noturno', 2);
INSERT INTO turma (Sala, Turno, FK_Curso_idCurso) VALUES ('G7', 'Vespertino', 3);
INSERT INTO turma (Sala, Turno, FK_Curso_idCurso) VALUES ('L6', 'Matutino', 3);
INSERT INTO turma (Sala, Turno, FK_Curso_idCurso) VALUES ('C11', 'Vespertino', 1);

-- Inserção na tabela Disciplina
INSERT INTO disciplina (Nome, CargaHoraria) VALUES ('Banco de Dados', 74);
INSERT INTO disciplina (Nome, CargaHoraria) VALUES ('Armazenamento de Produtos', 50);
INSERT INTO disciplina (Nome, CargaHoraria) VALUES ('Back End', 120);
INSERT INTO disciplina (Nome, CargaHoraria) VALUES ('Desenvolvimento Web', 88);
INSERT INTO disciplina (Nome, CargaHoraria) VALUES ('Lógica de Programação', 180);
INSERT INTO disciplina (Nome, CargaHoraria) VALUES ('Logística Portuária', 110);
INSERT INTO disciplina (Nome, CargaHoraria) VALUES ('Protocolo HTTPS', 70);
INSERT INTO disciplina (Nome, CargaHoraria) VALUES ('Malwares', 120);
INSERT INTO disciplina (Nome, CargaHoraria) VALUES ('Segurança na Nuvem', 175);

-- Inserção na tabela Professor
INSERT INTO professor (Nome, Sobrenome, Titulacao) VALUES ('Mary', 'Oliveira', 'Doutor');
INSERT INTO professor (Nome, Sobrenome, Titulacao) VALUES ('Peter', 'Queen', 'Graduado');
INSERT INTO professor (Nome, Sobrenome, Titulacao) VALUES ('Marco', 'Santos Silveira', 'Graduado');
INSERT INTO professor (Nome, Sobrenome, Titulacao) VALUES ('Frances', 'Spark', 'Mestre');
INSERT INTO professor (Nome, Sobrenome, Titulacao) VALUES ('Katniss', 'Everdeen', 'Especialista');

-- Inserção na tabela Aluno
INSERT INTO aluno VALUES('5682024', 'Ernest', 'Santos', '111.111.111-11', '01.001.001-01','ernest@gmail', '2000-01-02', 'Rua da Paciência', '32E', 'Infamous', 'Xique-Xique', 'BA', 1);
INSERT INTO aluno VALUES('1202024', 'Ana', 'Silveira', '222.222.222-22', '02.002.002-02','ana@gmail', '2002-03-15', 'Travessa dos Escorpiões', '67', 'Sky', 'Wolf', 'BA', 1);
INSERT INTO aluno VALUES('0032024', 'Abraham', 'Stoker', '333.333.333-33', '03.003.003-03','stoker@outlook.com.br', '1197-02-23', 'Avenida dos Despossuídos', '88C', 'Zao', 'Punk', 'BA', 1);
INSERT INTO aluno VALUES('9872024', 'Stephanie', 'Jesus', '444.444.444-44', '04.004.004-04','stephanie@outlook.com.br', '2005-07-14', 'Rua da Luz', '90', 'Zao', 'Punk', 'SP', 2);
INSERT INTO aluno VALUES('7562024', 'Yasmin', 'Santos', '555.555.555-55', '05.005.005-05','santos@yahoo.com', '2003-03-06', 'Travessa dos Amantes', '90', 'Zao', 'City', 'SP', 3);

-- Inserção na tabela Telefone
INSERT INTO telefone (DDD, Numero, FK_Aluno_Matricula) VALUES ('071', '91111-1111', '1202024');
INSERT INTO telefone (DDD, Numero, FK_Aluno_Matricula) VALUES ('098', '92222-2222', '7562024');
INSERT INTO telefone (DDD, Numero, FK_Aluno_Matricula) VALUES ('099', '93333-3333', '9872024');
INSERT INTO telefone (DDD, Numero, FK_Aluno_Matricula) VALUES ('071', '91112-1511', '1202024');
INSERT INTO telefone (DDD, Numero, FK_Aluno_Matricula) VALUES ('071', '90022-1555', '0032024');
INSERT INTO telefone (DDD, Numero, FK_Aluno_Matricula) VALUES ('071', '91212-5555', '5682024');

-- Inserção na tabela Ministra
INSERT INTO ministra (FK_Turma_IdTurma, FK_Professor_IdProfessor, FK_Disciplina_IdDisciplina) VALUES (1, 1, 3);
INSERT INTO ministra (FK_Turma_IdTurma, FK_Professor_IdProfessor, FK_Disciplina_IdDisciplina) VALUES (1, 1, 1);
INSERT INTO ministra (FK_Turma_IdTurma, FK_Professor_IdProfessor, FK_Disciplina_IdDisciplina) VALUES (2, 4, 3);
INSERT INTO ministra (FK_Turma_IdTurma, FK_Professor_IdProfessor, FK_Disciplina_IdDisciplina) VALUES (6, 5, 6);