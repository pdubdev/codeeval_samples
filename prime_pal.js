
var listBuilder = function(digits, dsize) {
  var i = 0,
      j = dsize;

  for (; i < dsize; i += 1) {
    digits[i] = j;
    j -= 1;
  };

  return digits;
};

var primePal = function() {
  var digits = [],
      bigprime = 0,
      dsize = 1000;

  listBuilder(digits, dsize);

  for (var i = 0; i < dsize; i += 1) {
    var tovalue = digits[i] - 1,
        outeritem = digits[i],
        outeritem_str = outeritem.toString();

    for (var j = 2; j <= tovalue ; j += 1) {
      if (outeritem % j == 0) {
        bigprime = 0;
        break;
      } else if (outeritem_str != outeritem_str.split("").reverse().join("")) {
        bigprime = 0;
        break;
      } else {
        bigprime = digits[i];
      };
    };

    if (bigprime != 0) {
      break;
    }; 
  };

  console.log(bigprime);
  return;
};


(function () {
  primePal();
}()); 