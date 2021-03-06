DROP DATABASE IF EXISTS api_development;
CREATE DATABASE api_development;

\c api_development;

CREATE TABLE models (
  ID SERIAL PRIMARY KEY,
  name VARCHAR,
  attribute INTEGER,
  created_at TIMESTAMP without time zone default (now() at time zone 'utc')
);

INSERT INTO models ( name,attribute )
VALUES ( 'Savings Account',31290 );
INSERT INTO models ( name,attribute )
VALUES ( 'Implementation',39373 );
INSERT INTO models ( name,attribute )
VALUES ( 'parse',51369 );
INSERT INTO models ( name,attribute )
VALUES ( 'e-tailers',95512 );
INSERT INTO models ( name,attribute )
VALUES ( 'Polarised',7442 );
INSERT INTO models ( name,attribute )
VALUES ( 'turn-key',53711 );
INSERT INTO models ( name,attribute )
VALUES ( 'grey',90241 );
INSERT INTO models ( name,attribute )
VALUES ( 'Identity',65920 );
INSERT INTO models ( name,attribute )
VALUES ( 'invoice',71860 );
INSERT INTO models ( name,attribute )
VALUES ( 'neutral',65920 );
INSERT INTO models ( name,attribute )
VALUES ( 'auxiliary',82100 );

CREATE TABLE users (
  ID SERIAL PRIMARY KEY,
    username VARCHAR,
    password VARCHAR
);

INSERT INTO users ( username, password )
VALUES ( 'mprather', '$2a$10$dbnjt3x9vj4brOcq0qyxyOmhw6XZJV3o5SdFDtDkFs4t1X4KhW46m');

---------------------------------------------------------------------------

DROP DATABASE IF EXISTS api_test;
CREATE DATABASE api_test;

\c api_test;

CREATE TABLE models (
  ID SERIAL PRIMARY KEY,
  name VARCHAR,
  attribute INTEGER,
  created_at TIMESTAMP without time zone default (now() at time zone 'utc')
);

CREATE TABLE users (
  ID SERIAL PRIMARY KEY,
    username VARCHAR,
    password VARCHAR
);
