var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.redirect('http://localhost:3002/ratings');
});

module.exports = router;
