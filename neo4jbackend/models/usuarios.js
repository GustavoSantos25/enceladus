const _ = require('lodash');
const { session } = require('neo4j-driver');
const Usuario = require('../models/neo4j/usuario');

const getAll = function(session) {
  return session.readTransaction(txc =>
      txc.run('MATCH (usuario:User) RETURN usuario')
    ).then(r => _manyUsuarios(r));
};

const getRatingsByNusp = function(session, nusp) {
    const query = [
        'MATCH (usuario:User {nusp: $meuNusp})-[aval:Avalia]->(professor:Professor)',
        'RETURN aval.nota AS notaProfessor, professor.nome AS professorAvaliado'
    ].join('\n');

    return session.readTransaction(txc =>
        txc.run(query, {meuNusp:nusp})
      ).then(result => {
        return result.records.map(r => {
            return {
                professor: r.get('professorAvaliado'),
                avaliacaoUsuario: r.get('notaProfessor').low
            }
        })
    });
  };
  
const getFriendsByNusp =  function (session, nusp) {
    const query = [
            'MATCH (friend)<-[a:Amizade]->(user:User {nusp: $userNusp})',
            'RETURN friend AS usuario'
    ].join('\n');

    return session.readTransaction(txc =>
            txc.run(query, {userNusp:nusp})
        ).then(r => _manyUsuarios(r));
};

const _manyUsuarios = function (result) {
  return result.records.map(r => new Usuario(r.get('usuario')));
};

module.exports = {
  getAll: getAll,
  getRatingsByNusp: getRatingsByNusp,
  getFriendsByNusp: getFriendsByNusp
};