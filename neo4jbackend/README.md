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

## Help

Any advise for common problems or issues.

```
command to run if program contains helper info
```

## Authors

Contributors names and contact info

ex. Dominique Pizzie  
ex. [@DomPizzie](https://twitter.com/dompizzie)

## Version History

- 0.2
  - Various bug fixes and optimizations
  - See [commit change]() or See [release history]()
- 0.1
  - Initial Release

## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details

## Acknowledgments

Inspiration, code snippets, etc.

- [awesome-readme](https://github.com/matiassingers/awesome-readme)
- [PurpleBooth](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2)
- [dbader](https://github.com/dbader/readme-template)
- [zenorocha](https://gist.github.com/zenorocha/4526327)
- [fvcproductions](https://gist.github.com/fvcproductions/1bfc2d4aecb01a834b46)
