-- SQLite
--全部取ってくる

SELECT Name FROM artists;

SELECT * FROM artists WHERE name = "Aerosmith";

--カラム　LIKE　検索のパターン　=> 文字列に有効
--% => その文字を含むものを取ってくる
SELECT * FROM arsists WHERE name LIKE "%Aer%";

--LIMIT 数　　検索結果を制限
--AS カラム名変更
SELECT Name AS "アーティスト" FROM artists LIMIT 50;

--ORDER BY カラム名 (DESC,ASC); カラム名を基準に昇順、降順で取り出す
SELECT * FROM artists ORDER BY Name;

--最後にDESCで降順、ASCで昇順
SELECT * FROM artists ORDER BY Name DESC;

--WHERE カラム BETWEEN 最低値 AND 最大値　指定した値の間取ってくる
SELECT * FROM artists WHERE ArtistId BETWEEN 10 AND 15;

--SQL JOIN 二つ以上のテーブルに検索をかける
--JOIN テーブル名 WHERE 元のテーブル.カラム = テーブル名.カラム
SELECT Title,Name FROM albums
JOIN artists
WHERE albums.ArtistId = artists.ArtistId
ORDER BY Name;

SELECT Title FROM albums
JOIN artists
WHERE albums.ArtistId = artists.ArtistId
AND artists.Name = AC/DC
ORDER BY Name;

SELECT * FROM albums
JOIN artists
WHERE albums.ArtistId = artists.ArtistId
AND artists.Name = AC/DC
ORDER BY Name;

--違う書き方
SELECT * FROM albums
JOIN artists USING(ArtistId);


--3つのテーブルから取得
SELECT * FROM tracks　AS tk
JOIN albums AS al
JOIN media_types AS mt
JOIN genres AS gen
WHERE tracks.AlbumId = albums.AlbumId
AND tracks.MediaTypeId = media_types.MediaTypeId
AND tracks.GenreId = genres.GenreId;


--メディアタイプが"AAC audio file"の曲をリストアップ
--表示するデータ　TrackId  tracks.Name
SELECT TrackId,tracks.Name
FROM media_types
JOIN tracks
WHERE tracks.MediaTypeId = media_types.MediaTypeId
AND media_types.Name = "AAC audio file";

--アーティストIDが84のアーティストの曲をリストアップ
--表示するデータ　track.Name albums.Title
SELECT tracks.Name, albums.Title
FROM tracks
JOIN albums
WHERE  tracks.AlbumId = albums.AlbumId
AND albums.ArtistId = 84;

--playlistIdが11の曲名をリストアップ
--表示するデータ　track.Name 
SELECT tracks.Name
FROM tracks
JOIN playlist_track
JOIN playlists
WHERE tracks.TrackId = playlist_track.TrackId
AND playlists.PlaylistId = playlist_track.PlaylistId
AND playlist_track.PlaylistId = 11;


SELECT playlist_track.PlaylistId as playlists.Name
FROM playlist_track
JOIN playlists USING(PlaylistId);


--COUNT データの数をカウントする
SELECT COUNT(*) FROM tracks;

SELECT COUNT(*) 
FROM tracks
WHERE UnitPrice < 1;

--AVG 平均 MAX 最大値 MIN 最小値
SELECT AVG(UnitPrice),MAX(UnitPrice),MIN(UnitPrice)
FROM tracks;

