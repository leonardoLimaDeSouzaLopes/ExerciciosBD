CREATE DATABASE bdEscola
USE bdEscola

--DROP DATABASE bdEscola

CREATE TABLE tbAluno (
	codAluno INT PRIMARY KEY IDENTITY(1, 1)
	,nomeAluno VARCHAR(255)
	,dataNascimentoAluno DATETIME
	,rgAluno VARCHAR(15) UNIQUE
	,naturalidadeAluno VARCHAR (30)
)
--CROP TABLE tbAluno

CREATE TABLE tbCurso (
	 codCurso INT PRIMARY KEY IDENTITY(1, 1)
	,nomeCurso VARCHAR(255)
	,cargaHorariaCurso INT
	,valorCurso REAL 
)
--DROP TABLE tbCurso

CREATE TABLE tbTurma (
	codTurma INT PRIMARY KEY IDENTITY(1, 1)
	,nomeTurma VARCHAR(255)
	,codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
	,horarioTurma DATETIME
)
--DROP TABLE tbTurma

CREATE TABLE tbMatricula (
	codMatricula INT PRIMARY KEY IDENTITY(1, 1)
	,dataMatricula DATETIME
	,codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
	,codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma)
)
--DROP TABLE tbMatricula



INSERT INTO tbCurso(nomeCurso, cargaHorariaCurso, valorCurso)
VALUES ('Ingles', '2000', 356.00)

INSERT INTO tbCurso(nomeCurso, cargaHorariaCurso, valorCurso)
VALUES ('Alemao', '3000', 478.00)


INSERT INTO tbAluno(nomeAluno, dataNascimentoAluno, rgAluno, naturalidadeAluno)
VALUES ('Paulo santos', '2000-10-03 00:00:00', '45.233.123-0', 'SP')

INSERT INTO tbAluno(nomeAluno, dataNascimentoAluno, rgAluno, naturalidadeAluno)
VALUES ('Maria da Gloria', '1999-03-10 00:00:00', '82.292.122-0', 'SP')

INSERT INTO tbAluno(nomeAluno, dataNascimentoAluno, rgAluno, naturalidadeAluno)
VALUES ('Perla Nogueira Silva', '1998-04-04 00:00:00', '23.533.211-9', 'SP')

INSERT INTO tbAluno(nomeAluno, dataNascimentoAluno, rgAluno, naturalidadeAluno)
VALUES ('Gilson Barros Silva', '1995-09-09 00:00:00', '34.221.111-x', 'PE')

INSERT INTO tbAluno(nomeAluno, dataNascimentoAluno, rgAluno, naturalidadeAluno)
VALUES ('Mariana Barbosa Santos', '2001-10-10 00:00:00', '54.222.122-9', 'RJ')


INSERT INTO tbTurma(nomeTurma, codCurso, horarioTurma)
VALUES ('1IA', '1', '1900-01-01 12:00:00')

INSERT INTO tbTurma(nomeTurma, codCurso, horarioTurma)
VALUES ('11B', '1', '1900-01-01 18:00:00')

INSERT INTO tbTurma(nomeTurma, codCurso, horarioTurma)
VALUES ('1AA', '2', '1900-01-01 19:00:00')


INSERT INTO tbMatricula(dataMatricula, codAluno, codTurma)
VALUES ('2015-03-10 00:00:00', '1', '1')

INSERT INTO tbMatricula(dataMatricula, codAluno, codTurma)
VALUES ('2014-04-05 00:00:00', '2', '1')

INSERT INTO tbMatricula(dataMatricula, codAluno, codTurma)
VALUES ('2012-03-05 00:00:00', '3', '2')

INSERT INTO tbMatricula(dataMatricula, codAluno, codTurma)
VALUES ('2016-03-03 00:00:00', '1', '3')

INSERT INTO tbMatricula(dataMatricula, codAluno, codTurma)
VALUES ('2015-07-05 00:00:00', '4', '2')

INSERT INTO tbMatricula(dataMatricula, codAluno, codTurma)
VALUES ('2015-05-07 00:00:00', '4', '3')

INSERT INTO tbMatricula(dataMatricula, codAluno, codTurma)
VALUES ('2015-06-06 00:00:00', '5', '1')

INSERT INTO tbMatricula(dataMatricula, codAluno, codTurma)
VALUES ('2015-05-05 00:00:00', '5', '3')

SELECT * FROM tbCurso
SELECT * FROM tbAluno
SELECT * FROM tbTurma
SELECT * FROM tbMatricula