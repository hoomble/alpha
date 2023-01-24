CREATE PROCEDURE [dbo].[spOrders_get]
	@ID int
AS
begin
	select Id, Drink, Price, EmployeeFname, OrderStatus, IsRewards from dbo.[Orders]
	where Id = @ID;
end
