1. Вывести всех клиентов в таблице "Customers"
SELECT * FROM Customers;

2. Вывести столбец "City" из таблицы "Customers"
SELECT City FROM Customers;

3. Вывести все различные значения в столбце "Country" в таблице "Customers"
SELECT DISTINCT Country FROM Customers;

4. Вывести все записи, в которых столбец "City" имеет значение "Moscow"
SELECT * FROM Customers WHERE City = 'Moscow';

5. Вывести все записи, в которых столбец "City" НЕ является "Moscow"
SELECT * FROM Customers WHERE NOT City = 'Moscow';

6. Вывести все записи, в которых столбец CustomerID имеет значение 32
SELECT * FROM Customers WHERE CustomerID = 32;

7. Вывести все записи, в которых столбец "City" имеет значение "Moscow", а столбец "PostalCode" имеет значение 122009
SELECT * FROM Customers WHERE City = 'Moscow' AND PostalCode = 122009;

8. Вывести все записи, в которых столбец "City" имеет значение 'Berlin' или 'London'
SELECT * FROM Customers WHERE City = 'Berlin' OR City 'London';

9. Вывести все записи из таблицы "Customers", отсортируйте результат в алфавитном порядке по столбцу "City"
SELECT * FROM Customers ORDER BY City;

10. Вывести все записи из таблицы "Customers", отсортируйте результат в обратном порядке по алфавиту столбца "City"
SELECT * FROM Customers ORDER BY City DESC;

11. Вывести все записи из таблицы "Customers", отсортируйте результат в алфавитном порядке, сначала по столбцу "Country", затем по столбцу "City"
SELECT * FROM Customers ORDER BY Country, City; 

12. Вставить новую запись в таблицу "Customers"
INSERT INTO Customers (CustomerName, Address, City, PostalCode, Country) VALUES ('Marina Shnyakina', 'Busygina 58', 'Nizhny Novgorod', '603000', 'Russia');

13. Вывести все записи из таблицы "Customers", где столбец 'PostalCode' пуст
SELECT * FROM Customers WHERE PostalCode IS NULL;

14. Вывести все записи из таблицы "Customers", где столбец 'PostalCode' НЕ пуст
SELECT * FROM Customers WHERE PostalCode IS NOT NULL;

15. Обновить столбец "City" всех записей в таблице "Customers"
UPDATE Customers SET City = 'Nizhny Novgorod';

16. Установить значение столбца "City" на 'Осло', но только те, где столбец "Country" имеет значение 'Норвегия'
UPDATE Customers SET City = 'Осло' WHERE Country = 'Норвегия';

17. Обновить значение "City" и значение "Country"
UPDATE Customers SET City = 'Осло', Country = 'Норвегия' WHERE CustomerID = 32;

18. Удалить все записи из таблицы "Customers", в которых значение "Country" равно 'Норвегия'
DELETE FROM Customers WHERE Country = 'Норвегия';

19. Удалить все записи из таблицы "Customers"
DELETE FROM Customers;

20. Вывести запись с наименьшим значением столбца "Price"
SELECT MIN(Price) FROM Products;

21. Вывести запись с наибольшим значением столбца "Price"
SELECT MAX(Price) FROM Products;

22. Вывести количество записей, для которых значение цены равно 18
SELECT COUNT(*) FROM Products WHERE Price = 18;

23. Рассчитать среднюю цену всех товаров
SELECT AVG(Price) FROM Products;

24. Вывести суммы всех значений столбца "Price" в таблице "Products"
SELECT SUM(Price) FROM Products;

25. Вывести все записи, в которых значение столбца "City" начинается с буквы "a"
SELECT * FROM Customers WHERE City LIKE 'a%';

26. Вывести все записи, в которых значение столбца "City" заканчиваются на букву "a"
SELECT * FROM Customers WHERE City LIKE '%a';

27. Вывести все записи, в которых значение столбца "City" содержит букву "a"
SELECT * FROM Customers WHERE City LIKE '%a%';

28. Вывести все записи, в которых значение столбца "City" начинается с буквы "a" и заканчиваются на букву "b"
SELECT * FROM Customers WHERE City LIKE 'a%b';

29. Вывести все записи, в которых значение столбца "City" начинается с буквы "a"
SELECT * FROM Customers WHERE City NOT LIKE 'a%';

30. Вывести все записи, в которых значение столбца "City" вторая буква "a"
SELECT * FROM Customers WHERE City LIKE '_a%';

31. Вывести все записи, в которых первая буква названия города — "a", "c" или "s"
SELECT * FROM Customers WHERE City LIKE '[acs]%';

32. Вывести все записи, в которых первая буква названия города начинается с любой буквы от "a" до "f"
SELECT * FROM Customers WHERE City LIKE '[a-f]%';

33. Вывести все записи, в которых первая буква названия города НЕ является "a", "c" или "f"
SELECT * FROM Customers WHERE City LIKE '[!acf]%';

34. Вывести все записи, в которых Country имеет значение "Norway" или "France"
SELECT * FROM Customers WHERE Country IN ('Norway', 'France');

35. Вывести все записи, в которых Country НЕ имеет значение "Norway" или "France"
SELECT * FROM Customers WHERE Country NOT IN ('Norway', 'France');

36. Вывести все записи, в которых значение столбца "Price" находится в диапазоне от 10 до 20
SELECT * FROM Products WHERE Price BETWEEN 10 AND 20;

37. Вывести все записи, в которых значение столбца "Price" находится в диапазоне от 10 до 20
SELECT * FROM Products WHERE Price NOT BETWEEN 10 AND 20;

38. Вывести все записи, в которых значение столбца "ProductName" находится в алфавитном порядке между "Geitost" и "Pavlova"
SELECT * FROM Products WHERE ProductName BETWEEN 'Geitost' AND 'Pavlova';

39. При отображении таблицы "Customers" сделать так, чтобы столбец "PostalCode" назывался "Pno"
SELECT CustomerName, Address, PostalCode AS PNO FROM Customers;

40. При отображении таблицы "Customers" ссылайтесь на таблицу как "Consumers", а не "Customers"
SELECT Customers AS Consumers;

41. Соединить две таблицы "Orders" и "Customers", используя поле 'CustomerID' в обеих таблицах как связь между двумя таблицами
SELECT * FROM Orders LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

42. Вывести все записи из двух таблиц, в которых есть совпадения в обеих таблицах
SELECT * FROM Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

43. Вывести все записи из таблицы "Customers" и все совпадения в таблице "Orders"
SELECT * FROM Orders RIGHT JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

44. Указать количество клиентов в каждой стране
SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country;

45. Указать количество клиентов в каждой стране, отсортировав сначала по стране с наибольшим количеством клиентов
SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country ORDER BY COUNT(CustomerID) DESC;

46. Создать новую базу данных с именем testSQL 
CREATE DATABASE testSQL;

47. Удалить базу данных с именем testSQL
DROP DATABASE testSQL;

48. Создать новую таблицу с именем workSQL
CREATE TABLE workSQL;

49. Удалить таблицу с именем workSQL
DROP TABLE workSQL;

50. Удалить все данные внутри таблицы workSQL
TRUNCATE TABLE workSQL;

51. Добавить столбец типа "DATE" с именем 'Birthday' в таблицу "Persons"
ALTER TABLE Persons ADD Birthday DATE;

52. Удалить столбец с именем 'Birthday' из таблицы "Persons"
ALTER TABLE Persons DROP COLUMN Birthday;


