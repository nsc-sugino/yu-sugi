let min = 1;
let max = 1000;
let number1 = Math.floor( Math.random() * (max + 1 - min) ) + min ;
let number2 = Math.floor( Math.random() * (max + 1 - min) ) + min ;
let length = number1;
let width = number2;


function getArea(length,width) {
    var area = length * width;
    return area;
}
console.log('面積は' + getArea(length,width));

function getPerimeter(length,width) {
    var perimeter = (length + width) * 2;
    return perimeter;
}
console.log('周囲の長さは' + getPerimeter(length,width));