var mysql = require('mysql');

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'pathfinder',
  password: '111111',
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
