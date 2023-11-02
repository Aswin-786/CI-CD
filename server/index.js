const express = require('express')
const app = express()

app.use(express.json())

app.get('/', (req, res) => {
  res.json({ message: 'yesssssssssssssssssssss now i made this aswin ... you are a hardworker keep pushing yourself dude ' })
})

app.get('/me', (req, res) => {
  res.json({ message: 'ok' })
})

app.listen(4000, () => console.log(`Example app listening on port 4000`))
