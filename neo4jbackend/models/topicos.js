//Tópicos
//busca por tags de tópicos dessas tags.
//busca por id dos tags do tópico
//busca por id dos mensagens dos tópico
const _ = require('lodash');
const Topico = require('../models/neo4j/topico');


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
            txc.run(query, {})
        ).then(r => _manyTopicos(r));
};



const _manyTopicos = function (result) {
    return result.records.map(r => new Topico(r.get('topico')));
  };


  module.exports = {
    getAll: getAll,
    getTopicsByTag: getTopicsByTag
  };