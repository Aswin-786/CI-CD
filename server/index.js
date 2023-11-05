const express = require('express')
const app = express()

app.use(express.json())

app.get('/', (req, res) => {
  res.json({ message: 'my ci cd is working' })
})

app.get('/me', (req, res) => {
  res.json({ message: 'you are going to win aswin...' })
})

app.listen(4000, () => console.log(`Example app listening on port 4000`))
