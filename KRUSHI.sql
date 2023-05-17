
CREATE TABLE Farmer (
  FarmerID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  ContactNumber VARCHAR(20),
  Address VARCHAR(100),
  LandDetails VARCHAR(100)
);


CREATE TABLE Crop (
  CropID INT PRIMARY KEY,
  CropName VARCHAR(50),
  CropType VARCHAR(50),
  PlantingSeason VARCHAR(50),
  ExpectedYield VARCHAR(50)
);


CREATE TABLE Product (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(50),
  ProductType VARCHAR(50),
  Manufacturer VARCHAR(50),
  Price DECIMAL(9, 2)
  
);


CREATE TABLE Order (
  OrderID INT PRIMARY KEY,
  FarmerID INT,
  ProductID INT,
  Quantity INT,
  OrderDate DATE,
  DeliveryDate DATE,
  OrderStatus VARCHAR(20),
  FOREIGN KEY (FarmerID) REFERENCES Farmer(FarmerID),
  FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);


CREATE TABLE Payment (
  PaymentID INT PRIMARY KEY,
  OrderID INT,
  Amount DECIMAL(10, 2),
  PaymentDate DATE,
  PaymentStatus VARCHAR(20),
  -- Other relevant columns
  FOREIGN KEY (OrderID) REFERENCES Order(OrderID)
);


CREATE TABLE Inventory (
  InventoryID INT PRIMARY KEY,
  ProductID INT,
  Quantity INT,
  PurchaseDate DATE,
  ExpiryDate DATE,
  FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);


CREATE TABLE Advisory (
  AdvisoryID INT PRIMARY KEY,
  CropID INT,
  Description VARCHAR(200),
  AdvisoryDate DATE,
  FOREIGN KEY (CropID) REFERENCES Crop(CropID)
);


CREATE TABLE Staff (
  StaffID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  ContactNumber VARCHAR(20),
  Address VARCHAR(100),
  RolePosition VARCHAR(50)
);
