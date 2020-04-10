let min = 1 ;
let max = 10 ;

let random = Math.floor( Math.random() * (max + 1 - min) ) + min ;

let result = 1;

for (let index = random; index > 0; index--) {
    result = result * index;
 }

 console.log(result);
