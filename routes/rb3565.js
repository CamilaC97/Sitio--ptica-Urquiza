var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('rb3565');
});

function changeImage(element) {

  var main_prodcut_image = document.getElementById('main_product_image');
  main_prodcut_image.src = element.src;
  

}

module.exports = router;

