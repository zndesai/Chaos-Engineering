var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.status(500).send('Oops! Server is not working');
});

module.exports = router;
