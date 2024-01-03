const http = require('http');

const hostname = '0.0.0.0'; // Change this to your desired hostname or use 'localhost'
const port = 8000; // Change this to your desired port number

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  // console.log('request arrived: ', process.pid);
  res.end('Hello, this is your Node.js server!\n');
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
