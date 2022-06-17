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


CREATE (grupo :GrupoExtensao{nome: "Hardware Livre", descricao: "<t>O grupo</t><p>Visando promover estudos ligados à área de Hardware Livre, foi criado um grupo no CCSL do IME-USP para práticas com (inicialmente) o Arduino. O nosso objetivo, no entanto, é, além de inicialmente dominar a tecnologia envolvida com este tipo de dispositivo, conduzir pesquisas originais com Hardware Livre em geral. As aplicações em pesquisa são exploradas por alunos de graduação, mestrado e doutorado. Nosso intuito é aumentar o leque de aplicações do Hardware aberto em pesquisa envolvendo diversas áreas da ciência. Já realizamos projetos relacionados com as áreas de Ciência da Computação, Engenharia da Computação, Arquitetura, Artes Plásticas, Biologia, Bioquímica, Computação Musical, Farmácia, Física, Música e outras áreas. Estamos abertos para novos projetos e parcerias.",cor:"FFF"});
CREATE (grupo :GrupoExtensao{nome: "Software Livre", descricao: "Nosso objetivo é contribuir com a comunidade SL e aprimorar nossos conhecimentos",cor:"0FF"});

MATCH (user), (grupo)
WHERE user.nusp = 11256973 AND grupo.nome = "Hardware Livre"
CREATE (user)-[:Membro {papel:"tesoureiro", permissoes: "011", dataInicio: date("2022-04-14")}]->(grupo);

MATCH (user), (grupo)
WHERE user.nusp = 78124549 AND grupo.nome = "Hardware Livre"
CREATE (user)-[:Membro {papel:"presidente", permissoes: "111", dataInicio: date("2022-04-14")}]->(grupo);

MATCH (user), (grupo)
WHERE user.nusp = 13469284 AND grupo.nome = "Hardware Livre"
CREATE (user)-[:Membro {permissoes: "011", dataInicio: date("2022-04-14")}]->(grupo);

MATCH (user), (grupo)
WHERE user.nusp = 16327498 AND grupo.nome = "Software Livre"
CREATE (user)-[:Membro {papel:"tesoureiro", permissoes: "000", dataInicio: date("2022-04-14")}]->(grupo);

MATCH (user), (grupo)
WHERE user.nusp = 19756484 AND grupo.nome = "Software Livre"
CREATE (user)-[:Membro {papel:"presidente", permissoes: "111", dataInicio: date("2022-04-14")}]->(grupo);

MATCH (user), (grupo)
WHERE user.nusp = 11256973 AND grupo.nome = "Software Livre"
CREATE (user)-[:Membro {permissoes: "000", dataInicio: date("2022-04-14")}]->(grupo);

CREATE (tag:Tag {nome:"Inteligência Artificial"});
CREATE (tag:Tag {nome:"Machine Learning"});

CREATE (tag:Tag {nome:"Estatística"});

CREATE (tag:Tag {nome:"Micro Economia"});
CREATE (tag:Tag {nome:"Macro Economia"});

CREATE (tag:Tag {nome:"Aminoácidos"});
CREATE (tag:Tag {nome:"Tardigrados"});
CREATE (tag:Tag {nome:"Genética"});

CREATE (tag:Tag {nome:"Banco de Dados"});
CREATE (tag:Tag {nome:"Neo4J"});
CREATE (tag:Tag {nome:"SQL"});
CREATE (tag:Tag {nome:"NoSQL"});

CREATE (tag:Tag {nome:"Zonas de Urbanização"});
CREATE (tag:Tag {nome:"Planejamento Urbano"});
CREATE (tag:Tag {nome:"Brasília"});

CREATE (tag:Tag {nome:"Ciências da Computação"});

CREATE (tag:Tag {nome:"Código Livre"});
CREATE (tag:Tag {nome:"Código Aberto"});

CREATE (tag:Tag {nome:"Arduíno"});
CREATE (tag:Tag {nome:"Eletrônica"});

//cria as classificações
MATCH (tag), (forum)
WHERE tag.nome = "Inteligência Artificial" AND forum.oferecimento = "MAC0439" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-03-15")}]->(forum);

MATCH (tag), (forum)
WHERE tag.nome = "Machine Learning" AND forum.oferecimento = "MAC0439" 
CREATE (tag)-[:Classifica {usuario:23456789, data:date("2022-05-22")}]->(forum);

MATCH (tag), (forum)
WHERE tag.nome = "Estatística" AND forum.oferecimento = "EAE0106" 
CREATE (tag)-[:Classifica {usuario:785461, data:date("2022-06-25")}]->(forum);

MATCH (tag), (forum)
WHERE tag.nome = "Micro Economia" AND forum.oferecimento = "EAE0106" 
CREATE (tag)-[:Classifica {usuario:19756484, data:date("2022-04-07")}]->(forum);

MATCH (tag), (forum)
WHERE tag.nome = "Macro Economia" AND forum.oferecimento = "EAE0106" 
CREATE (tag)-[:Classifica {usuario:11256973, data:date("2022-04-04")}]->(forum);

MATCH (tag), (forum)
WHERE tag.nome = "Aminoácidos" AND forum.oferecimento = "BMB0260" 
CREATE (tag)-[:Classifica {usuario:78124549, data:date("2022-05-08")}]->(forum);

MATCH (tag), (forum)
WHERE tag.nome = "Tardigrados" AND forum.oferecimento = "BMB0260" 
CREATE (tag)-[:Classifica {usuario:89754613, data:date("2022-02-17")}]->(forum);

MATCH (tag), (forum)
WHERE tag.nome = "Genética" AND forum.oferecimento = "BMB0260" 
CREATE (tag)-[:Classifica {usuario:23456789, data:date("2022-03-07")}]->(forum);

MATCH (tag), (forum)
WHERE tag.nome = "Banco de Dados" AND forum.oferecimento = "MAC0439" 
CREATE (tag)-[:Classifica {usuario:12486789, data:date("2022-05-23")}]->(forum);

MATCH (tag), (forum)
WHERE tag.nome = "Neo4J" AND forum.oferecimento = "MAC0439" 
CREATE (tag)-[:Classifica {usuario:11256973, data:date("2022-05-12")}]->(forum);

MATCH (tag), (forum)
WHERE tag.nome = "SQL" AND forum.oferecimento = "MAC0439" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-04-13")}]->(forum);

MATCH (tag), (forum)
WHERE tag.nome = "NoSQL" AND forum.oferecimento = "MAC0439" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-05-14")}]->(forum);

MATCH (tag), (forum)
WHERE tag.nome = "Ciências da Computação" AND forum.oferecimento = "MAC0439" 
CREATE (tag)-[:Classifica {usuario:12161816, data:date("2022-05-18")}]->(forum);

MATCH (tag), (forum)
WHERE tag.nome = "Zonas de Urbanização" AND forum.oferecimento = "AUH0236" 
CREATE (tag)-[:Classifica {usuario:78124549, data:date("2022-04-29")}]->(forum);

MATCH (tag), (forum)
WHERE tag.nome = "Planejamento Urbano" AND forum.oferecimento = "AUH0236" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-05-29")}]->(forum);

MATCH (tag), (forum)
WHERE tag.nome = "Brasília" AND forum.oferecimento = "AUH0236" 
CREATE (tag)-[:Classifica {usuario:11225698, data:date("2022-04-30")}]->(forum);


MATCH (tag), (topico)
WHERE tag.nome = "Inteligência Artificial" AND topico.titulo = "Dúvidas Gerais MAC0439" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-03-15")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "Machine Learning" AND topico.titulo = "Dúvidas Gerais MAC0439" 
CREATE (tag)-[:Classifica {usuario:23456789, data:date("2022-05-22")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "Estatística" AND topico.titulo = "Dúvidas Gerais EAE0106" 
CREATE (tag)-[:Classifica {usuario:785461, data:date("2022-06-25")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "Micro Economia" AND topico.titulo = "Dúvidas Gerais EAE0106" 
CREATE (tag)-[:Classifica {usuario:19756484, data:date("2022-04-07")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "Macro Economia" AND topico.titulo = "Dúvidas Gerais EAE0106" 
CREATE (tag)-[:Classifica {usuario:11256973, data:date("2022-04-04")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "Aminoácidos" AND topico.titulo = "Fórum de Dúvidas de BMB0260" 
CREATE (tag)-[:Classifica {usuario:78124549, data:date("2022-05-08")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "Tardigrados" AND topico.titulo = "Fórum de Dúvidas de BMB0260" 
CREATE (tag)-[:Classifica {usuario:89754613, data:date("2022-02-17")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "Genética" AND topico.titulo = "Fórum de Dúvidas de BMB0260" 
CREATE (tag)-[:Classifica {usuario:23456789, data:date("2022-03-07")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "Banco de Dados" AND topico.titulo = "Dúvidas gerais MAC0439" 
CREATE (tag)-[:Classifica {usuario:12486789, data:date("2022-05-23")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "Banco de Dados" AND topico.titulo = "Dúvidas da matéria MAC0439" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-04-12")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "Neo4J" AND topico.titulo = "Dúvidas da matéria MAC0439" 
CREATE (tag)-[:Classifica {usuario:11256973, data:date("2022-05-12")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "SQL" AND topico.titulo = "Dúvidas da matéria MAC0439" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-04-13")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "NoSQL" AND topico.titulo = "Dúvidas da matéria MAC0439" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-05-14")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "Ciências da Computação" AND topico.titulo = "Dúvidas Gerais MAC0439" 
CREATE (tag)-[:Classifica {usuario:12161816, data:date("2022-05-18")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "Ciências da Computação" AND topico.titulo = "Dúvidas da matéria MAC0439" 
CREATE (tag)-[:Classifica {usuario:12161816, data:date("2022-06-26")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "Zonas de Urbanização" AND topico.titulo = "Dúvidas Gerais AUH0236" 
CREATE (tag)-[:Classifica {usuario:78124549, data:date("2022-04-29")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "Planejamento Urbano" AND topico.titulo = "Dúvidas Gerais AUH0236" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-05-29")}]->(topico);

MATCH (tag), (topico)
WHERE tag.nome = "Brasília" AND topico.titulo = "Dúvidas Gerais AUH0236" 
CREATE (tag)-[:Classifica {usuario:11225698, data:date("2022-04-30")}]->(topico);

MATCH (tag), (grupo)
WHERE tag.nome = "Ciências da Computação" AND grupo.nome = "Hardware Livre"
CREATE (tag)-[:Classifica {usuario:12161816, data:date("2022-03-10")}]->(grupo);

MATCH (tag), (grupo)
WHERE tag.nome = "Código Aberto" AND grupo.nome = "Hardware Livre"
CREATE (tag)-[:Classifica {usuario:12486789, data:date("2022-05-11")}]->(grupo);

MATCH (tag), (grupo)
WHERE tag.nome = "Código Livre" AND grupo.nome = "Hardware Livre"
CREATE (tag)-[:Classifica {usuario:11225698, data:date("2022-04-03")}]->(grupo);

MATCH (tag), (grupo)
WHERE tag.nome = "Eletrônica" AND grupo.nome = "Hardware Livre"
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-06-08")}]->(grupo);

MATCH (tag), (grupo)
WHERE tag.nome = "Arduíno" AND grupo.nome = "Hardware Livre"
CREATE (tag)-[:Classifica {usuario:16327498, data:date("2022-04-08")}]->(grupo);

MATCH (tag), (grupo)
WHERE tag.nome = "Ciências da Computação" AND grupo.nome = "Software Livre"
CREATE (tag)-[:Classifica {usuario:12161816, data:date("2022-04-09")}]->(grupo);

MATCH (tag), (grupo)
WHERE tag.nome = "Código Aberto" AND grupo.nome = "Software Livre"
CREATE (tag)-[:Classifica {usuario:8754216, data:date("2022-03-05")}]->(grupo);

MATCH (tag), (grupo)
WHERE tag.nome = "Código Livre" AND grupo.nome = "Software Livre"
CREATE (tag)-[:Classifica {usuario:12341516, data:date("2022-03-12")}]->(grupo);
