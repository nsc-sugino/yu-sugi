
let numbers = [1,2,3,4,5,6];

function checkNumber(number) {
    if (number % 2 == 0) {
        console.log('偶数です');
      } else {
        console.log('奇数です');
      }  
    return number;
}

function checkarray(){
    for (let ww = 0; ww < numbers.length; ww++) {
        if (numbers[ww] == (numbers[ww] % 2)) {
            console.log(numbers[ww]);
        } else {
            console.log(numbers[ww]);
        }
    }
    return ;
}
checkarray();
//コンソールに「奇数です」と表示される
checkNumber(5);

//コンソールに「偶数です」と表示される
checkNumber(2);