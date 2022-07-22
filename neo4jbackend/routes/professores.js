const Professores = require("../models/professores")
  , writeResponse = require('../helpers/response').writeResponse
  , dbUtils = require('../neo4j/dbUtils');

/**
 * @swagger
 * definition:
 *   Professor:
 *     type: object
 *     properties:
 *       nome:
 *         type: string
 *       email:
 *         type: string
 */

/**
 * @swagger
 * /api/v0/professores:
 *   get:
 *     tags:
 *     - professores
 *     description: Retorna todos os professores
 *     summary: Retorna todos os professores
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Uma lista de professores
 *         schema:
 *           type: array
 *           items:
 *             $ref: '#/definitions/Professor'
 */
exports.list = function (req, res, next) {
  Professores.getAll(dbUtils.getSession(req))
    .then(response => writeResponse(res, response))
    .catch(next);
};

/**
 * @swagger
 * /api/v0/professores/ratings:
 *   get:
 *     tags:
 *     - professores
 *     description: Retorna os professores com média e contagem de avaliações
 *     summary: Retorna o sumário de avaliações dos professores
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Uma lista de professores com médias de avaliações e notas
 *         schema:
 *           type: array
 *           items:
 *             $ref: '#/definitions/Professor'
 */
 exports.ratings = function (req, res, next) {
    Professores.getRatings(dbUtils.getSession(req))
      .then(response => writeResponse(res, response))
      .catch(next);
  };