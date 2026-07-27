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

INSERT INTO messages (message)
SELECT 'Welcome to the greeting API!'
WHERE NOT EXISTS (
  SELECT 1 FROM messages WHERE message = 'Welcome to the greeting API!'
);

INSERT INTO messages (message)
SELECT 'Today is a great day to code!'
WHERE NOT EXISTS (
  SELECT 1 FROM messages WHERE message = 'Today is a great day to code!'
);

INSERT INTO messages (message)
SELECT 'Your backend is ready to serve greetings.'
WHERE NOT EXISTS (
  SELECT 1 FROM messages WHERE message = 'Your backend is ready to serve greetings.'
);

INSERT INTO messages (message)
SELECT 'Have a nice day from the MySQL API!'
WHERE NOT EXISTS (
  SELECT 1 FROM messages WHERE message = 'Have a nice day from the MySQL API!'
);

INSERT INTO messages (message)
SELECT '🚀 This greeting comes directly from your newly deployed MySQL Database! 🚀'
WHERE NOT EXISTS (
  SELECT 1 FROM messages WHERE message = '🚀 This greeting comes directly from your newly deployed MySQL Database! 🚀'
);
