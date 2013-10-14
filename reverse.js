
var processLine = function (line) {
  line = line.trim().split(" ").reverse().join(" ");
  return line;
};

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      var t = processLine(line);
      console.log(t);
    }
});