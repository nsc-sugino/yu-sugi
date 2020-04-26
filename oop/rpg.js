class Status {
    constructor(name, buki, hp, mp) {
        this.name = name;
        this.buki = buki;
        this.hp = hp;
        this.mp = mp;

    }

}

class Yuusya extends Status {
    constructor(name, buki, hp, mp,) {
        super(name, buki, hp, mp);

        let yuusya = new Status(
            '名無しの勇者',
            '勇者の剣',
            '200',
            '200'
        );
    }
}

class Wizard extends Status {
    constructor(name, buki, hp, mp,) {
        super(name, buki, hp, mp);

        let wizard = new Status (
            '魔法使い',
            '魔法の杖',
            '150',
            '250'
        );
    }
}

class Cleric extends Status {
    constructor(name, buki, hp, mp,) {
        super(name, buki, hp, mp);

        let cleric = new Status(
            'ヒーラー',
            '回復の杖',
            '150',
            '250'
        );
    }
}

class Berseker extends Status {
    constructor(name, buki, hp, mp,) {
        super(name, buki, hp, mp);

        let berseker = new Status (
            '狂戦士',
            '戦斧',
            '300',
            '100',
        );
    }

}

class Slime extends Status {
    constructor(name, buki, hp, mp,) {
        super(name, buki, hp, mp);

        let slime = new Status(
            'スライム',
            '',
            '50',
            '50'
        );
    }
}

class Ork extends Status {
    constructor(name, buki, hp, mp,) {
        super(name, buki, hp, mp);

        let ork = new Status(
            'オーク',
            '大きな斧',
            '500',
            '0'
        );
        
    }
}

class LastBoss extends Status {
    constructor(name, buki, hp, mp,) {
        super(name, buki, hp, mp);

        let lastBoss = new Status(
            'ラスボス',
            '歴戦の剣',
            '1000',
            '300'
        );
        
    }
}
class attack {
    kougeki() {

    }
}







