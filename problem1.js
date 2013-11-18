
var natNum = [];

var maxNum = prompt('Enter a max value');

var firstMultiple = prompt('Enter the first multiple');
var secondMultiple = prompt('Enter the second multiple');

for ( var i = 0; i < maxNum; i++){
  if ((i % 3 === 0) || (i % 5 === 0)){
    natNum.push(i);
  }
}

var finalNum = 0;
for ( var i = 0; i < natNum.length; i++){
  finalNum = finalNum + natNum[i];
}

console.log(finalNum);