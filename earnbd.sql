CREATE DATABASE earnbd;
USE earnbd;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100) NOT NULL UNIQUE,
  points INT DEFAULT 0
);

CREATE TABLE withdraws (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  method VARCHAR(20),
  number VARCHAR(30),
  amount INT,
  status VARCHAR(20) DEFAULT 'pending',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id)
);