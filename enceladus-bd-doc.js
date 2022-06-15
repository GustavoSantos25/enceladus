db = db.getSiblingDB('enceladus');

example_id = 1;
example_id_sem_avaliacoes = 2;

db.midias.insertMany([
	{
		"_id": example_id,
		"filename" : "prova1.pdf",
		"contentType" : "application/pdf",
		"length" : 12356,
		"uploadDate" : new Date(),
		"total_avaliacoes": 8,
		"media_avaliacoes": 7.8,
	},
	{
		"filename" : "lista1.png",
		"contentType" : "image/png",
		"length" : 125448,
		"uploadDate" : new Date(),
		"total_avaliacoes": 5,
		"media_avaliacoes": 4.3,
	},
	{
		"_id": example_id_sem_avaliacoes,
		"filename" : "lista2.pdf",
		"contentType" : "application/pdf",
		"length" : 254478,
		"uploadDate" : new Date(),
		"total_avaliacoes": 0,
	},
	{
		"filename" : "lista5-prob.pdf",
		"contentType" : "application/pdf",
		"length" : 78781,
		"uploadDate" : new Date(),
		"total_avaliacoes": 8,
		"media_avaliacoes": 6.2,
	},
	{
		"filename" : "livro-labbd.pdf",
		"contentType" : "application/pdf",
		"length" : 158778,
		"uploadDate" : new Date(),
		"total_avaliacoes": 0,
	},
	{
		"filename" : "lista7-calculo1.pdf",
		"contentType" : "application/pdf",
		"length" : 45698,
		"uploadDate" : new Date(),
		"total_avaliacoes": 4,
		"media_avaliacoes": 8.5,
	},
	{
		"filename" : "lista2-flc0474.docx",
		"contentType" : "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
		"length" : 78562,
		"uploadDate" : new Date(),
		"total_avaliacoes": 0,
	},
	{
		"filename" : "enunciado-ep1.pdf",
		"contentType" : "application/pdf",
		"length" : 14856,
		"uploadDate" : new Date(),
		"total_avaliacoes": 12,
		"media_avaliacoes": 8.7,
	},
	{
		"filename" : "enunciado-ep2.pdf",
		"contentType" : "application/pdf",
		"length" : 45894,
		"uploadDate" : new Date(),
		"total_avaliacoes": 3,
		"media_avaliacoes": 9.5,
	},
	{
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

// nova_avaliacao = 7
// db.midias.updateOne(
// 	{ "_id": example_id },
// 	{
// 		"$set": {
// 			"media_avaliacoes": {
// 				$cond: [
// 					{ "media_avaliacoes": { $exists: false } },
// 					nova_avaliacao,
// 					nova_avaliacao + 1,
// 				]
// 			}
// 		}
// 	}
// );