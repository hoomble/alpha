CREATE TABLE [dbo].[Orders]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[Drink] nvarchar(50) NOT NULL,
	[OrderStatus] nvarchar(50) NOT NULL,
	[EmployeeFname] nvarchar(50) NOT NULL,
	[IsRewards] bit NOT NULL,
	[Price] int NOT NULL

)
