CREATE PROCEDURE [dbo].[spOrders_Insert]
	@OrderID int,
	@DrinkID int,
	@Price int,
	@EmployeeID int
AS
begin
	insert into dbo.[Orders] (OrderID,  DrinkID, Price, EmployeeID)
	values (@OrderID, @DrinkID, @Price, @EmployeeID);
end
