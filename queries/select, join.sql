SELECT * FROM filmtable
SELECT * FROM filmtable ORDER BY filmadi DESC
SELECT top 5* from filmtable --KAYDED�LEN �LK 5 VER�
SELECT TOP 1* FROM filmtable ORDER BY imdbPuani DESC --imdb puan� en y�ksek olan...
SELECT * FROM filmtable ORDER BY NEWID() --rastgele idleri g�sterir
SELECT top 1* FROM filmtable ORDER BY NEWID() --rastgele 1 tane g�sterir
SELECT filmyapimYili FROM filmtable GROUP BY filmyapimYili--y�llara g�re grupla
SELECT filmyapimYili,COUNT(*) FROM filmtable GROUP BY filmyapimYili--hangi y�lda ka� film var ��renmek
SELECT imdbPuani AS '�MBD 7-9 ARASI' FROM filmtable WHERE imdbPuani BETWEEN 7 AND 9
SELECT * FROM filmtable WHERE filmadiID <> 4 --film �D 4 OLMAYANLAR
SELECT * FROM filmtable WHERE filmadiID  != 4 --film �D 4 OLMAYANLAR
SELECT * FROM filmtable WHERE filmadiID IN (1,5) --film �D 1 ve 5 olan
SELECT REVERSE(filmadi) FROM filmtable
SELECT REPLACE(filmadi,'Esaret','DE���T�R') FROM filmtable--Replace
SELECT * FROM filmtable WHERE filmadi LIKE 'M�sl�m'--Filmin adini yaz getirsin birebir yazman laz�m
SELECT * FROM filmtable WHERE filmadi LIKE '%ret%'--���NDE RET GE�EN AD
SELECT * FROM filmtable WHERE filmadi LIKE 'D%' --D ile ba�layan film adlar�
SELECT * FROM filmtable WHERE filmadi LIKE '%i'--SONU � ile biten
SELECT * FROM filmadiulkeTable WHERE filmadiID IN (SELECT DISTINCT filmulkeID FROM filmulkeTable)--DISTINCT GROUP BY G�B�
SELECT * FROM filmtable ORDER BY LEN(filmadi)--ad�n uzunluguna g�re s�rla

SELECT filmadi, filmturu FROM filmturuTable JOIN 
filmadituruTable ON filmadituruTable.filmturuID=filmturuTable.filmturuID JOIN
filmtable ON filmtable.filmadiID=filmadituruTable.filmadiID --F�LMADI �LE T�R�N� B�RLE�T�RME:�NCE ARA TABLO �LE TUR TABLOSU SONRA ARA TABLO �LE F�LM TABLOSU B�RLE��R.

SELECT filmadi, filmulkeAdi FROM filmulkeTable JOIN
filmadiulkeTable ON filmadiulkeTable.filmulkeID=filmulkeTable.filmulkeID JOIN 
filmtable ON filmtable.filmadiID=filmadiulkeTable.filmadiID WHERE filmulkeAdi LIKE 'T�rkiye' --T�RK�YE F�LMLER�N� G�STER

SELECT filmadi, filmbasroloyuncusuAdi, filmbasroloyuncusuSoyadi FROM filmbasroloyuncusuTable JOIN
filmadibasrolTable ON filmadibasrolTable.filmadibasrolID=filmbasroloyuncusuTable.filmbasroloyuncusuID JOIN
filmtable ON filmtable.filmadiID=filmadibasrolTable.filmadiID ORDER BY LEN(filmbasroloyuncusuAdi) --F�LM BA�ROL OYUNCU ADI UZUNLU�UNA G�RE SIRALA

SELECT filmadi, imdbPuani, filmturu FROM filmtable JOIN filmadituruTable ON filmadituruTable.filmadiID=filmtable.filmadiID 
JOIN filmturuTable ON filmturuTable.filmturuID=filmadituruTable.filmturuID  WHERE imdbPuani BETWEEN 7 AND 9 ORDER BY filmturu