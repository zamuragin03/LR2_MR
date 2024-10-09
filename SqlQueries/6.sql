SELECT sc.ID, sc.Name
FROM SouvenirsCategories sc
WHERE sc.IdParent = (SELECT ID FROM SouvenirsCategories WHERE Name = 'Картины')
