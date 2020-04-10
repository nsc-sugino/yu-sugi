//let numbers = [80,90,100,60,70];

//function average(numbers) {
    //let sum = 0;
    //let avesum = 0;
    //for (let kazu = 0; kazu < numbers.lenge; kazu++) {
        //sum = sum + numbers[kazu];
    //}
    //avesum = sum / numbers.lenge;

    //return avesum;

//}
//console.log(average(numbers));

function average(array) {

    let sum = 0;

    for (let counter = 0; counter < array.length; counter++) {
        sum = sum + array[counter];
    }
    return sum / array.length;
}

let values = [1,2,3];

console.log(average(values));