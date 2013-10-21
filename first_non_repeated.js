// constructor
FirstNon = function() {};

// prototype functions
FirstNon.prototype = {

    // function with for loop to process string
    processLine: function(line) {

        var characters = line.split(""),
            clength = characters.length,
            temp_winner = [];

        temp_winner[0] = characters[0];

        for (var i = 1; i < clength; i += 1) {

            if (temp_winner.indexOf(characters[i]) == -1) {
                temp_winner.push(characters[i]);
            } else {
                var index = temp_winner.indexOf(characters[i]);
                characters.splice(i, 1)
                clength -= 1;
                i -= 1;
                temp_winner.splice(index, 1)
            };
        };
        return temp_winner[0];
    }
};

// immediate function to remove from global scope
(function () {
    first_non = new FirstNon();
    var fs  = require("fs");
    fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
        if (line != "") {
          var t = first_non.processLine(line);
          console.log(t);
        }
    });
}());