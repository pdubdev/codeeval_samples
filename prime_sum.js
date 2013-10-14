var isPrime = function(num){
  if (num < 2){
    return false;
  }

  var currentDivisor = Math.ceil( num / 2 );
  for (i = 2; currentDivisor >= 2; currentDivisor--) {
    if (num % currentDivisor === 0) {
      return false;
    }
  };

  return true;
};

var sumOfPrimes = function(){
  var primes = [];
  var currentNumber = 2;
  while (primes.length < 1000) {
    if ( isPrime(currentNumber) ){
      primes.push(currentNumber);
    }
    currentNumber++;
  }

  var primeSum = 0;
  for (var i = primes.length - 1; i >= 0; i--) {
    primeSum += primes[i];
  };

  console.log(primeSum);
  return;
};

(function () {
  sumOfPrimes();
}());