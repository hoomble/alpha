CREATE PROCEDURE [dbo].[spOrders_delete]
	@ID int
AS
begin
	delete from dbo.[Orders]
	where Id = @ID;
end
