var fs = require('fs');
var path = require('path');
var yaml = require('js-yaml');
var jandoc = require('jandoc');

// Read the document
var readTo = path.normalize(process.argv[2])
var writeTo = path.normalize(process.argv[3])

// Read the header
var meta = yaml.safeLoad(fs.readFileSync('plmt.yaml', 'utf8'));

function writeTableBlock(str, p1, p2, offset, s) {
  var block = p1;
  for (var i = 0; i < meta.table.length; i++) {
    var tab = meta.table[i];
    if (tab.id === p2) {
      var content = fs.readFileSync('tables/' + tab.file, 'utf-8', function (
        err) {
        if (err) {
          return (err)
        }
      });
      var convert = jandoc({
        input: 'tables/',
        output: 'tables/',
        write: 'latex'
      });
      block = '\\input{tables/' + tab.id + '.latex}';
    }
  }
  return block;
}


var data = fs.readFile(readTo, 'utf-8', function (err, data) {
  if (err) console.log(err);

  var table = /(\?\{([a-z0-9A-Z_-]+)\}){1}/g;
  data = data.replace(table, writeTableBlock);

  fs.writeFile(writeTo, data, 'utf-8', function (err) {
    if (err) console.log(err);
  });


});
