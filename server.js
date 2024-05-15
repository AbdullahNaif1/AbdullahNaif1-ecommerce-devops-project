const express = require('express');
const mongoose = require('mongoose');
const app = express();
const PORT = process.env.PORT || 3000;

mongoose.connect('mongodb://mongo:27017/ecommerce', { useNewUrlParser: true, useUnifiedTopology: true });

app.get('/', (req, res) => {
    res.send('Welcome to the E-commerce Application!');
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});

