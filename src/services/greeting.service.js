const db = require('../config/db');

async function getGreetingMessage() {
  const [rows] = await db.query('SELECT message FROM messages ORDER BY RAND() LIMIT 1');

  if (!rows.length) {
    const error = new Error('No greeting message found in the database.');
    error.statusCode = 404;
    throw error;
  }

  return rows[0].message;
}

module.exports = {
  getGreetingMessage
};
