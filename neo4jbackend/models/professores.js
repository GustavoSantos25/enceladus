const _ = require('lodash');
const Professor = require('../models/neo4j/professor');



const register = function (session, nome, email) {
  return session.readTransaction(txc => txc.run('MATCH (professor:Professor {email: $email}) RETURN professor', {email: email}))
    .then(results => {
      if (!_.isEmpty(results.records)) {
        throw {email: 'email already in use', status: 400}
      }
      else {
        return session.writeTransaction(txc => txc.run('CREATE (professor:Professor {nome: $nome, email: $email}) RETURN professor',
          {
            nome: nome,
            email: email
          }
        )).then(results => {
            return new Professor(results.records[0].get('professor'));
          }
        )
      }
    });
};


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
  register: register,
  getAll: getAll,
  getRatings: getRatings
};