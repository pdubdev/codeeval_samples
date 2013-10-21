// constructor
TrailingStr = function() {};

// prototype functions
TrailingStr.prototype = {

  // function with for loop to process strings
  processLine: function(line) {

    var characters = line.split(",")
      strA = characters[0],
      strB = characters[1],
      stra_length = strA.length,
      strb_length = strB.length,
      answer = 0,
      match_index = strA.indexOf(strB);

    if ((strA.indexOf(strB) != -1) && (match_index + strb_length == stra_length))  {
      answer = 1; 
    };

    return answer;
  }
};

// immediate function to remove from global scope
(function () {
  trail_str = new TrailingStr();
  var fs  = require("fs");
  fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      var t = trail_str.processLine(line);
      console.log(t);
    }
  });
}());