CREATE DATABASE IF NOT EXISTS greeting_db;

USE greeting_db;

CREATE TABLE IF NOT EXISTS messages (
  id INT AUTO_INCREMENT PRIMARY KEY,
  message VARCHAR(255) NOT NULL
);

INSERT INTO messages (message)
SELECT 'Hello from Backend Database!'
WHERE NOT EXISTS (
  SELECT 1 FROM messages WHERE message = 'Hello from Backend Database!'
);
