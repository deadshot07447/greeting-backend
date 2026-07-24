const express = require('express');
const { getGreeting } = require('../controllers/greeting.controller');

const router = express.Router();

router.get('/greeting', getGreeting);

module.exports = router;
