SELECT * FROM filmtable
SELECT filmyapimYili, COUNT(*) AS 'Film Sayýsý' FROM filmtable WHERE imdbPuani BETWEEN 6 AND 9 GROUP BY filmyapimYili ORDER BY filmyapimYili DESC
SELECT filmadi FROM filmtable WHERE filmadi LIKE 'E%'

INSERT INTO filmtable VALUES ('Osman',9.9,'9:22:00',99999999,2022)
INSERT INTO filmtable VALUES ('CAPGUR',9.8,'9:22:00',999999998,2022)
SELECT * FROM filmtable
UPDATE filmtable SET imdbPuani=10.0, filmyapimYili=2001, filmSuresi='09:59:00' WHERE filmyapimYili>2021
DELETE FROM filmtable WHERE filmyapimYili<2002
