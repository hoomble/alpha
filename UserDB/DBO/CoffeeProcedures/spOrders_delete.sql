CREATE PROCEDURE [dbo].[spOrders_delete]
	@OrderID int
AS
begin
	delete from dbo.[Orders]
	where OrderID = @OrderID;
end
