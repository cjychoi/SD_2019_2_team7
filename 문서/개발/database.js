var mysql = require('mysql');

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'wndwjs0327',
  database: 'pathfinder'
});

connection.connect();

connection.query('select * from tourist_destination', function(error, results, fields){
  if(error){
    console.log(error);
  }
  console.log(results);
});
connection.end();
