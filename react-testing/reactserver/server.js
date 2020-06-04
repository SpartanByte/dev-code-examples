var express = require('express');
var path = require('path'); // part of express
var bodyParser = require('body-parser');
var React = require('react');
var ReactDOMServer = require('react-dom/server');
require('bable/register');
var exphbs = require('express-handlebars');
//initialize express
var app = express();

//Set Views path
app.set('views', path.join(__dirname, 'views'));
app.engine('handlebars', exphbs({defaultLayout: 'main'}));
//Set Middleware
app.set('view engine', 'handlebars');

//server route for root
app.get('/', function(req, res){
	res.render('home');
});


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