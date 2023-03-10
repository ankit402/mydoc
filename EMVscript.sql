USE [EMV_DB]
GO
/****** Object:  StoredProcedure [dbo].[Sp_CA_CRUD]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Ankit Pandey>
-- Create date: <Create 03-06-2020,,>
-- Description:	<Description,CA_CRUD Operation Store Procedure,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CA_CRUD]
( 
@ID int=NULL,
@CA_Issuer Varchar(50)=NULL,
@CA_Exponent Varchar(50)=NULL,
@CA_Index Varchar(10)=NULL,
@CA_RID Varchar(50)=NULL,
@CA_Modulus Varchar(max)=NULL,
@CA_Length Varchar(50)=NULL,
@CA_SHA1 Varchar(50)=NULL,
@CA_Environment Varchar(max)=NULL,
@CA_Expires datetime=NULL,
@StatementType Varchar(2),
@Created datetime=NULL
)
AS
 BEGIN  
      IF @StatementType = 'I'  -- Create CA 
        BEGIN  
				INSERT INTO tbl_CA 
					(CA_Issuer,
					CA_Exponent,
					CA_Index,
					CA_RID,
					CA_Modulus,
					CA_Length,
					CA_SHA1,
					CA_Environment,
					CA_Expires,
					StatementType,
					Created)
				VALUES
					(@CA_Issuer,
					@CA_Exponent,
					@CA_Index,
					@CA_RID,
					@CA_Modulus,
					@CA_Length,
					@CA_SHA1,
					@CA_Environment,
					@CA_Expires,
					@StatementType,
					GETDATE())        
        END 
	  IF @StatementType='R'   -- Read CA Details
        BEGIN  
			   Select 
			      CA_Issuer,
				  CA_Exponent,
				  CA_Index,
				  CA_RID,
				  CA_Modulus,
				  CA_Length,
				  CA_SHA1,
				  CA_Environment,
				  CA_Expires,
				  Created from tbl_CA 
				--VALUES(@CA_Issuer,@CA_Exponent, @CA_Index,  @CA_RID, @CA_Modulus,@CA_Length,@CA_SHA1,@CA_Environment,@CA_Expires)  
        END
	 IF @StatementType='U'    -- Update CA 
        BEGIN  
			   Update tbl_CA  
				   set CA_Issuer=@CA_Issuer,
				   CA_Exponent=@CA_Exponent,
				   CA_Index=@CA_Index,
				   CA_RID=@CA_RID,
				   CA_Modulus=@CA_Modulus,
				   CA_Length= @CA_Length,
				   CA_SHA1=@CA_SHA1,
				   CA_Environment=@CA_Environment,
				   CA_Expires=@CA_Expires,
				   Created = GETDATE()
			   where ID=@ID
        END
	  IF @StatementType='D'    -- Delete CA 
        BEGIN  
				 Delete from tbl_CA   where ID=@ID
        END
		IF @StatementType='S'    -- Select CA 
        BEGIN  
				 Select * from tbl_CA  
        END
END


GO
/****** Object:  StoredProcedure [dbo].[SP_Chip_CRUD]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Ankit Pandey>
-- Create date: <Create Date,03-06-2020,>
-- Description:	<Description,Chip CRUD Operation Store Procedure,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Chip_CRUD](
@ID int,
@ChipName varchar(50),
@ChipType varchar(50),
@VendorName varchar(50),
@Expiry datetime,
@ALCD varchar(50),
@RSACapability int,
@ATR varchar(50),
@ISDSelect bit,
@AppletSelect Varchar(50),
@AppletExist Varchar(50),
@AppletInstall Varchar(50),
@PSESelect Varchar(50),
@PSEExist bit,
@PSEInstall varchar(50),
@PPSEExist bit,
@PPSEInstall varchar(50),
@AuthMethod bit,
@StatementType varchar(2),
@created datetime
)
AS
BEGIN
	
	IF(@StatementType = 'I')
		  BEGIN
		     INSERT INTO [dbo].[tbl_Chip] 
			 (
			 ChipName,   ChipType,   VendorName,   Expiry, ALCD,    RSACapability,ATR,   ISDSelect, AppletSelect,  AppletExist, 
			 AppletInstall,PSESelect,    PSEExist, PSEInstall,    PPSEExist, PPSEInstall,  AuthMethod,  StatementType, created
			 ) 
			 Values 
			 (@ChipName,   @ChipType,   @VendorName,   @Expiry, @ALCD,   @RSACapability,@ATR,   @ISDSelect, @AppletSelect, @AppletExist, 
				@AppletInstall,@PSESelect,   @PSEExist,@PSEInstall,   @PPSEExist,@PPSEInstall, @AuthMethod, @StatementType,@created)
	
		  END
	 IF(@StatementType = 'R')
		  BEGIN
		   Select * from [dbo].[tbl_Chip] 
		  END
	  --IF(@StatementType = 'U')
		 -- BEGIN

		 -- END
	  IF(@StatementType = 'D')
		  BEGIN
			 Delete from [dbo].[tbl_Chip] where ID=@ID
		  END
  
END


GO
/****** Object:  StoredProcedure [dbo].[Sp_IPK_CRUD]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Ankit Pandey>
-- Create date: <Create Date,03-06-2020,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_IPK_CRUD]
(
@ID int,@RSA_asn1PubKey varchar(600), @RSA_asn1PrivKey varchar(600),@RSA_Cofficient varchar(600),@RSA_Exponent2 varchar(600),
@RSA_Exponent1 varchar(600),@RSA_Prime2 varchar(600) ,@RSA_Prime1 varchar(600), @RSA_PrivateExp varchar(600),
@RSA_PubExponent varchar(600),@RSA_PublicMod varchar(600),@IPK_BIN varchar(10),@IPK_Preferred_name varchar(100), 
@IPK_Expiry datetime, @IPK_Length int ,@IPK_Scheme varchar(100), @IPK_SHA1 varchar(100), @IPK_RID varchar(100) , 
@IPK_CA_Index int ,@IPK_Tracking_No int ,@IPK_Filename varchar(100),@IPK_IsSigned bit,@IPK_Index int, 
@IPK_RequestFileData varchar(600),@IPK_RequestHashFileData varchar(600) ,@IPK_SignedRowData varchar(600), 
@IPK_SignedReminder varchar(100) ,@IPK_SignedCertificate varchar(600) ,@IPK_CertRequestFile varchar(100),
@IPK_SignedCertFile varchar(100) , @IPK_CreatedDate datetime, @StatementType varchar(2)
)
AS
BEGIN
	
	IF(@StatementType = 'I')
			BEGIN
			   INSERT INTO tbl_IPK 
						  (RSA_asn1PubKey,RSA_asn1PrivKey,RSA_Cofficient,RSA_Exponent2,RSA_Exponent1,RSA_Prime2,
						RSA_Prime1,RSA_PrivateExp,RSA_PubExponent,RSA_PublicMod,IPK_BIN,IPK_Preferred_name,IPK_Expiry,IPK_Length,IPK_Scheme,IPK_SHA1,
						IPK_RID,IPK_CA_Index,IPK_Tracking_No,IPK_Filename,IPK_IsSigned,IPK_Index,IPK_RequestFileData,IPK_RequestHashFileData,IPK_SignedRowData,
						IPK_SignedReminder,IPK_SignedCertificate,IPK_CertRequestFile,IPK_SignedCertFile,IPK_CreatedDate,StatementType)
						Values
						(@RSA_asn1PubKey,@RSA_asn1PrivKey,@RSA_Cofficient,@RSA_Exponent2,@RSA_Exponent1,@RSA_Prime2,@RSA_Prime1,@RSA_PrivateExp,@RSA_PubExponent,@RSA_PublicMod,@IPK_BIN,@IPK_Preferred_name,@IPK_Expiry,@IPK_Length,@IPK_Scheme,@IPK_SHA1,
						@IPK_RID,@IPK_CA_Index,@IPK_Tracking_No,@IPK_Filename,@IPK_IsSigned,@IPK_Index,@IPK_RequestFileData,@IPK_RequestHashFileData,@IPK_SignedRowData,
						@IPK_SignedReminder,@IPK_SignedCertificate,@IPK_CertRequestFile,@IPK_SignedCertFile,@IPK_CreatedDate,@StatementType)
			END

	IF(@StatementType = 'R')
			BEGIN
			   Select * From tbl_IPK
			 END
	IF(@StatementType = 'U')
			BEGIN
			   Update tbl_IPK Set 
			   [RSA_asn1PubKey]=@RSA_asn1PubKey,
			   RSA_asn1PrivKey=@RSA_asn1PrivKey,
			   RSA_Cofficient=@RSA_Cofficient,
			   RSA_Exponent2=@RSA_Exponent2,
			   RSA_Exponent1=@RSA_Exponent1,
			    RSA_Prime1=@RSA_Prime1,
				RSA_Prime2=@RSA_Prime2,
						RSA_PrivateExp=@RSA_PrivateExp
						,RSA_PubExponent=@RSA_PubExponent
						,RSA_PublicMod=@RSA_PublicMod
						,IPK_BIN=@IPK_BIN,
						IPK_Preferred_name=@IPK_Preferred_name
						,IPK_Expiry=@IPK_Expiry
						,IPK_Length=@IPK_Length
						,IPK_Scheme=@IPK_Scheme
						,IPK_SHA1=@IPK_SHA1
						,IPK_RID=@IPK_RID
						,IPK_CA_Index=@IPK_CA_Index
						,IPK_Tracking_No=@IPK_Tracking_No
						,IPK_Filename=@IPK_Filename
						,IPK_IsSigned=@IPK_IsSigned
						,IPK_Index=@IPK_Index
						,IPK_RequestFileData=@IPK_RequestFileData
						,IPK_RequestHashFileData=@IPK_RequestHashFileData
						,IPK_SignedRowData=@IPK_SignedRowData
						,IPK_SignedReminder=@IPK_SignedReminder
						,IPK_SignedCertificate=@IPK_SignedCertificate
						,IPK_CertRequestFile=@IPK_CertRequestFile
						,IPK_SignedCertFile=@IPK_SignedCertFile
						,IPK_CreatedDate=@IPK_CreatedDate
						,StatementType='U'
						where ID=@ID
			 END
    IF(@StatementType = 'D')
			BEGIN
			   Delete From tbl_IPK where ID=@ID
			 END
END


GO
/****** Object:  StoredProcedure [dbo].[Sp_KEYS_CRUD]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Ankit Pandey>
-- Create date: <Create Date,05-06-2020,>
-- Description:	<Description,Keys Store Store procedure CRUD,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_KEYS_CRUD]
	 @ID int = null,
	 @Keys_Name varchar(50)=null,
	 @Description varchar(50)=null,
	 @KeySetID varchar(50)=null,
	 @StatementType varchar(2)=null,
	 @Created datetime=null
AS
BEGIN
	IF(@StatementType ='I')
		  Begin
			Insert into [dbo].[tbl_Keystore_Keys](Keys_Name, [Description], KeySetID, StatementType, Created)
			values (@Keys_Name, @Description, @KeySetID, @StatementType, @Created)
		  End
	IF(@StatementType ='R')
		 Begin
		   Select Keys_Name,Description,KeySetID  from tbl_Keystore_Keys
		 End
	IF(@StatementType= 'S')
		 Begin
		  Select * from tbl_Keystore_Keys where ID= @ID
		 End
	IF(@StatementType = 'U')
		  Begin
			Update [dbo].[tbl_Keystore_Keys] set Keys_Name =@Keys_Name , Description =@Description , KeySetID= @KeySetID
			,StatementType= 'U' , Created = GETDATE()
		  End
	  IF(@StatementType ='D')
		  Begin
		   Delete from [dbo].[tbl_Keystore_Keys] 
		  End
		   IF(@StatementType ='KS')
		  Begin
		   select * from [dbo].tbl_KeySet 
		  End
END

GO
/****** Object:  Table [dbo].[tbl_App_EMVProfilelist]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_App_EMVProfilelist](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[App_Scheme] [varchar](50) NOT NULL,
	[App_PreferredName] [varchar](50) NOT NULL,
	[Chip] [varchar](50) NOT NULL,
	[App_FileName] [varchar](50) NOT NULL,
	[StatementType] [varchar](50) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_App_EMVProfilelist] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_BinProfile]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_BinProfile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[BIN] [int] NOT NULL,
	[IPK] [int] NOT NULL,
	[CHIP] [varchar](50) NOT NULL,
	[EMV_ProfileID] [int] NOT NULL,
	[PEK] [varchar](50) NULL,
	[IMK_Set] [varchar](50) NULL,
	[KMC] [varchar](50) NOT NULL,
	[ICC_RSA_Length] [int] NULL,
	[StatementType] [varchar](2) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_BinProfile] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_CA]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_CA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CA_Issuer] [varchar](50) NOT NULL,
	[CA_Exponent] [varchar](50) NOT NULL,
	[CA_Index] [varchar](50) NOT NULL,
	[CA_RID] [varchar](100) NOT NULL,
	[CA_Modulus] [varchar](max) NOT NULL,
	[CA_Length] [varchar](50) NOT NULL,
	[CA_SHA1] [varchar](50) NOT NULL,
	[CA_Environment] [varchar](max) NOT NULL,
	[CA_Expires] [varchar](50) NOT NULL,
	[StatementType] [varchar](2) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_CA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Chip]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Chip](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ChipName] [varchar](50) NOT NULL,
	[ChipType] [varchar](50) NOT NULL,
	[VendorName] [varchar](50) NOT NULL,
	[Expiry] [datetime] NOT NULL,
	[ALCD] [varchar](50) NULL,
	[RSACapability] [int] NULL,
	[ATR] [varchar](50) NOT NULL,
	[ISDSelect] [bit] NOT NULL,
	[AppletSelect] [varchar](50) NULL,
	[AppletExist] [bigint] NULL,
	[AppletInstall] [varchar](50) NULL,
	[PSESelect] [varchar](50) NULL,
	[PSEExist] [bit] NULL,
	[PSEInstall] [varchar](50) NULL,
	[PPSESelect] [varchar](50) NULL,
	[PPSEExist] [bit] NULL,
	[PPSEInstall] [varchar](50) NULL,
	[AuthMethod] [bit] NULL,
	[StatementType] [nchar](10) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_Chip] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Crypto]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Crypto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CryptoName] [varchar](50) NOT NULL,
	[LengthByte] [tinyint] NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Created] [datetime] NOT NULL,
	[StatementType] [varchar](2) NOT NULL,
 CONSTRAINT [PK_tbl_Crypto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_EMV_TagList]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_EMV_TagList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tag_Value] [varchar](50) NOT NULL,
	[Tag_Name] [varchar](max) NOT NULL,
	[Format] [varchar](max) NOT NULL,
	[Type] [varchar](max) NOT NULL,
	[Origin] [varchar](50) NOT NULL,
	[Encoding] [varchar](50) NOT NULL,
	[Role] [varchar](50) NOT NULL,
	[StatementType] [varchar](2) NOT NULL,
 CONSTRAINT [PK_tbl_EMV_TagList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_EMVPersoData]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_EMVPersoData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EMBOSS_PAN] [varchar](50) NOT NULL,
	[EMBOSS_START] [varchar](50) NULL,
	[EMBOSS_EXPIRY] [varchar](50) NOT NULL,
	[EMBOSS_NAME] [varchar](50) NOT NULL,
	[EMBOSS_CVC2] [varchar](50) NOT NULL,
	[EMBOSS_LINE4] [varchar](50) NULL,
	[EXT_LINE1] [varchar](50) NULL,
	[EXT_LINE2] [varchar](50) NULL,
	[TRACK1] [varchar](max) NULL,
	[TRACK2] [varchar](max) NULL,
	[TRACK3] [varchar](max) NULL,
	[PAN_SEQ] [varchar](max) NOT NULL,
	[EMV_DATA] [varchar](max) NOT NULL,
	[PPSE_DATA] [varchar](max) NULL,
	[PSE_DATA] [varchar](max) NOT NULL,
	[STATUS] [varchar](100) NOT NULL,
	[StatementType] [varchar](2) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_EMVPersoData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_GroupData]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_GroupData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [varchar](50) NOT NULL,
	[GroupName] [varchar](50) NOT NULL,
	[Role] [varchar](50) NOT NULL,
	[ModuleName] [varchar](max) NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdateBy] [varchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[StatementType] [varchar](2) NOT NULL,
 CONSTRAINT [PK_tbl_GroupData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_IPK]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_IPK](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RSA_asn1PubKey] [varchar](max) NOT NULL,
	[RSA_asn1PrivKey] [varchar](max) NOT NULL,
	[RSA_Cofficient] [varchar](max) NOT NULL,
	[RSA_Exponent2] [varchar](max) NOT NULL,
	[RSA_Exponent1] [varchar](max) NOT NULL,
	[RSA_Prime2] [varchar](max) NOT NULL,
	[RSA_Prime1] [varchar](max) NOT NULL,
	[RSA_PrivateExp] [varchar](max) NOT NULL,
	[RSA_PubExponent] [varchar](max) NOT NULL,
	[RSA_PublicMod] [varchar](max) NOT NULL,
	[IPK_BIN] [varchar](10) NOT NULL,
	[IPK_Preferred_name] [varchar](100) NOT NULL,
	[IPK_Expiry] [datetime] NOT NULL,
	[IPK_Length] [int] NOT NULL,
	[IPK_Scheme] [varchar](50) NOT NULL,
	[IPK_SHA1] [varchar](max) NOT NULL,
	[IPK_RID] [varchar](50) NOT NULL,
	[IPK_CA_Index] [int] NOT NULL,
	[IPK_Tracking_No] [int] NOT NULL,
	[IPK_Filename] [varchar](100) NOT NULL,
	[IPK_IsSigned] [bigint] NOT NULL,
	[IPK_Index] [int] NOT NULL,
	[IPK_RequestFileData] [varchar](50) NOT NULL,
	[IPK_RequestHashFileData] [varchar](max) NOT NULL,
	[IPK_SignedRowData] [varchar](max) NOT NULL,
	[IPK_SignedReminder] [varchar](max) NOT NULL,
	[IPK_SignedCertificate] [varchar](max) NOT NULL,
	[IPK_CertRequestFile] [varchar](max) NOT NULL,
	[IPK_SignedCertFile] [varchar](max) NOT NULL,
	[IPK_CreatedDate] [datetime] NOT NULL,
	[StatementType] [varchar](2) NOT NULL,
 CONSTRAINT [PK_tbl_IPK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Keys_Key]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Keys_Key](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Key_Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[KeyTypeID] [int] NOT NULL,
	[CryptoID] [int] NOT NULL,
	[Component] [varchar](max) NOT NULL,
	[Kcv] [varchar](10) NOT NULL,
	[StatementType] [varchar](2) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_Keys_Key] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_KeySet]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_KeySet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KeySetName] [varchar](50) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[StatementType] [varchar](2) NOT NULL,
	[Created] [datetime] NULL,
 CONSTRAINT [PK_tbl_KeySet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Keystore_Keys]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Keystore_Keys](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Keys_Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[KeySetID] [varchar](50) NOT NULL,
	[StatementType] [varchar](2) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_Keystore_Keys] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_KeyType]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_KeyType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KeyTypeName] [varchar](50) NOT NULL,
	[KeySetName] [varchar](50) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[StatementType] [varchar](2) NOT NULL,
	[Created] [datetime] NULL,
 CONSTRAINT [PK_tbl_KeyType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Modules]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Modules](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleName] [varchar](50) NOT NULL,
	[IsEnable] [bit] NOT NULL,
	[Createdby] [varchar](50) NOT NULL,
	[Createddate] [datetime] NOT NULL,
	[Updatedby] [varchar](50) NOT NULL,
	[Updatedate] [datetime] NOT NULL,
	[StatementType] [varchar](2) NOT NULL,
	[UserID] [varchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Modules] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Policy]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Policy](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PolicyName] [varchar](50) NOT NULL,
	[PolicyType] [varchar](50) NOT NULL,
	[PasswordStrength] [int] NOT NULL,
	[PasswordComplexity] [varchar](max) NOT NULL,
	[PasswordHistory] [int] NOT NULL,
	[PasswordFailedAttempt] [int] NOT NULL,
	[IsDisabled] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[MaximumPasswordAge] [int] NOT NULL,
	[MinimumPasswordAge] [int] NOT NULL,
	[Createdby] [varchar](50) NOT NULL,
	[Createddate] [datetime] NOT NULL,
	[Updatedby] [varchar](50) NOT NULL,
	[Updateddate] [datetime] NOT NULL,
	[StatementType] [varchar](2) NOT NULL,
 CONSTRAINT [PK_tbl_Policy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_PrinterProfile]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_PrinterProfile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PrinterID] [int] NOT NULL,
	[BINID] [int] NOT NULL,
	[ProfileName] [varchar](50) NOT NULL,
	[MethodClassName] [varchar](50) NOT NULL,
	[EnableChip] [bit] NOT NULL,
	[EnablePrint] [bit] NOT NULL,
	[EnableMag] [bit] NOT NULL,
	[MagCoercivity] [varchar](50) NOT NULL,
	[FrontImage] [varchar](50) NULL,
	[BackImage] [varchar](50) NULL,
	[StatementType] [varchar](2) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_PrinterProfile] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Printers]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Printers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PrinterName] [varchar](50) NOT NULL,
	[PrinterType] [varchar](50) NOT NULL,
	[IsChip] [bit] NOT NULL,
	[IsMag] [bit] NOT NULL,
	[IsThermal] [bit] NOT NULL,
	[FeederCount] [int] NOT NULL,
	[MakeModel] [varchar](50) NOT NULL,
	[Others] [varchar](50) NOT NULL,
	[Readername] [varchar](50) NOT NULL,
	[StatementType] [varchar](2) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_Printers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_PrintingSprites]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_PrintingSprites](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[PosX] [int] NOT NULL,
	[PosY] [int] NOT NULL,
	[IsFront] [bit] NOT NULL,
	[FontName] [varchar](50) NOT NULL,
	[FontSize] [int] NOT NULL,
	[IsBold] [bit] NOT NULL,
	[FontColor] [varchar](50) NOT NULL,
	[Other] [varchar](50) NOT NULL,
	[StatementType] [varchar](2) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_PrintingSprites] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Roles]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleType] [varchar](50) NULL,
	[RoleName] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_UserData]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_UserData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[IsEnable] [bit] NOT NULL,
	[IsLogin] [bit] NOT NULL,
	[UserType] [varchar](max) NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[StatementType] [varchar](2) NULL,
 CONSTRAINT [PK_tbl_UserData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_UserLogin]    Script Date: 15-07-2020 7:44:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_UserLogin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login_User] [varchar](50) NOT NULL,
	[Loggedin_time] [datetime] NOT NULL,
	[LoggedOut] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[StatementType] [varchar](2) NOT NULL,
 CONSTRAINT [PK_tbl_UserLogin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_CA] ON 

INSERT [dbo].[tbl_CA] ([ID], [CA_Issuer], [CA_Exponent], [CA_Index], [CA_RID], [CA_Modulus], [CA_Length], [CA_SHA1], [CA_Environment], [CA_Expires], [StatementType], [Created]) VALUES (1, N'VISA_1984', N'03', N'94', N'A000000003', N'ACD2B12302EE644F3F835ABD1FC7A6F62CCE48FFEC622AA8EF062BEF6FB8BA8BC68BBF6AB5870EED579BC3973E121303D34841A796D6DCBC41DBF9E52C4609795C0CCF7EE86FA1D5CB041071ED2C51D2202F63F1156C58A92D38BC60BDF424E1776E2BC9648078A03B36FB554375FC53D57C73F5160EA59F3AFC5398EC7B67758D65C9BFF7828B6B82D4BE124A416AB7301914311EA462C19F771F31B3B57336000DFF732D3B83DE07052D730354D297BEC72871DCCF0E193F171ABA27EE464C6A97690943D59BDABB2A27EB71CEEBDAFA1176046478FD62FEC452D5CA393296530AA3F41927ADFE434A2DF2AE3054F8840657A26E0FC617', N'1984', N'C4A3C43CCF87327D136B804160E47D43B60E6E0F', N'Test', N'2028-12-31', N'I', CAST(0x0000ABF000000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_CA] OFF
SET IDENTITY_INSERT [dbo].[tbl_Crypto] ON 

INSERT [dbo].[tbl_Crypto] ([ID], [CryptoName], [LengthByte], [Description], [Created], [StatementType]) VALUES (1, N'DES', 8, N'Data Encryption Standard', CAST(0x0000ABD00104FF63 AS DateTime), N'I')
INSERT [dbo].[tbl_Crypto] ([ID], [CryptoName], [LengthByte], [Description], [Created], [StatementType]) VALUES (4, N'AES', 16, N'Advanced Encryption Standard', CAST(0x0000ABD00104FF63 AS DateTime), N'I')
INSERT [dbo].[tbl_Crypto] ([ID], [CryptoName], [LengthByte], [Description], [Created], [StatementType]) VALUES (5, N'DDES', 16, N'Double DES', CAST(0x0000ABD00104FF63 AS DateTime), N'I')
INSERT [dbo].[tbl_Crypto] ([ID], [CryptoName], [LengthByte], [Description], [Created], [StatementType]) VALUES (6, N'SHA', 16, N'SHA', CAST(0x0000ABD00104FF63 AS DateTime), N'I')
SET IDENTITY_INSERT [dbo].[tbl_Crypto] OFF
SET IDENTITY_INSERT [dbo].[tbl_IPK] ON 

INSERT [dbo].[tbl_IPK] ([ID], [RSA_asn1PubKey], [RSA_asn1PrivKey], [RSA_Cofficient], [RSA_Exponent2], [RSA_Exponent1], [RSA_Prime2], [RSA_Prime1], [RSA_PrivateExp], [RSA_PubExponent], [RSA_PublicMod], [IPK_BIN], [IPK_Preferred_name], [IPK_Expiry], [IPK_Length], [IPK_Scheme], [IPK_SHA1], [IPK_RID], [IPK_CA_Index], [IPK_Tracking_No], [IPK_Filename], [IPK_IsSigned], [IPK_Index], [IPK_RequestFileData], [IPK_RequestHashFileData], [IPK_SignedRowData], [IPK_SignedReminder], [IPK_SignedCertificate], [IPK_CertRequestFile], [IPK_SignedCertFile], [IPK_CreatedDate], [StatementType]) VALUES (7, N'3081CD300D06092A864886F70D01010105000381BB003081B70281B100BD55C319904BEF614C79F1B69D60BC4239720779E55D1E46178E443FE5709CB50B7D387CA4F3FA49F0014C099F6EE20019AFE1EDA8321652C0CA01A19C690ACD21EBACF5FA93DF3EDBF5D309661184160ACC0BCE5DF5EE328E73A022E02FA6D99F0AA90171E55E40E315BC51F467F91DF508AA2782EBF118422633451CB97678476ADE7E8813942A0248DF84D5FCB860EF1B188BCF5C67656C99E54A5FA1C2650F2802119FA765E445D431CAA4977D13020103', N'3082034D020100300D06092A864886F70D010101050004820337308203330201000281B100BD55C319904BEF614C79F1B69D60BC4239720779E55D1E46178E443FE5709CB50B7D387CA4F3FA49F0014C099F6EE20019AFE1EDA8321652C0CA01A19C690ACD21EBACF5FA93DF3EDBF5D309661184160ACC0BCE5DF5EE328E73A022E02FA6D99F0AA90171E55E40E315BC51F467F91DF508AA2782EBF118422633451CB97678476ADE7E8813942A0248DF84D5FCB860EF1B188BCF5C67656C99E54A5FA1C2650F2802119FA765E445D431CAA4977D130201030281B07E392CBBB587F4EB88514BCF1395D2D6D0F6AFA698E8BED9650982D543A06878B2537AFDC34D5186A000DD5BBF9F4155667541491ACC0EE1D5DC0116684607336BF2734EA70D3F7F3D4E8CB0EEB6580EB1DD5D343EA3F4208DD78ADC581C0C48548776BBA050AF2A56B0BB5A9D3D1EF6B11CE98269A741C7700812340721D572E5008BC563BEB85C8C668BB7D1EC0B62331513F4B85373F34B67F68CFFF32A34C2361F8727B7A5ABD85F5E1E81A3AA8B025900EE3C69ED2C47B9D9D17B427BEA72F47A3006B7BAFF8C4194548D7D784AD98D865097E6383613134CA4360662294D2200644CFB5B71B4AECCB94F5CDD3A69959419B55D952AC24D7886CC2390076FAE3CC729840A8D5A7A3B025900CB73E5EB2FBDDA934EC4346C16F963073105EB8F0900091796CFCE6B999780E6C98231BEDBF3A2FF4BB4067449285D9ECB621295A965F880E92C1DBF8075A3E461C895E1B4F2B59D650AAF36DCA43F25BA1BA09254C783090259009ED2F148C82FD13BE0FCD6FD46F74DA6CAAF252755082BB8385E53A5873BB3AEE065442579620CDDC2CEAEEC1B88C1559833523CF67874887B8A3DE8D19BB90D6678E90E1C8188FB048817B55A4A742884C6580708E6FC2702590087A2994775293C623482CD9D64A64204CB5947B4B0AAB0BA648A899D110FAB448656CBD492A26CAA3278044D861AE9148796B70E70EEA5AB461D692A55A3C298413063EBCDF723BE435C74CF3DC2D4C3D167C0618DDA575B025864A9BF3FB287F610B6D31BB35AE0E874555E0F3229BA5BD2BDC59F331D713B3CD1FE70096C44736E9BE0A36D69259C71D666BB3B1643B81AF9833B335E54C3B137C2D92DE7C696DE4D030EAE52971A4BEDD64502A37D4539', N'64A9BF3FB287F610B6D31BB35AE0E874555E0F3229BA5BD2BDC59F331D713B3CD1FE70096C44736E9BE0A36D69259C71D666BB3B1643B81AF9833B335E54C3B137C2D92DE7C696DE4D030EAE52971A4BEDD64502A37D4539', N'87A2994775293C623482CD9D64A64204CB5947B4B0AAB0BA648A899D110FAB448656CBD492A26CAA3278044D861AE9148796B70E70EEA5AB461D692A55A3C298413063EBCDF723BE435C74CF3DC2D4C3D167C0618DDA575B', N'9ED2F148C82FD13BE0FCD6FD46F74DA6CAAF252755082BB8385E53A5873BB3AEE065442579620CDDC2CEAEEC1B88C1559833523CF67874887B8A3DE8D19BB90D6678E90E1C8188FB048817B55A4A742884C6580708E6FC27', N'CB73E5EB2FBDDA934EC4346C16F963073105EB8F0900091796CFCE6B999780E6C98231BEDBF3A2FF4BB4067449285D9ECB621295A965F880E92C1DBF8075A3E461C895E1B4F2B59D650AAF36DCA43F25BA1BA09254C78309', N'EE3C69ED2C47B9D9D17B427BEA72F47A3006B7BAFF8C4194548D7D784AD98D865097E6383613134CA4360662294D2200644CFB5B71B4AECCB94F5CDD3A69959419B55D952AC24D7886CC2390076FAE3CC729840A8D5A7A3B', N'7E392CBBB587F4EB88514BCF1395D2D6D0F6AFA698E8BED9650982D543A06878B2537AFDC34D5186A000DD5BBF9F4155667541491ACC0EE1D5DC0116684607336BF2734EA70D3F7F3D4E8CB0EEB6580EB1DD5D343EA3F4208DD78ADC581C0C48548776BBA050AF2A56B0BB5A9D3D1EF6B11CE98269A741C7700812340721D572E5008BC563BEB85C8C668BB7D1EC0B62331513F4B85373F34B67F68CFFF32A34C2361F8727B7A5ABD85F5E1E81A3AA8B', N'03', N'BD55C319904BEF614C79F1B69D60BC4239720779E55D1E46178E443FE5709CB50B7D387CA4F3FA49F0014C099F6EE20019AFE1EDA8321652C0CA01A19C690ACD21EBACF5FA93DF3EDBF5D309661184160ACC0BCE5DF5EE328E73A022E02FA6D99F0AA90171E55E40E315BC51F467F91DF508AA2782EBF118422633451CB97678476ADE7E8813942A0248DF84D5FCB860EF1B188BCF5C67656C99E54A5FA1C2650F2802119FA765E445D431CAA4977D13', N'459665', N'VISA CREDIT', CAST(0x0000B244012246F0 AS DateTime), 1408, N'VISA', N'01', N'A00000000003000000', 94, 917390, N'CC917390.INP', 1, 1, N'NA', N'NA', N'NA', N'NA', N'NA', N'NA', N'C:\917390.I94', CAST(0x0000ABF3012246F0 AS DateTime), N'U')
SET IDENTITY_INSERT [dbo].[tbl_IPK] OFF
SET IDENTITY_INSERT [dbo].[tbl_KeySet] ON 

INSERT [dbo].[tbl_KeySet] ([ID], [KeySetName], [Description], [StatementType], [Created]) VALUES (1, N'IMKs', N'Issuer Master Keys', N'I', CAST(0x0000ABD00104FF63 AS DateTime))
INSERT [dbo].[tbl_KeySet] ([ID], [KeySetName], [Description], [StatementType], [Created]) VALUES (2, N'Others', N'Others', N'I', CAST(0x0000ABD00104FF63 AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_KeySet] OFF
SET IDENTITY_INSERT [dbo].[tbl_Keystore_Keys] ON 

INSERT [dbo].[tbl_Keystore_Keys] ([ID], [Keys_Name], [Description], [KeySetID], [StatementType], [Created]) VALUES (1, N'Test IMKs', N'Test issuer master key sets', N'IMKs', N'I', CAST(0x0000ABD200000000 AS DateTime))
INSERT [dbo].[tbl_Keystore_Keys] ([ID], [Keys_Name], [Description], [KeySetID], [StatementType], [Created]) VALUES (2, N'Other Keys', N'Keys Used for other purpose', N'Others', N'I', CAST(0x0000ABD200000000 AS DateTime))
INSERT [dbo].[tbl_Keystore_Keys] ([ID], [Keys_Name], [Description], [KeySetID], [StatementType], [Created]) VALUES (3, N'Prod IMKs', N'Production Issuer Master Keys', N'IMKs', N'I', CAST(0x0000ABD200000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_Keystore_Keys] OFF
SET IDENTITY_INSERT [dbo].[tbl_KeyType] ON 

INSERT [dbo].[tbl_KeyType] ([ID], [KeyTypeName], [KeySetName], [Description], [StatementType], [Created]) VALUES (1, N'ZMKs', N'NA', N'Zonal Master Key', N'I', NULL)
INSERT [dbo].[tbl_KeyType] ([ID], [KeyTypeName], [KeySetName], [Description], [StatementType], [Created]) VALUES (2, N'KMC', N'NA', N'Card Authentication Key', N'I', NULL)
INSERT [dbo].[tbl_KeyType] ([ID], [KeyTypeName], [KeySetName], [Description], [StatementType], [Created]) VALUES (3, N'PEK', N'NA', N'Pin Encryption Key', N'I', NULL)
INSERT [dbo].[tbl_KeyType] ([ID], [KeyTypeName], [KeySetName], [Description], [StatementType], [Created]) VALUES (4, N'KEK', N'NA', N'Key Encryption Key', N'I', NULL)
INSERT [dbo].[tbl_KeyType] ([ID], [KeyTypeName], [KeySetName], [Description], [StatementType], [Created]) VALUES (5, N'KTK', N'NA', N'Key Transport Key', N'I', NULL)
INSERT [dbo].[tbl_KeyType] ([ID], [KeyTypeName], [KeySetName], [Description], [StatementType], [Created]) VALUES (6, N'IMKac', N'IMKs', N'IMK-AC', N'I', NULL)
INSERT [dbo].[tbl_KeyType] ([ID], [KeyTypeName], [KeySetName], [Description], [StatementType], [Created]) VALUES (7, N'IMKsmi', N'IMKs', N'IMK-SMI', N'I', NULL)
INSERT [dbo].[tbl_KeyType] ([ID], [KeyTypeName], [KeySetName], [Description], [StatementType], [Created]) VALUES (8, N'IMKsmc', N'IMKs', N'IMK-SMC', N'I', NULL)
INSERT [dbo].[tbl_KeyType] ([ID], [KeyTypeName], [KeySetName], [Description], [StatementType], [Created]) VALUES (9, N'IMKidn', N'IMKs', N'IMK-IDN', N'I', NULL)
SET IDENTITY_INSERT [dbo].[tbl_KeyType] OFF
SET IDENTITY_INSERT [dbo].[tbl_UserLogin] ON 

INSERT [dbo].[tbl_UserLogin] ([ID], [Login_User], [Loggedin_time], [LoggedOut], [IsActive], [StatementType]) VALUES (1, N'test2', CAST(0x0000AC9F00000000 AS DateTime), CAST(0x0000AC9F00000000 AS DateTime), 0, N'I')
SET IDENTITY_INSERT [dbo].[tbl_UserLogin] OFF
ALTER TABLE [dbo].[tbl_Modules]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Modules_tbl_Roles] FOREIGN KEY([ID])
REFERENCES [dbo].[tbl_Roles] ([ID])
GO
ALTER TABLE [dbo].[tbl_Modules] CHECK CONSTRAINT [FK_tbl_Modules_tbl_Roles]
GO
