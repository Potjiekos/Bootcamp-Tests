// 4. Write a JavaScript function called: isPrime. The function must take a number n and it should return `true` or `false` whether the argument passed (n) is a prime number or not. A prime number is a number that is divisible only by 1 and itself.

var isPrime = function(n){
    for (var i = 2; i <= n; i++){
      if (n === i){
        return true
      } else if (n % i === 0) {
        return false
      }
    }
};

console.log(isPrime(2))
console.log(isPrime(4))
console.log(isPrime(5))
console.log(isPrime(13))
console.log(isPrime(17))
console.log(isPrime(19))
