# Project Title

Backend do projeto Enceladus para acessar o banco neo4j.

## Description

Essa parte do projeto é um servidor backend utilizando express.js que se conecta a um container docker com a imagem do banco de dados neo4j.

## Getting Started

### Dependencies

- docker
- npm
- sistema operacional ubuntu

### Installing

- Instalação do Docker: https://docs.docker.com/engine/install/ubuntu/

- Na pasta deste repositório (neo4jbackend) rode

```
npm install
```

### Subindo o Container e Inicializando o Banco

- Em seguida suba o container do neo4j com

```
docker run -p 7474:7474 -p 7687:7687 -v "$HOME"/neo4j/data:/data neo4j
```

- Teste se o container subiu acessando o browser do neo4j em https://localhost:7687. Use as credenciais:
  username: neo4j
  password: neo4j
- Se o sistema pedir para mudar a senha, coloque admin.

### Populando o DB

- É necessário popular o banco apenas uma vez.

- Quando o container subir, consiga o nome do dele, executando o comando abaixo e procurando pelo nome do container cuja imagem é neo4j.

```
docker ps
```

- Copie o arquivo enceladus.cypher da raiz do projeto para o containter. Ainda na pasta neo4jbackend:

```
docker cp ../enceladus.cypher <nome do container>:/var/lib/neo4j/enceladus.cypher
```

- Em seguida execute um bash no container com o comando abaixo:

```
docker exec -it <nome do container> /bin/bash
```

- Por último, para executar o script cypher para popular o banco, rode:

```
cypher-shell enceladus.cypher -f
```

- Saia do shell, com exit.

## Rodando o app

Para rodar o servidor execute:

```
node app
```

Cheque https://localhost:3000/docs para certificar que o servidor está rodando.

## Documentação da API

O servidor deve estar na porta 3000 do local host, e a documentação da API pode ser vista em https://localhost:3000/docs/
