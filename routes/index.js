const router = require('express').Router();
const fs = require('fs');

/* redux */
router.get('/flux', function(req, res, next) {
  res.render('flux', {title: 'Express Flux'});
});

/* tags */
router.get('/custom', function(req, res, next) {
  res.render('custom', {title: 'Riot tags'});
});

/* todo. */
router.get('/', function(req, res, next) {
  let contentsObj;
  fs.readFile('/tmp/content.txt', 'utf8', (err, data) => {
    if (err) throw err;
    contentsObj = JSON.parse(data);
    let contentsLine = '['
    contentsObj.forEach ( function( thisArg ) {
        let addLine = "{title: '" + thisArg.title + "'}, "
        contentsLine += addLine 
    });

    contentsLine = contentsLine.substr(0, contentsLine.length-2);
    contentsLine += ']'
    res.render('index', { title: 'Express' , list: contentsLine});
  });
});

router.post('/', function(req, res, next) {
  console.log(req.body);
  fs.writeFile('/tmp/content.txt', req.body.list, 'utf8', (err) => {
    if (err) throw err;
    console.log('the file should be saved.');
    res.redirect('/');
  });
});

module.exports = router;
