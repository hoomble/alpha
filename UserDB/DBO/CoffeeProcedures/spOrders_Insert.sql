CREATE PROCEDURE [dbo].[spOrders_Insert]
	@DrinkID int,
	@Price int,
	@EmployeeID int
AS
begin
	insert into dbo.[Orders] (DrinkID, Price, EmployeeID)
	values (@DrinkID, @Price, @EmployeeID);
end
