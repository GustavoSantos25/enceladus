const Topicos = require("../models/topicos")
  , writeResponse = require('../helpers/response').writeResponse
  , dbUtils = require('../neo4j/dbUtils');

/**
 * @swagger
 * definition:
 *   Mensagem:
 *     type: object
 *     properties:
 *       id:
 *         type: string
 *       texto:
 *         type: string
 *       datahora:
 *         type: string
 * 
 */


/**
 * @swagger
 * definition:
 *   Topico:
 *     type: object
 *     properties:
 *       id:
 *         type: string
 *       titulo:
 *         type: string
 *       tipo:
 *         type: string
 * 
 */

/**
 * @swagger
 * /api/v0/topicos:
 *   get:
 *     tags:
 *     - topicos
 *     description: Retorna todos os topicos do sistema.
 *     summary: Retorna todos os topicos.
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Uma lista de topicos
 *         schema:
 *           type: array
 *           items:
 *             $ref: '#/definitions/Topico'
 */
exports.list = function (req, res, next) {
  Topicos.getAll(dbUtils.getSession(req))
    .then(response => writeResponse(res, response))
    .catch(next);
};

/**
 * @swagger
 * /api/v0/topicos/byTag/{tag}:
 *   get:
 *     tags:
 *     - topicos
 *     description: Retorna todos os topicos com a tag passada.
 *     summary: Retorna todos os topicos com a tag passada.
 *     produces:
 *       - application/json
 *     parameters:
 *       - name: tag
 *         description: texto da tag a ser buscada
 *         in: path
 *         required: true
 *         type: string
 *     responses:
 *       200:
 *         description: Uma lista de tópicos, cada um como 
 *         schema:
 *           type: array
 *           items:
 *             $ref: '#/definitions/Topico'
 */
 exports.byTag = function (req, res, next) {
    tag = req.params.tag;
    if (!tag) throw {message: 'Invalid nusp', status: 400};

    Topicos.getTopicsByTag(dbUtils.getSession(req), tag)
      .then(response => writeResponse(res, response))
      .catch(next);
  };


  
/**
 * @swagger
 * /api/v0/topicos/messages/{topico}:
 *   get:
 *     tags:
 *     - topicos
 *     description: Retorna todas as mensagens do tópico passado. É passado o id do tópico na url e é retornado uma lista de mensagens ordenada por data (mais antiga da mais nova)
 *     summary: Retorna todos as mensagens do tópico passado.
 *     produces:
 *       - application/json
 *     parameters:
 *       - name: topico
 *         description: id do tópico
 *         in: path
 *         required: true
 *         type: string
 *     responses:
 *       200:
 *         description: Uma lista de mensagens, ordenada por data
 *         schema:
 *           type: array
 *           items:
 *             $ref: '#/definitions/Mensagem'
 */
 exports.messages = function (req, res, next) {
    const topico = req.params.topico;
    if (!topico) throw {message: 'Invalid topic id', status: 400};

    Topicos.getMessagesById(dbUtils.getSession(req), topico)
      .then(response => writeResponse(res, response))
      .catch(next);
  };

