// routes/index.js
const express = require('express');
const router = express.Router();

// Handle GET request for the home page
router.get('/', (req, res) => {
  res.send('Welcome to the home page!');
});

// Handle POST request to /submit
router.post('/submit', (req, res) => {
  const { name, message } = req.query; // Extract data from query parameters
  res.send(`Received data: Name - ${name}, Message - ${message}`);
});

module.exports = router;
