CREATE PROCEDURE [dbo].[spOrders_update]
	@OrderID int,
	@DrinkID int,
	@Price int,
	@EmployeeID int
AS
begin
	update dbo.[Orders]
	set   DrinkID = @DrinkID, Price = @Price, EmployeeID = @EmployeeID
	where OrderID = @OrderID;
end
