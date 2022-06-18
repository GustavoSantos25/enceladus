-- consulta 1
-- seleciona nusp e nome de usuários que nunca escreveram um comentário
SELECT nusp, nome FROM usuario
EXCEPT
SELECT nusp, nome FROM usuario WHERE (SELECT COUNT(*) FROM comentario WHERE autor_comentario = nusp) > 0;

-- consulta 2
-- seleciona os nomes das unidades e de ensino e o número de comentários escritos sobre suas salas de estudo
SELECT nome_unidade, numCom.count AS "Número de comentários" FROM
(SELECT pertence, COUNT(*) FROM comentario
INNER JOIN saladeestudos ON sala_comentario = id_sala GROUP BY pertence) AS numCom
INNER JOIN unidadeensino ON numCom.pertence = id_unidade ORDER BY count DESC;

-- consulta 3
-- seleciona os nomes das unidades de ensino que não possuem salas sem lousa cadastradas no BD
SELECT nome_unidade FROM unidadeensino
EXCEPT
SELECT nome_unidade FROM
(SELECT pertence FROM saladeestudos WHERE NOT lousa GROUP BY pertence) AS semLousa
INNER JOIN unidadeensino ON semLousa.pertence = id_unidade;

-- consulta 4
-- seleciona cada sala de cada instituto, e retorna os comentários sobre cada sala, ordenados do mais novo para o mais antigo
SELECT nome_unidade, nome_sala, texto_comentario, data_comentario FROM comentario
INNER JOIN saladeestudos ON sala_comentario = id_sala
INNER JOIN unidadeensino ON id_unidade = pertence
ORDER BY nome_unidade ASC, nome_sala ASC, data_comentario DESC;

-- consulta 5
-- seleciona a quantidade de salas por limites de ocupação entre aquelas salas que tenham lousa e não estejam em obras
SELECT limite_pessoas, COUNT(*) as "quantidade"
FROM saladeestudos WHERE lousa AND status_sala = 0
GROUP BY limite_pessoas ORDER BY limite_pessoas;