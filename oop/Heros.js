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

        let Yuusya = new Status(
            '名無しの勇者',
            '200',
            '150',
            '勇者の剣'
        );
    }
}

class Wizard extends Status {
    constructor(name, buki, hp, mp,) {
        super(name, buki, hp, mp);

        let Wizard = new Status (
            '魔法使い',
            '150',
            '200',
            '魔法の杖'
        );
    }
}

class Cleric extends Status {
    constructor(name, buki, hp, mp,) {
        super(name, buki, hp, mp);

        let Cleric = new Status(
            'ヒーラー',
            '100',
            '150',
            '回復の杖'
        );
    }
}

class Berseker extends Status {
    constructor(name, buki, hp, mp,) {
        super(name, buki, hp, mp);

        let Berseker = new Status(
            '狂戦士',
            '300',
            '80',
            '斧',
        );
    }

}

class Slime extends Status {
    constructor(name, buki, hp, mp,) {
        super(name, buki, hp, mp);

        let Slime = new Status(
            'スライム',
            '50',
            '50',
            ''
        );
    }
}

class Ork extends Status {
    constructor(name, buki, hp, mp,) {
        super(name, buki, hp, mp);

        let Ork = new Status(
            'オーク',
            '500',
            '0',
            '大きな斧'
        );
        
    }
}

class LastBoss extends Status {
    constructor(name, buki, hp, mp,) {
        super(name, buki, hp, mp);

        let LastBoss = new Status(
            'ラスボス',
            '1000',
            '200',
            '歴戦の剣'
        );
        
    }
}

class main {
    
}

class attack {
     
    
}



