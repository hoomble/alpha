CREATE PROCEDURE [dbo].[spOrders_getAll]
AS
begin
	SELECT Id, Drink, Price, EmployeeFname, IsRewards FROM dbo.[Orders];
end
