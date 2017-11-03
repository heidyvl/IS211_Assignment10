CREATE TABLE artist (
  id    INTEGER PRIMARY KEY, 
  name  TEXT
);

CREATE TABLE albums (
  id INTEGER PRIMARY KEY,
  name TEXT,
  artist INTEGER,
  FOREIGN KEY(artist) REFERENCES artist(id)
);

CREATE TABLE songs (
  id INTEGER PRIMARY KEY,
  name TEXT,
  track INTEGER,
  duration REAL,
  album INTEGER,
  FOREIGN KEY(album) REFERENCES albums(id)
);


INSERT INTO artist VALUES (1, "Britney Spears");
INSERT INTO artist VALUES (2, "Sia");

INSERT INTO albums VALUES (1, "Baby One More Time", 1);
INSERT INTO albums VALUES (2, "We Are Born", 2);

INSERT INTO songs VALUES (1, "Baby One More Time", 1, 2.25, 1);
INSERT INTO songs VALUES (2, "Cloud", 9, 3.05, 2);


SELECT * FROM artist;
SELECT * FROM albums;
SELECT * FROM songs;
