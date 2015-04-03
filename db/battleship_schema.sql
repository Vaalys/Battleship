DROP TABLE IF EXISTS ships, oceans, cells;

CREATE TABLE ships(
  id SERIAL PRIMARY KEY,
  name        TEXT NOT NULL,
  length      INTEGER NOT NULL,
  sunk_ornot  BOOLEAN NOT NULL
);

CREATE TABLE oceans(
  id SERIAL PRIMARY KEY,
  height       INTEGER,
  width        INTEGER
);

CREATE TABLE cells(
  id SERIAL PRIMARY KEY,
  x_coor      INTEGER,
  y_coor      INTEGER,
  hit_ornot   BOOLEAN,
  ocean_id    INTEGER,
  ship_id     INTEGER
);
