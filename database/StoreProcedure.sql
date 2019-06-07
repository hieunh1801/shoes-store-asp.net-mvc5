use ShoesShop
go
-------------Login/Logout-----------------
create procedure SP_Login
	@username nvarchar(50),
	@password nvarchar(50)
as
begin
	declare @count int, @result bit
	select @count = count(*) from Account where userName = @username and password = @password
	if(@count > 1)
		set @result = 0
	else 
		set @result = 1
	select @result
end 
go
	