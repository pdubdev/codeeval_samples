
var processLine = function (line) {
  var chars_array = line.split("");

  for (var i = chars_array.length - 1; i >= 0; i--) {
    var each_char = chars_array[i];
    
    if (each_char.toUpperCase() === chars_array[i]) {
      chars_array[i] = each_char.toLowerCase();
    } else {
      chars_array[i] = each_char.toUpperCase();
    }

  };
  console.log(chars_array.join(""));
};

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      var t = processLine(line);
      // console.log(t);
    }
});