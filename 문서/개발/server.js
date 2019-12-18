const express = require('express');

const app = express();
const PORT = process.env.PORT = 15000;

app.use(express.static('public'));

app.listen(PORT, () => {
  console.log('server is running at: ', PORT);
});
