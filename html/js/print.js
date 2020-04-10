function hyakukei() {
    let reslut = 0;
    for (let tate = 1; tate <= 10; tate++) {
        for (let yoko = 1; yoko <= 10; yoko++) {
            reslut = tate * yoko;
            console.log(reslut);
        }
    }
    return reslut;
}
hyakukei();

function hyakukei2() {
    let reslut2 = 0;
    for (let tate2 = 1; tate2 <= 10; tate2++) {
        for (let yoko2 = 1; yoko2 <= 10; yoko2++) {
            reslut2 = tate2 * yoko2;
            var zero = ("000" + reslut2).slice(-3);
            console.log(zero);
        }
    }
    return reslut2;
}
hyakukei2();
