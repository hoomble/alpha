CREATE PROCEDURE [dbo].[spUser_get]
	@Id int
AS
begin
	select ID, FirstName, LastName from dbo.[User]
	where Id = @Id;
end
