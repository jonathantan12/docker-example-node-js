const express = require('express');
const cors = require('cors');
const app = express();
const PORT = process.env.PORT || 3000;

// Import custom middleware
const logger = require('./middleware/logger');

// Enable CORS for all routes
app.use(cors());

// Use the logger middleware for all requests
app.use(logger);

// Import and use the index routes
const indexRouter = require('./routes/index');
app.use('/', indexRouter);

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
