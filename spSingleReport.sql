create procedure spSingleReport(
@tdrSlNo nvarchar
)
as
begin
select * from tblSingle where tblSingle.tdrSlNo=@tdrSlNo 
end




--create procedure spSngleReport(
--@tdrSlNo nvarchar
--)
--as
--begin
--select * from tblSingle where  tblSingle.tdrSlNo=@tdrSlNo
--end
