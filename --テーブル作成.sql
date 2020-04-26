--テーブル作成
--アーティスト・バンド 2
　--id INTEGER PRIMARY KEY
　--名前 TEXT


--アルバム 各アーティスト2
　--id INTEGER PRIMARY KEY
  --タイトル TEXT
　--アーティスト INTEGER

--曲　各アルバム　3
　--id INTEGER PRIMARY KEY
  --名前 TEXT
  --メディアタイプ　INTEGER
  --ジャンル INTEGER
　--作曲者 TEXT
　--曲の時間（秒）INTEGER

--ジャンル　3
 --id INTEGER PRIMARY KEY
 --名前 TEXT

--メディアタイプ　3
　--id INTEGER PRIMARY KEY
 --名前 TEXT
 --（メディアタイプ→CD、ストリーミング、動画など）

--プレイリスト　2
 --id INTEGER PRIMARY KEY
 --名前 TEXT

--曲メディアタイプ 3
 --メディアid INTEGER PRIMARY KEY
 --曲id INTEGER PRIMARY KEY

--曲プレイリスト 各プレイリストに曲2
 --メディアタイプid INTEGER PRIMARY KEY
 --曲id INTEGER PRIMARY KEY


--関係性
　--アーティスト 1:N アルバム
  	       
  --アルバム 1:N 曲
        
  --曲 N:1 ジャンル
     
  --曲 N:N メディアタイプ
     
  --曲 N:N プレイリスト
  
--プライマリーキーはid

-- SQLite

--アーティストテーブル
CREATE TABLE IF NOT EXISTS artists(
    id INTEGER PRIMARY KEY,
    name TEXT
);

--アルバムテーブル
CREATE TABLE IF NOT EXISTS album(
    id INTEGER PRIMARY KEY,
    title TEXT,
    artist_id INTEGER,
    FOREIGN KEY(artist_id) REFERENCES artists(id)
);

--曲テーブル
CREATE TABLE IF NOT EXISTS music(
    id INTEGER PRIMARY KEY,
    name TEXT,
    album_id INTEGER,
    --media_id INTEGER,
    genre_id INTEGER,
    writer TEXT,
    second INTEGER,
    FOREIGN KEY(album_id) REFERENCES album(id),
    FOREIGN KEY(genre_id) REFERENCES genre(id),
    --FOREIGN KEY(media_id) REFERENCES media(id)
);

--ジャンルテーブル
CREATE TABLE IF NOT EXISTS genre(
    id INTEGER PRIMARY KEY,
    name TEXT
);

--メディアタイプテーブル
CREATE TABLE IF NOT EXISTS media(
    id INTEGER PRIMARY KEY,
    name TEXT
);

--プレイリストテーブル
CREATE TABLE IF NOT EXISTS list(
    id INTEGER PRIMARY KEY,
    name TEXT
);

--曲メディアタイプテーブル
CREATE TABLE IF NOT EXISTS music_media(
    --重複しないように宣言
    media_id INTEGER,
    music_id INTEGER,
    PRIMARY KEY(media_id,music_id),
    --紐づけ
    FOREIGN KEY(media_id) REFERENCES media(id),
    FOREIGN KEY(music_id) REFERENCES music(id)

);

--曲プレイリストテーブル
CREATE TABLE IF NOT EXISTS music_list(
    list_id INTEGER,
    music_id INTEGER,
    PRIMARY KEY(list_id,music_id),
    FOREIGN KEY(list_id) REFERENCES media(id),
    FOREIGN KEY(music_id) REFERENCES music(id)
);

