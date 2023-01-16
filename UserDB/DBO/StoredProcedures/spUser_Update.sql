CREATE PROCEDURE [dbo].[spUser_Update]
		@Id int,
		@FirstName nvarchar(50),
		@LastName nvarchar(50)
AS
begin
	update dbo.[User]
	set FirstName = @FirstName, Lastname = @LastName
	where Id = @Id;
end
