const _ = require('lodash');
const { session } = require('neo4j-driver');
const Usuario = require('../models/neo4j/usuario');


const register = function (session, username, nusp) {
  return session.readTransaction(txc => txc.run('MATCH (user:User {nusp: $nusp}) RETURN user', {nusp: nusp}))
    .then(results => {
      if (!_.isEmpty(results.records)) {
        throw {nusp: 'nusp already in use', status: 400}
      }
      else {
        return session.writeTransaction(txc => txc.run('CREATE (user:User {nome: $username, nusp: $nusp}) RETURN user',
          {
            username: username,
            nusp: nusp
          }
        )).then(results => {
            return new Usuario(results.records[0].get('user'));
          }
        )
      }
    });
};


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


const getByName =  function (session, nome) {
    const query = [
            'MATCH (usuario:User)',
            'WHERE usuario.nome CONTAINS $nome',
            'RETURN usuario'
    ].join('\n');

    return session.readTransaction(txc =>
            txc.run(query, {nome:nome})
        ).then(r => _manyUsuarios(r));
};





const _manyUsuarios = function (result) {
  return result.records.map(r => new Usuario(r.get('usuario')));
};

module.exports = {
  getAll: getAll,
  getRatingsByNusp: getRatingsByNusp,
  getFriendsByNusp: getFriendsByNusp,
  getByName: getByName,
  register: register
};