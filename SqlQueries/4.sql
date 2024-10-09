SELECT p.Name FROM Souvenirs AS s
JOIN SouvenirsCategories AS c
	ON s.IdCategory = c.Id
JOIN ProcurementSouvenirs AS ps
	ON s.Id = ps.IdSouvenir
JOIN SouvenirProcurements AS sp
	ON ps.IdProcurement = sp.Id
JOIN Providers AS p
	ON sp.IdProvider = p.Id
WHERE c.Name = 'Пепельницы'