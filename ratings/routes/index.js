var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/ratings', function(req, res, next) {
  res.send('We are in the rating server');
});

module.exports = router;
