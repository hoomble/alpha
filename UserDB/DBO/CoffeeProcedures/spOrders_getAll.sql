CREATE PROCEDURE [dbo].[spOrders_getAll]
AS
begin
	SELECT OrderID, DrinkID, Price, EmployeeID FROM dbo.[Orders];
end
