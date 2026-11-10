SELECT *
FROM   Competidor
WHERE  grado_cinturon = 'Negro' AND peso >= 50;


SELECT nombres, apellidos, grado_cinturon
FROM   Competidor;


SELECT nombres, apellidos, grado_cinturon, peso
FROM   Competidor
WHERE  sexo = 'M' AND peso <= 60;


SELECT co.nombres, co.apellidos, cl.nombre AS club
FROM   Competidor co
JOIN   club cl ON co.id_club = cl.id_club
WHERE  cl.ciudad = 'Loja';


SELECT   cl.nombre AS club,
                  COUNT(co.id_competidor) AS total_competidores,
                  AVG(co.peso) AS peso_promedio
FROM     Competidor co
JOIN     club cl ON co.id_club = cl.id_club
GROUP BY cl.nombre;
