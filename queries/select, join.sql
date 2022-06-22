SELECT * FROM filmtable
SELECT * FROM filmtable ORDER BY filmadi DESC
SELECT top 5* from filmtable --KAYDEDÝLEN ÝLK 5 VERÝ
SELECT TOP 1* FROM filmtable ORDER BY imdbPuani DESC --imdb puaný en yüksek olan...
SELECT * FROM filmtable ORDER BY NEWID() --rastgele idleri gösterir
SELECT top 1* FROM filmtable ORDER BY NEWID() --rastgele 1 tane gösterir
SELECT filmyapimYili FROM filmtable GROUP BY filmyapimYili--yýllara göre grupla
SELECT filmyapimYili,COUNT(*) FROM filmtable GROUP BY filmyapimYili--hangi yýlda kaç film var öðrenmek
SELECT imdbPuani AS 'ÝMBD 7-9 ARASI' FROM filmtable WHERE imdbPuani BETWEEN 7 AND 9
SELECT * FROM filmtable WHERE filmadiID <> 4 --film ÝD 4 OLMAYANLAR
SELECT * FROM filmtable WHERE filmadiID  != 4 --film ÝD 4 OLMAYANLAR
SELECT * FROM filmtable WHERE filmadiID IN (1,5) --film ÝD 1 ve 5 olan
SELECT REVERSE(filmadi) FROM filmtable
SELECT REPLACE(filmadi,'Esaret','DEÐÝÞTÝR') FROM filmtable--Replace
SELECT * FROM filmtable WHERE filmadi LIKE 'Müslüm'--Filmin adini yaz getirsin birebir yazman lazým
SELECT * FROM filmtable WHERE filmadi LIKE '%ret%'--ÝÇÝNDE RET GEÇEN AD
SELECT * FROM filmtable WHERE filmadi LIKE 'D%' --D ile baþlayan film adlarý
SELECT * FROM filmtable WHERE filmadi LIKE '%i'--SONU Ý ile biten
SELECT * FROM filmadiulkeTable WHERE filmadiID IN (SELECT DISTINCT filmulkeID FROM filmulkeTable)--DISTINCT GROUP BY GÝBÝ
SELECT * FROM filmtable ORDER BY LEN(filmadi)--adýn uzunluguna göre sýrla

SELECT filmadi, filmturu FROM filmturuTable JOIN 
filmadituruTable ON filmadituruTable.filmturuID=filmturuTable.filmturuID JOIN
filmtable ON filmtable.filmadiID=filmadituruTable.filmadiID --FÝLMADI ÝLE TÜRÜNÜ BÝRLEÞTÝRME:ÖNCE ARA TABLO ÝLE TUR TABLOSU SONRA ARA TABLO ÝLE FÝLM TABLOSU BÝRLEÞÝR.

SELECT filmadi, filmulkeAdi FROM filmulkeTable JOIN
filmadiulkeTable ON filmadiulkeTable.filmulkeID=filmulkeTable.filmulkeID JOIN 
filmtable ON filmtable.filmadiID=filmadiulkeTable.filmadiID WHERE filmulkeAdi LIKE 'Türkiye' --TÜRKÝYE FÝLMLERÝNÝ GÖSTER

SELECT filmadi, filmbasroloyuncusuAdi, filmbasroloyuncusuSoyadi FROM filmbasroloyuncusuTable JOIN
filmadibasrolTable ON filmadibasrolTable.filmadibasrolID=filmbasroloyuncusuTable.filmbasroloyuncusuID JOIN
filmtable ON filmtable.filmadiID=filmadibasrolTable.filmadiID ORDER BY LEN(filmbasroloyuncusuAdi) --FÝLM BAÞROL OYUNCU ADI UZUNLUÐUNA GÖRE SIRALA

SELECT filmadi, imdbPuani, filmturu FROM filmtable JOIN filmadituruTable ON filmadituruTable.filmadiID=filmtable.filmadiID 
JOIN filmturuTable ON filmturuTable.filmturuID=filmadituruTable.filmturuID  WHERE imdbPuani BETWEEN 7 AND 9 ORDER BY filmturu