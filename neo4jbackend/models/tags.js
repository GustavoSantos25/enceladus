//Tópicos
//busca por tags de tópicos dessas tags.
//busca por id dos tags do tópico
//busca por id dos mensagens dos tópico
const _ = require('lodash');
const Topico = require('../models/neo4j/topico');
const Mensagem = require('../models/neo4j/mensagem');
const Tag = require('../models/neo4j/tag');

const getAll = function(session) {
    return session.readTransaction(txc =>
        txc.run('MATCH (topico:Topico) RETURN topico')
      ).then(r => _manyTopicos(r));
  };
  

const getContentByTag =  function (session, tag) {
    const query = [
            'MATCH (tag {nome:$tag})<-[c:Classifica]->(content)',
            'RETURN DISTINCT content, DISTINCT LABELS (c) AS label'
    ].join('\n');

    return session.readTransaction(txc =>
            txc.run(query, {tag:tag})
        ).then(r => _manyContent(r));
};



const _manyContent = function (result) {
    return result.records.map(r => _.extend(r.get('content').properties), {'label':r.get('label')});
  };


module.exports = {
getAll: getAll,
getContentsByTag: getContentsByTag,

};
