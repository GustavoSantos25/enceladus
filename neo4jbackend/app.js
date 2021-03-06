require("dotenv").config();

var express = require("express"),
  path = require("path"),
  routes = require("./routes"),
  nconf = require("./config"),
  swaggerJSDoc = require("swagger-jsdoc"),
  swaggerUi = require("swagger-ui-express"),
  methodOverride = require("method-override"),
  errorHandler = require("errorhandler"),
  bodyParser = require("body-parser"),
  setAuthUser = require("./middlewares/setAuthUser"),
  neo4jSessionCleanup = require("./middlewares/neo4jSessionCleanup"),
  writeError = require("./helpers/response").writeError;

var app = express(),
  api = express();

app.use(nconf.get("api_path"), api);

var swaggerDefinition = {
  info: {
    title: "Neo4j Movie Demo API (Node/Express)",
    version: "1.0.0",
    description: "",
  },
  host: "localhost:3000",
  basePath: "/",
};

// options for the swagger docs
var options = {
  // import swaggerDefinitions
  swaggerDefinition: swaggerDefinition,
  // path to the API docs
  apis: ["./routes/*.js"],
};

// initialize swagger-jsdoc
var swaggerSpec = swaggerJSDoc(options);

// serve swagger
// api.get("/swagger.json", function (req, res) {
//   res.setHeader("Content-Type", "application/json");
//   res.send(swaggerSpec);
// });

app.use("/docs", swaggerUi.serve, swaggerUi.setup(swaggerSpec));
app.set("port", nconf.get("PORT"));

api.use(bodyParser.json());
api.use(methodOverride());

//enable CORS
api.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Credentials", "true");
  res.header(
    "Access-Control-Allow-Methods",
    "GET,HEAD,OPTIONS,POST,PUT,DELETE"
  );
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept, Authorization"
  );
  next();
});

//api custom middlewares:
api.use(setAuthUser);
api.use(neo4jSessionCleanup);

//api routes


api.get("/professores", routes.professores.list);
api.get("/professores/ratings", routes.professores.ratings);
api.post("/professores/register", routes.professores.register);
api.get("/usuarios", routes.usuarios.list);
api.get("/usuarios/ratings/:nusp", routes.usuarios.ratings);
api.get("/usuarios/amigos/:nusp", routes.usuarios.friends);
api.get("/usuarios/nome/:nome", routes.usuarios.getByName);
api.post("/register", routes.usuarios.register);
api.get("/topicos", routes.topicos.list);
api.get("/topicos/byTag/:tag", routes.topicos.byTag);
api.get("/topicos/tags/:topico", routes.topicos.tagByTopic);
api.get("/topicos/messages/:topico", routes.topicos.messages);



//api error handler
api.use(function (err, req, res, next) {
  if (err && err.status) {
    writeError(res, err);
  } else next(err);
});

app.listen(app.get("port"), () => {
  console.log(
    "Express server listening on port " + app.get("port") + " see docs at /docs"
  );
});
