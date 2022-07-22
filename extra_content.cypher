// MAC0439 Conteúdo Topic5
CREATE (mens:Mensagem {mId:"Mens32", texto:"Olá, alguém sabe fazer agregações em Cypher?", datahora:"2022-06-03T10:12:32.122+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens32" AND user.nusp = 13125467
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens32" AND topico.idTopico = "Topic5"
CREATE (mens)-[:Compoe {}]->(topico);

// MAC0439 Conteúdo Topic5
CREATE (mens:Mensagem {mId:"Mens33", texto:"Vc tem que colocar WITH AS e usar as funções de agregação. Ex.: MATCH (foo) WITH avg(foo.n) as bar RETURN bar", datahora:"2022-06-03T10:12:32.122+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens33" AND user.nusp = 11256973
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens33" AND topico.idTopico = "Topic5"
CREATE (mens)-[:Compoe {}]->(topico);
