CREATE PROCEDURE [dbo].[spOrders_get]
	@OrderID int
AS
begin
	select OrderID, OrderStatus, DrinkID, Price, EmployeeID from dbo.[Orders]
	where OrderID = @OrderID;
end
