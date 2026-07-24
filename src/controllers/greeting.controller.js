const greetingService = require('../services/greeting.service');

async function getGreeting(req, res) {
  try {
    const message = await greetingService.getGreetingMessage();

    res.status(200).json({ message });
  } catch (error) {
    const statusCode = error.statusCode || 500;
    const message = error.message || 'Internal server error';

    res.status(statusCode).json({ error: message });
  }
}

module.exports = {
  getGreeting
};
