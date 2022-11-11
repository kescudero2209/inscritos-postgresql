CREATE DATABASE desafio2_karla_escudero_073;

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