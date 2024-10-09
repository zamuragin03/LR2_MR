SELECT s.ID, s.Name, ss.Amount,
    CASE 
        WHEN ss.Amount < 50 THEN 'Меньше 50 на складе'
        WHEN ss.Amount IS NULL THEN 'Нет на складе'
    END AS Notification
FROM Souvenirs s
JOIN SouvenirStores ss 
	ON s.ID = ss.IdSouvenir
WHERE ss.Amount < 50 OR ss.Amount IS NULL;
