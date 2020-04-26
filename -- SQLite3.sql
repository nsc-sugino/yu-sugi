-- SQLite

--商品
CREATE TABLE IF NOT EXISTS product(
    id INTEGER PRIMARY KEY,
    name TEXT,
    price REAL,
    amount INTEGER
);


--在庫
CREATE TABLE IF NOT EXISTS stock(
    --商品テーブルからデータを持ってくる
    product_id INTEGER,
    stock_count INTEGER,
    --2つのテーブルを紐づける
    --product_idカラムにproductテーブルのidカラムを参照させる
    FOREIGN KEY(product_id) REFERENCES product(id)
);

--cart 1   N product
--     N   1
--     N   N

--カート
CREATE TABLE IF NOT EXISTS cart(
    id INTEGER PRIMARY KEY,
    date TEXT 
);

--カート商品
CREATE TABLE IF NOT EXISTS cart_product(
    cart_id INTEGER,
    product_id INTEGER,
    count INTEGER,
    FOREIGN KEY(cart_id) REFERENCES cart(id),
    FOREIGN KEY(product_id) REFERENCES product(id)
);

--商品と在庫の関係を見極める
--商品テーブル1つの商品に対して、いくつ在庫テーブルにデータを入れるか 1:1
--在庫テーブルの中にいくつ商品を入れることができるか 1:N、N:1

--product 1    1 stock
--        1    1
--1:1の場合FOREIGN KEYはどちらかのテーブルに付ける
--1:N、N:1の場合1の方のテーブルにFOREIGN KEYを付ける
--N:Nの場合テーブルを新たに作って、作ったテーブルにFORENGN KEYを持たせる

INSERT INTO stock VALUES(1,100),(2,50),(3,200),(4,200);

INSERT INTO cart VALUES(1,"2020/04/23");

INSERT INTO cart_product VALUES(1,2,3),(1,3,2),(1,1,1);



