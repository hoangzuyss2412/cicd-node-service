const express = require('express');
const app = express();

// Server configuration
const PORT = process.env.PORT || 80;

// Middleware to parse JSON
app.use(express.json());

// HTML endpoint
app.get('/', (req, res) => {
  res.send(`
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Node.js App</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                text-align: center;
                margin-top: 50px;
            }
            h1 {
                color: #4CAF50;
            }
        </style>
    </head>
    <body>
        <h1>Welcome to the Node.js App!</h1>
        <h2> This app is deployed using Github Action and Ansible </h2>
        <p>Check out the <a href="/api/greet?name=YourName">Greet API</a>.</p>
        <p>Deployed on: ${new Date().toLocaleString()}</p>
    </body>
    </html>
  `);
});

// Simple API endpoint
app.get('/api/greet', (req, res) => {
  const name = req.query.name || 'World';
  res.json({ message: `Hello, ${name}!` });
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
