SELECT s.Name, m.Name as Material 
FROM Souvenirs AS s
JOIN SouvenirMaterials AS m
ON s.IdMaterial = m.Id
WHERE m.Name = 'металл'