const express = require('express')
const app = express()

app.use(express.json())

app.get('/', (req, res) => {
  res.json({ message: 'now i made this aswin ... you are a hardworker keep pushing yourself dude ' })
})

app.get('/me', (req, res) => {
  res.json({ message: '.. you are going to win' })
})

app.listen(4000, () => console.log(`Example app listening on port 4000`))
