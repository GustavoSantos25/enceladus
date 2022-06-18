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
CREATE (topico:Topico {idTopico:"Topic0", titulo:"Dúvidas Gerais EAE0106", tipo:"oferecimento", visibilidade:"publico"});
CREATE (topico:Topico {idTopico:"Topic1", titulo:"Dúvidas Gerais MAC0439", tipo:"oferecimento", visibilidade:"publico"});
CREATE (topico:Topico {idTopico:"Topic2", titulo:"Dúvidas Gerais AUH236", tipo:"oferecimento", visibilidade:"publico"});
CREATE (topico:Topico {idTopico:"Topic3", titulo:"Fórum de Dúvidas de BMB0260", tipo:"oferecimento", visibilidade:"publico"});

CREATE (topico:Topico {idTopico:"Topic4", titulo:"Dúvidas do Conteúdo EAE0106", tipo:"conteudo", visibilidade:"publico"});
CREATE (topico:Topico {idTopico:"Topic5", titulo:"Dúvidas da matéria MAC0439", tipo:"conteudo", visibilidade:"publico"});
CREATE (topico:Topico {idTopico:"Topic6", titulo:"Dúvidas Gerais AUH236", tipo:"oferecimento", visibilidade:"publico"});
CREATE (topico:Topico {idTopico:"Topic7", titulo:"Fórum de Dúvidas de BMB0260", tipo:"oferecimento", visibilidade:"publico"});

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
CREATE (topico:Topico {idTopico:"Topic8", titulo:"PM:11225698/89754613 ", tipo:"PM", usuario1:11225698, usuario2:89754613});
CREATE (topico:Topico {idTopico:"Topic9", titulo:"PM:78124549/12161816 ", tipo:"PM", usuario1:78124549, usuario2:12161816});
CREATE (topico:Topico {idTopico:"Topic10", titulo:"PM:23456789/785461 ", tipo:"PM", usuario1:23456789, usuario2:785461});
CREATE (topico:Topico {idTopico:"Topic11", titulo:"PM:12341516/19756484 ", tipo:"PM", usuario1:12341516, usuario2:19756484});
CREATE (topico:Topico {idTopico:"Topic12", titulo:"PM:11256973/13125467 ", tipo:"PM", usuario1:11256973, usuario2:13125467});
CREATE (topico:Topico {idTopico:"Topic13", titulo:"PM:12486789/13469284 ", tipo:"PM", usuario1:12486789, usuario2:13469284});
CREATE (topico:Topico {idTopico:"Topic14", titulo:"PM:16327498/8754216 ", tipo:"PM", usuario1:16327498, usuario2:8754216});

CREATE (topico:Topico {idTopico:"Topic15", titulo:"PM:11225698/7524315 ", tipo:"PM", usuario1:11225698, usuario2:7524315});
CREATE (topico:Topico {idTopico:"Topic16", titulo:"PM:78124549/7524315 ", tipo:"PM", usuario1:78124549, usuario2:7524315});
CREATE (topico:Topico {idTopico:"Topic17", titulo:"PM:23456789/7524315 ", tipo:"PM", usuario1:23456789, usuario2:7524315});
CREATE (topico:Topico {idTopico:"Topic18", titulo:"PM:12341516/7524315 ", tipo:"PM", usuario1:12341516, usuario2:7524315});
CREATE (topico:Topico {idTopico:"Topic19", titulo:"PM:11256973/7524315 ", tipo:"PM", usuario1:11256973, usuario2:7524315});
CREATE (topico:Topico {idTopico:"Topic20", titulo:"PM:12486789/7524315 ", tipo:"PM", usuario1:12486789, usuario2:7524315});
CREATE (topico:Topico {idTopico:"Topic21", titulo:"PM:16327498/7524315 ", tipo:"PM", usuario1:16327498, usuario2:7524315});

CREATE (topico:Topico {idTopico:"Topic22", titulo:"PM:11225698/12161816 ", tipo:"PM", usuario1:11225698, usuario2:12161816});
CREATE (topico:Topico {idTopico:"Topic23", titulo:"PM:23456789/19756484 ", tipo:"PM", usuario1:23456789, usuario2:19756484});
CREATE (topico:Topico {idTopico:"Topic24", titulo:"PM:11256973/13469284 ", tipo:"PM", usuario1:11256973, usuario2:13469284});
CREATE (topico:Topico {idTopico:"Topic25", titulo:"PM:11225698/16327498 ", tipo:"PM", usuario1:11225698, usuario2:16327498});
CREATE (topico:Topico {idTopico:"Topic26", titulo:"PM:23456789/8754216 ", tipo:"PM", usuario1:23456789, usuario2:8754216});
CREATE (topico:Topico {idTopico:"Topic27", titulo:"PM:11256973/13469284 ", tipo:"PM", usuario1:11256973, usuario2:13469284});

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


//PM 1
CREATE (mens:Mensagem {mId:"Mens1", texto:"E aí,blz?", datahora:"2022-06-02T10:11:32.122+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens1" AND user.nusp = 11225698
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens1" AND topico.idTopico = "Topic8"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens2", texto:"Tranquilo, e aí?", datahora:"2022-06-02T10:11:34.132+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens2" AND user.nusp = 89754613
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens2" AND topico.idTopico = "Topic8"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens3", texto:"Tudo bem também. Já fez a lista de MAC0425?", datahora:"2022-06-02T10:11:35.326+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens3" AND user.nusp = 11225698
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens3" AND topico.idTopico = "Topic8"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens4", texto:"Os dois primeiros.", datahora:"2022-06-02T10:11:36.678+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens4" AND user.nusp = 89754613
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens4" AND topico.idTopico = "Topic8"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens5", texto:"Como faz a dois?", datahora:"2022-06-02T10:11:54.456+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens5" AND user.nusp = 11225698
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens5" AND topico.idTopico = "Topic8"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens6", texto:"Vamos pro bandex que eu te explico. Física?", datahora:"2022-06-02T10:12:12.456+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens6" AND user.nusp = 89754613
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens6" AND topico.idTopico = "Topic8"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens7", texto:"Partiu!", datahora:"2022-06-02T10:12:21.456+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens6" AND user.nusp = 11225698
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens6" AND topico.idTopico = "Topic8"
CREATE (mens)-[:Compoe {}]->(topico);

//PM2
CREATE (mens:Mensagem {mId:"Mens8", texto:"Oi, tudo bom?", datahora:"2022-05-02T10:12:32.122+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens8" AND user.nusp = 78124549
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens8" AND topico.idTopico = "Topic9"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens9", texto:"Tudo e você?", datahora:"2022-06-02T10:12:34.132+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens9" AND user.nusp = 12161816
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens9" AND topico.idTopico = "Topic9"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens10", texto:"Quer estudar stat?", datahora:"2022-06-02T10:12:35.326+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens10" AND user.nusp = 78124549
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens10" AND topico.idTopico = "Topic9"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens11", texto:"Bora! aonde?", datahora:"2022-06-02T10:12:36.678+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens11" AND user.nusp = 12161816
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens11" AND topico.idTopico = "Topic9"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens12", texto:"Vamo no AI?", datahora:"2022-06-02T10:12:54.456+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens12" AND user.nusp = 78124549
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens12" AND topico.idTopico = "Topic9"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens13", texto:"Partiu!", datahora:"2022-06-02T10:12:21.456+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens13" AND user.nusp = 12161816
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens13" AND topico.idTopico = "Topic9"
CREATE (mens)-[:Compoe {}]->(topico);


//PM3
CREATE (mens:Mensagem {mId:"Mens14", texto:"Você vai na reunião sexta", datahora:"2022-06-03T10:12:32.122+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens14" AND user.nusp = 785461
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens14" AND topico.idTopico = "Topic10"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens15", texto:"Vou sim, e você?", datahora:"2022-06-04T10:12:34.132+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens15" AND user.nusp = 23456789
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens15" AND topico.idTopico = "Topic10"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens16", texto:"Essa semana acho que não. Você pega o casaco que eu esqueci?", datahora:"2022-06-04T10:12:35.326+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens16" AND user.nusp = 785461
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens16" AND topico.idTopico = "Topic10"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens17", texto:"Pego sim", datahora:"2022-06-04T10:12:36.678+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens17" AND user.nusp = 23456789
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens17" AND topico.idTopico = "Topic10"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens18", texto:"Valeu", datahora:"2022-06-04T10:12:54.456+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens18" AND user.nusp = 785461
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens18" AND topico.idTopico = "Topic10"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens19", texto:"Já consegui o casaco, precisa mais não. Vlw", datahora:"2022-06-06T10:12:21.456+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens19" AND user.nusp = 785461
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens19" AND topico.idTopico = "Topic10"
CREATE (mens)-[:Compoe {}]->(topico);

// PM4
CREATE (mens:Mensagem {mId:"Mens20", texto:"Olá", datahora:"2022-06-03T10:12:32.122+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens20" AND user.nusp = 19756484
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens20" AND topico.idTopico = "Topic11"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens21", texto:"E aí?", datahora:"2022-06-04T10:12:34.132+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens21" AND user.nusp = 12341516
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens21" AND topico.idTopico = "Topic11"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens22", texto:"Bom?", datahora:"2022-06-04T10:12:35.326+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens22" AND user.nusp = 19756484
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens22" AND topico.idTopico = "Topic11"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens23", texto:"Bom. E aí?", datahora:"2022-06-04T10:12:36.678+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens23" AND user.nusp = 12341516
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens23" AND topico.idTopico = "Topic11"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens24", texto:"Bom tbm", datahora:"2022-06-04T10:12:54.456+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens24" AND user.nusp = 19756484
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens24" AND topico.idTopico = "Topic11"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens25", texto:"Sucesso. Não esquece da entrega de LabBd :)", datahora:"2022-06-06T10:12:21.456+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens25" AND user.nusp = 12341516
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens25" AND topico.idTopico = "Topic11"
CREATE (mens)-[:Compoe {}]->(topico);

// PM5
CREATE (mens:Mensagem {mId:"Mens26", texto:"Olá", datahora:"2022-06-03T10:12:32.122+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens26" AND user.nusp = 13125467
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens26" AND topico.idTopico = "Topic12"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens27", texto:"E aí?", datahora:"2022-06-04T10:12:34.132+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens27" AND user.nusp = 11256973
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens27" AND topico.idTopico = "Topic12"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens28", texto:"Bom?", datahora:"2022-06-04T10:12:35.326+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens28" AND user.nusp = 13125467
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens28" AND topico.idTopico = "Topic12"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens29", texto:"Bom. E aí?", datahora:"2022-06-04T10:12:36.678+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens29" AND user.nusp = 11256973
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens29" AND topico.idTopico = "Topic12"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens30", texto:"Bom tbm", datahora:"2022-06-04T10:12:54.456+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens30" AND user.nusp = 13125467
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens30" AND topico.idTopico = "Topic12"
CREATE (mens)-[:Compoe {}]->(topico);

CREATE (mens:Mensagem {mId:"Mens31", texto:"Sucesso. Amanhã tem prova de stat. Não esquece da calculadora :)", datahora:"2022-06-06T10:12:21.456+0300"});
MATCH (mens), (user)
WHERE mens.mId = "Mens31" AND user.nusp = 11256973
CREATE (user)-[:Envio {}]->(mens);
MATCH (mens), (topico)
WHERE mens.mId = "Mens31" AND topico.idTopico = "Topic12"
CREATE (mens)-[:Compoe {}]->(topico);


CREATE (conteudo:Conteudo {contId:"T0"});
CREATE (conteudo:Conteudo {contId:"T1"});
CREATE (conteudo:Conteudo {contId:"T2"});
CREATE (conteudo:Conteudo {contId:"T3"});
CREATE (conteudo:Conteudo {contId:"T4"});
CREATE (conteudo:Conteudo {contId:"T5"});
CREATE (conteudo:Conteudo {contId:"T6"});
CREATE (conteudo:Conteudo {contId:"T7"});
CREATE (conteudo:Conteudo {contId:"T8"});
CREATE (conteudo:Conteudo {contId:"T9"});
CREATE (conteudo:Conteudo {contId:"T10"});
CREATE (conteudo:Conteudo {contId:"T11"});
CREATE (conteudo:Conteudo {contId:"T12"});
CREATE (conteudo:Conteudo {contId:"T13"});
CREATE (conteudo:Conteudo {contId:"T14"});
CREATE (conteudo:Conteudo {contId:"T15"});
CREATE (conteudo:Conteudo {contId:"T16"});
CREATE (conteudo:Conteudo {contId:"T17"});
CREATE (conteudo:Conteudo {contId:"T18"});
CREATE (conteudo:Conteudo {contId:"T19"});
CREATE (conteudo:Conteudo {contId:"T20"});


// Avaliações do conteúdo pelos usuários

MATCH (user), (cont)
WHERE user.nusp = 11225698 AND cont.contId = "T11"
CREATE (user)-[:Avalia {data:date("2022-05-16"), nota:5}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 89754613 AND cont.contId = "T18"
CREATE (user)-[:Avalia {data:date("2022-06-11"), nota:6}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 78124549 AND cont.contId = "T17"
CREATE (user)-[:Avalia {data:date("2022-05-14"), nota:7}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 12161816 AND cont.contId = "T11"
CREATE (user)-[:Avalia {data:date("2022-05-14"), nota:6}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 23456789 AND cont.contId = "T12"
CREATE (user)-[:Avalia {data:date("2022-05-04"), nota:5}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 785461 AND cont.contId = "T17"
CREATE (user)-[:Avalia {data:date("2022-05-04"), nota:6}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 12341516 AND cont.contId = "T11"
CREATE (user)-[:Avalia {data:date("2022-05-13"), nota:4}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 19756484 AND cont.contId = "T11"
CREATE (user)-[:Avalia {data:date("2022-05-21"), nota:8}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 11256973 AND cont.contId = "T11"
CREATE (user)-[:Avalia {data:date("2022-06-14"), nota:6}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 13125467 AND cont.contId = "T11"
CREATE (user)-[:Avalia {data:date("2022-05-26"), nota:5}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 12486789 AND cont.contId = "T11"
CREATE (user)-[:Avalia {data:date("2022-04-14"), nota:8}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 13469284 AND cont.contId = "T11"
CREATE (user)-[:Avalia {data:date("2022-05-24"), nota:9}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 16327498 AND cont.contId = "T11"
CREATE (user)-[:Avalia {data:date("2022-04-24"), nota:6}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 8754216 AND cont.contId = "T18"
CREATE (user)-[:Avalia {data:date("2022-05-22"), nota:10}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 7524315 AND cont.contId = "T17"
CREATE (user)-[:Avalia {data:date("2022-04-25"), nota:4}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 11225698 AND cont.contId = "T1"
CREATE (user)-[:Avalia {data:date("2021-11-13"), nota:5}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 89754613 AND cont.contId = "T9"
CREATE (user)-[:Avalia {data:date("2021-07-14"), nota:7}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 78124549 AND cont.contId = "T8"
CREATE (user)-[:Avalia {data:date("2021-04-21"), nota:8}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 12161816 AND cont.contId = "T2"
CREATE (user)-[:Avalia {data:date("2021-08-21"), nota:7}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 23456789 AND cont.contId = "T3"
CREATE (user)-[:Avalia {data:date("2020-06-16"), nota:8}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 785461 AND cont.contId = "T8"
CREATE (user)-[:Avalia {data:date("2021-04-27"), nota:9}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 12341516 AND cont.contId = "T2"
CREATE (user)-[:Avalia {data:date("2021-04-12"), nota:5}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 19756484 AND cont.contId = "T9"
CREATE (user)-[:Avalia {data:date("2020-11-14"), nota:7}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 11256973 AND cont.contId = "T1"
CREATE (user)-[:Avalia {data:date("2021-05-14"), nota:8}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 13125467 AND cont.contId = "T3"
CREATE (user)-[:Avalia {data:date("2021-06-14"), nota:7}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 12486789 AND cont.contId = "T2"
CREATE (user)-[:Avalia {data:date("2021-06-24"), nota:6}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 13469284 AND cont.contId = "T3"
CREATE (user)-[:Avalia {data:date("2021-11-14"), nota:4}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 16327498 AND cont.contId = "T6"
CREATE (user)-[:Avalia {data:date("2021-07-14"), nota:7}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 8754216 AND cont.contId = "T7"
CREATE (user)-[:Avalia {data:date("2022-03-14"), nota:7}]->(cont);


MATCH (user), (cont)
WHERE user.nusp = 7524315 AND cont.contId = "T5"
CREATE (user)-[:Avalia {data:date("2022-03-14"), nota:7}]->(cont);


// Tags dos conteúdos.
MATCH (tag), (cont)
WHERE tag.nome = "Inteligência Artificial" AND cont.contId = "T4" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-03-15")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Machine Learning" AND cont.contId = "T4" 
CREATE (tag)-[:Classifica {usuario:23456789, data:date("2022-05-22")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Estatística" AND cont.contId = "T1" 
CREATE (tag)-[:Classifica {usuario:785461, data:date("2022-06-25")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Micro Economia" AND cont.contId = "T1" 
CREATE (tag)-[:Classifica {usuario:19756484, data:date("2022-04-07")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Macro Economia" AND cont.contId = "T1" 
CREATE (tag)-[:Classifica {usuario:11256973, data:date("2022-04-04")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Aminoácidos" AND cont.contId = "T2" 
CREATE (tag)-[:Classifica {usuario:78124549, data:date("2022-05-08")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Tardigrados" AND cont.contId = "T2" 
CREATE (tag)-[:Classifica {usuario:89754613, data:date("2022-02-17")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Genética" AND cont.contId = "T2" 
CREATE (tag)-[:Classifica {usuario:23456789, data:date("2022-03-07")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Banco de Dados" AND cont.contId = "T4" 
CREATE (tag)-[:Classifica {usuario:12486789, data:date("2022-05-23")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Neo4J" AND cont.contId = "T4" 
CREATE (tag)-[:Classifica {usuario:11256973, data:date("2022-05-12")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "SQL" AND cont.contId = "T4" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-04-13")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "NoSQL" AND cont.contId = "T4" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-05-14")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Ciências da Computação" AND cont.contId = "T4" 
CREATE (tag)-[:Classifica {usuario:12161816, data:date("2022-05-18")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Zonas de Urbanização" AND cont.contId = "T2" 
CREATE (tag)-[:Classifica {usuario:78124549, data:date("2022-04-29")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Planejamento Urbano" AND cont.contId = "T2" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-05-29")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Brasília" AND cont.contId = "T2" 
CREATE (tag)-[:Classifica {usuario:11225698, data:date("2022-04-30")}]->(cont);


MATCH (tag), (cont)
WHERE tag.nome = "Inteligência Artificial" AND cont.contId = "T19" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-03-15")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Machine Learning" AND cont.contId = "T19" 
CREATE (tag)-[:Classifica {usuario:23456789, data:date("2022-05-22")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Estatística" AND cont.contId = "T16" 
CREATE (tag)-[:Classifica {usuario:785461, data:date("2022-06-25")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Micro Economia" AND cont.contId = "T16" 
CREATE (tag)-[:Classifica {usuario:19756484, data:date("2022-04-07")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Macro Economia" AND cont.contId = "T16" 
CREATE (tag)-[:Classifica {usuario:11256973, data:date("2022-04-04")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Aminoácidos" AND cont.contId = "T10" 
CREATE (tag)-[:Classifica {usuario:78124549, data:date("2022-05-08")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Tardigrados" AND cont.contId = "T10" 
CREATE (tag)-[:Classifica {usuario:89754613, data:date("2022-02-17")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Genética" AND cont.contId = "T10" 
CREATE (tag)-[:Classifica {usuario:23456789, data:date("2022-03-07")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Banco de Dados" AND cont.contId = "T19" 
CREATE (tag)-[:Classifica {usuario:12486789, data:date("2022-05-23")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Banco de Dados" AND cont.contId = "T19" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-04-12")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Neo4J" AND cont.contId = "T19" 
CREATE (tag)-[:Classifica {usuario:11256973, data:date("2022-05-12")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "SQL" AND cont.contId = "T19" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-04-13")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "NoSQL" AND cont.contId = "T19" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-05-14")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Ciências da Computação" AND cont.contId = "T19" 
CREATE (tag)-[:Classifica {usuario:12161816, data:date("2022-05-18")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Ciências da Computação" AND cont.contId = "T19" 
CREATE (tag)-[:Classifica {usuario:12161816, data:date("2022-06-26")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Zonas de Urbanização" AND cont.contId = "T16" 
CREATE (tag)-[:Classifica {usuario:78124549, data:date("2022-04-29")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Planejamento Urbano" AND cont.contId = "T16" 
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-05-29")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Brasília" AND cont.contId = "T16" 
CREATE (tag)-[:Classifica {usuario:11225698, data:date("2022-04-30")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Ciências da Computação" AND cont.contId = "T15"
CREATE (tag)-[:Classifica {usuario:12161816, data:date("2022-03-10")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Código Aberto" AND cont.contId = "T12"
CREATE (tag)-[:Classifica {usuario:12486789, data:date("2022-05-11")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Código Livre" AND cont.contId = "T11"
CREATE (tag)-[:Classifica {usuario:11225698, data:date("2022-04-03")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Eletrônica" AND cont.contId = "T5"
CREATE (tag)-[:Classifica {usuario:7524315, data:date("2022-06-08")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Arduíno" AND cont.contId = "T5"
CREATE (tag)-[:Classifica {usuario:16327498, data:date("2022-04-08")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Ciências da Computação" AND cont.contId = "T7"
CREATE (tag)-[:Classifica {usuario:12161816, data:date("2022-04-09")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Código Aberto" AND cont.contId = "T8"
CREATE (tag)-[:Classifica {usuario:8754216, data:date("2022-03-05")}]->(cont);

MATCH (tag), (cont)
WHERE tag.nome = "Código Livre" AND cont.contId = "T3"
CREATE (tag)-[:Classifica {usuario:12341516, data:date("2022-03-12")}]->(cont);


// CONSULTAS

// CONSULTA DE USUÁRIOS QUE AVALIARAM O MESMO PROFESSOR.
// RETORNA O NOME DOS PARES DE USUÁRIO E O NÚMERO DE PROFESSORES QUE AMBOS AVALIARAM.
MATCH usuarios = (user1:User)-[:Avalia]->(professor:Professor)<-[:Avalia]-(user2:User)
WITH  user1.nome AS nome1,
      user1.nusp AS nusp1,
      user2.nome AS nome2,
      user2.nusp AS nusp2, 
      count(professor) AS num
WHERE nusp1 < nusp2
RETURN nome1, nome2, num

// Pares de usuários que mandaram mensagens para um mesmo fórum
MATCH (user1 :User)
    -[:Envio]
    ->(mesnsagem)-[:Compoe]->(f),
    (user2)
    -[:Envio]
    ->(mensagem2)-[:Compoe]->(f)
WHERE user1.nusp1 < user2.nusp2
RETURN user1,user2








