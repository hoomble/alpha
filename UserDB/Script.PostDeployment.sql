
if not exists (select 1 from dbo.[Orders])
begin
	
	insert into dbo.[Orders] (Drink, OrderStatus, EmployeeFname, IsRewards, Price)
	values ('Latte', 'Not Ready', 'John', 1, 20),
	('Macchiato', 'In progress', 'Joe', 0, 40),
	('Espresso con pana', 'Ready', 'Jane', 1, 30);
end;
-- Default data if no input exists