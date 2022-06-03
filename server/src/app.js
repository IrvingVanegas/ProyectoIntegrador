const express = require('express');
const app = express();
const morgan = require('morgan');
const cors = require('cors');

app.use(morgan('dev'));
app.use(cors());
//Rutas que hacen uso de post
app.use(express.urlencoded({ extended: true }));    //Middleware para formato x-www-form-urlencoded
app.use(require('./routes/trabajador'));

module.exports = app;