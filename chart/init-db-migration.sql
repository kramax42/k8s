CREATE TABLE IF NOT EXISTS numbers (
  id SERIAL PRIMARY KEY,
  number INT NOT NULL
);

INSERT INTO numbers (number) VALUES  (3000), (45), (8912), (5);
