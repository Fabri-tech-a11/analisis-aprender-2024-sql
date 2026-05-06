SELECT nivel_ed_madrex AS educacion_madre,
       sector,
	   ambito,
       ROUND(AVG(lpuntaje::NUMERIC),2) AS promedio_lengua,
	   ROUND(AVG(mpuntaje::NUMERIC),2) AS promedio_matematica
FROM alumnos
WHERE lpuntaje <> 'NA'
  AND mpuntaje <> 'NA'
  AND nivel_ed_madrex IS NOT NULL
  AND sector IS NOT NULL
  AND ambito IS NOT NULL
GROUP BY nivel_ed_madrex, sector, ambito
ORDER BY promedio_lengua;


 