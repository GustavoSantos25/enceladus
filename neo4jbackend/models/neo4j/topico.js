const _ = require('lodash');
const md5 = require('md5');

const Usario = module.exports = function (_node) {
    _.extend(this, {
    'tipo': _node.properties['tipo'],
    'id': _node.properties['idTopico'].low,
    'titulo': _node.properties['titulo'].low
  });
};