CREATE (user:User {nusp:11225698, nome: "José Cardoso Neto"});
CREATE (user:User {nusp:89754613, nome: "Julia dos Santos Pereira"});
CREATE (user:User {nusp:78124549, nome: "Marcos Barbosa Oliveira"});
CREATE (user:User {nusp:12161816, nome: "Maria Silva de Sá"});
CREATE (user:User {nusp:23456789, nome: "Luan da Conceição Silva"});
CREATE (user:User {nusp:785461, nome: "Matheus Souza"});
CREATE (user:User {nusp:12341516, nome: "Pamella Castro Correia"});
CREATE (user:User {nusp:19756484, nome: "Marta Ribeiro Rocha"});
CREATE (user:User {nusp:11256973, nome: "Lucas Souza Teixeira"});
CREATE (user:User {nusp:13125467, nome: "Miguel Ferreira de Castro"});
CREATE (user:User {nusp:12486789, nome: "Vitor Serafim Morais"});
CREATE (user:User {nusp:13469284, nome: "Juventino Magalhães"});
CREATE (user:User {nusp:16327498, nome: "Mariana Serra Azevedo"});
CREATE (user:User {nusp:8754216, nome: "Luana Guimarães Souza"});
CREATE (user:User {nusp:7524315, nome: "Isabela Fontes Silva"});

// Cria as Relações de Amizade.
MATCH (user1), (user2)
WHERE user1.nusp = 11225698 AND user2.nusp = 89754613
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-03-14"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 78124549 AND user2.nusp = 12161816
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-03-14"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 23456789 AND user2.nusp = 785461
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-03-14"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 12341516 AND user2.nusp = 19756484
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-03-14"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 11256973 AND user2.nusp = 13125467
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-03-16"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 12486789 AND user2.nusp = 13469284
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-03-14"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 16327498 AND user2.nusp = 8754216
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-03-17"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 11225698 AND user2.nusp = 7524315
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-04-23"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 78124549 AND user2.nusp = 7524315
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-04-25"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 23456789 AND user2.nusp = 7524315
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-04-24"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 12341516 AND user2.nusp = 7524315
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-04-22"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 11256973 AND user2.nusp = 7524315
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-04-24"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 12486789 AND user2.nusp = 7524315
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-04-23"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 16327498 AND user2.nusp = 7524315
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-03-24"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 11225698 AND user2.nusp = 12161816
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-03-14"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 23456789 AND user2.nusp = 19756484
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-03-14"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 11256973 AND user2.nusp = 13469284
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-03-14"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 11225698 AND user2.nusp = 16327498
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-03-14"), status:"aceita"}]->(user2);

MATCH (user1), (user2)
WHERE user1.nusp = 23456789 AND user2.nusp = 8754216
CREATE (user1)-[:Amizade {dataConfirmacao: date("2022-03-14"), status:"aceita"}]->(user2);


CREATE (forum:Forum {oferecimento:"EAE0106", visibilidade:1});
CREATE (forum:Forum {oferecimento:"MAC0439", visibilidade:1});
CREATE (forum:Forum {oferecimento:"MAC0439", visibilidade:0});
CREATE (forum:Forum {oferecimento:"AUH0236", visibilidade:0});
CREATE (forum:Forum {oferecimento:"BMB0260", visibilidade:1});
CREATE (forum:Forum {oferecimento:"MAC0425", visibilidade:1});

//Cria os tópicos
CREATE (topico:Topico {titulo:"Dúvidas Gerais EAE0106", tipo:"oferecimento", visibilidade:"publico"});
CREATE (topico:Topico {titulo:"Dúvidas Gerais MAC0439", tipo:"oferecimento", visibilidade:"publico"});
CREATE (topico:Topico {titulo:"Dúvidas Gerais AUH236", tipo:"oferecimento", visibilidade:"publico"});
CREATE (topico:Topico {titulo:"Fórum de Dúvidas de BMB0260", tipo:"oferecimento", visibilidade:"publico"});

CREATE (topico:Topico {titulo:"Dúvidas do Conteúdo EAE0106", tipo:"conteudo", visibilidade:"publico"});
CREATE (topico:Topico {titulo:"Dúvidas da matéria MAC0439", tipo:"conteudo", visibilidade:"publico"});
CREATE (topico:Topico {titulo:"Dúvidas Gerais AUH236", tipo:"oferecimento", visibilidade:"publico"});
CREATE (topico:Topico {titulo:"Fórum de Dúvidas de BMB0260", tipo:"oferecimento", visibilidade:"publico"});

// Relaciona os tópicos com os fóruns (PERTENCE)
MATCH (topico), (forum)
WHERE topico.titulo = "Dúvidas Gerais EAE0106" AND forum.oferecimento = "EAE0106"
CREATE (topico)-[:Pertence]->(forum);

MATCH (topico), (forum)
WHERE topico.titulo = "Dúvidas Gerais MAC0439" AND forum.oferecimento = "MAC0439" AND forum.visibilidade = 0
CREATE (topico)-[:Pertence]->(forum);

MATCH (topico), (forum)
WHERE topico.titulo = "Dúvidas Gerais AUH0236" AND forum.oferecimento = "AUH236"
CREATE (topico)-[:Pertence]->(forum);

MATCH (topico), (forum)
WHERE topico.titulo = "Fórum de Dúvidas de BMB0260" AND forum.oferecimento = "BMB0260"
CREATE (topico)-[:Pertence]->(forum);

MATCH (topico), (forum)
WHERE topico.titulo = "Dúvidas do Conteúdo EAE0106" AND forum.oferecimento = "EAE0106"
CREATE (topico)-[:Pertence]->(forum);

MATCH (topico), (forum)
WHERE topico.titulo = "Dúvidas da matéria MAC0439" AND forum.oferecimento = "MAC0439" AND forum.visibilidade = 1
CREATE (topico)-[:Pertence]->(forum);

MATCH (topico), (forum)
WHERE topico.titulo = "Dúvidas Gerais AUH0236" AND forum.oferecimento = "AUH0236"
CREATE (topico)-[:Pertence]->(forum);

MATCH (topico), (forum)
WHERE topico.titulo = "Fórum de Dúvidas de BMB0260" AND forum.oferecimento = "BMB0260"
CREATE (topico)-[:Pertence]->(forum);



// Cria os Fóruns PM entre usuários
CREATE (topico:Topico {titulo:"PM:11225698/89754613 ", tipo:"PM", usuario1:11225698, usuario2:89754613});
CREATE (topico:Topico {titulo:"PM:78124549/12161816 ", tipo:"PM", usuario1:78124549, usuario2:12161816});
CREATE (topico:Topico {titulo:"PM:23456789/785461 ", tipo:"PM", usuario1:23456789, usuario2:785461});
CREATE (topico:Topico {titulo:"PM:12341516/19756484 ", tipo:"PM", usuario1:12341516, usuario2:19756484});
CREATE (topico:Topico {titulo:"PM:11256973/13125467 ", tipo:"PM", usuario1:11256973, usuario2:13125467});
CREATE (topico:Topico {titulo:"PM:12486789/13469284 ", tipo:"PM", usuario1:12486789, usuario2:13469284});
CREATE (topico:Topico {titulo:"PM:16327498/8754216 ", tipo:"PM", usuario1:16327498, usuario2:8754216});

CREATE (topico:Topico {titulo:"PM:11225698/7524315 ", tipo:"PM", usuario1:11225698, usuario2:7524315});
CREATE (topico:Topico {titulo:"PM:78124549/7524315 ", tipo:"PM", usuario1:78124549, usuario2:7524315});
CREATE (topico:Topico {titulo:"PM:23456789/7524315 ", tipo:"PM", usuario1:23456789, usuario2:7524315});
CREATE (topico:Topico {titulo:"PM:12341516/7524315 ", tipo:"PM", usuario1:12341516, usuario2:7524315});
CREATE (topico:Topico {titulo:"PM:11256973/7524315 ", tipo:"PM", usuario1:11256973, usuario2:7524315});
CREATE (topico:Topico {titulo:"PM:12486789/7524315 ", tipo:"PM", usuario1:12486789, usuario2:7524315});
CREATE (topico:Topico {titulo:"PM:16327498/7524315 ", tipo:"PM", usuario1:16327498, usuario2:7524315});

CREATE (topico:Topico {titulo:"PM:11225698/12161816 ", tipo:"PM", usuario1:11225698, usuario2:12161816});
CREATE (topico:Topico {titulo:"PM:23456789/19756484 ", tipo:"PM", usuario1:23456789, usuario2:19756484});
CREATE (topico:Topico {titulo:"PM:11256973/13469284 ", tipo:"PM", usuario1:11256973, usuario2:13469284});
CREATE (topico:Topico {titulo:"PM:11225698/16327498 ", tipo:"PM", usuario1:11225698, usuario2:16327498});
CREATE (topico:Topico {titulo:"PM:23456789/8754216 ", tipo:"PM", usuario1:23456789, usuario2:8754216});
CREATE (topico:Topico {titulo:"PM:11256973/13469284 ", tipo:"PM", usuario1:11256973, usuario2:13469284});

//Cria os monitores e professores
CREATE (monitor:Monitor {email: "heitorab@usp.br", nome: "Heitor Augusto Barbosa"});
CREATE (monitor:Monitor {email: "arthursc@usp.br", nome: "Arthur Souza Campos"});
CREATE (monitor:Monitor {email: "angelicamaria_22@usp.br", nome: "Angelica Maria de Albuquerque"});
CREATE (monitor:Monitor {email: "anaborges-d@usp.br", nome: "Ana Borges Dias"});
CREATE (monitor:Monitor {email: "gabriel_ferro@usp.br", nome: "Gabriel Duarte Ferro"});
CREATE (monitor:Monitor {email: "luisa_gl12@usp.br", nome: "Luísa Gomes Lima"});
CREATE (monitor:Monitor {email: "fmm@usp.br", nome: "Felipe Monteiro Martins"});
CREATE (monitor:Monitor {email: "bruna-pm15@usp.br", nome: "Bruna Pereira Moura"});

CREATE (professor :Professor{email: "jorgesa@usp.br", nome: "Jorge Santos Alves"});
CREATE (professor :Professor{email: "cashn@usp.br", nome: "Camila Albuquerque Schneider"});
CREATE (professor :Professor{email: "fcs@usp.br", nome: "Flávio Soares Correia da Silva"});
CREATE (professor :Professor{email: "claudiambi@usp.br", nome: "Claudia Moreira Bianchi"});
CREATE (professor :Professor{email: "carlosfm@usp.br", nome: "Carlos Ferreira Moraes"});
CREATE (professor :Professor{email: "crisoh@usp.br", nome: "Cristina Oliveira Hoffmann"});
CREATE (professor :Professor{email: "alfps@usp.br", nome: "Alfredo Pereira de Souza"});
CREATE (professor :Professor{email: "joanaros@usp.br", nome: "Joana Rossi"});

// Cria as avaliações de monitores pelos usuários.
MATCH (user), (monitor)
WHERE user.nusp = 11225698 AND monitor.email = "heitorab@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:3}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 11225698 AND monitor.email = "arthursc@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:10}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 11225698 AND monitor.email = "angelicamaria_22@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:9}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 11225698 AND monitor.email = "anaborges-d@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:6}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 11225698 AND monitor.email = "gabriel_ferro@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:8}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 78124549 AND monitor.email = "heitorab@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:3}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 78124549 AND monitor.email = "arthursc@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:9}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 89754613 AND monitor.email = "gabriel_ferro@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:7}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 89754613 AND monitor.email = "luisa_gl12@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:7}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 89754613 AND monitor.email = "fmm@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:6}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 89754613 AND monitor.email = "bruna-pm15@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:5}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 23456789 AND monitor.email = "anaborges-d@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:5}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 23456789 AND monitor.email = "gabriel_ferro@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:7}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 785461 AND monitor.email = "heitorab@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:4}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 785461 AND monitor.email = "arthursc@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:9}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 12341516 AND monitor.email = "gabriel_ferro@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:8}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 12341516 AND monitor.email = "luisa_gl12@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:8}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 19756484 AND monitor.email = "fmm@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:4}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 19756484 AND monitor.email = "bruna-pm15@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:3}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 7524315 AND monitor.email = "heitorab@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:4}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 7524315 AND monitor.email = "arthursc@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:8}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 12161816 AND monitor.email = "heitorab@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:5}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 12161816 AND monitor.email = "arthursc@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:7}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 8754216 AND monitor.email = "angelicamaria_22@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:10}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 16327498 AND monitor.email = "anaborges-d@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:6}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 13469284 AND monitor.email = "gabriel_ferro@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:7}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 12486789 AND monitor.email = "heitorab@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:6}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 12486789 AND monitor.email = "arthursc@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:8}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 12486789 AND monitor.email = "gabriel_ferro@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:7}]->(monitor);


MATCH (user), (monitor)
WHERE user.nusp = 13125467 AND monitor.email = "luisa_gl12@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:6}]->(monitor);


MATCH (user), (monitor)
WHERE user.nusp = 11256973 AND monitor.email = "fmm@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:8}]->(monitor);

MATCH (user), (monitor)
WHERE user.nusp = 11256973 AND monitor.email = "bruna-pm15@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:8}]->(monitor);

//Cria as relações avalia professores

MATCH (user), (professor)
WHERE user.nusp = 11225698 AND professor.email = "jorgesa@usp.br"
CREATE (user)-[:Avalia {data: date("2022-04-17"), nota:7}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 11225698 AND professor.email = "cashn@usp.br"
CREATE (user)-[:Avalia {data: date("2022-05-05"), nota:9}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 11225698 AND professor.email = "fcs@usp.br"
CREATE (user)-[:Avalia {data: date("2022-05-24"), nota:7}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 11225698 AND professor.email = "claudiambi@usp.br"
CREATE (user)-[:Avalia {data: date("2022-05-16"), nota:7}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 11225698 AND professor.email = "carlosfm@usp.br"
CREATE (user)-[:Avalia {data: date("2022-06-11"), nota:8}]->(professor);


MATCH (user), (professor)
WHERE user.nusp = 78124549 AND professor.email = "jorgesa@usp.br"
CREATE (user)-[:Avalia {data: date("2022-05-14"), nota:5}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 78124549 AND professor.email = "cashn@usp.br"
CREATE (user)-[:Avalia {data: date("2022-05-14"), nota:9}]->(professor);


MATCH (user), (professor)
WHERE user.nusp = 89754613 AND professor.email = "carlosfm@usp.br"
CREATE (user)-[:Avalia {data: date("2022-05-04"), nota:8}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 89754613 AND professor.email = "crisoh@usp.br"
CREATE (user)-[:Avalia {data: date("2022-05-04"), nota:8}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 89754613 AND professor.email = "alfps@usp.br"
CREATE (user)-[:Avalia {data: date("2022-05-13"), nota:7}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 89754613 AND professor.email = "joanaros@usp.br"
CREATE (user)-[:Avalia {data: date("2022-05-21"), nota:7}]->(professor);


MATCH (user), (professor)
WHERE user.nusp = 23456789 AND professor.email = "claudiambi@usp.br"
CREATE (user)-[:Avalia {data: date("2022-06-14"), nota:9}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 23456789 AND professor.email = "carlosfm@usp.br"
CREATE (user)-[:Avalia {data: date("2022-05-26"), nota:9}]->(professor);


MATCH (user), (professor)
WHERE user.nusp = 785461 AND professor.email = "jorgesa@usp.br"
CREATE (user)-[:Avalia {data: date("2022-04-14"), nota:6}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 785461 AND professor.email = "cashn@usp.br"
CREATE (user)-[:Avalia {data: date("2022-05-24"), nota:10}]->(professor);


MATCH (user), (professor)
WHERE user.nusp = 12341516 AND professor.email = "carlosfm@usp.br"
CREATE (user)-[:Avalia {data: date("2022-04-24"), nota:5}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 12341516 AND professor.email = "crisoh@usp.br"
CREATE (user)-[:Avalia {data: date("2022-05-22"), nota:8}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 19756484 AND professor.email = "alfps@usp.br"
CREATE (user)-[:Avalia {data: date("2022-04-25"), nota:6}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 19756484 AND professor.email = "joanaros@usp.br"
CREATE (user)-[:Avalia {data: date("2021-11-13"), nota:3}]->(professor);


MATCH (user), (professor)
WHERE user.nusp = 7524315 AND professor.email = "jorgesa@usp.br"
CREATE (user)-[:Avalia {data: date("2021-07-14"), nota:6}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 7524315 AND professor.email = "cashn@usp.br"
CREATE (user)-[:Avalia {data: date("2021-04-21"), nota:7}]->(professor);


MATCH (user), (professor)
WHERE user.nusp = 12161816 AND professor.email = "jorgesa@usp.br"
CREATE (user)-[:Avalia {data: date("2021-08-21"), nota:5}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 12161816 AND professor.email = "cashn@usp.br"
CREATE (user)-[:Avalia {data: date("2020-06-16"), nota:2}]->(professor);


MATCH (user), (professor)
WHERE user.nusp = 8754216 AND professor.email = "fcs@usp.br"
CREATE (user)-[:Avalia {data: date("2021-04-27"), nota:6}]->(professor);


MATCH (user), (professor)
WHERE user.nusp = 16327498 AND professor.email = "claudiambi@usp.br"
CREATE (user)-[:Avalia {data: date("2021-04-12"), nota:5}]->(professor);


MATCH (user), (professor)
WHERE user.nusp = 13469284 AND professor.email = "carlosfm@usp.br"
CREATE (user)-[:Avalia {data: date("2020-11-14"), nota:6}]->(professor);


MATCH (user), (professor)
WHERE user.nusp = 12486789 AND professor.email = "jorgesa@usp.br"
CREATE (user)-[:Avalia {data: date("2021-05-14"), nota:6}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 12486789 AND professor.email = "cashn@usp.br"
CREATE (user)-[:Avalia {data: date("2021-06-14"), nota:8}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 12486789 AND professor.email = "carlosfm@usp.br"
CREATE (user)-[:Avalia {data: date("2021-06-24"), nota:7}]->(professor);


MATCH (user), (professor)
WHERE user.nusp = 13125467 AND professor.email = "crisoh@usp.br"
CREATE (user)-[:Avalia {data: date("2021-11-14"), nota:7}]->(professor);


MATCH (user), (professor)
WHERE user.nusp = 11256973 AND professor.email = "alfps@usp.br"
CREATE (user)-[:Avalia {data: date("2021-07-14"), nota:5}]->(professor);

MATCH (user), (professor)
WHERE user.nusp = 11256973 AND professor.email = "joanaros@usp.br"
CREATE (user)-[:Avalia {data: date("2022-03-14"), nota:8}]->(professor);


