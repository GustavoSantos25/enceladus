const _ = require('lodash');
const md5 = require('md5');

const Usario = module.exports = function (_node) {
    _.extend(this, {
    'nome': _node.properties['nome'],
    'nusp': _node.properties['nusp'].low
  });
};