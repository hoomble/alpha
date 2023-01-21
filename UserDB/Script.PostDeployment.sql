
if not exists (select 1 from dbo.[Orders])
begin
	
	insert into dbo.[Orders] (Price)
	values (50),
	(40),
	(30);
	
	insert into dbo.Drinks([Desc], Price)
	values ('Latte', 5),
	('Medium roast', 3),
	('Macchiato', 6);

	insert into dbo.[Customers] (Fname, Lname, RewardsMember)
	values ('Jon', 'Johnson', 1),
	('Susan', 'Smitherson', 0),
	('Tammy', 'Tammerson', 1);

	insert into dbo.[Employees] (Fname, Lname, dateOfHire, EmployeeID)
	values ('Thor', 'Odinson', 1999, 20005),
	('Jimmy', 'John', 2005, 30000),
	('Sue', 'Storm', 2003, 300001);


	insert into dbo.[Rewards] (OrderAmounts, TotalPriceSpent, DateAccCreated)
	values (2000, 500, 1999),
	(3000, 200, 2005),
	(400, 100, 2015);
end;
-- Default data if no input exists