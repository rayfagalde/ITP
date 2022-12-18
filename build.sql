CREATE TABLE Restaurants
(
Id int NOT NULL,
RestaurantName varchar(100) NOT NULL,
PRIMARY KEY (Id)
)
ENGINE = innodb;

CREATE TABLE RestaurantDetails
(
RId int NOT NULL,
RAddress varchar (100),
RCity varchar (25),
RState varchar (5),
RZip int (10),
RPhone int (10),
FOREIGN KEY (RId) REFERENCES Restaurants(Id)
)
ENGINE = innodb;

CREATE TABLE Menu
(
MId int NOT NULL,
FoodName varchar(50),
Primary KEY (MId)
)
ENGINE = innodb;

CREATE TABLE MenuDetails
(
MDId int NOT NULL,
Price flaot(10) NOT NULL,
ItemDescription varchar(250),
ItemType varchar(50),
FOREIGN KEY (MDId) REFERENCES Restaurants(Id)
)
ENGINE = innodb;




INSERT INTO Restaurants (Id, RestaurantName)
VALUES (1, 'Rays Mex'),
(2, 'Mex Appeal');

INSERT INTO RestaurantDetails (RId, RAddress, RCity, RState, RZip, RPhone)
VALUES (1, '123 South Alley Street', 'San Diego', 'CA', 94597, 1239876787),
(1, '784 North Beach Street', 'San Diego', 'CA', 94597, 1233768899);

INSERT INTO Menu (MId, FoodName)
VALUES (1, 'Rays Classic Burrito'),
(2, 'Shrimp Tacos'),
(3, 'Classic Enchilads'),
(4, 'Steak Tacos'),
(5, 'Chicken Tacos'),
(6, 'Birria Tacos'),
(7, 'Nachos'),
(8, 'Kids Quesadilla');

INSERT INTO MenuDetails (MDId, Price, ItemDescription, ItemType)
VALUES (1, 15.99, 'Tasty Steak Burrito', 'Meat'),
(2, 8.99, 'Tasty shrimp tacos with hot sauce', 'Pescatarian'),
(3, 15.99, 'Birria enchiladas with beans and rice', 'Meat'),
(4, 15.99, 'Tasty steak tacos with cheese & lettuce', 'Meat'),
(5, 15.99, 'Tasty chicken tacos with cheese & lettuce', 'Meat'),
(6, 15.99, 'Tasty birria tacos with cheese & lettuce', 'Meat'),
(7, 15.99, 'Loaded Nachos with beef, sour cream, jalapenos, & more!', 'Meat'),
(8, 15.99, 'cheese quesadilla with a side of chips & apple juice', 'vegetarian');



