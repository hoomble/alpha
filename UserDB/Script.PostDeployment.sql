
if not exists (select 1 from dbo.[Orders])
begin
	
	insert into dbo.[Orders] (OrderStatus, EmployeeFname, IsRewards, Price)
	values ('Not Ready', 'John', 1, 20),
	('In progress', 'Joe', 0, 40),
	('Ready', 'Jane', 1, 30);
end;
-- Default data if no input exists