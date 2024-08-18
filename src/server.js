import express from 'express';
const app = express()

const hostname = process.env.HOST || '127.0.0.1';
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('Hello from Node Express server!')
})

app.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`)
})