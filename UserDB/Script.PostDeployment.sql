if not exists (select 1 from dbo.[User])
begin
	insert into dbo.[User] (FirstName, LastName)
	values ('Jon', 'Johnson'),
	('Sue', 'Storm'),
	('Tim', 'Timmerson'),
	('Mary', 'Miller');
end;

if not exists (select 1 from dbo.[CoffeeSchema])
begin
	
	insert into dbo.[Orders] (OrderStatus, Price)
	values ('Unfinished', 50),
	('Ready', 20),
	('In progress', 10);
	
	insert into dbo.Drinks([Desc], Price)
	values ('Latte', 5),
	('Medium roast', 3),
	('Macchiato', 6);

	insert into dbo.[Customers] (Fname, Lname, RewardsMember)
	values ('Jon', 'Johnson', 1),
	('Susan', 'Smitherson', 0),
	('Tammy', 'Tammerson', 1);

	insert into dbo.[Employees] (Fname, Lname, dateOfHire)
	values ('Thor', 'Odinson', 1999),
	('Jimmy', 'John', 2005),
	('Sue', 'Storm', 2003);

	insert into dbo.[OrderStatus] ([Desc])
	values ('In progress'),
	('Ready'),
	('Just started');

	insert into dbo.[Rewards] (OrderAmounts, TotalPriceSpent, DateAccCreated)
	values (2000, 500, 1999),
	(3000, 200, 2005),
	(400, 100, 2015);
end;
-- Default data if no input exists