-- SQLite
CREATE TABLE IF NOT EXISTS product(
    id INTEGER PRIMARY KEY,
    name TEXT,
    price REAL,
    amount INTEGER
);

--テーブルにデータを入れるとき
--INSERT INTO テーブル名（どのカラムに入れたいか）
INSERT INTO product(id,name,price,amount) VALUES(
    1,
    "チョコレート",
    95,
    100
);

INSERT INTO product(id,name,price,amount) VALUES(
    2,
    "リンゴ",
    120,
    100
);

--まとめて値を入れる
INSERT INTO product(id,name,price,amount) VALUES(
    3,
    "ジュース",
    150,
    100
), (
    4,
    "グミ",
    108,
    100
);

--テーブルからデータを削除する
--DELETE FROM テーブル名 WHERE 条件;
--AND すべての条件に一致したデータのみ選択
DELETE FROM product WHERE id = 2 AND name = "リンゴ" AND amount = 100;

--これでも削除できる
DELETE FROM product WHERE id = 2;

--テーブルのデータを更新
--UPDATE テーブル名 SET カラム名 = 値 WHERE 条件;
--WHEREがないと全部データが更新されてしまう
UPDATE product SET name = "コグミ" WHERE id = 4;


--テーブルからデータを取得する
--SELECT 取得したいカラム FROM テーブル名 [WHERE 条件];
--*を付けるとすべてのデータを取得する
SELECT * FROM product;

--priceが100以上のデータ全てを取得
SELECT * FROM product WHERE price > 100;

--priceが100以上のnameのみ取得
SELECT name FROM product WHERE price > 100;

DROP TABLE product;