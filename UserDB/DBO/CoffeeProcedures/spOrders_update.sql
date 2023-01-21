CREATE PROCEDURE [dbo].[spOrders_update]
	@OrderID int,
	@OrderStatus nvarchar(50),
	@DrinkID int,
	@Price int,
	@EmployeeID int
AS
begin
	update dbo.[Orders]
	set OrderID = @OrderID, OrderStatus = @OrderStatus, DrinkID = @DrinkID, Price = @Price, EmployeeID = @EmployeeID
	where OrderID = @OrderID;
end
