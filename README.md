
# **Node.js Express Server Template**

A simple, beginner-friendly template for setting up a Node.js server using the Express framework. This project demonstrates how to handle GET and POST requests, use middleware for logging, and enable CORS for cross-origin requests. It is modular and easily extendable for building scalable web applications.

---

## **Features**

- 🛠️ Basic Express server setup
- 📁 Modular route handling
- 📝 Middleware for logging requests
- 🌐 CORS enabled for cross-origin requests
- 🚀 Ready for GET and POST request handling

---

## **Getting Started**

### **Prerequisites**
To use this template, you’ll need:
- **Node.js** 
- **npm** 

Check your versions:
```bash
node -v
npm -v
```

---

### **Installation**

1. Clone this repository:
   ```bash
   git clone https://github.com/jonathantan12/nodejs-express-server-template.git
   cd nodejs-express-server-template
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

---

### **Usage**

1. Start the server:
   ```bash
   node app.js
   ```

2. Visit the server at:
   ```
   http://localhost:3000
   ```

---

## **Project Structure**

```
nodejs-express-server-template
├── app.js                // Main application file
├── package.json          // Project metadata and dependencies
├── routes/
│   └── index.js          // Route definitions
├── middleware/
│   └── logger.js         // Logging middleware
├── .gitignore            // Files to ignore in Git
└── README.md             // Documentation for this repository
```

---

## **Features in Detail**

### **1. Basic Server**
- A simple Express server is set up in `app.js`.
- Serves a GET request to the root URL (`/`).

### **2. Modular Routes**
- Routes are organized in the `routes/` folder.
- Includes:
  - **GET** `/`: Returns a welcome message.
  - **POST** `/submit`: Handles incoming data from query parameters.

### **3. Middleware for Logging**
- Logs each request’s HTTP method, URL, and timestamp.
- Code in `middleware/logger.js`.

### **4. CORS**
- Cross-Origin Resource Sharing (CORS) is enabled for all routes.
- Can be customized to allow specific domains and methods.

---

## **Testing the POST Request**

To test the POST `/submit` route:

### **Using cURL**
```bash
curl -X POST "http://localhost:3000/submit?name=John+Doe&message=Hello+server!"
```

### **Expected Response**
```
Received data: Name - John Doe, Message - Hello, server!
```

---

## **Customizing CORS**

You can restrict CORS to specific domains or methods by modifying the `app.js` file:

```javascript
const corsOptions = {
  origin: ['http://example.com'], // Replace with allowed origins
  methods: ['GET', 'POST'],      // Allowed HTTP methods
};
app.use(cors(corsOptions));
```

---

## **Contributing**

Contributions are welcome! Feel free to open an issue or submit a pull request.

---

## **Author**

- **Jonathan Tan**  
  [GitHub Profile](https://github.com/jonathantan12)
