
CREATE TABLE IF NOT EXISTS ACTORS (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  firstname VARCHAR(20) NOT NULL,
  lastname VARCHAR(20) NOT NULL,
  DOB DATE,
  Gender ENUM('M','F'),
  maritalStatus ENUM('Married', 'Single', 'Divorced', 'Widowed'),
  networth decimal(10,2) DEFAULT 0.00
);

