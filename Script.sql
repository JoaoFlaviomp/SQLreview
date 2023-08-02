Exercicio A
SELECT pnome, unome
FROM funcionario
WHERE salario > 30000

Exercicio B
SELECT pnome, endereco
FROM funcionario as f JOIN departamento as d 
ON f.numdept = d.dnumero
WHERE d.dnumero = 4

Exercicio C
SELECT unome, horas
FROM trabalhaem JOIN funcionario as f 
ON fcpf = cpf
WHERE projnumero = 3
ORDER BY horas DESC

Exercicio D
SELECT pnome, minicial, unome
FROM trabalhaem JOIN funcionario 
ON fcpf = cpf 
WHERE projnumero = 1

Exercicio E
SELECT f.pnome, f.unome, s.pnome, s.unome
FROM funcionario as f JOIN funcionario as s 
ON f.cpf = s.cpfsuperv

Exercicio F
SELECT projnumero 
FROM projeto

Exercicio G
SELECT pj.projnome, MIN(te.horas), MAX(te.horas), AVG(te.horas)
FROM trabalhaem as te JOIN projeto as pj 
ON pj.projnumero = te.projnumero
GROUP BY pj.projnome

Exercicio H
SELECT d.dnome, COUNT(cpf)
FROM funcionario as f JOIN departamento as d 
ON f.numdept = d.dnumero
GROUP BY d.dnome
HAVING AVG (f.salario) > 33000
