var express = require('express');
var router = express.Router();
var http = require('http');
/* GET home page. */
router.get('/gateway', function(req, res, next) {
  var random = Math.random()
  
  var options = {
  host: 'localhost',
  port: 3002,
  path: '/ratings'
  };
    
  if(random <= 0.99)
      {
          http.get(options, function(resp) 
          {
  		        console.log("\n\nRedirected to api\n");
     	        res.redirect('/api');
	      }).on('error', function(e) {
  		        console.log("Gracefully handling when ratings server is down");
  		        res.status(500).send("Oops! Something went wrong");
	   });
      }
  else if(random > 0.99 && random <= 0.995)
      {
          http.get(options, function(resp) 
          {
  		        console.log("\n\nRedirected to apicontrol\n");
     	        res.redirect('/apicontrol');
	      }).on('error', function(e) {
  		        console.log("Gracefully handling when ratings server is down");
  		        res.status(500).send("Oops! Something went wrong");
	   });
      }
  else
      {
          console.log("\n\nRedirected to apiExp\n");
          res.redirect("/apiExp")
      }
});

module.exports = router;
