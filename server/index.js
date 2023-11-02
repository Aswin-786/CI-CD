const express = require('express')
const app = express()

app.use(express.json())

app.get('/', (req, res) => {
  res.json({ message: 'check now' })
})

app.listen(4000, () => console.log(`Example app listening on port 4000`))
