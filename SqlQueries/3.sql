SELECT s.Name, c.Name AS CategoryName, s.Rating
FROM Souvenirs AS s
JOIN SouvenirsCategories AS c
	ON s.IdCategory = c.Id
WHERE c.Name = 'Украшения'
ORDER BY s.Rating ASC