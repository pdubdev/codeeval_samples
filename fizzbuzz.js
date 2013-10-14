
var processLine = function (line) {
  var lineSplit = line.split(" "),
      divisorA = parseInt(lineSplit[0]),
      divisorB = parseInt(lineSplit[1]),
      upTo = parseInt(lineSplit[2]),
      numbers = [],
      i = 0;

  for (i = 0; i < upTo; i += 1) {
    numbers[i] = i + 1;
    var ii = i + 1;

    if (ii % divisorA  == 0) {
      numbers[i] = "F";      
    }

    if (ii % divisorB == 0) {
      if (numbers[i] == "F") {
        numbers[i] = "FB";
      } else {
        numbers[i] = "B";
      }
    }    
  }

  console.log(numbers.join(" "));
};

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      processLine(line);
    }
});