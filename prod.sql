USE greeting_db;

INSERT INTO messages (message)
SELECT '🌟 Greetings from the PRODUCTION Database! Live and kicking! 🌟'
WHERE NOT EXISTS (
  SELECT 1 FROM messages WHERE message = '🌟 Greetings from the PRODUCTION Database! Live and kicking! 🌟'
);
