
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
let truck = new Truck ();