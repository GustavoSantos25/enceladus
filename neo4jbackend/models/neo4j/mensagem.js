const _ = require('lodash');
const md5 = require('md5');

const Mensagem = module.exports = function (_node) {
    _.extend(this, {
    'datahora': _node.properties['datahora'],
    'id': _node.properties['mId'],
    'texto': _node.properties['texto']
  });
};