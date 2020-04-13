class Human {
    constructor(name, hp, mp) {
        this.name = name;
        this.hp = hp;
        this.mp = mp;
    }
    attack(target) {
        console.log(`${this.name}が${target}に攻撃した。`);
    }

}

class Yuusya extends Human {
    constructor(name,hp,mp,weapon) {
        super(name,hp,mp);
        this.weapon = weapon;
    }
    
}

class wizard extends Human {
    constructor(name,hp,mp,weapon) {
        super(name,hp,mp);
        this.weapon = weapon;
    }
    castSpell(spellName, target) {
        console.log(`${this.name}が${target}に${spellName}の呪文を唱えた。`);
    }
}

class Cleric extends Human {
    constructor(name,hp,mp,weapon) {
        super(name,hp,mp);
        this.weapon = weapon;
    }
    heal(target) {
        console.log(`${this.name}が${target}を回復した。`);
    }
}

class Berserker extends Human {
    constructor(name,hp,mp,weapon) {
        super(name,hp,mp);
        this.weapon = weapon;
    }
    furryMode() {
        console.log(`${this.name}が${target}を攻撃した。`);
    }
}


class Monster {
    constructor(name, hp, mp) {
        this.name = name;
        this.hp = hp;
        this.mp = mp;
    }
    attack(target) {
        console.log(`${this.name}が${target}が攻撃した。`);
    }
}

class Slime extends Monster {
    constructor(name, hp, mp) {
        super(name, hp, mp);
        this.weapon = '';

    }
    split() {
        console.log(`${this.name}が分裂した。`);
    }
}

class Ork extends Monster {
    constructor(name, hp, mp, weapon) {
        super(name, hp, mp);
        this.weapon = weapon;
    }
    runAway() {
        console.log(`${this.name}は逃げ出した。`);
    }
}

class LastBoss extends Monster {
    constructor(name, hp, mp, weapon) {
        super(name, hp, mp);
        this.weapon = weapon;

    }

    runAway() {
        console.log('このモンスターは逃げない');
    }

    revive() {
        console.log(`${this.name}が蘇った。`);
    }
}

//
let nYuusya = new Yuusya('駆け出しの勇者', 300, 250, '勇者の剣');


console.log(`${nYuusya.name} HP:${nYuusya.hp} MP${nYuusya.mp} 武器:${nYuusya.weapon}`);


console.log('敵が現れた！');

let nOrk = new Ork('オーク', 500, 0, '大きな斧');
console.log(nOrk.name, `HP:${nOrk.hp}`);
nYuusya.attack(nOrk.name);









