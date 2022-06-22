SELECT filmtable.filmadi, filmturuTable.filmturu, filmbasroloyuncusuTable.filmbasroloyuncusuAdi, filmbasroloyuncusuTable.filmbasroloyuncusuSoyadi, 
filmyonetmenTable.filmyonetmenaAdi,filmyonetmenTable.filmyonetmenSoyadi, filmulkeTable.filmulkeAdi
FROM  filmadibasrolTable JOIN filmbasroloyuncusuTable ON filmadibasrolTable.filmbasroloyuncusuID = filmbasroloyuncusuTable.filmbasroloyuncusuID JOIN
                  filmtable ON filmadibasrolTable.filmadiID = filmtable.filmadiID JOIN
                  filmadiulkeTable ON filmtable.filmadiID = filmadiulkeTable.filmadiID JOIN
                  filmadiyonetmenTable ON filmtable.filmadiID = filmadiyonetmenTable.filmadiID JOIN
                  filmadituruTable ON filmtable.filmadiID = filmadituruTable.filmadiID JOIN
                  filmturuTable ON filmadituruTable.filmturuID = filmturuTable.filmturuID JOIN
                  filmulkeTable ON filmadiulkeTable.filmulkeID = filmulkeTable.filmulkeID JOIN
                  filmyonetmenTable ON filmadiyonetmenTable.filmyonetmenID = filmyonetmenTable.filmyonetmenID

SELECT * FROM nezzareView

SELECT dbo.film_turuGetir(1) AS 'Film Turu'
SELECT * FROM	filmtable

EXEC [dbo].stp_imdbGuncelle @filmadi_id=1,@imdbPuani='9.2'
SELECT * FROM	filmtable


