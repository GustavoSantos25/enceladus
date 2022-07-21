const _ = require('lodash');
const Professor = require('../models/neo4j/professor');

const getAll = function(session) {
  return session.readTransaction(txc =>
      txc.run('MATCH (professor:Professor) RETURN professor')
    ).then(_manyProfessores);
};

const getRatings = function(session) {
    const query = [
        'MATCH (professor:Professor)',
        'OPTIONAL MATCH (professor)<-[aval:Avalia]-(user)',
    'WITH DISTINCT professor, avg(DISTINCT aval.nota) as avgAval, count(DISTINCT aval) as countAval',
    'ORDER BY avgAval',
    'RETURN DISTINCT professor.nome as nome, avgAval, countAval'
    ].join('\n');

    return session.readTransaction(txc =>
        txc.run(query)
      ).then(result => {
        return result.records.map(r => {return {
                                        nome:r.get('nome'),
                                        numAval: r.get('countAval').low, 
                                        avgAval: r.get('avgAval')}
                                    })
    });
  };
  

const _manyProfessores = function (result) {
  return result.records.map(r => new Professor(r.get('professor')));
};

module.exports = {
  getAll: getAll,
  getRatings: getRatings
};