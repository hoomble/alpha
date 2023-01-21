CREATE PROCEDURE [dbo].[spOrders_Insert]
	@OrderID int,
	@OrderStatus nvarchar(50),
	@DrinkID int,
	@Price int,
	@EmployeeID int
AS
begin
	insert into dbo.[Orders] (OrderID, OrderStatus, DrinkID, Price, EmployeeID)
	values (@OrderID, @OrderStatus, @DrinkID, @Price, @EmployeeID);
end
