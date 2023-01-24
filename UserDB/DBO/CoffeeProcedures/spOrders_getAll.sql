CREATE PROCEDURE [dbo].[spOrders_getAll]
AS
begin
	SELECT Id, Drink, Price, OrderStatus, EmployeeFname, IsRewards FROM dbo.[Orders];
end
