SELECT sp.ID, sp.Data, p.Name AS Provider, ps.Name AS Status
FROM SouvenirProcurements sp
JOIN Providers p 
	ON sp.IdProvider = p.ID
JOIN  ProcurementStatuses ps 
	ON sp.IdStatus = ps.ID
WHERE sp.Data BETWEEN '2023-01-01' AND '2023-12-31'
ORDER BY ps.Name
