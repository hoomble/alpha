CREATE PROCEDURE [dbo].[spOrders_update]
	@ID int,
	@Drink nvarchar(50),
	@Price int,
	@EmployeeFname nvarchar(50)
AS
begin
	update dbo.[Orders]
	set   Drink = @Drink, Price = @Price, EmployeeFname = @EmployeeFname
	where Id = @ID;
end
