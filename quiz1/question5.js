// 5. Write a function in JavaScript that takes in a number n and returns the first n even numbers.

var number = parseInt(prompt("How many even numbers would you like to print?"));

var printEvens = function(number){
  var numberArray = [];
  for(i = 1; numberArray.length < number; i++) {
    if (i % 2 === 0) numberArray.push(i);
  }
  return numberArray;
};

console.log(printEvens(number));
