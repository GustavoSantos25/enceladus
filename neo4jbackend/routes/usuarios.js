const Usuarios = require("../models/usuarios")
  , writeResponse = require('../helpers/response').writeResponse
  , dbUtils = require('../neo4j/dbUtils');

/**
 * @swagger
 * definition:
 *   Usuario:
 *     type: object
 *     properties:
 *       nome:
 *         type: string
 *       nusp:
 *         type: integer
 */

/**
 * @swagger
 * /api/v0/usuarios:
 *   get:
 *     tags:
 *     - usuarios
 *     description: Retorna todos os usuarios do sistema.
 *     summary: Retorna todos os usuarios.
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Uma lista de usuarios
 *         schema:
 *           type: array
 *           items:
 *             $ref: '#/definitions/Usuario'
 */
exports.list = function (req, res, next) {
  Usuarios.getAll(dbUtils.getSession(req))
    .then(response => writeResponse(res, response))
    .catch(next);
};

/**
 * @swagger
 * /api/v0/usuarios/ratings/{nusp}:
 *   get:
 *     tags:
 *     - usuarios
 *     description: Retorna os professores avaliados pelo usuário e a nota dada.
 *     summary: Retorna o sumário de avaliações feita pelo usuario.
 *     produces:
 *       - application/json
 *     parameters:
 *       - name: nusp
 *         description: nusp do aluno que se quer ver as avaliações
 *         in: path
 *         required: true
 *         type: integer
 *     responses:
 *       200:
 *         description: Uma lista de nomes de professores com as avaliações dadas pelo usuário
 *         schema:
 *           type: array
 */
 exports.ratings = function (req, res, next) {
    nusp = Number (req.params.nusp);
    if (!nusp) throw {message: 'Invalid nusp', status: 400};

    Usuarios.getRatingsByNusp(dbUtils.getSession(req), nusp)
      .then(response => writeResponse(res, response))
      .catch(next);
  };


/**
 * @swagger
 * /api/v0/usuarios/amigos/{nusp}:
 *   get:
 *     tags:
 *     - usuarios
 *     description: Retorna os amigos do usuário.
 *     summary: Retorna os amigos do usuário.
 *     produces:
 *       - application/json
 *     parameters:
 *       - name: nusp
 *         description: nusp do aluno que se quer ver os amigos.
 *         in: path
 *         required: true
 *         type: integer
 *     responses:
 *       200:
 *         description: Uma lista de nomes e nusp de usuários amigos.
 *         schema:
 *           type: array
 */
 exports.friends = function (req, res, next) {
    nusp = Number (req.params.nusp);
    if (!nusp) throw {message: 'Invalid nusp', status: 400};

    Usuarios.getFriendsByNusp(dbUtils.getSession(req), nusp)
      .then(response => writeResponse(res, response))
      .catch(next);
  };

  