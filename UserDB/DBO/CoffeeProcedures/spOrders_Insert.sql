CREATE PROCEDURE [dbo].[spOrders_Insert]
	@IsRewards bit,
	@OrderStatus nvarchar(50),
	@Drink nvarchar(50),
	@Price int,
	@EmployeeFname nvarchar(50)
AS
begin
	insert into dbo.[Orders] (Drink, Price, OrderStatus, Employeefname, IsRewards)
	values (@Drink, @Price, @OrderStatus,  @EmployeeFname, @IsRewards);
end
