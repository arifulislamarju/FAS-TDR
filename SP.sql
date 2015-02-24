

create procedure spProducts(
@productId int output,
@productName varchar(50),
@Type int
)
as begin
if(@Type=0)
begin
insert into tblProductMst(productName) values (@productName)
end
else if(@Type=1)
begin 
update tblProductMst set productName=@productName where productId=@productId
end
else if(@Type=2)
begin
delete from tblProductMst where productId=@productId
end
begin 
select * from tblProductMst
end 
end