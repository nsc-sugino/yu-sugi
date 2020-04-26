for (let y = 1; y <= 10; y++) {
    //''で値を表示するとき間をあける
    var line = '';

    for (let x = 1; x <= 10; x++) {
        line += ' ' + x * y;
    }
    console.log(line);
}

for (let y = 1; y <= 10; y++) {
    var line = '';

    for (let x = 1; x <= 10; x++) {
        
        //toString().padStart => 文字列を指定した長さに変更するメソッド
        //pudNumberをString型にし、padStartで長さを3、指定した文字列0を先頭に表示する
        //（長さが足りない場合、0が繰り返し先頭に表示）
        let padNumber = (x * y).toString().padStart(3, '0');
        line += ' ' + padNumber;
        
    }
    console.log(line);
}