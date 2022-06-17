--insere dados temporários para realizar testes de consistência

INSERT INTO unidadeensino VALUES(9, 'Unid. Teste', 'R. Teste', 42) ON CONFLICT DO NOTHING;
INSERT INTO saladeestudos VALUES(25, 'Sala Teste', 99, 99, 0, false, 0, 9) ON CONFLICT DO NOTHING;
INSERT INTO saladeestudos VALUES(26, 'Sala Teste2', 999, 999, 0, false, 0, 9) ON CONFLICT DO NOTHING;
INSERT INTO usuario VALUES(2147483647, 'Usuário Teste', null, 'teste@usp.br', 0, 'Teste', 9, 0, 0) ON CONFLICT DO NOTHING;
INSERT INTO usuario VALUES(0, 'Usuário Teste2', null, 'teste2@usp.br', 0, 'Teste', 0, 0, 0) ON CONFLICT DO NOTHING;
INSERT INTO comentario VALUES(0, 25, 'Comentário teste da sala com capacidade 99', '2022-06-16') ON CONFLICT DO NOTHING;
INSERT INTO comentario VALUES(0, 17, 'Comentário teste em uma sala real', '2022-06-16') ON CONFLICT DO NOTHING;
INSERT INTO comentario VALUES(2147483647, 20, 'Outro comentário teste em uma sala real', '2022-06-16') ON CONFLICT DO NOTHING;
INSERT INTO comentario VALUES(2147483647, 26, 'Comentário teste na sala com capacidade 999', '2022-06-16') ON CONFLICT DO NOTHING;

--testa consistência em casos de atualização de chaves estrangeiras

UPDATE unidadeensino
SET id_unidade = 10
WHERE id_unidade = 9;

SELECT * FROM saladeestudos WHERE pertence = 10; --salas 25 e 26
SELECT * FROM usuario WHERE estuda_em = 10; --usuário teste (NUSP MAX_INT)

UPDATE saladeestudos
SET id_sala = 27
WHERE id_sala = 25;

SELECT * FROM comentario WHERE sala_comentario = 27; --comentário da sala teste pra 99 pessoas

UPDATE usuario
SET nusp = 1
WHERE nusp = 0;

SELECT * FROM comentario WHERE autor_comentario = 1; --comentários teste (sala 99 pessoas e sala real)

--testa consistência em caso de deleção de dados do BD

DELETE FROM usuario WHERE nusp = 1;
SELECT * FROM comentario WHERE autor_comentario = 1; --vazio

DELETE FROM saladeestudos WHERE id_sala = 26;
SELECT * FROM comentario WHERE autor_comentario = 2147483647; --retorna apenas o comentário teste numa sala real

DELETE FROM unidadeensino WHERE id_unidade = 10;
SELECT * FROM usuario WHERE estuda_em = 10; --vazio
SELECT * FROM saladeestudos WHERE pertence = 10; --vazio
SELECT * FROM comentario WHERE sala_comentario = 20; --não retorna o comentário teste, apenas os comentários de verdade