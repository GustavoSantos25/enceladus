const Usuarios = require("../models/usuarios")
  , writeResponse = require('../helpers/response').writeResponse
  , dbUtils = require('../neo4j/dbUtils');
const _ = require('lodash');
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

  
/**
 * @swagger
 * /api/v0/usuarios/nome/{nome}:
 *   get:
 *     tags:
 *     - usuarios
 *     description: Os usuário que contenham o nome dado (pode ser como substring do nome).
 *     summary: Retorna os usuários com o nome passado
 *     produces:
 *       - application/json
 *     parameters:
 *       - name: nome
 *         description: nome a ser buscado.
 *         in: path
 *         required: true
 *         type: string
 *     responses:
 *       200:
 *         description: Uma lista de usuários cujos nomes contém o nome passado
 *         schema:
 *           type: array
 *           items:
 *             $ref: '#/definitions/Usuario' 
 */
 exports.getByName = function (req, res, next) {
  nome = req.params.nome;
  if (!nome) throw {message: 'Invalid name', status: 400};

  Usuarios.getByName(dbUtils.getSession(req), nome)
    .then(response => writeResponse(res, response))
    .catch(next);
};


/**
 * @swagger
 * /api/v0/register:
 *   post:
 *     tags:
 *     - usuarios
 *     description: Registra um novo usuário
 *     produces:
 *       - application/json
 *     parameters:
 *       - name: body
 *         in: body
 *         type: object
 *         schema:
 *           type: object
 *           properties:
 *             nome:
 *               type: string
 *             nusp:
 *               type: integer
 *     responses:
 *       201:
 *         description: Your new user
 *         schema:
 *           $ref: '#/definitions/User'
 *       400:
 *         description: Error message(s)
 */
 exports.register = function (req, res, next) {
  const nome = _.get(req.body, 'nome');
  const nusp = _.get(req.body, 'nusp');

  if (!nome) {
    throw {nome: 'This field is required.', status: 400};
  }
  if (!nusp) {
    throw {nusp: 'This field is required.', status: 400};
  }

  Usuarios.register(dbUtils.getSession(req), nome, nusp)
    .then(response => writeResponse(res, response, 201))
    .catch(next);
};
