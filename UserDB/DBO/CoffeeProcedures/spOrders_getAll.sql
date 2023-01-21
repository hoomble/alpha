CREATE PROCEDURE [dbo].[spOrders_getAll]
AS
begin
	SELECT OrderID, OrderStatus, DrinkID, Price, EmployeeID FROM dbo.[Orders];
end
