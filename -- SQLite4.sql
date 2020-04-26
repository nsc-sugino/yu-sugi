-- SQLite
--user: テーブル名
--id: ユーザー番号 INTEGER
--name: 名前 TEXT
--email: メールアドレス TEXT
--password: パスワード TEXT


--CREATE TABLE テーブル名(保存したいデータとデータタイプ)

CREATE TABLE user(
    name TEXT,
    email TEXT,
    password TEXT
);

--新しくテーブルを作成したいときに、
--もうテーブルがあるとき実行するとエラーになる
--そうするとテーブル以下の実行が出来なくなる
--テーブルが存在していないときにやる
CREATE TABLE IF NOT EXISTS user(
    name TEXT,
    email TEXT,
    password TEXT
);


--データを入れるとき
--※カラム => 
--INSERT INTO テーブル名(どのカラムに入れたいか) VALUES(入れたい値);
INSERT INTO user(name,email,password) VALUES(
    "Yuuki",
    "y-ki",
    "123456"
);

--省略のパターン
INSERT INTO user VALUES(
    "Yuuki",
    "y-ki",
    "123456"
);

--テーブルの削除
--DROP TABLE テーブル名;
DROP TABLE user;

--テーブルがあるときにテーブルを消すようにする
DROP TABLE IF EXISTS user;

--テーブルの更新
--ALTER TABLE テーブル名 行いたい変更;
--テーブル名を変更したいとき RENAME TO 新しいテーブル名;
--テーブルのカラム変更 RENAME COLUMN 変更したいカラム TO 新しいカラム名;
--テーブルにカラムを追加する ADD COLUMN カラムの定義(カラム名 データタイプ);
ALTER TABLE user ADD COLUMN id INTEGER;




