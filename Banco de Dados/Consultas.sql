SELECT * FROM tanques;

SELECT tipo AS "Sensores", valor AS "Dados dos sensores" FROM sensores;

SELECT tipo FROM sensores WHERE tipo = 'Oxigenio';

SELECT COUNT(*) FROM sensores WHERE tipo = 'Oxigenio';

SELECT nome, capacidade_litros, capacidade_peixes
FROM tanques WHERE capacidade_litros >= 20000 AND capacidade_litros < 22000;

SELECT s.id_tanque, t.nome, s.tipo, s.valor FROM sensores s
JOIN tanques t ON s.id_tanque = t.id_tanque;

SELECT s.id_tanque, t.nome, s.tipo, s.valor 
FROM sensores s
JOIN tanques t 
ON s.id_tanque = t.id_tanque
WHERE s.valor < 27;

SELECT s.id_tanque, t.nome, s.tipo, s.valor 
FROM sensores s
JOIN tanques t 
ON s.id_tanque = t.id_tanque
WHERE s.tipo LIKE '%gen%';

SELECT s.id_tanque AS "Código do Tanque", t.nome AS "Nome", s.tipo, s.valor 
FROM sensores s
JOIN tanques t 
ON s.id_tanque = t.id_tanque
WHERE s.valor > 80 AND s.valor < 100 
GROUP BY s.id_tanque, t.nome, s.tipo, s.valor;

SELECT s.id_tanque AS "Código do Tanque", t.nome AS "Nome", s.tipo, s.valor 
FROM sensores s
JOIN tanques t 
ON s.id_tanque = t.id_tanque
WHERE s.valor < 80 AND s.valor > 50 
GROUP BY s.id_tanque, t.nome, s.tipo, s.valor;