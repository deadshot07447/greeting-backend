const db = require('../config/db');

async function getGreetingMessage() {
  try {
    const [rows] = await db.query('SELECT message FROM messages ORDER BY RAND() LIMIT 1');
    if (rows.length) {
      return rows[0].message;
    }
  } catch (err) {
    console.log("Database connection failed, falling back to static greeting.");
  }
  
  return "Hello from the DevOps Pipeline! (Fallback Greeting)";
}

module.exports = {
  getGreetingMessage
};
