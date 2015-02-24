drop procedure spSingle;

create procedure spSingle(
 @singleId int output,
 @depositDate datetime,
 @tdrSlNo nvarchar(50),
 @accountNumber nvarchar(50),
 @clientName varchar(50),
 @fatherName varchar(50),
 @motherName varchar(50),
 @spouseName varchar(50),
 @DOB datetime,
 @sex varchar(50),
 @religion varchar(50),
 @nationality varchar(50),
 @id nvarchar(50),
 @idNo nvarchar(50),
 @occupation varchar(50),
 @organization varchar(50),
 @designation varchar(50),
 @officeAddress varchar(50),
 @permAddress varchar(50),
 @phone varchar(50),
 @mobile nvarchar(50),
 @email varchar(50),
 @fax nvarchar(50),
 @depAmount money,
 @depTenure nvarchar(100),
 @depDateIssue datetime,
 @depDateMaturity datetime,
 @cheqPoDDNo nvarchar(50),
 @cheqDate datetime,
 @cheqBank varchar(50),
 @cheqBranch varchar(50),
 @cheqTakaInWrd varchar(50),
 @nominee1 varchar(50),
 @nominee1FatherName varchar(50),
 @nominee1MotherName varchar(50),
 @nominee1SpouseName varchar(50),
 @nominee1Relation varchar(50),
 @nominee1Percentage nvarchar(50),
 @nominee2 varchar(50),
 @nominee2FatherName varchar(50),
 @nominee2MotherName varchar(50),
 @nominee2SpouseName varchar(50),
 @nominee2Relation varchar(50),
 @nominee2Percentage nvarchar(50),
 @Type int
 )
 as begin 
 if(@Type=0)
 begin
 insert into tblSingle(depositDate,tdrSlNo,accountNumber,clientName,fatherName,motherName,spouseName,
 DOB,sex,religion,nationality,id,idNo,occupation,organization,designation,officeAddress,permAddress,
 phone,mobile,email,fax,depAmount,depTenure,depDateIssue,depDateMaturity,
 cheqPoDDNo,cheqDate,cheqBank,cheqBranch,cheqTakaInWrd,nominee1,nominee1FatherName,
 nominee1MotherName,nominee1SpouseName,nominee1Relation,nominee1Percentage,nominee2,nominee2FatherName,
 nominee2MotherName,nominee2SpouseName,nominee2Relation,nominee2Percentage) values 
 (@depositDate,@tdrSlNo, @accountNumber, @clientName, @fatherName,@motherName,@spouseName,
 @DOB,@sex,@religion,@nationality,@id,@idNo,@occupation,@organization,@designation,@officeAddress,
 @permAddress,@phone,@mobile,@email,@fax,@depAmount,@depTenure,@depDateIssue,@depDateMaturity,
 @cheqPoDDNo,@cheqDate,@cheqBank,@cheqBranch,@cheqTakaInWrd,@nominee1,@nominee1FatherName,
 @nominee1MotherName,@nominee1SpouseName,@nominee1Relation,@nominee1Percentage,
 @nominee2,@nominee2FatherName,@nominee2MotherName,@nominee2SpouseName,@nominee2Relation,
 @nominee2Percentage)
 end
 else if(@Type=1)
 begin
 update tblSingle set 
 depositDate=@depositDate,
 tdrSlNo=@tdrSlNo,
 accountNumber=@accountNumber,
 clientName=@clientName,
 fatherName=@fatherName,
 motherName=@motherName,
 spouseName=@spouseName,
 DOB=@DOB,
 sex=@sex,
 religion=@religion,
 nationality=@nationality,
 id=@id,
 idNo=@idNo,
 occupation=@occupation,
 organization=@organization,
 designation=@designation,
 officeAddress=@officeAddress,
 permAddress=@permAddress,
 phone=@phone,
 mobile=@mobile,
 email=@email,
 fax=@fax,
 depAmount=@depAmount,
 depTenure=@depTenure,
 depDateIssue=@depDateIssue,
 depDateMaturity=@depDateMaturity,
 cheqPoDDNo=@cheqPoDDNo,
 cheqDate=@cheqDate,
 cheqBank=@cheqBank,
 cheqBranch=@cheqBranch,
 cheqTakaInWrd=@cheqTakaInWrd,
 nominee1=@nominee1,
 nominee1FatherName=@nominee1FatherName,
 nominee1MotherName=@nominee1MotherName,
 nominee1SpouseName=@nominee1SpouseName,
 nominee1Relation=@nominee1Relation,
 nominee1Percentage=@nominee1Percentage,
 nominee2=@nominee2,
 nominee2FatherName=@nominee2FatherName,
 nominee2MotherName=@nominee2MotherName,
 nominee2SpouseName=@nominee2SpouseName,
 nominee2Relation=@nominee2Relation,
 nominee2Percentage=@nominee2Percentage where singleId=@singleId
 end
 else if(@Type=2)
 begin
 delete from tblSingle where singleId=@singleId
 end
 begin
 select * from tblSingle
 end
 end


