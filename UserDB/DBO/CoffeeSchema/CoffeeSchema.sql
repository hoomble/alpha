CREATE SCHEMA [Coffee];
GO
CREATE TABLE Orders(
	[OrderID] int NOT NULL PRIMARY KEY IDENTITY,
	[OrderStatus] int,
	[DrinkID] int NOT NULL,
	[Price] int NOT NULL,
	[EmployeeID] int NOT NULL,
	FOREIGN KEY ([OrderStatus]) REFERENCES OrderStatus([StatusID]),
	FOREIGN KEY ([DrinkID]) REFERENCES Drinks([DrinkID]),
	FOREIGN KEY ([EmployeeID]) REFERENCES Employees([EmployeeID])
);
GO

CREATE TABLE Drinks(
	[DrinkID] int NOT NULL PRIMARY KEY IDENTITY,
	[Desc] NVARCHAR(50),
	[Price] int NOT NULL,
);
GO

CREATE TABLE Customers(
	[CustomerID] int NOT NULL PRIMARY KEY IDENTITY,
	[Fname] NVARCHAR(50),
	[Lname] NVARCHAR(50),
	[RewardsMember] BIT NOT NULL
);
GO

CREATE TABLE Employees(
	[EmployeeID] int NOT NULL PRIMARY KEY IDENTITY,
	[Fname] NVARCHAR(50) NOT NULL,
	[Lname] NVARCHAR(50) NOT NULL,
	[dateOfHire] int NOT NULL
);
GO

CREATE TABLE OrderStatus(
	[StatusID] int NOT NULL PRIMARY KEY IDENTITY,
	[Desc] NVARCHAR(50) NOT NULL
);
GO

CREATE TABLE Rewards(
	[CustomerID] int NOT NULL,
	[OrderAmounts] int,
	[TotalPriceSpent] int,
	[DateAccCreated] int
);