-- SQLite
--テーブルを作成
--テーブル名を変更
--テーブルのカラムを一つ名前変更
--テーブルにカラムを追加
--テーブルを削除

--テーブルデータ
--名前 text

--カラム
--id 整数
--name 文字列
--price 小数点付きの数字

--テーブル名を変更 test => product
--テーブルにカラムを追加 test BLOB
--変更するカラム名 test => image

CREATE TABLE test(
    id INTEGER,
    name TEXT,
    price REAL,
);

ALTER TABLE test RENAME TO product;

ALTER TABLE product ADD COLUMN test BLOB;

ALTER TABLE product RENAME COLUMN test TO image;

DROP TABLE product;

