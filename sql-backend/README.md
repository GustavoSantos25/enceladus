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
- `/usuario/:nusp`: retorna os dados do usuários de NUSP indicado na rota;
- `/usuarios/unidade/:unidade_ensino`: retorna os dados dos usuários da unidade de ensino indicada na rota;
- `/usuarios/curso/:curso`: retorna os dados dos usuários do curso indicado na rota;
- `/login/:nusp/:password`: autentica o usuário no banco, verificando o NUSP e a senha. Retorna o status 200 e os dados do usuário em caso de sucesso;
- `/unidade_ensino/create`: cria uma unidade de ensino;
- `/sala_estudos/create`: cria uma sala de estudos;
- `/sala_estudos/:nome`: retorna os dados da sala de estudos de nome indicado na rota;
- `/sala_estudos/unidade/:unidade_ensino`: retorna os dados das salas de estudos da unidade de ensino indicada;

Todas as rotas podm ser testadas no terminal com o comando `curl`. Chamadas de exemplo: 
 - GET: `curl http://localhost:8000/usuarios/unidade/IME`;
 - POST: `curl -X POST -H "Content-Type: application/json" -d '{"nusp": "11223344", "telefone": "1122587459", "email": "teste@exemplo.com", "nome": "João Silva", "password": "123", "tipo": "Aluno", "unidade_ensino_id": 1, "curso": "Matematica", "nivel": "Graduacao", "status": "Ativo" }' http://localhost:8000/usuario/create`