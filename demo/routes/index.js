
module.exports = function(io)	{

	var express = require('express');
	var router = express.Router();

	/* GET home page. */
	router.get('/', function(req, res, next) {
	  res.render('index', { title: 'Demo site' });
	});

	io.on( "connection", function( socket )	{
	    console.log( "A user connected" );

	    socket.on('disconnect', function(){
	    	console.log('user disconnected');
	  	});

	    delaySim(socket)
	  	
	});

	function delaySim(socket)	{
		setTimeout(function() { 
	    	socket.emit('stdout', 'You can do it.'); 
	    	delaySim(socket)
	    }, 500);
	}

	return router;
} 
