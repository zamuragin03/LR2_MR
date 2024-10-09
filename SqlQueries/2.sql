SELECT s.Name, sp.Data FROM Souvenirs AS s
JOIN ProcurementSouvenirs AS ps
	ON s.Id = ps.IdSouvenir
JOIN SouvenirProcurements AS sp
	ON ps.IdProcurement = sp.Id
WHERE sp.Data > '2024-05-12' AND sp.Data < '2024-08-24'