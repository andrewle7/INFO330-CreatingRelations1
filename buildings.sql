CREATE TABLE buildings (
  name VARCHAR(80) NOT NULL,
  shortname VARCHAR(10) UNIQUE,
  id INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE rooms (
  number INTEGER,
  buildingid INTEGER,
  seating INTEGER,
  FOREIGN KEY (buildingid) REFERENCES buildings(id)
);

INSERT INTO buildings (name, shortname) VALUES
  ('Mary Gates Hall', 'MGH'),
  ('Savery Hall', 'SAV'),
  ('Johnson Hall', 'JHN');

INSERT INTO rooms (number, buildingid, seating) VALUES
  (430, (SELECT id FROM buildings WHERE name = 'Mary Gates Hall'), 50),
  (131, (SELECT id FROM buildings WHERE name = 'Savery Hall'), 30),
  (126, (SELECT id FROM buildings WHERE name = 'Johnson Hall'), 25);
  
