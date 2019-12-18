var express = require('express');
const bodyParser = require('bpdy-parser');
const fs = require('fs');
const mysql = require('mysql');
const multer = require('multer');
var app = express();
var router = require('./router/main')(app);

app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');
app.engine('html', require('ejs').renderFile);

var server = app.listen(3000, function(){
    console.log("Express server has started on port 3000")
});

