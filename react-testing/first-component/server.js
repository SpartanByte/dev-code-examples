var express = require('express');
var path = require('path'); // part of express
var bodyParser = require('body-parser');

//initialize express
var app = express();

//Set Port
app.set('port', (process.env.port || 3000));

//set path to folder with client side files
app.use(express.static(path.join(__dirname, 'client')));

//BodyParser Middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

//Start server
app.listen(app.get('port'), function(){
	// this is what you want to happen after the server starts
	console.log('Server has started on port: ' + app.get('port'));
});