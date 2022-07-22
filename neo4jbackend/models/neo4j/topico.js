const _ = require('lodash');
const md5 = require('md5');

const Topico = module.exports = function (_node) {
    _.extend(this, {
    'tipo': _node.properties['tipo'],
    'id': _node.properties['idTopico'],
    'titulo': _node.properties['titulo']
  });
};