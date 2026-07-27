USE greeting_db;

INSERT INTO messages (message)
SELECT '🛠️ Greetings from the LOCAL DEV Database! 🛠️'
WHERE NOT EXISTS (
  SELECT 1 FROM messages WHERE message = '🛠️ Greetings from the LOCAL DEV Database! 🛠️'
);
