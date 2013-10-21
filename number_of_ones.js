// constructor
NumOnes = function() {};

// prototype functions
NumOnes.prototype = {

  // function with for loop
  processLine: function(line) {
    var num = line,
        binary = (num >>> 0).toString(2),
        num = binary.toString(),
        num = num.split(""),
        num_ones = 0;
     
    for (var i = 0; i < num.length; i++) {
      if (num[i] == 1) {
        num_ones = num_ones + 1;
      }
    };

    return num_ones;
  }
};

// immediate function to remove from global scope
(function () {
  num_ones = new NumOnes();
  var fs  = require("fs");
  fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      var t = num_ones.processLine(line);
      console.log(t);
    }
  });
}());