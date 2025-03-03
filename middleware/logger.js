// middleware/logger.js
module.exports = (req, res, next) => {
    const currentDate = new Date().toISOString();
    console.log(`[${currentDate}] ${req.method} ${req.url}`);
    next(); // Proceed to the next middleware or route handler
  };
  