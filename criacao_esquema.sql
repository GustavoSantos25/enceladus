CREATE TABLE IF NOT EXISTS unidadeEnsino (
  id_unidade INTEGER PRIMARY KEY,
  nome_unidade VARCHAR(255) NOT NULL,
  nome_end_unidade VARCHAR(255),
  num_end_unidade INTEGER CHECK (num_end_unidade > 0)
);

CREATE TABLE IF NOT EXISTS salaDeEstudos(
  id_sala INTEGER PRIMARY KEY,
  nome_sala VARCHAR(255) NOT NULL,
  limite_pessoas INTEGER NOT NULL CHECK (limite_pessoas >= 1),
  quantidade_tomadas INTEGER NOT NULL CHECK (quantidade_tomadas >= 0),
  ventilacao INTEGER CHECK(ventilacao >= 0 AND ventilacao <= 7), -- janela | ventilador << 1 || ar condicionado << 2
  lousa BOOLEAN NOT NULL,
  status_sala INTEGER, --0: normal, 1: em obras
  pertence INTEGER REFERENCES unidadeensino(id_unidade) ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS usuario(
  nusp INTEGER PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  telefone VARCHAR(12) CHECK (telefone ~ '^[0-9]+$'),
  email VARCHAR(255) UNIQUE NOT NULL CHECK (email ~* '^[a-z0-9._+%-]+@[a-z0-9.-]+[.][A-Za-z]+$'),
  tipo INTEGER,
  status_usuario VARCHAR(255),
  estuda_em INTEGER REFERENCES unidadeensino(id_unidade) ON UPDATE CASCADE,
  curso INTEGER NOT NULL,
  nivel_curso INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS comentario(
  autor_comentario INTEGER REFERENCES usuario(nusp) ON UPDATE CASCADE,
  sala_comentario INTEGER REFERENCES saladeestudos(id_sala) ON UPDATE CASCADE,
  texto_comentario VARCHAR(255) NOT NULL,
  data_comentario DATE NOT NULL,
  PRIMARY KEY(autor_comentario, sala_comentario, data_comentario)
);


CREATE OR REPLACE FUNCTION apagaComentariosUsuario()
  RETURNS TRIGGER AS $$
BEGIN
  DELETE FROM comentario WHERE autor_comentario = OLD.nusp;
  RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER apagaComentarios
BEFORE DELETE ON usuario
FOR EACH ROW
EXECUTE PROCEDURE apagaComentariosUsuario();


CREATE OR REPLACE FUNCTION apagaComentariosSala()
  RETURNS TRIGGER AS $$
BEGIN
  DELETE FROM comentario WHERE sala_comentario = OLD.id_sala;
  RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER apagaComentariosSalas
BEFORE DELETE ON saladeestudos
FOR EACH ROW
EXECUTE PROCEDURE apagaComentariosSala();


CREATE OR REPLACE FUNCTION apagaDadosUnidade()
  RETURNS TRIGGER AS $$
BEGIN
  DELETE FROM saladeestudos WHERE pertence = OLD.id_unidade;
  DELETE FROM usuario WHERE estuda_em = OLD.id_unidade;
  RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER apagaDadosUnidades
BEFORE DELETE ON unidadeensino
FOR EACH ROW
EXECUTE PROCEDURE apagaDadosUnidade();