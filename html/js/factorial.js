//正解（例）
console.log(factor(4));

function factor(number){
    if (number == 0 || number == 1){
        return 1;
    }
    let result = 1;

    for (let counter = number; counter > 0; counter--) {
        result = result * counter;
    }
    return result;
}
//console.log(factor(4));


//自分のやつ
let min = 1 ;
let max = 10 ;

let random = Math.floor(Math.random() * (max + 1 - min) ) + min ;

let result = 1;

for (let index = random; index > 0; index--) {
    result = result * index;
 }

 console.log(result);
