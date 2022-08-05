# SQL back-end

Backend do projeto Enceladus para acessar o banco SQL.

## Description

Essa parte do projeto é um servidor backend utilizando express.js que se conecta a um servidor PostgreSQL (Amazon RDS).
O banco pode estar indisponível no momento dos testes, já que foi criado com AWS (logo, há um tempo limitado para o uso do servidor).

## Getting Started

### Dependencies

- npm

### Installing

- Na pasta deste repositório (sql-backend), execute

```
npm install
npm start
```

Cheque http://localhost:8000 para certificar que o servidor está rodando.

## Documentação da API

O servidor deve estar na porta 8000 do localhost. As seguintes rotas estão disponíveis:

- `/usuario/create`: cria um usuário;
    - Method: `POST`
    - Ex: `curl -X POST -H "Content-Type: application/json" -d '{"nusp": "11223344", "telefone": "1122587459", "email": "teste@exemplo.com", "nome": "João Silva", "password": "123", "tipo": "Aluno", "unidade_ensino": "IME", "curso": "Matematica", "nivel": "Graduacao", "status": "Ativo" }' http://localhost:8000/usuario/create`
- `/usuario/:nusp`: retorna os dados do usuários de NUSP indicado na rota;
    - Method: `GET`
    - Ex: `http://localhost:8000/usuario/11223344`
- `/usuarios/unidade/:unidade_ensino`: retorna os dados dos usuários da unidade de ensino indicada na rota;
    - Method: `GET`
    - Ex: `http://localhost:8000/usuarios/unidade/IME`
- `/usuarios/curso/:curso`: retorna os dados dos usuários do curso indicado na rota;
    - Method: `GET`
    - Ex: `http://localhost:8000/usuarios/curso/Matematica`
- `/login/:nusp/:password`: autentica o usuário no banco, verificando o NUSP e a senha. Retorna o status 200 e os dados do usuário em caso de sucesso;
    - Rota usada para realizar o login no front-end
- `/unidade_ensino/create`: cria uma unidade de ensino;
    - Method: `POST`
    - Ex: `curl -X POST -H "Content-Type: application/json" -d '{ "nome": "POLI", "rua": "Rua 1", "numero": "10" }' http://localhost:8000/unidade_ensino/create`
- `/sala_estudos/create`: cria uma sala de estudos;
    - Method: `POST`
    - Ex: `curl -X POST -H "Content-Type: application/json" -d '{ "nome": "Sala 1", "limite_pessoas": "10", "qtd_tomadas": "2", "ventilacao": "1", "presença_lousa": "1", "status": "Disponível", "unidade_ensino": "IME" }' http://localhost:8000/sala_estudos/create`
- `/sala_estudos/:nome`: retorna os dados da sala de estudos de nome indicado na rota;
    - Method: `GET`
    - Ex: `http://localhost:8000/sala_estudos/Sala 1`
- `/sala_estudos/unidade/:unidade_ensino`: retorna os dados das salas de estudos da unidade de ensino indicada;
    - Method: `GET`
    - Ex: `http://localhost:8000/sala_estudos/unidade/IME`

Todas as rotas podm ser testadas no terminal com o comando `curl`. Chamadas de exemplo: 
 - GET: `curl http://localhost:8000/usuarios/unidade/IME`;
 - POST: `curl -X POST -H "Content-Type: application/json" -d '{"nusp": "11223344", "telefone": "1122587459", "email": "teste@exemplo.com", "nome": "João Silva", "password": "123", "tipo": "Aluno", "unidade_ensino": "IME", "curso": "Matematica", "nivel": "Graduacao", "status": "Ativo" }' http://localhost:8000/usuario/create`