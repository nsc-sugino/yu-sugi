class Car {
    
    constructor(engIne, color, name, type, maker) {
        //プロパティを追加
        //thisは自分自身
        this._engIne = engIne;
        this._color = color;
        this._name = name;
        this._type = type;
        this._maker = maker;
     
    }
    get maker() {
        return this._maker;
    }
    
    get name() {
        return this._name;
    }
    
    //走る
    move() {
        console.log(`${this._name}が走りました。`);
    }

    stop() {
        console.log(`${this._name}が止まりました。`)
    }
    
    rearMove() {

    }

    turn() {
        
    }

}
let prius = new Car (
    'ハイブリッド',
    '赤',
    'プリウス',
    'セダン',
    'トヨタ'
);

let hiace = new Car(
    'ガソリン',
    '無',
    'ハイエース',
    'バン',
    'トヨタ'
);
console.log(prius);

console.log(prius.maker);
console.log(prius.name);
console.log(prius);

prius.move();


class Truck extends Car{
    constructor(engIne, color, name, type, maker){
        super(engIne, color, name, type, maker);   
    }

    load() {
        console.log(`${this._name}が荷物を積みました。`);
    }
    unload() {
        console.log(`${this._name}が荷物を下ろしました`);
    }
}
let truck = new Truck (
    'ディーゼル',
    '青',
    '2tトラック',
    'トラック',
    'Isuzu'
);

truck.move();
truck.stop();
