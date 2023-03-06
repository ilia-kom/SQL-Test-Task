CREATE TABLE Products (Id int PRIMARY KEY, Name varchar(50));
INSERT INTO Products VALUES (1,'Coca-Cola'), (2,'Beer'),(3,'Bread'),(4,'Soap'),(5,'Tomatoes');

CREATE TABLE Categories (Id int PRIMARY KEY, Name varchar(50));
INSERT INTO Categories VALUES (1,'Beverages'), (2,'Alcohol'),(3,'Food & Drinks');


CREATE TABLE ProductCategories (
	Id int PRIMARY KEY, 
	Product_Id int FOREIGN KEY REFERENCES Products(Id), 
	Category_Id int NULL FOREIGN KEY REFERENCES Categories(Id)
);
INSERT INTO ProductCategories VALUES (1,1,1), (2,1,3),(3,2,1),(4,2,2),(5,2,3),(6,3,3),(7,4,NULL),(8,5,3);


SELECT Products.Name, Categories.Name FROM Products
JOIN ProductCategories ON Products.Id = ProductCategories.Product_Id
LEFT OUTER JOIN Categories ON ProductCategories.Category_Id = Categories.Id