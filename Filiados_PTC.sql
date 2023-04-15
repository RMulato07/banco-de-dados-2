CREATE DATABASE Filiados_PTC

USE Filiados_PTC

--DROP DATABASE Filiados_PTC

SELECT * FROM Filiados_PTC
--1
SELECT nomeFiliado FROM Filiados_PTC
	WHERE nomeFiliado LIKE 'ANTONIO%'
--2
SELECT nomeFiliado FROM Filiados_PTC
	WHERE nomeFiliado LIKE '%Sebastiao'
--3
SELECT nomeFiliado FROM Filiados_PTC
	WHERE nomeFiliado LIKE 'OS%'
--4
SELECT nomeFiliado,nomeMunicipio FROM Filiados_PTC
	WHERE nomeMunicipio LIKE '%lix'
--5
SELECT nomeFiliado,nomeMunicipio FROM Filiados_PTC
	WHERE nomeMunicipio LIKE 'INHAMBUPE'
--6
SELECT nomeFiliado,nomeMunicipio FROM Filiados_PTC
	WHERE nomeMunicipio LIKE 'SANTA%'
--7
SELECT nomeFiliado,nomeMunicipio FROM Filiados_PTC
	WHERE nomeMunicipio LIKE 'E%'
--8
SELECT nomeFiliado, nomeMunicipio FROM Filiados_PTC
	WHERE nomeMunicipio LIKE '%CRUZ%'
--9
SELECT nomeFiliado, nomeMunicipio FROM Filiados_PTC
	WHERE nomeMunicipio LIKE '%DE%'
--10
SELECT nomeFiliado,dataFiliacao FROM  Filiados_PTC
	WHERE dataFiliacao BETWEEN '01/01/1990' AND '01/01/2000'
--11
SELECT nomeFiliado, dataFiliacao FROM Filiados_PTC
	WHERE dataFiliacao BETWEEN '02/01/2010'AND '01/03/2010'
--12
SELECT nomeFiliado, dataFiliacao FROM Filiados_PTC
	WHERE dataFiliacao BETWEEN '01/07/2007' AND '31/12/2007'
--13
SELECT nomeFiliado,situacaoRegistro FROM Filiados_PTC
	WHERE situacaoRegistro LIKE '%REGULAR%'
--14
SELECT nomeFiliado, zonaEleitoral FROM Filiados_PTC
	WHERE zonaEleitoral LIKE '203'
--15
SELECT nomeFiliado, zonaEleitoral FROM Filiados_PTC
	WHERE zonaEleitoral LIKE '180'
--16
SELECT nomeFiliado, zonaEleitoral FROM Filiados_PTC
	WHERE zonaEleitoral LIKE '199'
--17
SELECT MAX(zonaEleitoral) FROM Filiados_PTC
--18
SELECT MIN(zonaEleitoral) FROM Filiados_PTC
--19
UPDATE Filiados_PTC
SET siglaPartido ='PT'
where codigoMunicipio LIKE '36471'

--20
UPDATE Filiados_PTC
SET siglaPartido ='PMDB'
where codigoMunicipio LIKE '38490'

--21
UPDATE Filiados_PTC
SET siglaPartido ='pc'
where nomeMunicipio LIKE 'santa%' AND nomeMunicipio LIKE  '%polis'

--22
UPDATE Filiados_PTC
SET siglaPartido ='PV'
WHERE nomeMunicipio LIKE 'S%' AND nomeMunicipio LIKE  '%lix' 

UPDATE Filiados_PTC
SET nomePartido = 'Verde dos Filiados'
WHERE nomeMunicipio LIKE 'S%' AND nomeMunicipio LIKE  '%lix' 

SELECT nomeMunicipio from Filiados_PTC
where nomeMunicipio like 'S%'  AND nomeMunicipio LIKE  '%lix'
--23
UPDATE Filiados_PTC
SET siglaPartido ='PSDB'
WHERE nomeMunicipio LIKE 'ENCRUZILHADA' 

UPDATE Filiados_PTC
SET nomePartido = 'Partido da Social Democracia Brasileira'
WHERE nomeMunicipio LIKE 'ENCRUZILHADA' 

SELECT nomeMunicipio, siglaPartido from Filiados_PTC
WHERE nomeMunicipio LIKE'ENCRUZILHADA'
 
 --24
 UPDATE Filiados_PTC
 SET nomeFiliado ='JORGE LUIS MAGALHÃES DOS SANTOS'
 WHERE nomeFiliado like '%JORGE LUIS FERREIRA DOS SANTOS%'
 --25
 UPDATE Filiados_PTC
 SET nomeFiliado ='RENATA XAVIER RODRIGUE'
 WHERE nomeFiliado like '%BENTA XAVIER RODRIGUE%'

--26
 UPDATE Filiados_PTC
 SET nomeFiliado ='NOEL LEITE DA SILVA'
 WHERE nomeFiliado like '%NOE LEITE DA SILVA%'

 --27
  UPDATE Filiados_PTC
 SET situacaoRegistro ='REGULAR'
 WHERE nomeFiliado like '%JOSIENE ANDRADE DE SOUZA%'

 --28
 UPDATE Filiados_PTC
 SET situacaoRegistro ='REGULAR'
 WHERE nomeFiliado like '%ELIEL ALMEIDA SILVA%'

 --29
  UPDATE Filiados_PTC
 SET situacaoRegistro ='DESFILIADO'
 WHERE nomeFiliado like '%ALINE DE SOUZA%'
 --30
 ALTER TABLE Filiados_PTC ADD sexo char(10)  

 SELECT nomeFiliado,sexo FROM Filiados_PTC
 WHERE nomeFiliado like 'RAIMUNDO %'
