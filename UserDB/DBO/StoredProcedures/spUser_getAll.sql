CREATE PROCEDURE [dbo].[spUser_getAll]
AS
begin
	select Id, FirstName, LastName from dbo.[User];
end

