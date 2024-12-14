const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;
app.get('/', (req, res) => {
 res.send('Today is friday, tomorrow will be saturday');
});
app.listen(PORT, () => {
 console.log(`App running on http://localhost:${PORT}`);
});
