//Tópicos
//busca por tags de tópicos dessas tags.
//busca por id dos tags do tópico
//busca por id dos mensagens dos tópico
const _ = require('lodash');
const Topico = require('../models/neo4j/topico');
const Mensagem = require('../models/neo4j/mensagem');

const getAll = function(session) {
    return session.readTransaction(txc =>
        txc.run('MATCH (topico:Topico) RETURN topico')
      ).then(r => _manyTopicos(r));
  };
  

const getTopicsByTag =  function (session, tag) {
    const query = [
            'MATCH (tag {nome:$tag})<-[c:Classifica]->(topico:Topico)',
            'RETURN DISTINCT topico'
    ].join('\n');

    return session.readTransaction(txc =>
            txc.run(query, {tag:tag})
        ).then(r => _manyTopicos(r));
};


const getMessagesById = function (session, topicId) {
  const query = [
          'MATCH (men)-[c:Compoe]->(topico: Topico {idTopico:$topicId})',          
          'WITH men AS mensagem',
          'ORDER BY mensagem.datahora',
          'RETURN DISTINCT mensagem'
  ].join('\n');

  return session.readTransaction(txc =>
    txc.run(query, {topicId:topicId}).then(r => _manyMessages(r))
);
}

const _manyTopicos = function (result) {
    return result.records.map(r => new Topico(r.get('topico')));
  };

const _manyMessages = function (result) {
    return result.records.map(r => new Mensagem(r.get('mensagem')));
  };


module.exports = {
getAll: getAll,
getTopicsByTag: getTopicsByTag,
getMessagesById: getMessagesById
};