CREATE TABLE [dbo].[Employees]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[fName] nvarchar(50) NOT NULL,
	[lName] nvarchar(50) NOT NULL,
	[dateOfHire] DATETIME NOT NULL

)
