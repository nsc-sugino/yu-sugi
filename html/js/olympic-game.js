//オリンピックが初めて開催された年
let startYear = 1896;

function gameYears(year) {
    //startYear　からyearまでのオリンピック開催年を
    //console.logを使って表示する。

    for (let nen = startYear; nen <= year; nen +=4) {
        console.log(nen);
    }
    return year;
}
gameYears(2020);
