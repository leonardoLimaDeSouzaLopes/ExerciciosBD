USE bdEscola



UPDATE tbCurso
SET nomeCurso = 'Inglês Britânico'
WHERE codCurso = 1

UPDATE tbCurso
SET valorCurso = '790.00'
WHERE codCurso = 2

UPDATE tbAluno
SET nomeAluno = 'Paulo Santos de Almeida'
WHERE codAluno = 1

UPDATE tbTurma
SET horarioTurma = '1900-01-01 18:30:00'
WHERE codTurma = 2
UPDATE tbTurma
SET horarioTurma = '1900-01-01 19:30:00'
WHERE codTurma = 3

UPDATE tbMatricula
SET codTurma = '2'
WHERE codAluno = 2

UPDATE tbAluno
SET nomeAluno = 'Mariana Aparecida Barbosa Santos'
WHERE codAluno = 5

UPDATE tbAluno
SET rgAluno = '32.348.863-7'
WHERE codAluno = 3

UPDATE tbCurso
SET cargaHorariaCurso = '4000'
WHERE codCurso = 2

UPDATE tbMatricula
SET dataMatricula = '2015-15-08 00:00:00'
WHERE codAluno = 4

UPDATE tbAluno
SET naturalidadeAluno = 'MG'
WHERE codAluno = 1

UPDATE tbAluno
SET naturalidadeAluno = 'MS'
WHERE codAluno = 5



SELECT * FROM tbCurso
SELECT * FROM tbAluno
SELECT * FROM tbTurma
SELECT * FROM tbMatricula