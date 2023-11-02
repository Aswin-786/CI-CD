const express = require('express')
const app = express()

app.use(express.json())

app.get('/', (req, res) => {
  res.json({ message: 'hi to all this is going to work' })
})

app.listen(4000, () => console.log(`Example app listening on port 4000`))