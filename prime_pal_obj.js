// constructor
PrimePal = function(dsize) {
    this.size = dsize;
    this.dig = [];
    this.bigprime = 0;
};

// prototype functions
PrimePal.prototype = {

    // function with for loop to initialize array
    listBuilder: function() {
        var i = 0,
            j = this.size;

        for (; i < j; i += 1) {
            this.dig[i] = j;
            j -= 1;
        };

        return this.dig;
    },

    // function to find prime palindrome
    findprimePal: function () {
        for (var i = 0; i < this.size; i += 1) {
            var tovalue = this.dig[i] - 1,
                outeritem = this.dig[i],
                outeritem_str = outeritem.toString();

            for (var j = 2; j <= tovalue; j += 1) {
                if (outeritem % j == 0) {
                    this.bigprime = 0;
                    break;
                } else if (outeritem_str != outeritem_str.split("").reverse().join("")) {
                    this.bigprime = 0;
                    break;
                } else {
                    this.bigprime = this.dig[i];
                };
            };

            if (this.bigprime != 0) {
                break;
            }; 
        };

        console.log(this.bigprime);
        return;
    }
};

// immediate function to remove from global scope
(function () {
    var primepal = null;
    primepal = new PrimePal(1000);
    var digits = primepal.listBuilder();
    primepal.findprimePal(digits);
}());
