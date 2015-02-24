create database TDR;


------Table 1----------
create table tblLoginMst(
loginId           int primary key identity(1,1) not null,
loginUserName     varchar(50) not null,
loginPassword     nvarchar(100) not null,
logerFullName     varchar(50) not null,
logerAddress      varchar(50) not null,
logerEmail        varchar(50) not null
);

-----Table Single-----------
Create table Single(
singleId			int(50) primary key identity(1,1) not null,
depositDate			datetime(100) not null,
tdrSlNo				nvarchar(50)	not null,
accountNumber		nvarchar(50)	not null,
clientName          varchar(50)		not null,
fatherName          varchar(50)		not null,
motherName          varchar(50)		not null,
spouseName          varchar(50)		not null,
DOB                 datetime(100)			not null,
sex                 varchar(50)		not null,
religion            varchar(50)		not null,
nationality         varchar(50)		not null,
occupation			varchar(50)		not null,
organization	    varchar(100)	not null,
designation		    varchar(50)				,
officeAddress   	nvarchar(100)	not null,
permAddress         nvarchar(100)	not null,
phone               int(50)				not null,
mobile              int(50)				not null,
email               varchar(50)		not null,
fax                 int(50)		not null,
depAmount			money(100)				not null,
depTenure			money(100)				not null,
depDateIssue		datetime(100)				not null,
depDateMaturity		datetime(100)				not null,
cheqPoDDNo			int(50)				not null,
cheqDate			datetime(100)				not null,
cheqBank			varchar(50)		not null,
cheqBranch			varchar(50)		not null,
cheqTakaInWrd		varchar(100)		not null,
nominee1            varchar(50)		not null,
nominee1FatherName  varchar(50)		not null,
nominee1MotherName  varchar(50)		not null,
nominee1SpouseName  varchar(50)		not null,
nominee1Relation    varchar(50)		not null,
nominee1Percentage  varchar(50)		not null,
nominee2            varchar(50)		not null,
nominee2FatherName  varchar(50)		not null,
nominee2MotherName  varchar(50)		not null,
nominee2SpouseName  varchar(50)		not null,
nominee2Relation    varchar(50)		not null,
nominee2Percentage  varchar(50)		not null
);



------Table 2----------
drop table tblIndvDeposit;

create table tblIndvDeposit(
indvId             int primary key identity(1,1) not null,
depositDate        date not null,
tdrSlNo            nvarchar(50) not null,
accountNumber      nvarchar(50) not null,
loginId            int foreign key references tblLoginMst(loginId) not null
);



------Table 3----------
drop table tblProductMst;

create table tblProductMst(
productId          int primary key identity(1,1) not null,
productName        varchar(50) not null,
productComments    nvarchar(100),
indvId             int foreign key references tblIndvDeposit(indvId) not null
);

------Table 4----------
drop table tblDepositType;

create table tblDepositType(
typeId              int primary key identity(1,1) not null,
typeName            varchar(50) not null,
productId		    int foreign key references tblProductMst(productId) not null
);

------Table 5----------
drop table tblClientInfoMst;

create table tblClientInfoMst(
clientId            int primary key identity(1,1) not null,
clientName          varchar(50) not null,
fatherName          varchar(50) not null,
motherName          varchar(50) not null,
spouseName          varchar(50) not null,
DOB                 date not null,
sex                 varchar(50) not null,
religion            varchar(50) not null,
nationality         varchar(50) not null,
documentId	        int not null,
occupation			varchar(50) not null,
organization	    varchar(100) not null,
designation		    varchar(50) not null,
officeAddress   	nvarchar(100) not null,
permAddress         nvarchar(100) not null,
phone               int not null,
mobile              int not null,
email               varchar(50) not null,
fax                 varchar(50) not null,
typeId              int foreign key references tblDepositType(typeId) not null
);


------Table 6----------
drop table tblJointDepositor;

create table tblJointDepositor(
jointId             int primary key identity(1,1) not null,
jointName           varchar(50) not null,
fatherName          varchar(50) not null,
motherName          varchar(50) not null,
spouseName          varchar(50) not null,
DOB                 date not null,
sex                 varchar(50) not null,
religion            varchar(50) not null,
nationality         varchar(50) not null,
documentId	        int not null,
occupation			varchar(50) not null,
organization	    varchar(100) not null,
designation		    varchar(50) not null,
officeAddress   	nvarchar(100) not null,
clientId            int foreign key references tblClientInfoMst(clientId) not null
);



------Table 7----------
drop table tblCorporateDeposit;

create table tblCorporateDeposit(
corpId              int primary key identity(1,1) not null,
instituteName       varchar(100) not null,
insType				varchar(50) not null,
bsnsNature			varchar(50) not null,
tinNo				int not null,
firstSignature		image not null,
firstDesignation	varchar(50),
secondSignature		image not null,
secondDesignation	varchar(50),
thirdSignature		image not null,
thirdDesignation	varchar(50),
fourthSignature		image not null,
fourthDesignation	varchar(50),
jointId             int foreign key references tblJointDepositor(jointId) not null
);



------Table 8----------
drop table tblRegAddress;

create table tblRegAddress(
regId		   int primary key identity(1,1) not null,
regAddress		   nvarchar(100) not null,
regPhone		   int not null,
regmobile		   int not null,
regEmail           int not null,
regFax             int not null,	 
corpId             int foreign key references tblCorporateDeposit(corpId) not null
);


------Table 9----------
drop table tblDepDetails;

create table tblDepDetails(
depId			  int primary key identity(1,1),
depAmount		  money not null,
depTenure         money not null,
depDateIssue      date  not null,
depDateMaturity   date  not null,	 
regId             int foreign key references tblRegAddress(regId) not null
);


------Table 10----------
drop table tblChequeDetails;

create table tblChequeDetails(
cheqId            int primary key identity(1,1),
cheqPoDDNo        int not null,
cheqDate          date not null,
cheqBank          varchar(50) not null,
cheqBranch        varchar(50) not null,
cheqTakaInWrd     varchar(100) not null,
depId             int foreign key references tblDepDetails(depId) not null
);


------Table 11----------
drop table tblNomineeInfo;

create table tblNomineeInfo(
nomineeId           int primary key identity(1,1),
nominee1            varchar(50) not null,
nominee1Image       image not null,
nominee1FatherName  varchar(50) not null,
nominee1MotherName  varchar(50) not null,
nominee1SpouseName  varchar(50) not null,
nominee1Relation    varchar(50) not null,
nominee1Percentage  varchar(50) not null,
nominee1Signature   varchar(50) not null,
nominee2            varchar(50) not null,
nominee2Image       image not null,
nominee2FatherName  varchar(50) not null,
nominee2MotherName  varchar(50) not null,
nominee2SpouseName  varchar(50) not null,
nominee2Relation    varchar(50) not null,
nominee2Percentage  varchar(50) not null,
nominee2Signature   varchar(50) not null,
cheqId              int foreign key references tblChequeDetails(cheqId) not null
);