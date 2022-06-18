db = db.getSiblingDB('enceladus');

db.midias.insertMany([
	{
		"_id": "M0",
		"filename" : "prova1.pdf",
		"contentType" : "application/pdf",
		"length" : 12356,
		"uploadDate" : new Date(),
		"total_avaliacoes": 8,
		"media_avaliacoes": 7.8,
	},
	{
		"_id": "M1",
		"filename" : "lista1.png",
		"contentType" : "image/png",
		"length" : 125448,
		"uploadDate" : new Date(),
		"total_avaliacoes": 5,
		"media_avaliacoes": 4.3,
	},
	{
		"_id": "M2",
		"filename" : "lista2.pdf",
		"contentType" : "application/pdf",
		"length" : 254478,
		"uploadDate" : new Date(),
		"total_avaliacoes": 0,
	},
	{
		"_id": "M3",
		"filename" : "lista5-prob.pdf",
		"contentType" : "application/pdf",
		"length" : 78781,
		"uploadDate" : new Date(),
		"total_avaliacoes": 8,
		"media_avaliacoes": 6.2,
	},
	{
		"_id": "M4",
		"filename" : "livro-labbd.pdf",
		"contentType" : "application/pdf",
		"length" : 158778,
		"uploadDate" : new Date(),
		"total_avaliacoes": 0,
	},
	{
		"_id": "M5",
		"filename" : "lista7-calculo1.pdf",
		"contentType" : "application/pdf",
		"length" : 45698,
		"uploadDate" : new Date(),
		"total_avaliacoes": 4,
		"media_avaliacoes": 8.5,
	},
	{
		"_id": "M6",
		"filename" : "lista2-flc0474.docx",
		"contentType" : "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
		"length" : 78562,
		"uploadDate" : new Date(),
		"total_avaliacoes": 0,
	},
	{
		"_id": "M7",
		"filename" : "enunciado-ep1.pdf",
		"contentType" : "application/pdf",
		"length" : 14856,
		"uploadDate" : new Date(),
		"total_avaliacoes": 12,
		"media_avaliacoes": 8.7,
	},
	{
		"_id": "M8",
		"filename" : "enunciado-ep2.pdf",
		"contentType" : "application/pdf",
		"length" : 45894,
		"uploadDate" : new Date(),
		"total_avaliacoes": 3,
		"media_avaliacoes": 9.5,
	},
	{
		"_id": "M9",
		"filename" : "provinha1.pdf",
		"contentType" : "application/pdf",
		"length" : 35698,
		"uploadDate" : new Date(),
		"total_avaliacoes": 0,
	},
]);

db.usuarios.insertMany([
	{
		"nusp": 11225698,
		"nome": "José Cardoso Neto",
	},
	{
		"nusp": 89754613,
		"nome": "Julia dos Santos Pereira",
	},
	{
		"nusp": 78124549,
		"nome": "Marcos Barbosa Oliveira",
	},
	{
		"nusp": 12161816,
		"nome": "Maria Silva de Sá",
	},
	{
		"nusp": 23456789,
		"nome": "Luan da Conceição Silva",
	},
	{
		"nusp": 785461,
		"nome": "Matheus Souza",
	},
	{
		"nusp": 12341516,
		"nome": "Pamella Castro Correia",
	},
	{
		"nusp": 19756484,
		"nome": "Marta Ribeiro Rocha",
	},
	{
		"nusp": 11256973,
		"nome": "Lucas Souza Teixeira",
	},
	{
		"nusp": 13125467,
		"nome": "Miguel Ferreira de Castro",
	},
	{
		"nusp": 12486789,
		"nome": "Vitor Serafim Morais",
	},
	{
		"nusp": 13469284,
		"nome": "Juventino Magalhães",
	},
	{
		"nusp": 16327498,
		"nome": "Mariana Serra Azevedo",
	},
	{
		"nusp": 8754216,
		"nome": "Luana Guimarães Souza",
	},
	{
		"nusp": 7524315,
		"nome": "Isabela Fontes Silva",
	},
]);

db.oferecimentos.insertMany([
	{
		"coddis":"EAE0106",
		"bibliografia":"KRUGMAN, P. e R. WELLS. Introdução à Economia. Editora Campus, 2007",
		"ano":2022,
		"semestre":1,
		"criterio_avaliacao":"(P1 + P2) / 2",
		"professor":{
			"email": "jorgesa@usp.br",
			"nome":"Jorge Santos Alves",
			"página":"fea.usp.br/~jorgesa",
			"sala":"110A",
			"ue":"FEA",
			"total_avaliacoes":2,
			"media_avaliacoes":6
		},
		"monitor":{
			"email": "heitorab@usp.br",
			"nome": "Heitor Augusto Barbosa",
			"ue": "FEA",
			"total_avaliacoes": 5,
			"media_avaliacoes": 6,
		},
		"aulas":[
			{
				"sala":"10A",
				"status":"completa",
				"horario_inicio":new Date("2022-03-23T10:00"),
				"horario_fim":new Date("2022-03-23T11:40"),
				"usuarios":[11225698, 89754613, 78124549]
			},
			{
				"sala":"10A",
				"status":"completa",
				"horario_inicio":new Date("2022-03-25T08:00"),
				"horario_fim":new Date("2022-03-25T09:40"),
				"usuarios":[11225698, 89754613, 78124549]
			},
			{
				"sala":"10A",
				"status":"completa",
				"horario_inicio":new Date("2022-03-30T10:00"),
				"horario_fim":new Date("2022-03-30T11:40"),
				"usuarios":[11225698, 89754613, 78124549]
			},
			{
				"sala":"10A",
				"status":"completa",
				"horario_inicio":new Date("2022-04-01T08:00"),
				"horario_fim":new Date("2022-04-01T09:40"),
				"usuarios":[11225698, 89754613, 78124549]
			},
			{
				"sala":"10A",
				"status":"completa",
				"horario_inicio":new Date("2022-04-06T10:00"),
				"horario_fim":new Date("2022-04-06T11:40"),
				"midias":["M9"],
				"usuarios":[11225698, 89754613, 78124549]
			},
			{
				"sala":"10A",
				"status":"completa",
				"horario_inicio":new Date("2022-04-08T08:00"),
				"horario_fim":new Date("2022-04-08T09:40"),
				"midias":["M0"],
				"usuarios":[11225698, 89754613, 78124549]
			},
		],
		"tarefas":[
			{
				"_id": "T0",
				"tipo": "prova",
				"numero": 1,
				"modo": "remoto",
				"midias": [ "M0" ],
				"data_inicio": new Date("2022-04-08T08:00"),
				"data_entrega": new Date("2022-04-08T09:40"),
				"total_avaliacoes": 2,
				"media_avaliacoes": 7.5,
				"notas": [
					{
						"nusp": 11225698,
						"nota": 9.5,
					},
					{
						"nusp": 89754613,
						"nota": 6.3,
					},
					{
						"nusp": 78124549,
						"nota": 7.7,
					},
				]
			},
			{
				"_id": "T1",
				"tipo": "prova",
				"numero": 3,
				"modo": "presencial",
				"data_inicio": new Date("2022-07-15T10:00"),
				"data_entrega": new Date("2022-07-15T12:00"),
				"total_avaliacoes": 0,
			},
			{
				"_id": "T2",
				"tipo": "lista",
				"numero": 1,
				"modo": "presencial",
				"data_inicio": new Date("2022-03-06T10:00"),
				"data_entrega": new Date("2022-03-13T12:00"),
				"total_avaliacoes": 2,
				"media_avaliacoes": 7.5,
			},
		],
		"usuarios":[11225698, 89754613, 78124549]
	},
	{
		"coddis":"MAC0439",
		"bibliografia":"Bibliografia Básica: H. Garcia-Molina, J. D. Ullman, J. Widom, Database Systems: The Complete Book, 2nd ed., Pearson Prentice Hall, 2009. R. Elmasri, S.B. Navathe, Sistemas de Bancos de Dados, 6a ed., Addison- Wesley, 2011. T. J. Teorey, S. S. Lightstone, T. Nadeau, H. V. Jagadish, Database Modeling & Design: Logical Design, 5th edition, Morgan Kaufmann Publishers, 2011. Bibliografia Complementar: C.J. Date, Introdução a Sistemas de Bancos de Dados, 8a ed., Campus, 2004. P.J. Sadalage, M. Fowler, NoSQL Distilled: A Brief Guide to the Emerging World of Polyglot Persistence, Addison Wesley, 2011. M. Fowler, Patterns of Enterprise Application Architecture, Addison Wesley, 2007. Manuais das ferramentas de apoio ao desenvolvimento de banco de dados e dos gerenciadores de bancos de dados.",
		"ano":2022,
		"semestre":1,
		"criterio_avaliacao":"Média ponderada de provas e exercícios.",
		"professor":{
			"email": "crisoh@usp.br",
			"nome":"Cristina Oliveira Hoffmann",
			"página":"ime.usp.br/~crisoh",
			"sala":"100A",
			"ue":"IME",
			"total_avaliacoes":2,
			"media_avaliacoes":7,
		},
		"monitor":{
			"email": "luisa_gl12@usp.br",
			"nome": "Luísa Gomes Lima",
			"ue": "IME",
			"total_avaliacoes": 20,
			"media_avaliacoes": 6.8,
		},
		"aulas":[
			{
				"sala":"13B",
				"status":"completa",
				"horario_inicio":new Date("2022-04-04T08:00"),
				"horario_fim":new Date("2022-04-04T09:40"),
				"usuarios":[12161816, 23456789, 78124549]
			},
			{
				"sala":"13B",
				"status":"completa",
				"horario_inicio":new Date("2022-04-06T10:00"),
				"horario_fim":new Date("2022-04-06T11:40"),
				"midias":["M4"],
				"usuarios":[12161816, 23456789]
			},
			{
				"sala":"13B",
				"status":"completa",
				"horario_inicio":new Date("2022-04-11T08:00"),
				"horario_fim":new Date("2022-04-11T09:40"),
				"usuarios":[12161816, 23456789]
			},
			{
				"sala":"13B",
				"status":"completa",
				"horario_inicio":new Date("2022-04-13T10:00"),
				"horario_fim":new Date("2022-04-13T11:40"),
				"usuarios":[12161816, 23456789, 78124549]
			},
			{
				"sala":"13B",
				"status":"agendada",
				"horario_inicio":new Date("2022-07-11T08:00"),
				"horario_fim":new Date("2022-07-11T09:40"),
				"usuarios":[12161816, 23456789]
			},
			{
				"sala":"13B",
				"status":"agendada",
				"horario_inicio":new Date("2022-07-13T10:00"),
				"horario_fim":new Date("2022-07-13T11:40"),
				"usuarios":[12161816, 23456789, 78124549]
			}
		],
		"tarefas":[
			{
				"_id": "T3",
				"tipo": "atividade",
				"numero": 1,
				"enunciado": "RESUMO: entregar um resumo de 300 palavras do primeiro capítulo do livro indicado.",
				"modo": "remoto",
				"midias": [ "M4" ],
				"data_inicio": new Date("2022-04-04T11:40"),
				"data_entrega": new Date("2022-04-06T11:40"),
				"total_avaliacoes": 0,
				"notas": [
					{
						"nusp": 12161816,
						"nota": 6.5,
					},
					{
						"nusp": 23456789,
						"nota": 10.0,
					},
				]
			},
			{
				"_id": "T4",
				"tipo": "prova",
				"numero": 1,
				"modo": "presencial",
				"data_inicio": new Date("2022-04-13T10:00"),
				"data_entrega": new Date("2022-04-13T11:40"),
				"total_avaliacoes": 0,
				"notas": [
					{
						"nusp": 12161816,
						"nota": 5.2,
					},
					{
						"nusp": 23456789,
						"nota": 8.3,
					},
				]
			},
			{
				"_id": "T5",
				"tipo": "prova",
				"numero": 2,
				"modo": "presencial",
				"data_inicio": new Date("2022-07-13T10:00"),
				"data_entrega": new Date("2022-07-13T12:00"),
				"total_avaliacoes": 0,
			},
		],
		"usuarios":[12161816, 23456789, 78124549]
	},
	{
		"coddis":"AUH0236",
		"bibliografia":"ARGAN, Giulio Carlo - Clássico Anticlássico. São Paulo: Cia das Letras, 1999. _______, Imagem e persuasão: ensaios sobre o Barroco. São Paulo: Cia das Letras, 2004. BRAUDEL, F. Civilização material, economia e capitalismo: séculos XV – XVII.. São Paulo, Martins Fontes, 1995. 3 vols. BROTTON, J. O Bazar do Renascimento. Da Rota da Seda a Michelangelo. São Paulo: Grua, 2009. CALABI, D., A cidade do primeiro Renascimento. São Paulo: Perspectiva, 2008. CHILDE, G. O que aconteceu na história. 2ª ed. Rio de Janeiro, Zahar, 1966 (1a. ed. 1941) DUBY, G. (org.). Histoire de la France Urbaine. Paris: Seuil, 1981. FINLEY, M. Os gregos antigos. Lisboa, Edições 70, 1984. GOODY, J. O roubo da História : como os europeus se apropriaram das ideias e invenções do Oriente. 2a. Ed. São Paulo: Contexto, 2013 GRUZINSKY, S. As quatro partes do mundo: história de uma mundialização. São Paulo, Edusp, 2015. HARDOY, H. Ciudades precolombinas. Buenos Aires: Ed Infinito, 1964. LE GOFF, J. O apogeu da Cidade Medieval. São Paulo, Martins Fontes, 1992. MATTOSO, J. (dir.). Património de origem portuguesa no mundo: arquitectura e urbanismo. América do Sul. Lisboa: Fundação Calouste Gulbenkian, 2010. Vols. 1, 2 e 3 (www.hpip.org) REIS FILHO, N. G.. Evolução urbana do Brasil 1500/1720. 2a. ed. São Paulo, PINI, 2001 (1a. ed. 1968) SALGUEIRO, H. A (org.). Bernard Lepetit. Por uma nova história urbana. São Paulo, Edusp, 2001. SENNETT, R. Carne e Pedra. Rio de Janeiro, Record, 1997.",
		"ano":2022,
		"semestre":1,
		"criterio_avaliacao":"É aprovado o aluno que obtiver nota mínima 5,0 e 70% de frequência.",
		"professor":{
			"email": "cashn@usp.br",
			"nome":"Camila Albuquerque Schneider",
			"página":"fau.usp.br/~cashn",
			"sala":"16B",
			"ue":"FAU",
			"total_avaliacoes":4,
			"media_avaliacoes":8
		},
		"monitor":{
			"email": "arthursc@usp.br",
			"nome": "Arthur Souza Campos",
			"ue": "FAU",
			"total_avaliacoes": 8,
			"media_avaliacoes": 7.5,
		},
		"aulas":[
			{
				"sala":"11A",
				"status":"agendada",
				"horario_inicio":new Date("2022-06-21T14:00"),
				"horario_fim":new Date("2022-06-21T17:00"),
				"midias":["M1"],
				"usuarios":[785461, 12341516, 19756484]
			},
			{
				"sala":"11A",
				"status":"agendada",
				"horario_inicio":new Date("2022-06-28T14:00"),
				"horario_fim":new Date("2022-06-28T17:00"),
				"midias":["M2"],
				"usuarios":[785461, 12341516, 19756484]
			},
			{
				"sala":"11A",
				"status":"agendada",
				"horario_inicio":new Date("2022-07-05T14:00"),
				"horario_fim":new Date("2022-07-05T17:00"),
				"usuarios":[785461, 12341516, 19756484]
			},
			{
				"sala":"11A",
				"status":"agendada",
				"horario_inicio":new Date("2022-07-12T14:00"),
				"horario_fim":new Date("2022-07-12T17:00"),
				"usuarios":[12341516, 19756484]
			}
		],
		"tarefas":[
			{
				"_id": "T6",
				"tipo": "lista",
				"numero": 2,
				"enunciado": "Segunda lista de exercícios. Prazo de 1 semana.",
				"modo": "remoto",
				"midias": [ "M2" ],
				"data_inicio": new Date("2022-06-28T14:00"),
				"data_entrega": new Date("2022-07-05T14:00"),
				"total_avaliacoes": 0,
			},
			{
				"_id": "T7",
				"tipo": "prova",
				"numero": 2,
				"modo": "presencial",
				"data_inicio": new Date("2022-07-05T14:00"),
				"data_entrega": new Date("2022-07-05T17:00"),
				"total_avaliacoes": 0,
				"notas": [
					{
						"nusp": 785461,
						"nota": 8.2,
					},
					{
						"nusp": 12341516,
						"nota": 7.9,
					},
					{
						"nusp": 19756484,
						"nota": 4.3,
					},
				]
			},
			{
				"_id": "T8",
				"tipo": "atividade",
				"numero": 4,
				"enunciado": "Resolução de exercícios sobre gramática em sala de aula.",
				"modo": "presencial",
				"data_inicio": new Date("2022-07-12T14:00"),
				"data_entrega": new Date("2022-07-12T17:00"),
				"total_avaliacoes": 1,
				"media_avaliacoes": 7.0,
			},
		],
		"usuarios":[785461, 12341516, 19756484]
	},
	{
		"coddis":"BMB0260",
		"bibliografia":"Básica: Fisiologia Básica, Rui Curi & J. Procópio de Araújo Filho, Guanabara Koogan, 2a. ed., 2017. Fisiologia, Margarida de Mello Aires, Guanabara Koogan, 5a ed., 2018. Física Para Ciências Biológicas e Biomédicas, E. Okuno, I.L. Caldas, C. Chow, Ed. Harbra, 1986. Biofísica, Eduardo A. C. Garcia, Sarvier, São Paulo, 1998. Complementar: Concepts in Bioenergetics, Leonardo Peusner, Prentice-Hall, Inc., 1974. Biological Physics, Philip C. Nelson, W. H. Freeman and Company, 2008. Intermediate Physics for Medicine and Biology, Russell K. Hobbie, Springer, 4a ed., 2007. Physics in Biology and Medicine, Paul Davidovits, Academic Press, 3a ed., 2007.",
		"ano":2022,
		"semestre":1,
		"criterio_avaliacao":"Avaliações com questões dissertativas e de múltipla escolha Redação de ensaios Participação nos grupos de discussão (tutoriais) Relatórios de aulas práticas",
		"professor":{
			"email": "carlosfm@usp.br",
			"nome":"Carlos Ferreira Moraes",
			"página":"icb.usp.br/~carlosfm",
			"sala":"209C",
			"ue":"ICB",
			"total_avaliacoes":1,
			"media_avaliacoes":9,
		},
		"monitor":{
			"email": "gabriel_ferro@usp.br",
			"nome": "Gabriel Duarte Ferro",
			"ue": "ICB",
			"total_avaliacoes": 2,
			"media_avaliacoes": 6,
		},
		"aulas":[
			{
				"sala":"113A",
				"status":"cancelada",
				"horario_inicio":new Date("2022-06-21T08:00"),
				"horario_fim":new Date("2022-06-21T09:40"),
				"usuarios":[11256973, 13125467, 12486789, 13469284]
			},
			{
				"sala":"113A",
				"status":"cancelada",
				"horario_inicio":new Date("2022-06-2310:00"),
				"horario_fim":new Date("2022-06-23T11:40"),
				"usuarios":[11256973, 13125467, 12486789, 13469284]
			},
			{
				"sala":"113A",
				"status":"completa",
				"horario_inicio":new Date("2022-06-09T10:00"),
				"horario_fim":new Date("2022-06-09T11:40"),
				"midias":["M7"],
				"usuarios":[11256973, 13125467, 12486789, 13469284]
			},
			{
				"sala":"113A",
				"status":"completa",
				"horario_inicio":new Date("2022-06-07T08:00"),
				"horario_fim":new Date("2022-06-07T09:40"),
				"usuarios":[11256973, 13125467, 12486789, 13469284]
			},
			{
				"sala":"113A",
				"status":"completa",
				"horario_inicio":new Date("2022-06-02T10:00"),
				"horario_fim":new Date("2022-06-02T11:40"),
				"usuarios":[11256973, 13125467, 12486789, 13469284]
			},
			{
				"sala":"113A",
				"status":"completa",
				"horario_inicio":new Date("2022-05-31T10:00"),
				"horario_fim":new Date("2022-05-31T11:40"),
				"usuarios":[11256973, 13125467, 13469284]
			}
		],
		"tarefas":[
			{
				"_id": "T9",
				"tipo": "prova",
				"numero": 2,
				"enunciado": "Prova 2: resolução em sala de aula com consulta.",
				"modo": "presencial",
				"data_inicio": new Date("2022-05-31T10:00"),
				"data_entrega": new Date("2022-05-31T11:40"),
				"total_avaliacoes": 2,
				"media_avaliacoes": 5.0,
				"notas": [
					{
						"nusp": 11256973,
						"nota": 7.2,
					},
					{
						"nusp": 13125467,
						"nota": 9.3,
					},
					{
						"nusp": 13469284,
						"nota": 8.5,
					},
				]
			},
			{
				"_id": "T10",
				"tipo": "atividade",
				"numero": 1,
				"modo": "remoto",
				"data_inicio": new Date("2022-05-15T10:00"),
				"data_entrega": new Date("2022-06-02T10:00"),
				"total_avaliacoes": 1,
				"media_avaliacoes": 9.0,
				"notas": [
					{
						"nusp": 11256973,
						"nota": 5.5,
					},
					{
						"nusp": 13125467,
						"nota": 7.5,
					},
					{
						"nusp": 13469284,
						"nota": 9.0,
					},
				]
			},
			{
				"_id": "T11",
				"tipo": "atividade",
				"numero": 1,
				"modo": "presencial",
				"data_inicio": new Date("2022-05-31T10:00"),
				"data_entrega": new Date("2022-05-31T11:40"),
				"total_avaliacoes": 0,
			},
		],
		"usuarios":[11256973, 13125467, 12486789, 13469284]
	},
	{
		"coddis":"MAC0425",
		"bibliografia":"Bibliografia básica: S. Russel, P. Norvig, 'Inteligência Artificial', 2a. ed., Prentice Hall, 2003. Bibliografia complementar: S. Russel, P. Norvig, 'Inteligência Artificial', 3a. ed., Ed. Campus, 2013. R. Sutton, 'Reinforcement Learning: An Introduction'. 2nd ed, MIT Press, 2018.",
		"ano":2022,
		"semestre":1,
		"criterio_avaliacao":"A média ponderada das provas e exercícios deve ser igual ou maior que 5.",
		"professor":{
			"email": "fcs@usp.br",
			"nome":"Flávio Soares Correia da Silva",
			"página":"ime.usp.br/~fcs",
			"sala":"211C",
			"ue":"IME",
			"total_avaliacoes":5,
			"media_avaliacoes":7.5,
		},
		"monitor":{
			"email": "angelicamaria_22@usp.br",
			"nome": "Angelica Maria de Albuquerque",
			"ue": "IME",
			"total_avaliacoes": 2,
			"media_avaliacoes": 9.2,
		},
		"aulas":[
			{
				"sala":"09C",
				"status":"completa",
				"horario_inicio":new Date("2022-05-23T14:00"),
				"horario_fim":new Date("2022-05-23T15:40"),
				"usuarios":[16327498, 8754216, 7524315]
			},
			{
				"sala":"09C",
				"status":"completa",
				"horario_inicio":new Date("2022-05-25T16:00"),
				"horario_fim":new Date("2022-05-25T17:40"),
				"midias":["M8"],
				"usuarios":[16327498, 8754216, 7524315]
			},
			{
				"sala":"09C",
				"status":"completa",
				"horario_inicio":new Date("2022-05-30T14:00"),
				"horario_fim":new Date("2022-05-30T15:40"),
				"usuarios":[16327498, 8754216, 7524315]
			},
			{
				"sala":"09C",
				"status":"completa",
				"horario_inicio":new Date("2022-06-01T16:00"),
				"horario_fim":new Date("2022-06-01T17:40"),
				"usuarios":[16327498, 8754216, 7524315]
			},
			{
				"sala":"09C",
				"status":"agendada",
				"horario_inicio":new Date("2022-07-04T14:00"),
				"horario_fim":new Date("2022-05-30T15:40"),
				"usuarios":[16327498, 8754216, 7524315]
			},
			{
				"sala":"09C",
				"status":"agendada",
				"horario_inicio":new Date("2022-07-06T16:00"),
				"horario_fim":new Date("2022-06-01T17:40"),
				"usuarios":[16327498, 8754216, 7524315]
			}
		],
		"tarefas":[
			{
				"_id": "T12",
				"tipo": "atividade",
				"numero": 2,
				"enunciado": "EP2 - desenvolvimento em duplas",
				"modo": "remoto",
				"midias": [ "M8" ],
				"data_inicio": new Date("2022-04-25T16:00"),
				"data_entrega": new Date("2022-05-25T17:40"),
				"total_avaliacoes": 0,
				"notas": [
					{
						"nusp": 16327498,
						"nota": 7.2,
					},
					{
						"nusp": 8754216,
						"nota": 7.2,
					},
					{
						"nusp": 7524315,
						"nota": 8.0,
					},
				]
			},
			{
				"_id": "T13",
				"tipo": "atividade",
				"numero": 1,
				"enunciado": "Resolução de exercícios em sala de aula.",
				"modo": "presencial",
				"data_inicio": new Date("2022-07-06T16:00"),
				"data_entrega": new Date("2022-07-06T17:40"),
				"total_avaliacoes": 0,
			},
		],
		"usuarios":[16327498, 8754216, 7524315]
	},
]);

db.sessoes_estudos.insertMany([
	{
		"data": new Date("2022-04-06T08:00"),
		"local": "meet.google.com/jkr-uerr-duq",
		"topico": "Prova 1 de EAE0106",
		"descricao": "Discussão sobre as duas primeiras listas",
		"monitores": [ "heitorab@usp.br" ],
		"tarefas": [ "T0", "T2" ],
		"usuarios": [ 11225698, 89754613 ],
	},
	{
		"data": new Date("2022-04-07T10:00"),
		"local": "meet.google.com/jkr-uerr-duq",
		"topico": "Prova 1 de EAE0106",
		"descricao": "Discussão sobre as duas primeiras listas",
		"monitores": [ "heitorab@usp.br" ],
		"tarefas": [ "T0", "T2" ],
		"usuarios": [ 78124549 ],
	},
	{
		"data": new Date("2022-04-05T10:00"),
		"local": "Sala 13B", 
		"topico": "Atividade 1 de MAC0439",
		"descricao": "Plantão de ajuda - Atividade 1",
		"professores": [ "crisoh@usp.br" ],
		"tarefas": [ "T3" ],
		"usuarios": [ 23456789 ],
	},
	{
		"data": new Date("2022-04-07T10:00"),
		"local": "meet.google.com/gfd-fgdr-por", 
		"topico": "Atividade 1 de MAC0439",
		"descricao": "Monitoria - Resolução da atividade 1",
		"monitores": [ "luisa_gl12@usp.br" ],
		"tarefas": [ "T4" ],
		"usuarios": [ 12161816 ],
	},
	{
		"data": new Date("2022-04-10T10:00"),
		"local": "meet.google.com/asd-gfft-ref", 
		"topico": "Atividade 4 de AUH0236",
		"descricao": "Reunião pra estudar toda a matéria da atividade 4 (AUH0236)",
		"usuarios": [ 785461, 12341516, 19756484 ],
	},
	{
		"data": new Date("2022-07-05T10:00"),
		"local": "meet.google.com/bvy-trec-plw", 
		"topico": "Atividade 1 de MAC0425", 
		"descricao": "Reunião para revisar o EP2 em preparação para a atividade 1 de MAC0425",
		"midias": [ "M8" ],
		"usuarios": [ 16327498, 8754216, 7524315 ],
	},
]);

//CONSULTA 1:
//Retorna os professores mais bem avaliados juntamente com as disciplinas que eles lecionaram
db.oferecimentos.aggregate([
	{$sort:{"professor.media_avaliacoes":-1}},
	{$group:{
		_id:"$professor",
		disciplinas:{$addToSet:"$coddis"}
	}},
	{$project:{_id:0, professor:"$_id", disciplinas:"$disciplinas"}}
]);

//CONSULTA 2:
//Retorna os oferecimentos de um certo instituto ou curso
//Precisa apenas modificar a expressão regular para conseguir capturar os códigos referente ao curso ou ao instituto em questão
db.oferecimentos.find(
	{"coddis":/^MAC/},
	{}
);


//CONSULTA 3:
//Retornar as tarefas cujo prazo de entrega ainda não passou
//Será um consulta útil para os usuários verificarem as tarefas que eles precisam fazer e, possivelmente,
//organizar a sua agenda de acordo
db.oferecimentos.aggregate([
	{$unwind:"$tarefas"},
	{$match:{"tarefas.data_entrega":{$gt: new Date()}}},
	{$group:{
		_id:"$coddis",
		tarefas:{$addToSet:"$tarefas"}
	}},
	{$project:{_id:0, disciplina:"$_id", tarefas:"$tarefas"}}
]);

//CONSULTA 4:
//Retornar todas as sessões de estudo de um usuário
//Será uma consulta útil para a construção da agenda do usuário
db.sessoes_estudos.find(
	{
		"usuarios": 8754216,
	}
);

//CONSULTA 5:
//Retornar todas as tarefas já avaliadas de um usuário em uma dada disciplina
//Será uma consulta útil para a exibição do boletim do usuário em uma disciplina
db.oferecimentos.aggregate([
	{
		$unwind: "$tarefas",
	},
	{
		$match: {
			$and: [
				{ "coddis": "AUH0236" },
				{ "ano": 2022 },
				{ "semestre": 1 },
				{ 
					"tarefas.notas": { $elemMatch: { "nusp": 785461 } } 
				},
			]
		},
	},
	{
		$project: { 
			coddis: "$coddis",
			ano: "$ano",
			semestre: "$semestre",
			tarefa: "$tarefas"
		}
	}
]);

//CONSULTA 6:
//Retornar todas as disciplinas que um usuário está cursando em um determinado semestre
//Será uma consulta útil para a exibição da lista de disciplinas de um usuário
db.oferecimentos.find(
	{
		"ano": 2022,
		"semestre": 1,
		"usuarios": 16327498,
	}
);