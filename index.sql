--1

SELECT a.Title, a.AlbumId, COUNT(t.TrackId) AS track_number

FROM Albums a

INNER JOIN tracks t 

ON a.AlbumId = t.AlbumId

GROUP BY a.AlbumId

ORDER BY COUNT(trackId) DESC



--2

SELECT t.name, a.Title 

FROM tracks t

INNER JOIN Albums a 

ON a.AlbumId = t.AlbumId



--3

SELECT a.AlbumId, t.name, MIN(Milliseconds)

FROM Albums a

INNER JOIN tracks t ON a.AlbumId = t.AlbumId

GROUP BY Title

ORDER BY Milliseconds DESC



--4

SELECT a.AlbumId, a.Title, SUM(t.Milliseconds)

FROM albums a

INNER JOIN tracks t ON a.AlbumId = t.AlbumId

GROUP BY a.AlbumId

ORDER BY Milliseconds DESC



--5 

SELECT a.AlbumId, a.Title, SUM(t.Milliseconds)

FROM albums a

INNER JOIN tracks t ON a.AlbumId = t.AlbumId

GROUP BY a.AlbumId

HAVING SUM(t.Milliseconds) > 4200000

ORDER BY Milliseconds DESC

--6

SELECT FirstName, LastName

FROM employees

WHERE EmployeeId IN 

	(SELECT SupportRepId
	 FROM customers);
   
