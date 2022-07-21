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

### Executing program

- Na pasta deste repositório (neo4jbackend) rode

```
npm install
```

- Em seguida suba o container do neo for j com

```
docker run -p 7474:7474 -p 7687:7687 -v "$HOME"/neo4j/data:/data neo4j
```

- Consiga o nome do container, com o comando abaixo e procurando pelo nome do container cuja imagem é neo4j.

```
docker ps
```

- Para inicializar o banco (necessário apenas na primeira vez) copie o arquivo enceladus.cypher da raiz do projeto para o containter. Ainda na pasta neo4jbackend:

```
docker cp ../enceladus.cypher <nome do container>:/var/lib/neo4j/enceladus.cypher
```

- Em seguida, ainda para carreguar o banco, execute um bash no container com o comando abaixo:

```
docker exec -it <nome do container> /bin/bash
```

- Por último, para executar o script cypher para popular o banco, rode:

```
cypher-shell enceladus.cypher -f
```

- Saia do shell, com exit.
- Para rodar o servidor execute:

```
node app
```

## Teste

O servidor deve estar na porta 3000 do local host, e a documentação da API pode ser vista em https://localhost/3000/docs/
