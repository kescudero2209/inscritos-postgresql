CREATE DATABASE desafio2_karla_escudero_073;

CREATE TABLE IF NOT EXISTS INSCRITOS(cantidad INT, fecha DATE, fuente
VARCHAR);
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 44, '01/01/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 56, '01/01/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 39, '01/02/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 81, '01/02/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 12, '01/03/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 91, '01/03/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 48, '01/04/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 45, '01/04/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 55, '01/05/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 33, '01/05/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 18, '01/06/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 12, '01/06/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 34, '01/07/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 24, '01/07/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 83, '01/08/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 99, '01/08/2021', 'Página' );

SELECT count(*) FROM inscritos;

SELECT SUM(cantidad) FROM inscritos;

SELECT * FROM inscritos WHERE fecha = (SELECT MIN(fecha) FROM inscritos);

SELECT fecha,SUM(cantidad) FROM inscritos GROUP BY fecha ORDER BY fecha asc;

SELECT fuente,SUM(cantidad) FROM inscritos GROUP BY fuente;

SELECT fecha,SUM(cantidad) AS suma FROM inscritos GROUP BY fecha ORDER BY suma DESC LIMIT 1;

SELECT SUM(cantidad) AS suma, fecha, fuente FROM inscritos WHERE fuente = 'Blog' GROUP BY fuente, fecha ORDER BY suma DESC LIMIT 1;

SELECT avg(cantidad)
FROM (
SELECT fecha, sum(cantidad) AS cantidad FROM inscritos
GROUP BY fecha
) AS t1;

SELECT fecha,sum(cantidad) FROM inscritos GROUP BY fecha HAVING SUM(cantidad) > 50;

SELECT AVG(suma) AS promedio 
FROM(
SELECT fecha, sum(cantidad) AS suma FROM inscritos 
WHERE fecha >= '2021-03-01' 
GROUP BY fecha 
ORDER BY fecha ASC
) AS t1;