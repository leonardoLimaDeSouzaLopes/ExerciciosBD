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
--DROP TABLE tbAluno

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



SELECT * FROM tbCurso
SELECT * FROM tbAluno
SELECT * FROM tbTurma
SELECT * FROM tbMatricula