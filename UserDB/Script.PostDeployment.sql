if not exists (select 1 from dbo.[User])
begin
	insert into dbo.[User] (FirstName, LastName)
	values ('Jon', 'Johnson'),
	('Sue', 'Storm'),
	('Tim', 'Timmerson'),
	('Mary', 'Miller');
end
-- Default data if no input exists