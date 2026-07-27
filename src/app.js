const express = require('express');
const cors = require('cors');
require('dotenv').config();

const greetingRoutes = require('./routes/greeting.routes');

const app = express();

app.use(cors());
app.use(express.json());

app.get('/health', (req, res) => {
  res.status(200).json({ status: 'okay' });
});

app.use('/api', greetingRoutes);

app.use((req, res) => {
  res.status(404).json({ error: 'Route not found' });
});

module.exports = app;
