USE greeting_db;

INSERT INTO messages (message)
SELECT '🧪 Greetings from the QA Database environment! Ready for testing! 🧪'
WHERE NOT EXISTS (
  SELECT 1 FROM messages WHERE message = '🧪 Greetings from the QA Database environment! Ready for testing! 🧪'
);
