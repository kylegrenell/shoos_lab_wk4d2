DROP TABLE IF EXISTS shoes;

CREATE TABLE shoes (
  id SERIAL4 PRIMARY KEY,
  orderer VARCHAR(255),
  address VARCHAR(255),
  quantity INT2,
  size INT2
);