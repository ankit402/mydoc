USE [NanoPersoMVC]
GO
/****** Object:  Table [dbo].[KMS_APPLICATIONID]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KMS_APPLICATIONID](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AID] [varchar](max) NOT NULL,
	[AID_NAME] [varchar](max) NOT NULL,
	[AID_DESCRIPTION] [varchar](max) NOT NULL,
	[AID_TYPE] [varchar](50) NULL,
	[RFU1] [varchar](max) NULL,
	[RFU2] [varchar](max) NULL,
	[RFU3] [varchar](max) NULL,
	[RFU4] [varchar](max) NULL,
	[RFU5] [varchar](max) NULL,
 CONSTRAINT [PK_KMS_AID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KMS_BIN_PROFILE]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KMS_BIN_PROFILE](
	[PROFILE_ID] [int] IDENTITY(1,1) NOT NULL,
	[BIN_PROF_BIN_ID] [int] NOT NULL,
	[BIN_PROF_CHIP_ID] [int] NOT NULL,
	[BIN_PROF_PRO_NAME] [varchar](max) NULL,
	[BIN_PROF_PROFILE] [varbinary](max) NOT NULL,
	[BIN_PROF_PROFILE_NAME] [varchar](max) NOT NULL,
	[IsCardInk] [bit] NULL,
	[IsHsm] [bit] NULL,
	[HSMHardKey] [varchar](max) NULL,
	[XMLHash] [varchar](max) NULL,
 CONSTRAINT [PK_KMS_BIN_PROFILE] PRIMARY KEY CLUSTERED 
(
	[PROFILE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KMS_CA_DETAILS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KMS_CA_DETAILS](
	[CA_ID] [int] IDENTITY(1,1) NOT NULL,
	[CA_NAME] [varchar](max) NOT NULL,
	[SCHEME] [varchar](50) NOT NULL,
	[TYPE] [varchar](50) NOT NULL,
	[CA_TYPE] [varchar](50) NOT NULL,
	[PRODUCT] [varchar](50) NOT NULL,
	[KEY_LENGTH] [varchar](50) NOT NULL,
	[KEY_TYPE] [varchar](50) NOT NULL,
	[SERVICE_IDENTIFIER] [varchar](50) NOT NULL,
	[EXPIRY] [varchar](50) NOT NULL,
	[RID] [varchar](50) NOT NULL,
	[EXPONENT] [varchar](50) NOT NULL,
	[MODULUS] [varchar](max) NOT NULL,
	[HASH_VALUE] [varchar](max) NOT NULL,
	[RFU1] [varchar](50) NULL,
	[RFU2] [varchar](50) NULL,
	[RFU3] [varchar](50) NULL,
	[RFU4] [varchar](50) NULL,
	[RFU5] [varchar](50) NULL,
 CONSTRAINT [PK_KMS_CA_DETAILS] PRIMARY KEY CLUSTERED 
(
	[CA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KMS_CHIP_DETAILS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KMS_CHIP_DETAILS](
	[CHIP_ID] [int] IDENTITY(1,1) NOT NULL,
	[CHIP_NAME] [varchar](max) NOT NULL,
	[CHIP_PROVIDER] [varchar](max) NOT NULL,
	[CHIP_DESC] [varchar](max) NOT NULL,
	[CHIP_ALCD] [varchar](50) NULL,
	[CHIP_ATR] [varchar](max) NOT NULL,
	[CHIP_KMC] [int] NULL,
	[CHIP_KMC_KCV] [varchar](50) NULL,
	[CHIP_AUTH_DERIVATION_METHOD] [bit] NULL,
	[CHIP_STATUS] [bit] NOT NULL,
	[CHIP_PROTOCOL] [varchar](50) NULL,
	[CHIP_AID_EXISTS] [bit] NULL,
	[CHIP_AID_VALUE] [varchar](max) NULL,
	[CHIP_INSTALL_AID] [varchar](max) NULL,
	[CHIP_ISD] [varchar](max) NULL,
	[CHIP_PSE_EXISTS] [bit] NULL,
	[CHIP_PSE_VALUE] [varchar](max) NULL,
	[CHIP_INSTALL_PSE] [varchar](max) NULL,
	[CHIP_PPSE_EXISTS] [bit] NOT NULL,
	[CHIP_PPSE_VALUE] [varchar](max) NULL,
	[CHIP_INSTALL_PPSE] [varchar](max) NULL,
	[CHIP_RFU_1] [varchar](max) NULL,
	[CHIP_RFU_2] [varchar](max) NULL,
	[CHIP_RFU_3] [varchar](max) NULL,
	[CHIP_RFU_4] [varchar](max) NULL,
	[CHIP_RFU_5] [varchar](max) NULL,
	[TRACK1_ICVV_OFFSET] [int] NULL,
	[TRACK2_ICVV_OFFSET] [int] NULL,
 CONSTRAINT [PK_KMS_CHIP_DETAILS] PRIMARY KEY CLUSTERED 
(
	[CHIP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KMS_IPK_DETAILS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KMS_IPK_DETAILS](
	[IPK_ID] [int] IDENTITY(1,1) NOT NULL,
	[BIN] [varchar](50) NOT NULL,
	[TRACKING_NUMBER] [varchar](50) NOT NULL,
	[EXPIRY] [varchar](50) NOT NULL,
	[CA_ID] [int] NOT NULL,
	[ISSUER_ID] [varchar](50) NULL,
	[PRODUCT] [varchar](50) NULL,
	[SERVICE_IDENTIFIER] [varchar](50) NULL,
	[ENCRYPTED_IPK] [varchar](max) NULL,
	[SIGNED_DATA] [varchar](max) NULL,
	[IS_REQ] [bit] NULL,
	[IS_SIGNED] [bit] NULL,
	[IS_ENABLED] [bit] NULL,
	[CERTIFICATE_SERIAL] [varchar](10) NULL,
	[IPK_REMAINDER_LENGTH] [varchar](10) NULL,
	[IPK_REMAINDER] [varchar](max) NULL,
	[IPK_EXPO_LEN] [varchar](5) NULL,
	[CA_PK_INDEX] [varchar](5) NULL,
	[ENC_DATA] [varchar](max) NULL,
	[IPK_EXPO] [varchar](10) NULL,
	[HASH_DATA] [varchar](max) NULL,
	[HIP_FILE_DATA] [varchar](max) NULL,
	[IS_CARDINK] [bit] NULL,
	[ICC_RSA_LEN] [int] NULL,
	[ICC_RSA_EXP] [varchar](5) NULL,
	[ADDED_ON] [datetime] NOT NULL,
	[ADDED_BY] [varchar](50) NOT NULL,
	[UPDATED_ON] [datetime] NULL,
	[UPDATED_BY] [varchar](50) NULL,
	[RFU1] [varchar](max) NULL,
	[RFU2] [varchar](max) NULL,
	[RFU3] [varchar](50) NULL,
	[RFU4] [varchar](50) NULL,
	[RFU5] [varchar](50) NULL,
 CONSTRAINT [PK_KMS_IPK_DETAILS] PRIMARY KEY CLUSTERED 
(
	[IPK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KMS_KEY]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KMS_KEY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KEY_COMPONENT] [varbinary](max) NOT NULL,
	[KEY_KCV] [varchar](10) NOT NULL,
	[INTER_LINK_KEY_ID] [int] NULL,
	[KEY_TYPE_ID] [int] NULL,
	[KEY_SET_ID] [int] NULL,
	[ADDED_BY] [varchar](max) NOT NULL,
	[ADDED_ON] [datetime] NOT NULL,
	[UPDATED_ON] [varchar](max) NULL,
	[UPDATED_BY] [datetime] NULL,
	[RFU1] [varchar](max) NULL,
	[RFU2] [varchar](max) NULL,
	[RFU3] [varchar](max) NULL,
	[RFU4] [varchar](max) NULL,
	[RFU5] [varchar](max) NULL,
	[MECHANISM] [varchar](50) NULL,
	[KEY_NAME] [varchar](max) NULL,
 CONSTRAINT [PK_KMS_KEY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KMS_KEY_SET]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KMS_KEY_SET](
	[KEY_SET_ID] [int] IDENTITY(1,1) NOT NULL,
	[KEYSET_NAME] [varchar](50) NOT NULL,
	[KEYSET_DESCRIPTION] [varchar](max) NULL,
	[KEY_ENC_UNDER] [int] NULL,
	[KEY_ISSUER_KEY] [int] NULL,
	[KEY_TYPE_ID] [int] NULL,
	[RFU1] [varchar](max) NULL,
	[RFU2] [varchar](max) NULL,
	[RFU3] [varchar](max) NULL,
	[RFU4] [varchar](max) NULL,
	[RFU5] [varchar](max) NULL,
 CONSTRAINT [PK_KMS_KEY_SET] PRIMARY KEY CLUSTERED 
(
	[KEY_SET_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KMS_KEY_TYPE]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KMS_KEY_TYPE](
	[KEY_TYPE_ID] [int] IDENTITY(1,1) NOT NULL,
	[KEY_TYPE] [varchar](50) NOT NULL,
	[KEY_DESCRIPTION] [varchar](max) NULL,
	[SCHEME] [varchar](50) NULL,
	[RFU1] [varchar](max) NULL,
	[RFU2] [varchar](max) NULL,
	[RFU3] [varchar](max) NULL,
	[RFU4] [varchar](max) NULL,
	[RFU5] [varchar](max) NULL,
	[HEX_VALUE] [varchar](5) NULL,
 CONSTRAINT [PK_KMS_KEY_TYPE] PRIMARY KEY CLUSTERED 
(
	[KEY_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KMS_RID_INDEX]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KMS_RID_INDEX](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RID_INDEX] [varchar](5) NOT NULL,
	[SCHEME] [varchar](50) NOT NULL,
	[KEY_LENGTH] [varchar](10) NULL,
	[EXPIRY] [varchar](15) NULL,
	[TYPE] [varchar](15) NULL,
	[RID] [varchar](30) NULL,
 CONSTRAINT [PK_KMS_RID_INDEX] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KMS_RSA_KEY_PAIR]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KMS_RSA_KEY_PAIR](
	[RS_ID] [int] IDENTITY(1,1) NOT NULL,
	[RS_PUB_MOD] [varchar](600) NULL,
	[RS_PUB_EXP] [varchar](600) NULL,
	[RS_PRI_EXP] [varchar](max) NULL,
	[RS_PRIME1] [varchar](600) NULL,
	[RS_PRIME2] [varchar](600) NULL,
	[RS_EXP1] [varchar](600) NULL,
	[RS_EXP2] [varchar](600) NULL,
	[RS_COEFF] [varchar](600) NULL,
	[RS_ASN1PRIV] [varchar](max) NULL,
	[RS_ASN1PUB] [varchar](600) NULL,
	[IPK_ID] [int] NULL,
	[RS_IPK_LEN] [varchar](5) NULL,
	[ADDED_ON] [datetime] NULL,
 CONSTRAINT [PK_KMS_RSA_KEY_PAIR] PRIMARY KEY CLUSTERED 
(
	[RS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_CONFIG_LOGS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_CONFIG_LOGS](
	[LOCATION] [varchar](max) NOT NULL,
	[TRACE_LEVEL] [varchar](50) NOT NULL,
	[FILE_TYPE] [varchar](50) NOT NULL,
	[IS_ENCRYPTED] [bit] NOT NULL,
	[FILE_EXTENSION] [varchar](10) NULL,
	[IS_MASKING] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_HSM]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_HSM](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HSMNAME] [varchar](50) NOT NULL,
	[MODEL] [varchar](50) NOT NULL,
	[DESCRIPTION] [varchar](50) NOT NULL,
	[FIRMWARE] [varchar](50) NOT NULL,
	[SERIALNUMBER] [varchar](50) NOT NULL,
	[MANUFACTURERID] [varchar](50) NOT NULL,
	[IP] [varchar](50) NOT NULL,
	[PORT] [varchar](10) NOT NULL,
	[LMK_NAME] [varchar](50) NOT NULL,
	[HSM_USER] [varchar](50) NOT NULL,
	[HSM_PWD] [varchar](500) NOT NULL,
	[CRYPTOKIVERSION] [varchar](50) NOT NULL,
	[CRYPTOKIPATH] [varchar](500) NOT NULL,
	[KEY_STORE_TYPE] [varchar](500) NOT NULL,
 CONSTRAINT [PK_NP_HSM] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_INV_CARD_STATUS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_INV_CARD_STATUS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [nchar](10) NULL,
 CONSTRAINT [PK_INV_CARD_STATUS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_INV_CARDCONSUME]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_INV_CARDCONSUME](
	[ID] [int] NOT NULL,
	[PROVIDEDFROM] [varchar](50) NOT NULL,
	[PROVIDEDTO] [varbinary](50) NOT NULL,
	[INVENTORY_ID] [int] NOT NULL,
	[DATE] [date] NOT NULL,
 CONSTRAINT [PK_INV_Cardconsume] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_INV_DESTORY_CARD]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_INV_DESTORY_CARD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BRANCH_CODE] [varchar](50) NULL,
	[PRODUCT_CODE] [varchar](50) NULL,
	[PLASTIC_CODE] [varchar](50) NULL,
	[BIN] [varchar](50) NULL,
	[CARD_STATUS] [int] NULL,
	[USER_ID] [varchar](50) NULL,
	[CREATED_ON] [datetime] NULL,
	[UPDATED_ON] [datetime] NULL,
	[INVENTORY_ID] [int] NULL,
	[CARDNO] [varchar](68) NULL,
	[CARDNAME] [varchar](68) NULL,
 CONSTRAINT [PK_INV_DESTORY_CARD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_INV_MAIN_STOCK]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_INV_MAIN_STOCK](
	[Main_Stock_Id] [int] IDENTITY(1,1) NOT NULL,
	[Plastic_Id] [nvarchar](50) NULL,
	[StockIn] [nvarchar](50) NULL,
	[StockOut] [nvarchar](50) NULL,
	[Balance] [nvarchar](50) NULL,
	[Description] [text] NULL,
	[Chip] [varchar](150) NULL,
	[InsertOn] [datetime] NULL,
	[InsertBy] [nvarchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_INV_NON_WORKING]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_INV_NON_WORKING](
	[NON_WORKING_STOCK_ID] [int] IDENTITY(1,1) NOT NULL,
	[BRANCH_CODE] [varchar](50) NULL,
	[PRODUCT_CODE] [varchar](50) NULL,
	[PLASTIC_CODE] [varchar](50) NULL,
	[BIN] [varchar](50) NULL,
	[COUNT] [int] NULL,
	[REORDER_POINT] [int] NULL,
	[LAST_UPDATED] [datetime] NULL,
	[Comments] [varchar](500) NULL,
 CONSTRAINT [PK_INV_NON_WORKING] PRIMARY KEY CLUSTERED 
(
	[NON_WORKING_STOCK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_INV_PRODUCTION]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_INV_PRODUCTION](
	[Production_Id] [int] IDENTITY(1,1) NOT NULL,
	[Personalized_Rejected] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[JobID] [int] NOT NULL,
	[EmbID] [int] NOT NULL,
	[CardNo] [varchar](50) NOT NULL,
	[Description] [varchar](150) NULL,
	[Reason] [varchar](150) NULL,
	[Branch] [varchar](6) NULL,
	[Mode] [nvarchar](50) NULL,
	[Product_id] [nvarchar](50) NULL,
	[Plastic_Id] [varchar](6) NULL,
	[Chip_ATR] [varchar](200) NULL,
	[CHIP_STATUS] [tinyint] NULL,
	[PRINT_STATUS] [tinyint] NULL,
	[AddedOn] [datetime] NULL,
	[AddedBy] [varchar](150) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](150) NULL,
	[Prime_Updated] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_INV_REPORTS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_INV_REPORTS](
	[REPORTID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](50) NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[REPORTFILE] [varchar](200) NULL,
	[REPORTSP] [varchar](100) NULL,
 CONSTRAINT [PK_INV_REPORTS] PRIMARY KEY CLUSTERED 
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_INV_TRANSACTION]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_INV_TRANSACTION](
	[Transaction_Id] [int] IDENTITY(1,1) NOT NULL,
	[Plastic_Id] [nvarchar](50) NULL,
	[Reference_Id] [nvarchar](50) NULL,
	[StockOutFrom] [nvarchar](50) NULL,
	[StockOut] [int] NULL,
	[StockInTo] [nvarchar](50) NULL,
	[StockIn] [int] NULL,
	[Description] [text] NULL,
	[RemainingBalance] [int] NULL,
	[BalanceBranch] [nvarchar](50) NULL,
	[BalancePlasticId] [nvarchar](50) NULL,
	[InsertON] [datetime] NULL,
	[InsertBy] [nvarchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[Chip] [varchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_KEY_LENGTH]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_KEY_LENGTH](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KEY_LENGTH] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_KEYS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_KEYS](
	[KEY_ID] [int] IDENTITY(1,1) NOT NULL,
	[KEY_IS_ID] [varchar](64) NOT NULL,
	[KEY_UNIQUE_NAME] [varchar](64) NOT NULL,
	[KEY_TYPE] [varchar](64) NOT NULL,
	[KEY_EXPORTABLE] [varchar](20) NOT NULL,
	[KEY_STATUS] [varchar](10) NOT NULL,
	[KEY_LENGTH] [varchar](64) NOT NULL,
	[KEY_EXPONENT] [varchar](20) NOT NULL,
	[KEY_INDEX] [varchar](max) NOT NULL,
	[KEY_KCV] [varchar](64) NOT NULL,
	[KEY_LAST_UPDATE_BY] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_LIC_LICENSE]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_LIC_LICENSE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Client_Name] [varchar](100) NOT NULL,
	[Warning_Period] [varchar](15) NOT NULL,
	[Grace_allowed] [int] NOT NULL,
	[Grace_Period] [varchar](15) NULL,
	[tLBranchCode] [varchar](12) NULL,
	[DateFrom] [varchar](50) NULL,
	[DateExpiry] [varchar](50) NULL,
	[Environment] [varchar](50) NULL,
	[module] [varchar](50) NULL,
	[printerid] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Zip] [varchar](50) NULL,
	[reg_date] [varchar](50) NULL,
	[issue_type] [varchar](50) NULL,
	[IS_ENABLED] [int] NULL,
	[IPK_REMAINDER_LENGTH] [varchar](20) NULL,
	[IPK_REMAINDER] [varchar](max) NULL,
	[HASH_DATA] [varchar](max) NULL,
	[IS_REQ] [int] NULL,
	[IS_SIGNED] [int] NULL,
	[ENCRYPTED_LICENSE] [varchar](max) NULL,
	[TRACKING_NUMBER] [varchar](10) NULL,
	[IPK_EXPO] [varchar](max) NULL,
	[IPK_EXPO_LEN] [varchar](max) NULL,
	[SIGNED_DATA] [varchar](max) NULL,
	[HIP_FILE_DATA] [varchar](max) NULL,
	[DECRYPTED_IPK] [varchar](max) NULL,
	[UPDATED_ON] [date] NULL,
	[UPDATED_BY] [varchar](max) NULL,
 CONSTRAINT [PK_LIC_LICENSE_Web] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_LOG_DETAILS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_LOG_DETAILS](
	[datentime] [nvarchar](max) NOT NULL,
	[clientip] [nvarchar](max) NOT NULL,
	[pagename] [nvarchar](max) NOT NULL,
	[classname] [nvarchar](max) NOT NULL,
	[methodname] [nvarchar](max) NOT NULL,
	[trace_level] [nchar](10) NOT NULL,
	[message] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_LOG_LOGINS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_LOG_LOGINS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LOG_TIME] [varchar](20) NOT NULL,
	[USER_ID] [varchar](50) NOT NULL,
	[SOURCE_IP] [varchar](50) NULL,
	[SOURCE_PC] [varchar](150) NULL,
	[LOGIN_STATUS] [int] NOT NULL,
	[Session] [bit] NULL,
	[SessionID] [varchar](max) NULL,
 CONSTRAINT [PK_LOG_Logins] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_LOGPAGE]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_LOGPAGE](
	[location] [nvarchar](max) NULL,
	[trace_level] [nvarchar](max) NULL,
	[file_name] [nvarchar](max) NULL,
	[file_type] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_MLC_REPORT]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_MLC_REPORT](
	[LogDateTime] [datetime] NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[Result] [varchar](100) NULL,
	[CardNumber] [varchar](19) NOT NULL,
	[NameOnCard] [varchar](68) NOT NULL,
	[BranchCode] [varchar](10) NOT NULL,
	[BranchDesc] [varchar](50) NULL,
	[ProductCode] [varchar](50) NULL,
	[ProductDesc] [varchar](250) NULL,
	[PlasticCode] [varchar](50) NULL,
	[PlasticDesc] [varchar](250) NULL,
	[JOBID] [int] NULL,
	[Description] [varchar](250) NULL,
	[FIELD01] [varchar](50) NULL,
	[FIELD02] [varchar](50) NULL,
	[FIELD03] [varchar](50) NULL,
	[FIELD04] [varchar](50) NULL,
	[FIELD05] [varchar](50) NULL,
	[FIELD06] [varchar](50) NULL,
	[FIELD07] [varchar](50) NULL,
	[FIELD08] [varchar](50) NULL,
	[FIELD09] [varchar](50) NULL,
	[FIELD10] [varchar](50) NULL,
	[Status] [varchar](10) NULL,
	[Chip] [varchar](10) NULL,
	[Mag] [varchar](10) NULL,
	[Encoding] [varchar](10) NULL,
	[Printing] [varchar](10) NULL,
	[FrontPrinting] [varchar](10) NULL,
 CONSTRAINT [PK_MLC_SF_REPORT_] PRIMARY KEY CLUSTERED 
(
	[LogDateTime] ASC,
	[BranchCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_PRT_CHIPDETAIL]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_PRT_CHIPDETAIL](
	[ChipDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ProfileID] [int] NOT NULL,
	[ChipContactX] [int] NULL,
	[ChipContactY] [int] NULL,
	[ChipWaitTime] [int] NULL,
	[CardReader] [varchar](10) NULL,
	[WaitCylces] [int] NULL,
 CONSTRAINT [PK_PRT_PrintingDetail] PRIMARY KEY CLUSTERED 
(
	[ChipDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_PRT_EMBOSSING_CHARACTER_SPACING]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_PRT_EMBOSSING_CHARACTER_SPACING](
	[SpaceID] [nvarchar](50) NULL,
	[FontSpaceName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_PRT_EMBOSSING_FONTS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_PRT_EMBOSSING_FONTS](
	[FontID] [nvarchar](50) NULL,
	[FontName] [nvarchar](50) NULL,
	[PrinterName] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_PRT_MAGSTRIPEDETAILS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_PRT_MAGSTRIPEDETAILS](
	[Coercivity] [nchar](4) NOT NULL,
	[MagDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ProfileID] [int] NOT NULL,
	[Mode] [varchar](50) NULL,
 CONSTRAINT [PK_PRT_MagStripeDetail] PRIMARY KEY CLUSTERED 
(
	[MagDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_PRT_MASKSETTING]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_PRT_MASKSETTING](
	[FieldID] [int] NOT NULL,
	[MaskCharacter] [nchar](1) NOT NULL,
	[StartIndex] [int] NOT NULL,
	[length] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_PRT_PRINT_PROFILES]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_PRT_PRINT_PROFILES](
	[CardProfileID] [int] NOT NULL,
	[ProfileID] [int] IDENTITY(1,1) NOT NULL,
	[EnableCHIP] [bit] NULL,
	[EnableMAG] [bit] NULL,
	[EnablePRINT] [bit] NULL,
	[UseSameDefaultDB] [bit] NULL,
	[ConnectionString] [nvarchar](50) NULL,
	[Fron_Image_File_Loc] [nvarchar](100) NULL,
	[Rear_image_File_Loc] [nvarchar](100) NULL,
	[PrinterType] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[DLLPath] [nvarchar](100) NULL,
	[Topping] [bit] NULL,
	[EnableAllPrint] [bit] NULL,
	[IsUsb] [bit] NULL,
	[PortName] [nvarchar](10) NULL,
	[BaudRate] [int] NULL,
	[Parity] [nvarchar](10) NULL,
	[DataBits] [int] NULL,
	[StopBits] [nvarchar](10) NULL,
	[ReadTimeout] [int] NULL,
	[FormatNumber] [int] NULL,
	[IsChipContact] [bit] NULL,
	[PrinterSP] [varchar](100) NULL,
	[FeederCount] [int] NULL,
	[PrinterProductCode] [varchar](10) NULL,
	[PrinterPlasticCode] [varchar](10) NULL,
 CONSTRAINT [PK_PRT_PRINT_PROFILES] PRIMARY KEY CLUSTERED 
(
	[ProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_PRT_PRINTER]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_PRT_PRINTER](
	[PrinterId] [int] IDENTITY(1,1) NOT NULL,
	[PrinterName] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[Make] [nvarchar](50) NOT NULL,
	[ClassName] [nchar](50) NULL,
	[XCoordinate] [int] NULL,
	[YCoordinate] [int] NULL,
	[IsOriginTop] [bit] NULL,
	[IsMultiFeeder] [bit] NULL,
	[FeederCount] [nchar](10) NULL,
	[IsManualFeeder] [bit] NULL,
 CONSTRAINT [PK_PRT_PRINTER] PRIMARY KEY CLUSTERED 
(
	[PrinterName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_PRT_PRINTING_FIELDS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_PRT_PRINTING_FIELDS](
	[FieldName] [nvarchar](50) NOT NULL,
	[FieldID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_PRT_PRINTING_FIELDS] PRIMARY KEY CLUSTERED 
(
	[FieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_PRT_PRINTRECORDS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_PRT_PRINTRECORDS](
	[JobID] [int] NOT NULL,
	[EmbossID] [int] NOT NULL,
	[ProfileID] [int] NOT NULL,
	[Status] [nvarchar](50) NULL,
	[PrintDateTime] [datetime] NULL,
	[Description] [nvarchar](1000) NULL,
	[Chip] [bit] NULL,
	[Mag] [bit] NULL,
	[FrontPrinting] [bit] NULL,
	[RearPrinting] [bit] NULL,
	[UserID] [nvarchar](50) NULL,
	[PrintID] [int] IDENTITY(1,1) NOT NULL,
	[SPID] [nvarchar](50) NULL,
	[CARDNO] [varchar](68) NULL,
	[NAMEONCARD] [varchar](68) NULL,
	[PRODUCTCODE] [varchar](50) NULL,
	[BRANCHID] [varchar](50) NULL,
	[PLASTICCODE] [varchar](50) NULL,
	[RIM] [varchar](50) NULL,
	[ACTIONTYPE] [varchar](50) NULL,
 CONSTRAINT [PK_PRT_PRINTRECORDS] PRIMARY KEY CLUSTERED 
(
	[PrintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_PRT_PROFILE_FIELDS_WEB]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_PRT_PROFILE_FIELDS_WEB](
	[ProfileID] [int] NOT NULL,
	[FieldID] [nvarchar](max) NULL,
	[value] [nvarchar](50) NULL,
	[X] [int] NOT NULL,
	[Y] [int] NOT NULL,
	[Font] [nvarchar](50) NOT NULL,
	[Size] [int] NULL,
	[Bold] [bit] NULL,
	[Underline] [bit] NULL,
	[Italic] [bit] NULL,
	[Side] [nchar](10) NULL,
	[Color] [nvarchar](50) NULL,
	[Masking] [bit] NULL,
	[PrintingTYpe] [nvarchar](50) NULL,
	[Ribbon] [nvarchar](50) NULL,
	[Spacing] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_PRT_SAVED_SEARCH]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_PRT_SAVED_SEARCH](
	[Name] [nvarchar](50) NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Field] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_ROLES]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_ROLES](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Roles] [varchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Create] [bit] NULL,
	[Delete] [bit] NULL,
	[Update] [bit] NULL,
	[Read] [bit] NULL,
 CONSTRAINT [PK_NP_ROLES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_RPT_GROUPS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_RPT_GROUPS](
	[GROUPBYID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](50) NULL,
	[DESCRIPTION] [varchar](100) NULL,
 CONSTRAINT [PK_RPT_GROUPS_1] PRIMARY KEY CLUSTERED 
(
	[GROUPBYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_RPT_REPORTS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_RPT_REPORTS](
	[REPORTID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](50) NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[REPORTFILE] [varchar](200) NULL,
	[REPORTSP] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_SEC_GROUP]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_SEC_GROUP](
	[GROUP_ID] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [varchar](250) NULL,
 CONSTRAINT [PK_NP_SEC_GROUP] PRIMARY KEY CLUSTERED 
(
	[GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_SEC_GROUP_PERMISSION]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_SEC_GROUP_PERMISSION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GROUPID] [varchar](50) NOT NULL,
	[SCREENID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NP_SEC_GROUP_PERMISSION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_SEC_GROUP_USER]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_SEC_GROUP_USER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[USERID] [int] NOT NULL,
	[GROUPID] [int] NOT NULL,
 CONSTRAINT [PK_NP_SEC_GROUP_USER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_SEC_MENU]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_SEC_MENU](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MENUNAME] [varchar](50) NOT NULL,
	[SCREENID] [varchar](50) NULL,
	[CAPTION] [varchar](50) NOT NULL,
	[DESCRIPTION] [varchar](250) NULL,
	[MENUORDER] [int] NULL,
	[ENABLE] [bit] NOT NULL,
 CONSTRAINT [PK_NP_SEC_MENU] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_SEC_PASSWORD_COMPLEXITY]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_SEC_PASSWORD_COMPLEXITY](
	[PASSWORD_COMPLEXITY_ID] [int] IDENTITY(1,1) NOT NULL,
	[MinLength] [int] NOT NULL,
	[MaxLength] [int] NOT NULL,
	[ReqSpecialChar] [bit] NOT NULL,
	[ReqAlphaUpper] [bit] NOT NULL,
	[ReqAlphaLower] [bit] NOT NULL,
	[AllowUName] [bit] NOT NULL,
	[ReqNumeric] [bit] NOT NULL,
	[RegularExpression] [varchar](max) NULL,
 CONSTRAINT [PK_NP_SEC_PASSWORD_COMPLEXITY] PRIMARY KEY CLUSTERED 
(
	[PASSWORD_COMPLEXITY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_SEC_PASSWORD_HISTORY]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_SEC_PASSWORD_HISTORY](
	[SrNo] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [date] NOT NULL,
	[UpdatedBy] [varchar](50) NOT NULL,
	[UpdatedOn] [date] NOT NULL,
 CONSTRAINT [PK_Sec_PasswordHistory] PRIMARY KEY CLUSTERED 
(
	[SrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_SEC_SCREEN]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_SEC_SCREEN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MENUID] [varchar](3) NOT NULL,
	[SCREENNAME] [varchar](50) NULL,
	[ACTIONTYPE] [varchar](50) NULL,
	[DESCRIPTION] [varchar](250) NULL,
	[ACTIVE] [bit] NULL,
	[ISDUALACCESS] [bit] NULL,
 CONSTRAINT [PK_NP_SEC_SCREEN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_SEC_USER]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_SEC_USER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[USERNAME] [varchar](50) NOT NULL,
	[NAME] [varchar](50) NOT NULL,
	[MIDDLENAME] [varchar](50) NULL,
	[SURNAME] [varchar](50) NOT NULL,
	[PASSWORD] [varchar](100) NOT NULL,
	[INVALIDPASSWORDCOUNT] [int] NOT NULL,
	[LASTLOGIN] [datetime] NOT NULL,
	[LOGINSTATUS] [int] NOT NULL,
	[USER_TYPE] [varchar](50) NULL,
	[Active] [bit] NOT NULL,
	[ResetPassword] [bit] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](50) NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[Branch_Code] [nvarchar](max) NULL,
	[EMAIL_ADDRESS] [varchar](100) NULL,
	[User_Role] [varchar](50) NULL,
 CONSTRAINT [PK_SEC_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_SEC_USERGROUP_CONFIG]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_SEC_USERGROUP_CONFIG](
	[SrNo] [int] IDENTITY(1,1) NOT NULL,
	[ID] [varchar](50) NOT NULL,
	[LockedOption] [bit] NOT NULL,
	[FailedAttemptToLocked] [int] NOT NULL,
	[AutoUnlockLockedUser] [bit] NOT NULL,
	[MinutsToAutoUnlockLockedUser] [int] NOT NULL,
	[MatchPasswordHistory] [bit] NOT NULL,
	[PasswordHistoryCount] [int] NOT NULL,
	[PasswordComplexity] [bit] NOT NULL,
	[PasswordNeverExpire] [bit] NOT NULL,
	[PasswordAgeInDays] [int] NOT NULL,
	[DaysToRemindChangePassword] [int] NOT NULL,
	[EnableSessionOut] [bit] NOT NULL,
	[SessionOutMinuts] [int] NOT NULL,
	[DisableInactiveUser] [bit] NOT NULL,
	[DaysToCheckInactiveUser] [int] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [varchar](50) NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_NP_SEC_USERGROUP_CONFIG] PRIMARY KEY CLUSTERED 
(
	[SrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TLS_APPLICATIONPROFILES]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TLS_APPLICATIONPROFILES](
	[APPPROFILEID] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [varchar](100) NOT NULL,
	[VALIDFLAG] [tinyint] NOT NULL,
	[DOMAINCODE] [varchar](10) NOT NULL,
	[APPLTYPE] [tinyint] NOT NULL,
	[PROCFILEINPUT] [varchar](256) NULL,
	[PROCFILEOUTPUT] [varchar](256) NULL,
	[EMBOSSENCFLAG] [tinyint] NULL,
	[EMBOSSENCHSM] [varchar](50) NULL,
	[EMBOSSENCKEY] [varchar](50) NULL,
	[RECORDLENGTH] [int] NULL,
	[FILEEXTENSION] [varchar](20) NULL,
	[MAGONLYFLAG] [tinyint] NULL,
	[EMBOSSFILE] [varchar](250) NULL,
	[EMBFILEFORMAT] [tinyint] NULL,
	[PANORFULLENCRYP] [varchar](10) NULL,
	[Remark] [varchar](max) NULL,
	[PROFILE_NAME] [varchar](max) NULL,
	[BIN_ID] [int] NULL,
	[TRACK1_ICVV_OFFSET] [int] NULL,
	[TRACK2_ICVV_OFFSET] [int] NULL,
	[Profile_ATR] [varchar](200) NULL,
	[REFFILEFLAG] [bit] NULL,
	[REFFILE] [nvarchar](50) NULL,
	[CIOUTPUTDATA] [nvarchar](250) NULL,
 CONSTRAINT [PK_TLS_ApplicationProfiles] PRIMARY KEY CLUSTERED 
(
	[APPPROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TLS_AUDITLOGWEB]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TLS_AUDITLOGWEB](
	[ACTIONDATETIME] [varchar](50) NOT NULL,
	[SOURCEIP] [varchar](50) NOT NULL,
	[USER_ID] [varchar](50) NOT NULL,
	[PAGE_NAME] [varchar](max) NOT NULL,
	[INFORMATION_TYPE] [varchar](max) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[FIELD03] [varchar](max) NULL,
	[FIELD04] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TLS_BRANCHES]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TLS_BRANCHES](
	[BRANCHID] [int] IDENTITY(1,1) NOT NULL,
	[BRANCHCODE] [varchar](50) NOT NULL,
	[DESCRIPTION] [varchar](50) NULL,
	[BRANCHOUTPUTPATH] [varchar](256) NULL,
	[ENABLED] [tinyint] NULL,
	[COUNTRY] [varchar](50) NULL,
	[ADDRESS1] [varchar](50) NULL,
	[ADDRESS2] [varchar](50) NULL,
	[CITY] [varchar](50) NULL,
	[LICID] [bigint] NULL,
	[BRANCH_NAME] [nvarchar](50) NULL,
	[IP_ADDRESS] [varchar](15) NULL,
	[PORT] [int] NULL,
	[BRACTIVATIONDATE] [datetime] NULL,
 CONSTRAINT [PK_TLS_Branches] PRIMARY KEY CLUSTERED 
(
	[BRANCHID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TLS_CARDPLASTICKEY]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TLS_CARDPLASTICKEY](
	[APPPROFILEID] [int] NOT NULL,
	[KEYID] [varchar](50) NOT NULL,
	[PURPOSE] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TLS_CARDPLASTICPRODUCTJOIN]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TLS_CARDPLASTICPRODUCTJOIN](
	[CARDPROFILEID] [varchar](50) NULL,
	[PRODUCTCODE] [varchar](200) NULL,
	[PLASTICCODE] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TLS_CARDPRODUCTKEY]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TLS_CARDPRODUCTKEY](
	[APPPROFILEID] [int] NOT NULL,
	[KEYID] [varchar](50) NOT NULL,
	[PURPOSE] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TLS_CARDPROFILES]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TLS_CARDPROFILES](
	[CARDPROFILEID] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [varchar](100) NOT NULL,
	[BIN] [char](6) NOT NULL,
	[DOMAINCODE] [varchar](10) NOT NULL,
	[VALIDFLAG] [tinyint] NOT NULL,
	[PHOTOFLAG] [tinyint] NOT NULL,
	[SIGNFLAG] [tinyint] NOT NULL,
	[DAPFLAG] [tinyint] NOT NULL,
	[DAIFLAG] [tinyint] NOT NULL,
	[OUTPUTFILENAME] [varchar](256) NOT NULL,
	[INPUTFILENAME] [varchar](256) NOT NULL,
	[STATFILENAME] [varchar](256) NULL,
	[JOBFILENAME] [varchar](256) NULL,
	[AAFLAG] [tinyint] NULL,
	[AUTOIMPORTFLAG] [tinyint] NULL,
	[PRODUCTCODE] [int] NULL,
	[PLASTICCODE] [int] NULL,
	[TOTALCARD] [varchar](10) NULL,
	[REMARK] [varchar](max) NULL,
	[MAGONLYFLAG] [tinyint] NULL,
 CONSTRAINT [PK_TLS_CardProfiles] PRIMARY KEY CLUSTERED 
(
	[CARDPROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS](
	[APPPROFILEID] [int] NOT NULL,
	[KEYID] [varchar](50) NOT NULL,
	[PURPOSE] [tinyint] NULL,
	[PRODUCTCODE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TLS_Options]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TLS_Options](
	[LICNAME] [varchar](30) NOT NULL,
	[LICKEY] [char](32) NULL,
	[LICTOKEN] [char](32) NULL,
	[ADDRESS1] [varchar](40) NULL,
	[ADDRESS2] [varchar](40) NULL,
	[ADDRESS3] [varchar](40) NULL,
	[EXPORT_PATH] [varchar](256) NULL,
	[IMPORT_PATH] [varchar](256) NULL,
	[P3TYPE] [tinyint] NULL,
	[P3JOB_PATH] [varchar](256) NULL,
	[AXALTOBIN] [varchar](256) NULL,
	[CARDINK_IP] [varchar](50) NULL,
	[CARDINK_USER] [varchar](50) NULL,
	[CHECKFLAG] [tinyint] NULL,
	[BRANCHISSMOD] [tinyint] NULL,
	[CMSSERVERIP] [varchar](15) NULL,
	[CMSSERPORT] [varchar](6) NULL,
	[ENCRYPTPHRACE] [varchar](32) NULL,
	[CENTRALISSMOD] [tinyint] NULL,
	[FTPSERVER] [varchar](200) NULL,
	[FTPPORT] [varchar](6) NULL,
	[FTPUSRNAME] [varchar](50) NULL,
	[FTPPSWD] [varchar](50) NULL,
	[GLBFRMFLAG] [tinyint] NULL,
	[EMBOSSFILE] [varchar](50) NULL,
	[RECLEN] [int] NULL,
	[GLBENCFLAG] [tinyint] NULL,
	[ENCKEY] [varchar](50) NULL,
	[ENCHSM] [varchar](50) NULL,
	[IMPPINSERVERIP] [varchar](15) NULL,
	[IMPORTSERPORT] [varchar](6) NULL,
	[PINPADSERPORT] [varchar](6) NULL,
	[CMSTIMEOUT] [bigint] NULL,
	[PERSOCOREIP] [varchar](15) NULL,
	[PERSOCOREPORT] [varchar](6) NULL,
	[PERSOSIGNATURE] [varchar](50) NULL,
	[EMBFILEFORMAT] [tinyint] NULL,
	[P3JOBIN_PATH] [varchar](256) NULL,
	[P3JOBOUT_PATH] [varchar](256) NULL,
	[P3_TIMEOUT] [bigint] NULL,
	[VALIDATEEXPIRYFLAG] [tinyint] NULL,
	[VALIDATEEXPIRY] [varchar](10) NULL,
	[PANORFULLENCRYP] [varchar](10) NULL,
	[CHECKFILE] [tinyint] NULL,
	[ISDUALCONTROLALLOW] [tinyint] NULL,
	[ISRENAMEALLOW] [bit] NULL,
	[RENAMEFILENAME] [varchar](256) NULL,
	[FTPLOGINTIMEINSEC] [tinyint] NULL,
	[FTPFILEPROCESSTIMEINSEC] [tinyint] NULL,
	[GLBFRMFLAGBRANCH] [tinyint] NULL,
	[EMBOSSFILEBRANCH] [varchar](50) NULL,
	[EMBFILEFORMATBRANCH] [tinyint] NULL,
	[VALIDATEEXPIRYFLAGBRANCH] [tinyint] NULL,
	[VALIDATEEXPIRYBRANCH] [varchar](10) NULL,
	[TectRexJOB_PATH] [varchar](256) NULL,
	[TectRexJOBIN_PATH] [varchar](256) NULL,
	[TectRexJOBOUT_PATH] [varchar](256) NULL,
	[TectRex_TIMEOUT] [bigint] NULL,
	[GLBENCFLAGBRANCH] [tinyint] NULL,
	[ENCKEYBRANCH] [varchar](50) NULL,
	[ENCHSMBRANCH] [varchar](50) NULL,
	[PANORFULLENCRYPBRANCH] [varchar](10) NULL,
	[RECLENBRANCH] [int] NULL,
	[REMOTEDB_CONNECTION] [varchar](256) NULL,
	[REMOTEDB_SLEEP] [bigint] NULL,
	[REMOTEDB_TABLENAME] [varchar](256) NULL,
	[REMOTEDB_FILTERCRITERIA] [varchar](256) NULL,
	[CARDINK_PORT] [varchar](50) NULL,
	[IMPORTCMSTIMEOUT] [bigint] NULL,
	[IMPTHRDTIMEOUT] [bigint] NULL,
	[PROCESSTHRDTIMEOUT] [bigint] NULL,
	[ISREIMPORTALLOW] [tinyint] NULL,
 CONSTRAINT [PK_TLS_Options] PRIMARY KEY CLUSTERED 
(
	[LICNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TLS_PLASTIC]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TLS_PLASTIC](
	[PLASTICCODE] [varchar](10) NOT NULL,
	[DESCRIPTION] [varchar](250) NULL,
 CONSTRAINT [PK_NP_TLS_PLASTIC] PRIMARY KEY CLUSTERED 
(
	[PLASTICCODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TLS_PRODUCT]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TLS_PRODUCT](
	[PRODUCTCODE] [varchar](10) NOT NULL,
	[DESCRIPTION] [varchar](250) NULL,
 CONSTRAINT [PK_TLS_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[PRODUCTCODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TLS_STATIONS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TLS_STATIONS](
	[ID] [nchar](10) NOT NULL,
	[DESCRIPTION] [varchar](50) NULL,
	[ENABLED] [tinyint] NULL,
	[LICID] [bigint] NULL,
	[BRANCHID] [nchar](10) NOT NULL,
	[ISDEFAULT] [bit] NULL,
 CONSTRAINT [PK_NP_TLS_STATIONS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TLS_TERMINALS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TLS_TERMINALS](
	[SERIALNO] [varchar](20) NOT NULL,
	[TERMINALID] [varchar](20) NOT NULL,
	[IPADDRESS] [varchar](15) NOT NULL,
	[BRANCHID] [nchar](10) NOT NULL,
	[CUSTADIAN] [varchar](25) NULL,
 CONSTRAINT [PK_TLS_Terminals] PRIMARY KEY CLUSTERED 
(
	[SERIALNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TRN_CHIPDATA]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TRN_CHIPDATA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AppProfile] [varchar](255) NULL,
	[CardProfile] [varchar](255) NULL,
	[HolderNameICC] [varchar](255) NULL,
	[PAN] [varchar](255) NULL,
	[ExpDate] [varchar](255) NULL,
	[EffDate] [varchar](255) NULL,
	[Track1Disc] [varchar](255) NULL,
	[Track2] [varchar](255) NULL,
	[Icvv] [varchar](255) NULL,
	[serviceCode] [varchar](255) NULL,
	[ReferencePIN] [varchar](255) NULL,
	[RFU1] [varchar](255) NULL,
	[RFU2] [varchar](255) NULL,
	[RFU3] [varchar](255) NULL,
	[RFU4] [varchar](255) NULL,
	[RFU5] [varchar](255) NULL,
	[RFU6] [varchar](255) NULL,
	[RFU7] [varchar](255) NULL,
	[RFU8] [varchar](255) NULL,
	[RFU9] [varchar](255) NULL,
	[RFU10] [varchar](255) NULL,
	[Application_PAN_Sequence_Number] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TRN_EMBOSSRECORDS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TRN_EMBOSSRECORDS](
	[EMBOSSID] [int] IDENTITY(1,1) NOT NULL,
	[JOBID] [int] NOT NULL,
	[FILEID] [int] NOT NULL,
	[FLINENO] [int] NOT NULL,
	[CARDPROFILENO] [int] NOT NULL,
	[APPLPROFILENO] [int] NULL,
	[CPDREFNO] [int] NULL,
	[CARDNO] [varchar](68) NOT NULL,
	[CARDNOFORMATTED] [varchar](24) NULL,
	[VALIDFROM] [char](5) NOT NULL,
	[EXPIRY] [varchar](44) NOT NULL,
	[MEMBERSINCE] [char](2) NOT NULL,
	[CARDTYPE] [char](4) NOT NULL,
	[NAMEONCARD] [varchar](68) NOT NULL,
	[NAMEONICC] [varchar](68) NOT NULL,
	[CVV2] [varchar](44) NOT NULL,
	[CVV2INDENT] [varchar](8) NULL,
	[EPB] [char](16) NULL,
	[PHOTOFLAG] [char](1) NULL,
	[PHOTOID] [varchar](40) NULL,
	[SIGNFLAG] [char](1) NULL,
	[SIGNID] [varchar](40) NULL,
	[EMBOSSLINE1] [varchar](40) NULL,
	[EMBOSSLINE2] [varchar](40) NULL,
	[EMBOSSLINE3] [varchar](40) NULL,
	[EMBOSSLINE4] [varchar](40) NULL,
	[CARDSEQNO] [char](2) NULL,
	[STATUSCODE] [varchar](10) NOT NULL,
	[WARNINGCODE] [varchar](5) NOT NULL,
	[PERSOSTATUS] [numeric](1, 0) NOT NULL,
	[TRACK1] [varchar](128) NOT NULL,
	[TRACK2] [varchar](84) NOT NULL,
	[TRACK3] [varchar](144) NULL,
	[LOG_QTY] [int] NULL,
	[LOG_DATE] [datetime] NULL,
	[LOG_TIME] [datetime] NULL,
	[LOG_USER] [varchar](50) NULL,
	[BRANCHID] [varchar](10) NULL,
	[PRODUCTCODE] [int] NULL,
	[PLASTICCODE] [int] NULL,
	[FIELD01] [varchar](50) NULL,
	[FIELD02] [varchar](50) NULL,
	[FIELD03] [varchar](50) NULL,
	[FIELD04] [varchar](50) NULL,
	[FIELD05] [varchar](50) NULL,
	[FIELD06] [varchar](50) NULL,
	[FIELD07] [varchar](50) NULL,
	[FIELD08] [varchar](50) NULL,
	[FIELD09] [varchar](50) NULL,
	[FIELD10] [varchar](50) NULL,
	[STATIONID] [varchar](50) NULL,
	[CVV4] [varchar](50) NULL,
	[PersoRecID] [int] NOT NULL,
	[M_Log_Emboss] [int] NULL,
	[M_Split_Id] [nchar](255) NULL,
	[M_LogProductionDate] [datetime] NULL,
	[M_LogProductionResult] [int] NULL,
	[M_Marked] [int] NULL,
	[ACTIONTYPE] [varchar](50) NULL,
	[Response_Description] [varchar](200) NULL,
	[Response_Code] [int] NULL,
 CONSTRAINT [PK_TRN_EmbossRecords] PRIMARY KEY CLUSTERED 
(
	[EMBOSSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TRN_EMBOSSRECORDS_MAXIMAILER]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TRN_EMBOSSRECORDS_MAXIMAILER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CARDNO] [varchar](68) NOT NULL,
	[CARDNOFORMATTED] [varchar](24) NULL,
	[VALIDFROM] [char](5) NOT NULL,
	[EXPIRY] [varchar](44) NOT NULL,
	[NAMEONCARD] [varchar](68) NOT NULL,
	[NAMEONICC] [varchar](68) NULL,
	[CVV2] [varchar](44) NOT NULL,
	[EMBOSSLINE1] [varchar](40) NULL,
	[EMBOSSLINE2] [varchar](40) NULL,
	[EMBOSSLINE3] [varchar](40) NULL,
	[EMBOSSLINE4] [varchar](40) NULL,
	[CARDSEQNO] [char](1) NULL,
	[TRACK1] [varchar](128) NULL,
	[TRACK2] [varchar](84) NOT NULL,
	[TRACK3] [varchar](144) NULL,
	[BRANCHID] [varchar](10) NULL,
	[PRODUCTCODE] [varchar](10) NULL,
	[PLASTICCODE] [varchar](50) NULL,
	[FIELD01] [varchar](50) NULL,
	[FIELD02] [varchar](50) NULL,
	[FIELD03] [varchar](50) NULL,
	[FIELD04] [varchar](50) NULL,
	[FIELD05] [varchar](50) NULL,
	[FIELD06] [varchar](50) NULL,
	[FIELD07] [varchar](50) NULL,
	[FIELD08] [varchar](50) NULL,
	[FIELD09] [varchar](50) NULL,
	[FIELD10] [varchar](50) NULL,
	[FIELD11] [varchar](50) NULL,
	[FIELD12] [varchar](50) NULL,
	[FIELD13] [varchar](50) NULL,
	[FIELD14] [varchar](50) NULL,
	[FIELD15] [varchar](50) NULL,
	[FIELD16] [varchar](50) NULL,
	[FIELD17] [varchar](50) NULL,
	[FIELD18] [varchar](50) NULL,
	[FIELD19] [varchar](50) NULL,
	[FIELD20] [varchar](50) NULL,
	[STATIONID] [varchar](50) NULL,
	[CVV4] [varchar](50) NULL,
 CONSTRAINT [PK_TRN_EmbossRecords_Maximailer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TRN_INVENTORY]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TRN_INVENTORY](
	[Date] [datetime] NOT NULL,
	[User] [nchar](20) NULL,
	[BranchID] [nchar](10) NULL,
	[ProductID] [nchar](10) NULL,
	[PlasticCode] [nchar](10) NULL,
	[Threshold_Int] [nchar](1) NULL,
	[Inventory_Count] [numeric](18, 0) NULL,
	[InventoryID] [int] IDENTITY(1,1) NOT NULL,
	[Inventory_Total] [numeric](18, 0) NULL,
	[Status] [nchar](10) NULL,
	[BIN] [nchar](10) NULL,
	[Updated_Datetime] [datetime] NULL,
	[Stock_Credit] [int] NULL,
	[Stock_Debit] [int] NULL,
	[Stk_Define_Time_In_Days] [int] NULL,
	[Stock_ID] [int] NULL,
	[Issued_CARD] [int] NULL,
	[VENDOR_ID] [int] NULL,
	[REMAINING_CARD] [int] NULL,
 CONSTRAINT [PK_TRN_Inventory] PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TRN_JOBS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TRN_JOBS](
	[JOBID] [int] IDENTITY(1,1) NOT NULL,
	[CARDPROFILEID] [int] NOT NULL,
	[APPPROFILEID] [int] NOT NULL,
	[DESCRIPTION] [varchar](100) NOT NULL,
	[STATUSCODE] [char](2) NOT NULL,
	[VALIDFLAG] [char](1) NOT NULL,
	[TOTALRECORD] [bigint] NOT NULL,
	[JOBINSERTDATE] [smalldatetime] NOT NULL,
	[JOBINSERTUSER] [varchar](50) NOT NULL,
	[BRANCHID] [varchar](10) NULL,
	[STATIONID] [varchar](50) NULL,
	[PARENTJOBID] [int] NOT NULL,
 CONSTRAINT [PK_NP_TRN_JOBS] PRIMARY KEY CLUSTERED 
(
	[JOBID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TRN_PERSORECORDS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TRN_PERSORECORDS](
	[PERSOID] [int] IDENTITY(1,1) NOT NULL,
	[JOBID] [int] NULL,
	[FILEID] [int] NULL,
	[FILENO] [bigint] NULL,
	[CARDPROFILEID] [int] NULL,
	[APPPROFILEID] [int] NULL,
	[CARDNO] [varchar](68) NULL,
	[CARDDATA] [varchar](8000) NULL,
	[CARDDATAM5] [varchar](4096) NULL,
	[CARDDATAM6] [varchar](4096) NULL,
	[STATUSCODE] [char](2) NULL,
	[STATIONNO] [numeric](1, 0) NULL,
	[FEEDTIME] [datetime] NULL,
	[EJECTTIME] [datetime] NULL,
	[PERSORESULTCODE] [int] NULL,
	[IMPORTUSERID] [varchar](50) NULL,
	[APPROVEUSERID] [varchar](50) NULL,
	[ISSUEUSERID] [varchar](50) NULL,
	[BRANCHID] [varchar](10) NULL,
	[APPCARDNO] [varchar](100) NULL,
	[STATIONID] [varchar](50) NULL,
	[EmbRecID] [int] NULL,
 CONSTRAINT [PK_TRN_PersoRecords] PRIMARY KEY CLUSTERED 
(
	[PERSOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TRN_PROCESSEDCARDS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TRN_PROCESSEDCARDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CARDHASH] [varchar](40) NULL,
	[JOBID] [int] NULL,
	[EMBENCFLAG] [varchar](2) NULL,
	[PERSORECORDSFLAG] [varchar](2) NULL,
	[CARDPROFILEID] [int] NULL,
	[APPLPROFILEID] [int] NULL,
	[CPDREFNO] [int] NULL,
	[STATUSCODE] [varchar](2) NULL,
	[PROCDATE] [datetime] NULL,
 CONSTRAINT [PK_TRN_ProcessedCards] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NP_TRN_PROCESSEDFILEDS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NP_TRN_PROCESSEDFILEDS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FILENAME] [varchar](250) NOT NULL,
	[FILETYPE] [varchar](2) NOT NULL,
	[JOBID] [int] NOT NULL,
	[EMBENCFLAG] [char](1) NOT NULL,
	[PERSORECORDSFLAG] [char](1) NOT NULL,
	[CARDPROFILEID] [int] NOT NULL,
	[APPLPROFILEID] [int] NOT NULL,
	[CPDREFNO] [int] NOT NULL,
	[STATUSCODE] [char](2) NOT NULL,
	[TOTALRECORD] [bigint] NOT NULL,
	[PROCESSEDRECORD] [bigint] NOT NULL,
	[FILELENGTH] [bigint] NOT NULL,
	[PROCDATE] [datetime] NULL,
 CONSTRAINT [PK_TRN_ProcessedFiles_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_BINS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_BINS](
	[BIN_ID] [int] IDENTITY(1,1) NOT NULL,
	[BIN_NUMBER] [varchar](50) NOT NULL,
	[BIN_TRACKING_NUMBER] [varchar](10) NULL,
	[BIN_IPK_INDEX] [varchar](5) NULL,
	[CA] [varchar](50) NULL,
	[BIN_SCHEME_ID] [int] NULL,
	[BIN_BRAND_ID] [int] NULL,
	[BIN_PRODUCT_NAME] [varchar](max) NULL,
	[BIN_STATUS] [varchar](max) NOT NULL,
	[IsCardInk] [bit] NOT NULL,
	[IMK_INDEX] [int] NULL,
	[ISSUER_INDEX] [int] NULL,
	[BIN_AID] [varchar](50) NULL,
	[AddedBy] [varchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
	[BIN_RFU_1] [varchar](max) NULL,
	[BIN_RFU_2] [varchar](max) NULL,
	[BIN_RFU_3] [varchar](max) NULL,
	[BIN_RFU_4] [varchar](max) NULL,
	[BIN_RFU_5] [varchar](max) NULL,
 CONSTRAINT [PK_TBL_bin_details] PRIMARY KEY CLUSTERED 
(
	[BIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_BRAND]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_BRAND](
	[Brand_ID] [int] IDENTITY(1,1) NOT NULL,
	[Brand_Name] [varchar](max) NOT NULL,
	[Scheme] [varchar](max) NOT NULL,
	[PIX] [varchar](6) NULL,
	[RID] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_CHIP_AID_DETAILS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_CHIP_AID_DETAILS](
	[CAD_ID] [int] IDENTITY(1,1) NOT NULL,
	[CAD_AID] [varchar](max) NOT NULL,
	[CAD_AID_EXISTS] [bit] NULL,
	[CAD_ISD] [varchar](max) NULL,
	[CAD_INSTALL_AID] [varchar](max) NOT NULL,
	[CAD_PSE] [varchar](max) NOT NULL,
	[CAD_PSE_EXISTS] [bit] NULL,
	[CAD_INSTALL_PSE] [varchar](max) NULL,
	[CAD_PPSE] [varchar](max) NOT NULL,
	[CAD_PPSE_EXISTS] [bit] NOT NULL,
	[CAD_INSTALL_PPSE] [varchar](max) NULL,
	[CHIP_ID] [int] NOT NULL,
 CONSTRAINT [PK_CHIP_AID_DETAILS1] PRIMARY KEY CLUSTERED 
(
	[CAD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_DGI]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_DGI](
	[DGI_ID] [int] IDENTITY(1,1) NOT NULL,
	[DGI_NAME] [varchar](50) NOT NULL,
	[DGI_TYPE] [varchar](20) NOT NULL,
	[DGI_SCHEME] [varchar](20) NOT NULL,
	[DGI_COMMENT] [varchar](max) NULL,
	[DGI_TAGLIST] [varbinary](max) NOT NULL,
	[DGI_ENCODING] [varchar](50) NULL,
	[DGI_ROLE] [varchar](50) NULL,
	[DGI_ENCKEY] [varchar](50) NULL,
	[DGI_ENCMODE] [varchar](50) NULL,
	[DGI_PADDINGMODE] [varchar](50) NULL,
	[TotalTags] [varchar](20) NULL,
	[AddedBy] [varchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
	[RFU1] [varchar](50) NULL,
	[RFU2] [varchar](50) NULL,
 CONSTRAINT [PK_DGI] PRIMARY KEY CLUSTERED 
(
	[DGI_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_ENC_KEYS]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_ENC_KEYS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ENC_KEY] [varchar](50) NOT NULL,
	[HEX_VALUE] [varchar](10) NULL,
	[RFU] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_ENC_MODE]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_ENC_MODE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ENC_MODE] [varchar](50) NOT NULL,
	[HEX_VALUE] [varchar](10) NULL,
	[RFU] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_FORMAT]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_FORMAT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FORMAT_CODE] [int] NOT NULL,
	[FORMAT_NAME] [varchar](50) NOT NULL,
	[RFU] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_IMK]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_IMK](
	[IMK_ID] [int] IDENTITY(1,1) NOT NULL,
	[IMK_NAME] [varchar](50) NOT NULL,
	[IMK_SCHEME] [varchar](50) NOT NULL,
	[INSERTED_ON] [datetime] NULL,
	[INSERTED_BY] [varchar](50) NULL,
	[UPDATED_ON] [datetime] NULL,
	[UPDATED_BY] [varchar](50) NULL,
	[RFU1] [varchar](50) NULL,
	[RFU2] [varchar](50) NULL,
	[RFU3] [varchar](50) NULL,
	[RFU4] [varchar](50) NULL,
	[RFU] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_ISSUER]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_ISSUER](
	[IS_ID] [int] IDENTITY(1,1) NOT NULL,
	[IS_NAME] [varchar](64) NOT NULL,
	[IS_UNIQUE_NAME] [varchar](20) NOT NULL,
	[IS_CONTACT_PERSON] [varchar](max) NOT NULL,
	[IS_CITY] [varchar](64) NOT NULL,
	[IS_ADDRESS] [varchar](64) NOT NULL,
	[IS_COUNTRY] [varchar](64) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_LENGTH_ENCODING]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_LENGTH_ENCODING](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ENCODING_NAME] [varchar](max) NOT NULL,
	[HEX_VALUE] [varchar](10) NULL,
	[RFU] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_MAP_BIN_KEY_MAPPING]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_MAP_BIN_KEY_MAPPING](
	[MAP_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROFILE_ID] [int] NOT NULL,
	[BIN_ID] [int] NOT NULL,
	[KEY_ID] [int] NOT NULL,
	[PROTOCOL] [varchar](50) NULL,
	[IS_DERIVED] [bit] NULL,
	[RFU1] [int] NULL,
	[RFU2] [int] NULL,
	[RFU3] [varchar](50) NULL,
	[RFU4] [varchar](50) NULL,
	[RFU5] [varchar](50) NULL,
	[CAD_ID] [int] NULL,
	[AID] [varchar](max) NULL,
	[PSE] [varchar](max) NULL,
	[PPSE] [varchar](max) NULL,
	[AID_INSTALL] [varchar](max) NULL,
	[AID_ISD] [varchar](max) NULL,
	[PSE_INSTALL] [varchar](max) NULL,
	[PPSE_INSTALL] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_MECHANISM]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_MECHANISM](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MECHANISM] [varchar](50) NOT NULL,
	[KEYSIZE] [varchar](50) NOT NULL,
	[RFU1] [varchar](max) NULL,
	[RFU2] [varchar](max) NULL,
	[RFU3] [varchar](max) NULL,
	[RFU4] [varchar](max) NULL,
	[RFU5] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_ORIGIN]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_ORIGIN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ORIGIN_ID] [varchar](50) NULL,
	[ORIGIN_NAME] [varchar](50) NOT NULL,
	[RFU] [varchar](50) NULL,
 CONSTRAINT [PK_PM_ORIGIN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_PADDING_MODE]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_PADDING_MODE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PAD_MODE] [varchar](50) NOT NULL,
	[HEX_VALUE] [varchar](10) NULL,
	[RFU] [varchar](max) NULL,
 CONSTRAINT [PK_PM_PADDING_MODE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_PLATFORM]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_PLATFORM](
	[Platform_ID] [int] IDENTITY(1,1) NOT NULL,
	[Platform_Name] [varchar](max) NOT NULL,
	[Scheme] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_PROFILE]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_PROFILE](
	[PRO_ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_NAME] [varchar](50) NOT NULL,
	[PRO_SCHEME] [varchar](20) NOT NULL,
	[PRO_TYPE] [varchar](20) NOT NULL,
	[PRO_BRAND] [varchar](20) NOT NULL,
	[PRO_PLATFORM] [varchar](20) NOT NULL,
	[PRO_COMMENT] [varchar](max) NULL,
	[PRO_DGILIST] [varbinary](max) NOT NULL,
	[PRO_ENCODING] [varchar](50) NULL,
	[PRO_ROLE] [varchar](50) NULL,
	[PRO_ENCKEY] [varchar](50) NULL,
	[PRO_ENCMODE] [varchar](50) NULL,
	[PRO_PADDINGMODE] [varchar](50) NULL,
	[AddedBy] [varchar](50) NULL,
	[AddedOn] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
	[RFU1] [varchar](50) NULL,
	[RFU2] [varchar](50) NULL,
	[PRO_FLAG] [varchar](max) NULL,
	[PRO_ORIGIN] [varchar](max) NULL,
	[PRO_VALUE] [varchar](max) NULL,
 CONSTRAINT [PK_PROFILE] PRIMARY KEY CLUSTERED 
(
	[PRO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_ROLES]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_ROLES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ROLE] [varchar](50) NOT NULL,
	[HEX_VALUE] [varchar](10) NULL,
	[RFU] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_SCHEME]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_SCHEME](
	[Scheme_ID] [int] IDENTITY(1,1) NOT NULL,
	[Scheme] [varchar](50) NOT NULL,
	[RID] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PM_TAG_LIST]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PM_TAG_LIST](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](max) NOT NULL,
	[FORMAT] [varchar](50) NULL,
	[LOWER] [varchar](5) NOT NULL,
	[UPPER] [varchar](10) NOT NULL,
	[TYPE] [varchar](50) NULL,
	[ORIGIN] [varchar](50) NULL,
	[TAG] [varchar](max) NULL,
	[ENCRYPTION] [varchar](5) NULL,
	[VALUE] [varchar](max) NULL,
	[DEFAULTVALUE] [varchar](max) NULL,
	[VISIBLE] [varchar](5) NULL,
	[RFU] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PUBLIC_EXPONENT]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PUBLIC_EXPONENT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PUBLIC_EXPONENT] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_chip_scheme_mapping]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_chip_scheme_mapping](
	[csm_id] [int] IDENTITY(1,1) NOT NULL,
	[csm_chip_id] [int] NOT NULL,
	[csm_sch_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TLS_ISSUANCEMODE]    Script Date: 10/1/2020 5:53:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TLS_ISSUANCEMODE](
	[MODE_ID] [int] NOT NULL,
	[MODE_TYPE] [nvarchar](max) NOT NULL,
	[DESCRIPTION] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NP_HSM] ON 

INSERT [dbo].[NP_HSM] ([ID], [HSMNAME], [MODEL], [DESCRIPTION], [FIRMWARE], [SERIALNUMBER], [MANUFACTURERID], [IP], [PORT], [LMK_NAME], [HSM_USER], [HSM_PWD], [CRYPTOKIVERSION], [CRYPTOKIPATH], [KEY_STORE_TYPE]) VALUES (1, N'ProtectServer External2', N'PSI-E2:PL220', N'ProtectServer External2', N'5.05.00', N'513471', N'SafeNet Inc.', N'10.0.33.22', N'12396', N'LMK_MASTER_KEY', N'CKU.CKU_USER', N'utokenuser12345678', N'2.10', N'C:\Program Files\SafeNet\Protect Toolkit C SDK\bin\hsm\cryptoki.dll', N'1')
SET IDENTITY_INSERT [dbo].[NP_HSM] OFF
SET IDENTITY_INSERT [dbo].[NP_LOG_LOGINS] ON 

INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (1, N'20200929035623', N'Fahad', N'10.0.33.224', N'QAUWD2NANOWEB1', 0, 0, N'')
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (3, N'20200929111557', N'Fahad', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (4, N'20200929111853', N'Fahad', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (5, N'20200929112738', N'Fahad', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (6, N'20200929113111', N'Fahad', N'10.0.33.224', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (7, N'20200929115016', N'Fahad', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (8, N'20200929115152', N'Fahad', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (9, N'20200929121635', N'Fahad', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (10, N'20200930082442', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (11, N'20200930082556', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (12, N'20200930103851', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (13, N'20200930031552', N'SOLOMON', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (14, N'20200930104110', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (15, N'20200930104441', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (16, N'20200930104742', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (17, N'20200930105356', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (18, N'20200930110220', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (19, N'20200930113216', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (20, N'20200930115444', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (21, N'20200930120020', N'MURALI', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (22, N'20200930115829', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (23, N'20200930120024', N'MURALI', N'127.0.0.1', N'OMASG-PC-0106', 1, 1, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (24, N'20200930013512', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (25, N'20200930014631', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (26, N'20200930030240', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (27, N'20200930031331', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (28, N'20200930031805', N'SOLOMON', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (29, N'20200930031921', N'SOLOMON', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (30, N'20200930032327', N'SOLOMON', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (31, N'20200930032410', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (32, N'20200930034147', N'SOLOMON', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (33, N'20200930034439', N'SOLOMON', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (34, N'20200930035444', N'SOLOMON', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (35, N'20200930040341', N'SOLOMON', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (36, N'20200930042543', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (37, N'20200930040523', N'SOLOMON', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (38, N'20200930042456', N'SOLOMON', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (39, N'20200930042632', N'SOLOMON', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (40, N'20200930044931', N'SOLOMON', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (41, N'20200930054337', N'SOLOMON', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (42, N'20200930053844', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (43, N'20200930055142', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (44, N'20201001082404', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (45, N'20201001103427', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (46, N'20201001103819', N'ANKIT1', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (47, N'20201001105516', N'ANKIT1', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (48, N'20201001113053', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (49, N'20201001110122', N'ANKIT1', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (50, N'20201001110253', N'ANKIT1', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (51, N'20201001110749', N'ANKIT1', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (52, N'20201001111011', N'ANKIT1', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (53, N'20201001111516', N'ANKIT1', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (54, N'20201001012749', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (55, N'20201015012900', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
INSERT [dbo].[NP_LOG_LOGINS] ([ID], [LOG_TIME], [USER_ID], [SOURCE_IP], [SOURCE_PC], [LOGIN_STATUS], [Session], [SessionID]) VALUES (56, N'20201001015836', N'FAHAD', N'127.0.0.1', N'OMASG-PC-0106', 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[NP_LOG_LOGINS] OFF
SET IDENTITY_INSERT [dbo].[NP_PRT_PRINT_PROFILES] ON 

INSERT [dbo].[NP_PRT_PRINT_PROFILES] ([CardProfileID], [ProfileID], [EnableCHIP], [EnableMAG], [EnablePRINT], [UseSameDefaultDB], [ConnectionString], [Fron_Image_File_Loc], [Rear_image_File_Loc], [PrinterType], [Description], [DLLPath], [Topping], [EnableAllPrint], [IsUsb], [PortName], [BaudRate], [Parity], [DataBits], [StopBits], [ReadTimeout], [FormatNumber], [IsChipContact], [PrinterSP], [FeederCount], [PrinterProductCode], [PrinterPlasticCode]) VALUES (1, 1, 1, 1, 1, 1, N'test', N'na', N'na', N'na', N'na', N'na', 1, 1, 1, N'1', 1, N'1', 0, N'1', 1, 1, 1, N'1', 1, N'1', N'1')
SET IDENTITY_INSERT [dbo].[NP_PRT_PRINT_PROFILES] OFF
SET IDENTITY_INSERT [dbo].[NP_PRT_PRINTER] ON 

INSERT [dbo].[NP_PRT_PRINTER] ([PrinterId], [PrinterName], [Model], [Make], [ClassName], [XCoordinate], [YCoordinate], [IsOriginTop], [IsMultiFeeder], [FeederCount], [IsManualFeeder]) VALUES (1, N'Javelin ', N'DNA Pro', N'Javelin', N'DNAProLibrary                                     ', 30, 30, 1, 1, N'2         ', 1)
SET IDENTITY_INSERT [dbo].[NP_PRT_PRINTER] OFF
SET IDENTITY_INSERT [dbo].[NP_PRT_PRINTING_FIELDS] ON 

INSERT [dbo].[NP_PRT_PRINTING_FIELDS] ([FieldName], [FieldID], [Description]) VALUES (N'CVV2', 1, N'CVV2')
INSERT [dbo].[NP_PRT_PRINTING_FIELDS] ([FieldName], [FieldID], [Description]) VALUES (N'Card Number', 2, N'Card Number')
INSERT [dbo].[NP_PRT_PRINTING_FIELDS] ([FieldName], [FieldID], [Description]) VALUES (N'Card Name', 3, N'Card Name')
INSERT [dbo].[NP_PRT_PRINTING_FIELDS] ([FieldName], [FieldID], [Description]) VALUES (N'Expiry Date', 4, N'Expiry Date')
INSERT [dbo].[NP_PRT_PRINTING_FIELDS] ([FieldName], [FieldID], [Description]) VALUES (N'Constant', 5, N'Constant')
INSERT [dbo].[NP_PRT_PRINTING_FIELDS] ([FieldName], [FieldID], [Description]) VALUES (N'VALIDFROM', 6, N'VALIDFROM')
INSERT [dbo].[NP_PRT_PRINTING_FIELDS] ([FieldName], [FieldID], [Description]) VALUES (N'Last4PanDigits', 7, N'Pan Digits')
SET IDENTITY_INSERT [dbo].[NP_PRT_PRINTING_FIELDS] OFF
SET IDENTITY_INSERT [dbo].[NP_ROLES] ON 

INSERT [dbo].[NP_ROLES] ([Id], [Roles], [Description], [Create], [Delete], [Update], [Read]) VALUES (1, N'All Roles Assign', N'Global Role', 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[NP_ROLES] OFF
SET IDENTITY_INSERT [dbo].[NP_SEC_GROUP] ON 

INSERT [dbo].[NP_SEC_GROUP] ([GROUP_ID], [DESCRIPTION]) VALUES (1, N'APPLICATION ADMINISTRATOR')
INSERT [dbo].[NP_SEC_GROUP] ([GROUP_ID], [DESCRIPTION]) VALUES (2, N'SECURITY OFFICER')
INSERT [dbo].[NP_SEC_GROUP] ([GROUP_ID], [DESCRIPTION]) VALUES (3, N'ROLE MANAGER')
INSERT [dbo].[NP_SEC_GROUP] ([GROUP_ID], [DESCRIPTION]) VALUES (1003, N'OPERATOR2')
INSERT [dbo].[NP_SEC_GROUP] ([GROUP_ID], [DESCRIPTION]) VALUES (1008, N'APPLICATION ADMINISTRATOR2')
INSERT [dbo].[NP_SEC_GROUP] ([GROUP_ID], [DESCRIPTION]) VALUES (1009, N'TESTGROUPOPERATOR')
INSERT [dbo].[NP_SEC_GROUP] ([GROUP_ID], [DESCRIPTION]) VALUES (1010, N'TEST')
SET IDENTITY_INSERT [dbo].[NP_SEC_GROUP] OFF
SET IDENTITY_INSERT [dbo].[NP_SEC_GROUP_PERMISSION] ON 

INSERT [dbo].[NP_SEC_GROUP_PERMISSION] ([ID], [GROUPID], [SCREENID]) VALUES (1, N'1', N'1')
INSERT [dbo].[NP_SEC_GROUP_PERMISSION] ([ID], [GROUPID], [SCREENID]) VALUES (2, N'1', N'2')
INSERT [dbo].[NP_SEC_GROUP_PERMISSION] ([ID], [GROUPID], [SCREENID]) VALUES (3, N'1', N'3')
INSERT [dbo].[NP_SEC_GROUP_PERMISSION] ([ID], [GROUPID], [SCREENID]) VALUES (4, N'1', N'4')
SET IDENTITY_INSERT [dbo].[NP_SEC_GROUP_PERMISSION] OFF
SET IDENTITY_INSERT [dbo].[NP_SEC_GROUP_USER] ON 

INSERT [dbo].[NP_SEC_GROUP_USER] ([ID], [USERID], [GROUPID]) VALUES (1, 1, 1008)
INSERT [dbo].[NP_SEC_GROUP_USER] ([ID], [USERID], [GROUPID]) VALUES (14, 28, 1)
INSERT [dbo].[NP_SEC_GROUP_USER] ([ID], [USERID], [GROUPID]) VALUES (15, 2, 1008)
INSERT [dbo].[NP_SEC_GROUP_USER] ([ID], [USERID], [GROUPID]) VALUES (16, 29, 1008)
INSERT [dbo].[NP_SEC_GROUP_USER] ([ID], [USERID], [GROUPID]) VALUES (18, 31, 1008)
INSERT [dbo].[NP_SEC_GROUP_USER] ([ID], [USERID], [GROUPID]) VALUES (22, 36, 1009)
INSERT [dbo].[NP_SEC_GROUP_USER] ([ID], [USERID], [GROUPID]) VALUES (26, 40, 1)
SET IDENTITY_INSERT [dbo].[NP_SEC_GROUP_USER] OFF
SET IDENTITY_INSERT [dbo].[NP_SEC_MENU] ON 

INSERT [dbo].[NP_SEC_MENU] ([ID], [MENUNAME], [SCREENID], [CAPTION], [DESCRIPTION], [MENUORDER], [ENABLE]) VALUES (1, N'Users And Group', N'0', N'User Group Configuration', N'User Group Configuration', 1, 1)
INSERT [dbo].[NP_SEC_MENU] ([ID], [MENUNAME], [SCREENID], [CAPTION], [DESCRIPTION], [MENUORDER], [ENABLE]) VALUES (2, N'Products And Plastics', N'0', N'Product And Plastics Configuration', N'Product And Plastics Configuration', 2, 1)
INSERT [dbo].[NP_SEC_MENU] ([ID], [MENUNAME], [SCREENID], [CAPTION], [DESCRIPTION], [MENUORDER], [ENABLE]) VALUES (3, N'Card And Application', N'0', N'Card And Application Profile Configuration', N'Card And Application Profile Configuration', 3, 1)
SET IDENTITY_INSERT [dbo].[NP_SEC_MENU] OFF
SET IDENTITY_INSERT [dbo].[NP_SEC_PASSWORD_COMPLEXITY] ON 

INSERT [dbo].[NP_SEC_PASSWORD_COMPLEXITY] ([PASSWORD_COMPLEXITY_ID], [MinLength], [MaxLength], [ReqSpecialChar], [ReqAlphaUpper], [ReqAlphaLower], [AllowUName], [ReqNumeric], [RegularExpression]) VALUES (2, 8, 20, 1, 1, 1, 0, 1, N'[A-Z]')
SET IDENTITY_INSERT [dbo].[NP_SEC_PASSWORD_COMPLEXITY] OFF
SET IDENTITY_INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ON 

INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'28', N'1111', N'ankit', CAST(N'2020-09-25' AS Date), N'ankit', CAST(N'2020-09-16' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'28', N'Fahad@12345', N'ankit', CAST(N'2020-09-25' AS Date), N'ankit', CAST(N'2020-09-17' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'28', N'Oma@12345', N'ankit', CAST(N'2020-09-25' AS Date), N'ankit', CAST(N'2020-09-18' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, N'28', N'test@12345', N'ankit', CAST(N'2020-09-25' AS Date), N'ankit', CAST(N'2020-09-19' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, N'28', N'User@12345', N'ankit', CAST(N'2020-09-25' AS Date), N'ankit', CAST(N'2020-09-20' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (6, N'28', N'Royals@12345', N'ankit', CAST(N'2020-09-25' AS Date), N'ankit', CAST(N'2020-09-21' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (7, N'28', N'Testing@12345', N'ankit', CAST(N'2020-09-25' AS Date), N'ankit', CAST(N'2020-09-22' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (8, N'28', N'Oma@Tie0920', N'ankit', CAST(N'2020-09-25' AS Date), N'ankit', CAST(N'2020-09-23' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (9, N'28', N'Bye@Tie0920', N'ankit', CAST(N'2020-09-25' AS Date), N'ankit', CAST(N'2020-09-24' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (10, N'28', N'tutor@Tie0920', N'ankit', CAST(N'2020-09-25' AS Date), N'ankit', CAST(N'2020-09-25' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (11, N'28', N'Oma@12345', N'ankit', CAST(N'2020-09-25' AS Date), N'ankit', CAST(N'2020-09-25' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (12, N'28', N'Park@12345', N'Fahad', CAST(N'2020-09-27' AS Date), N'Fahad', CAST(N'2020-09-27' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (13, N'28', N'test', N'Fahad', CAST(N'2020-09-27' AS Date), N'Fahad', CAST(N'2020-09-27' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (14, N'1', N'test', N'ankit', CAST(N'2020-09-27' AS Date), N'ankit', CAST(N'2020-09-27' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (15, N'28', N'12345', N'Fahad', CAST(N'2020-09-27' AS Date), N'Fahad', CAST(N'2020-09-27' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (16, N'31', N'Oma@1', N'Solomon', CAST(N'2020-09-27' AS Date), N'Solomon', CAST(N'2020-09-27' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (17, N'31', N'1111', N'Solomon', CAST(N'2020-09-28' AS Date), N'Solomon', CAST(N'2020-09-28' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (18, N'28', N'12345', N'Fahad', CAST(N'2020-09-29' AS Date), N'Fahad', CAST(N'2020-09-29' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (19, N'28', N'1111', N'FAHAD', CAST(N'2020-09-29' AS Date), N'FAHAD', CAST(N'2020-09-29' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (20, N'31', N'oMA"1', N'SOLOMON', CAST(N'2020-09-29' AS Date), N'SOLOMON', CAST(N'2020-09-29' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (21, N'31', N'Oma@123', N'SOLOMON', CAST(N'2020-09-29' AS Date), N'SOLOMON', CAST(N'2020-09-29' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (22, N'28', N'B093964B92FE446CBEC551D8229E6BF8', N'FAHAD', CAST(N'2020-09-30' AS Date), N'FAHAD', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (23, N'31', N'1111', N'SOLOMON', CAST(N'2020-09-30' AS Date), N'SOLOMON', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (24, N'34', N'63F76181B83A61D68132B9DD992A2DEE', N'MURALI', CAST(N'2020-09-30' AS Date), N'MURALI', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (25, N'34', N'56A02834041AB7910925C4FC519BCA79', N'MURALI', CAST(N'2020-09-30' AS Date), N'MURALI', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (26, N'28', N'1111', N'FAHAD', CAST(N'2020-09-30' AS Date), N'FAHAD', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (27, N'40', N'95F8F4B10319BEE7251151B4BDFDA141', N'SOLOMON', CAST(N'2020-09-30' AS Date), N'SOLOMON', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (28, N'40', N'B093964B92FE446CBEC551D8229E6BF8', N'SOLOMON', CAST(N'2020-09-30' AS Date), N'SOLOMON', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (29, N'40', N'56A02834041AB7910925C4FC519BCA79', N'SOLOMON', CAST(N'2020-09-30' AS Date), N'SOLOMON', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (30, N'40', N'AD7D80FA8DDE67DF815DCDA1FE53A32A', N'SOLOMON', CAST(N'2020-09-30' AS Date), N'SOLOMON', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (31, N'40', N'D06E2B7603D09F3E42F039662FC74CEA', N'SOLOMON', CAST(N'2020-09-30' AS Date), N'SOLOMON', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (32, N'40', N'E9F0078820E4AD111FC17CD547481D83', N'SOLOMON', CAST(N'2020-09-30' AS Date), N'SOLOMON', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (33, N'40', N'56A02834041AB7910925C4FC519BCA79', N'SOLOMON', CAST(N'2020-09-30' AS Date), N'SOLOMON', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (34, N'40', N'262F7A54A1E1CA3C0AF6597AB3F6D578', N'SOLOMON', CAST(N'2020-09-30' AS Date), N'SOLOMON', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (35, N'40', N'162010EC3B3202DEDDD98EF8038C9DBC', N'SOLOMON', CAST(N'2020-09-30' AS Date), N'SOLOMON', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (36, N'40', N'5CD3E9C7136611572C593BA320524730', N'SOLOMON', CAST(N'2020-09-30' AS Date), N'SOLOMON', CAST(N'2020-09-30' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (37, N'41', N'73F41A5EBD328EEF1FC7A1926DDC7FA6', N'ANKIT1', CAST(N'2020-10-01' AS Date), N'ANKIT1', CAST(N'2020-10-01' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (38, N'28', N'1111', N'FAHAD', CAST(N'2020-10-01' AS Date), N'FAHAD', CAST(N'2020-10-01' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (39, N'41', N'21323414757AB10A3B4C59E75CB6C020', N'ANKIT1', CAST(N'2020-10-01' AS Date), N'ANKIT1', CAST(N'2020-10-01' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (40, N'41', N'1C11FF6153359FFE22A675AB126D678D', N'ANKIT1', CAST(N'2020-10-01' AS Date), N'ANKIT1', CAST(N'2020-10-01' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (41, N'41', N'1C11FF6153359FFE22A675AB126D678D', N'ANKIT1', CAST(N'2020-10-01' AS Date), N'ANKIT1', CAST(N'2020-10-01' AS Date))
INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] ([SrNo], [UserID], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (42, N'28', N'1111', N'FAHAD', CAST(N'2020-10-01' AS Date), N'FAHAD', CAST(N'2020-10-01' AS Date))
SET IDENTITY_INSERT [dbo].[NP_SEC_PASSWORD_HISTORY] OFF
SET IDENTITY_INSERT [dbo].[NP_SEC_USER] ON 

INSERT [dbo].[NP_SEC_USER] ([ID], [USERNAME], [NAME], [MIDDLENAME], [SURNAME], [PASSWORD], [INVALIDPASSWORDCOUNT], [LASTLOGIN], [LOGINSTATUS], [USER_TYPE], [Active], [ResetPassword], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Branch_Code], [EMAIL_ADDRESS], [User_Role]) VALUES (1, N'ANKIT', N'', N'GROUPS', N'test', N'test', 1, CAST(N'2020-09-09T00:00:00.000' AS DateTime), 1, N'2', 1, 1, N'2016-03-17 17:44:16.047', CAST(N'2020-09-09T00:00:00.000' AS DateTime), N'2020-09-01 09:09:06.387', CAST(N'2020-09-09T00:00:00.000' AS DateTime), N'0110', N'ankit@omaemirates.com', N'1')
INSERT [dbo].[NP_SEC_USER] ([ID], [USERNAME], [NAME], [MIDDLENAME], [SURNAME], [PASSWORD], [INVALIDPASSWORDCOUNT], [LASTLOGIN], [LOGINSTATUS], [USER_TYPE], [Active], [ResetPassword], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Branch_Code], [EMAIL_ADDRESS], [User_Role]) VALUES (28, N'FAHAD', N'Syed1', N'Fahad1', N'Iqbal1', N'56A02834041AB7910925C4FC519BCA79', 0, CAST(N'2020-09-30T15:15:56.413' AS DateTime), 1, N'1', 1, 0, N'Administrator', CAST(N'2020-09-25T16:55:29.000' AS DateTime), N'Administrator', CAST(N'2020-09-29T12:05:22.710' AS DateTime), N'0110', N'fahad1@omaemirates.com', N'NoRole')
INSERT [dbo].[NP_SEC_USER] ([ID], [USERNAME], [NAME], [MIDDLENAME], [SURNAME], [PASSWORD], [INVALIDPASSWORDCOUNT], [LASTLOGIN], [LOGINSTATUS], [USER_TYPE], [Active], [ResetPassword], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Branch_Code], [EMAIL_ADDRESS], [User_Role]) VALUES (30, N'ASHISH', N'Ashish', N'M', N'Mishra', N'test', 0, CAST(N'2020-09-30T15:19:24.960' AS DateTime), 1, N'2', 1, 0, N'Fahad', CAST(N'2020-09-27T15:24:43.000' AS DateTime), N'Administrator', CAST(N'2020-09-30T13:55:07.433' AS DateTime), N'0110', N'ashish@omaemirates.com', N'NoRole')
INSERT [dbo].[NP_SEC_USER] ([ID], [USERNAME], [NAME], [MIDDLENAME], [SURNAME], [PASSWORD], [INVALIDPASSWORDCOUNT], [LASTLOGIN], [LOGINSTATUS], [USER_TYPE], [Active], [ResetPassword], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Branch_Code], [EMAIL_ADDRESS], [User_Role]) VALUES (36, N'MURALI', N'Murali', N'a', N'test', N'56A02834041AB7910925C4FC519BCA79', 0, CAST(N'2020-09-30T16:05:03.977' AS DateTime), 1, N'1', 1, 0, N'FAHAD', CAST(N'2020-09-30T13:57:18.000' AS DateTime), N'Administrator', CAST(N'2020-09-30T13:59:07.983' AS DateTime), N'0110', N'murali@gmail.com', N'NoRole')
INSERT [dbo].[NP_SEC_USER] ([ID], [USERNAME], [NAME], [MIDDLENAME], [SURNAME], [PASSWORD], [INVALIDPASSWORDCOUNT], [LASTLOGIN], [LOGINSTATUS], [USER_TYPE], [Active], [ResetPassword], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Branch_Code], [EMAIL_ADDRESS], [User_Role]) VALUES (40, N'SOLOMON', N'SOLOMON', N's', N'test', N'56A02834041AB7910925C4FC519BCA79', 0, CAST(N'2020-09-30T17:40:41.000' AS DateTime), 1, N'1', 1, 1, N'FAHAD', CAST(N'2020-09-30T14:05:56.000' AS DateTime), N'Administrator', CAST(N'2020-09-30T17:41:17.107' AS DateTime), N'0110', N'murali@gmail.com', N'NoRole')
INSERT [dbo].[NP_SEC_USER] ([ID], [USERNAME], [NAME], [MIDDLENAME], [SURNAME], [PASSWORD], [INVALIDPASSWORDCOUNT], [LASTLOGIN], [LOGINSTATUS], [USER_TYPE], [Active], [ResetPassword], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Branch_Code], [EMAIL_ADDRESS], [User_Role]) VALUES (41, N'ANKIT1', N'ANKIT', N'asdaf', N'sadf', N'1C11FF6153359FFE22A675AB126D678D', 0, CAST(N'2020-10-01T10:15:27.000' AS DateTime), 1, N'1', 1, 0, N'FAHAD', CAST(N'2020-10-01T10:15:27.000' AS DateTime), N'Administrator', CAST(N'2020-10-01T11:02:32.487' AS DateTime), N'0110', N'solomon@omaemirates.com', N'NoRole')
SET IDENTITY_INSERT [dbo].[NP_SEC_USER] OFF
SET IDENTITY_INSERT [dbo].[NP_SEC_USERGROUP_CONFIG] ON 

INSERT [dbo].[NP_SEC_USERGROUP_CONFIG] ([SrNo], [ID], [LockedOption], [FailedAttemptToLocked], [AutoUnlockLockedUser], [MinutsToAutoUnlockLockedUser], [MatchPasswordHistory], [PasswordHistoryCount], [PasswordComplexity], [PasswordNeverExpire], [PasswordAgeInDays], [DaysToRemindChangePassword], [EnableSessionOut], [SessionOutMinuts], [DisableInactiveUser], [DaysToCheckInactiveUser], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (14, N'FAHAD', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Administrator', CAST(N'2020-09-25T16:55:29.000' AS DateTime), N'Administrator', CAST(N'2020-09-29T12:05:22.727' AS DateTime))
INSERT [dbo].[NP_SEC_USERGROUP_CONFIG] ([SrNo], [ID], [LockedOption], [FailedAttemptToLocked], [AutoUnlockLockedUser], [MinutsToAutoUnlockLockedUser], [MatchPasswordHistory], [PasswordHistoryCount], [PasswordComplexity], [PasswordNeverExpire], [PasswordAgeInDays], [DaysToRemindChangePassword], [EnableSessionOut], [SessionOutMinuts], [DisableInactiveUser], [DaysToCheckInactiveUser], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (16, N'APPLICATION ADMINISTRATOR2', 1, 5, 1, 2, 1, 5, 0, 0, 15, 5, 0, 0, 0, 3, N'Administrator', CAST(N'2020-09-26T12:39:00.000' AS DateTime), N'Administrator', CAST(N'2020-09-29T11:53:52.193' AS DateTime))
INSERT [dbo].[NP_SEC_USERGROUP_CONFIG] ([SrNo], [ID], [LockedOption], [FailedAttemptToLocked], [AutoUnlockLockedUser], [MinutsToAutoUnlockLockedUser], [MatchPasswordHistory], [PasswordHistoryCount], [PasswordComplexity], [PasswordNeverExpire], [PasswordAgeInDays], [DaysToRemindChangePassword], [EnableSessionOut], [SessionOutMinuts], [DisableInactiveUser], [DaysToCheckInactiveUser], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (17, N'TESTGROUPOPERATOR', 1, 5, 1, 2, 1, 5, 1, 1, 15, 5, 1, 0, 1, 3, N'Administrator', CAST(N'2020-09-27T17:21:07.000' AS DateTime), N'Administrator', CAST(N'2020-09-29T17:14:04.660' AS DateTime))
INSERT [dbo].[NP_SEC_USERGROUP_CONFIG] ([SrNo], [ID], [LockedOption], [FailedAttemptToLocked], [AutoUnlockLockedUser], [MinutsToAutoUnlockLockedUser], [MatchPasswordHistory], [PasswordHistoryCount], [PasswordComplexity], [PasswordNeverExpire], [PasswordAgeInDays], [DaysToRemindChangePassword], [EnableSessionOut], [SessionOutMinuts], [DisableInactiveUser], [DaysToCheckInactiveUser], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (18, N'APPLICATION ADMINISTRATOR', 1, 5, 1, 2, 0, 0, 1, 0, 15, 5, 0, 0, 0, 3, N'Administrator', CAST(N'2020-09-27T17:21:07.000' AS DateTime), N'Administrator', CAST(N'2020-10-01T10:55:34.463' AS DateTime))
INSERT [dbo].[NP_SEC_USERGROUP_CONFIG] ([SrNo], [ID], [LockedOption], [FailedAttemptToLocked], [AutoUnlockLockedUser], [MinutsToAutoUnlockLockedUser], [MatchPasswordHistory], [PasswordHistoryCount], [PasswordComplexity], [PasswordNeverExpire], [PasswordAgeInDays], [DaysToRemindChangePassword], [EnableSessionOut], [SessionOutMinuts], [DisableInactiveUser], [DaysToCheckInactiveUser], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (19, N'SECURITY OFFICER', 1, 5, 1, 5, 1, 2, 1, 1, 30, 30, 1, 10, 1, 60, N'Administrator', CAST(N'2020-09-27T17:21:07.000' AS DateTime), N'Administrator', CAST(N'2020-09-27T17:21:42.950' AS DateTime))
INSERT [dbo].[NP_SEC_USERGROUP_CONFIG] ([SrNo], [ID], [LockedOption], [FailedAttemptToLocked], [AutoUnlockLockedUser], [MinutsToAutoUnlockLockedUser], [MatchPasswordHistory], [PasswordHistoryCount], [PasswordComplexity], [PasswordNeverExpire], [PasswordAgeInDays], [DaysToRemindChangePassword], [EnableSessionOut], [SessionOutMinuts], [DisableInactiveUser], [DaysToCheckInactiveUser], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (20, N'ROLE MANAGER', 1, 5, 1, 5, 1, 2, 1, 1, 30, 30, 1, 10, 1, 60, N'Administrator', CAST(N'2020-09-27T17:21:07.000' AS DateTime), N'Administrator', CAST(N'2020-09-27T17:21:42.950' AS DateTime))
INSERT [dbo].[NP_SEC_USERGROUP_CONFIG] ([SrNo], [ID], [LockedOption], [FailedAttemptToLocked], [AutoUnlockLockedUser], [MinutsToAutoUnlockLockedUser], [MatchPasswordHistory], [PasswordHistoryCount], [PasswordComplexity], [PasswordNeverExpire], [PasswordAgeInDays], [DaysToRemindChangePassword], [EnableSessionOut], [SessionOutMinuts], [DisableInactiveUser], [DaysToCheckInactiveUser], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (22, N'OPERATOR2', 1, 5, 1, 5, 1, 2, 1, 1, 30, 30, 1, 10, 1, 60, N'Administrator', CAST(N'2020-09-27T17:21:07.000' AS DateTime), N'Administrator', CAST(N'2020-09-27T17:21:42.950' AS DateTime))
INSERT [dbo].[NP_SEC_USERGROUP_CONFIG] ([SrNo], [ID], [LockedOption], [FailedAttemptToLocked], [AutoUnlockLockedUser], [MinutsToAutoUnlockLockedUser], [MatchPasswordHistory], [PasswordHistoryCount], [PasswordComplexity], [PasswordNeverExpire], [PasswordAgeInDays], [DaysToRemindChangePassword], [EnableSessionOut], [SessionOutMinuts], [DisableInactiveUser], [DaysToCheckInactiveUser], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (26, N'ASHISH', 1, 5, 1, 2, 1, 5, 0, 0, 15, 5, 0, 0, 0, 3, N'Administrator', CAST(N'2020-09-27T17:21:07.000' AS DateTime), N'Administrator', CAST(N'2020-09-30T13:55:07.433' AS DateTime))
INSERT [dbo].[NP_SEC_USERGROUP_CONFIG] ([SrNo], [ID], [LockedOption], [FailedAttemptToLocked], [AutoUnlockLockedUser], [MinutsToAutoUnlockLockedUser], [MatchPasswordHistory], [PasswordHistoryCount], [PasswordComplexity], [PasswordNeverExpire], [PasswordAgeInDays], [DaysToRemindChangePassword], [EnableSessionOut], [SessionOutMinuts], [DisableInactiveUser], [DaysToCheckInactiveUser], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (30, N'TEST', 1, 2, 1, 2, 1, 3, 1, 1, 10, 4, 1, 2, 1, 12, N'Administrator', CAST(N'2020-10-01T10:13:19.330' AS DateTime), N'Administrator', CAST(N'2020-10-01T10:13:19.330' AS DateTime))
INSERT [dbo].[NP_SEC_USERGROUP_CONFIG] ([SrNo], [ID], [LockedOption], [FailedAttemptToLocked], [AutoUnlockLockedUser], [MinutsToAutoUnlockLockedUser], [MatchPasswordHistory], [PasswordHistoryCount], [PasswordComplexity], [PasswordNeverExpire], [PasswordAgeInDays], [DaysToRemindChangePassword], [EnableSessionOut], [SessionOutMinuts], [DisableInactiveUser], [DaysToCheckInactiveUser], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (31, N'ANKIT1', 1, 5, 1, 2, 0, 0, 1, 0, 5, 5, 0, 0, 0, 3, N'Administrator', CAST(N'2020-09-27T17:21:07.000' AS DateTime), N'Administrator', CAST(N'2020-10-01T11:02:32.487' AS DateTime))
SET IDENTITY_INSERT [dbo].[NP_SEC_USERGROUP_CONFIG] OFF
SET IDENTITY_INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ON 

INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (1, N'PROD 414082 CREDIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_414082_CREDIT_DUAL_INTERFACE.XML', 1, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (2, N'PROD 414082 CREDIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_414082_CREDIT_DUAL_INTERFACE.XML', 1, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (3, N'PROD 414082 CREDIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_MP2323_414082_CONTACT_VISA.XML', 1, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (4, N'PROD 414082 CREDIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 414082 CREDIT GFX5', 1, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (5, N'PROD 414082 CREDIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_414082_CREDIT_GFX2(Without IPK).xml', 1, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (6, N'PROD 555577 CREDIT G298', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_555577_MCHIP_CREDIT.XML', 2, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (7, N'PROD 555577 CREDIT UBJ31G28', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ31_G28_555577_MCHIP_CREDIT.XML', 2, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (8, N'PROD 555577 CREDIT MP2323', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD MP2323V2 555577 MCHIP CREDIT.XML', 2, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (9, N'PROD 555577 CREDIT GFX5', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GFX5_555577_MCHIP_CREDIT.XML', 2, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (10, N'PROD 555577 CREDIT GFX2', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_555577_CREDIT_GFX2.XML', 2, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (11, N'PROD 410805 CREDIT G298', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_410805_CREDIT_DUAL_INTERFACE.XML', 3, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (12, N'PROD 410805 CREDIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_410805_CREDIT_DUAL_INTERFACE.XML', 3, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (13, N'PROD 410805 CREDIT MP2323', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 410805 CREDIT MP2323', 3, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (14, N'PROD 410805 CREDIT GFX5', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_414393_CREDIT_GFX5.xml', 3, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (15, N'PROD 410805 CREDIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_410805_CREDIT_GFX2.xml', 3, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (16, N'PROD 414393 DEBIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_414393_DEBIT_DUAL_INTERFACE.XML', 4, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (17, N'PROD 414393 DEBIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_414393_CREDIT_DUAL_INTERFACE.XML', 4, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (18, N'PROD 414393 DEBIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_414393_DEBIT_MP2323.xml', 4, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (19, N'PROD_414393_DEBIT_GFX5.xml', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_414393_DEBIT_GFX5.xml', 4, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (20, N'PROD 414393 DEBIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_414393_DEBIT_GFX2(Without IPK).XML', 4, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (21, N'PROD 415456 DEBIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_415456_DEBIT_DUAL_INTERFACE.XML', 5, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (22, N'PROD 415456 DEBIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_415456_DEBIT_DUAL_INTERFACE.XML', 5, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (23, N'PROD 415456 DEBIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 415456 DEBIT MP2323', 5, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (24, N'PROD 415456 DEBIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_415456_DEBIT_GFX5.xml', 5, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (25, N'PROD 415456 DEBIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_415456_DEBIT_GFX2.xml', 5, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (26, N'PROD 422742 CREDIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_422742_CREDIT_DUAL_INTERFACE.XML', 6, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (27, N'PROD 422742 CREDIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_422742_CREDIT_DUAL_INTERFACE.XML', 6, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (28, N'PROD 422742 CREDIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_MP2323_422742_CONTACT_VISA.XML', 6, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (29, N'PROD 422742 CREDIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 422742 CREDIT GFX5', 6, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (30, N'PROD 422742 CREDIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_422742_DEBIT_GFX2.xml', 6, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (31, N'PROD 430742 CREDIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_430742_CREDIT_DUAL_INTERFACE.XML', 7, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (32, N'PROD 430742 CREDIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_430742_CREDIT_DUAL_INTERFACE.XML', 7, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (33, N'PROD 430742 CREDIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_MP2323_430742_CREDITCONTACT_VISA.XML', 7, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (34, N'PROD 430742 CREDIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 430742 CREDIT GFX5', 7, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (35, N'PROD 430742 CREDIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 430742 CREDIT GFX2', 7, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (36, N'PROD 430747 CREDIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_430747_CREDIT_DUAL_INTERFACE.XML', 8, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (37, N'PROD 430747 CREDIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_430747_CREDIT_DUAL_INTERFACE.XML', 8, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (38, N'PROD 430747 CREDIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 430747 CREDIT MP2323', 8, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (39, N'PROD 430747 CREDIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 430747 CREDIT GFX5', 8, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (40, N'PROD 430747 CREDIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 430747 CREDIT GFX2', 8, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (41, N'PROD 456525 CREDIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_456525_CREDIT_DUAL_INTERFACE.XML', 9, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (42, N'PROD 456525 CREDIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_456525_CREDIT_DUAL_INTERFACE.XML', 9, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (43, N'PROD 456525 CREDIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 456525 CREDIT MP2323', 9, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (44, N'PROD 456525 CREDIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 456525 CREDIT GFX5', 9, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (45, N'PROD 456525 CREDIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_456525_CREDIT_GFX2.xml', 9, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (46, N'PROD 456526 CREDIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_456526_CREDIT_DUAL_INTERFACE.XML', 10, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (47, N'PROD 456526 CREDIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_456526_CREDIT_DUAL_INTERFACE.XML', 10, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (48, N'PROD 456526 CREDIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 456526 CREDIT MP2323', 10, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (49, N'PROD 456526 CREDIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 456526 CREDIT GFX5', 10, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (50, N'PROD 456526 CREDIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_456526_CREDIT_GFX2.xml', 10, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (51, N'PROD 464159 CREDIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_464159_CREDIT_DUAL_INTERFACE.XML', 11, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (52, N'PROD 464159 CREDIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_464159_CREDIT_DUAL_INTERFACE.XML', 11, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (53, N'PROD 464159 CREDIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_MP2323_464159_CONTACT_VISA.XML', 11, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (54, N'PROD 464159 CREDIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_464159_CREDIT_GFX5.xml', 11, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (55, N'PROD 464159 CREDIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 464159 CREDIT GFX2', 11, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (56, N'PROD 476851 CREDIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_476851_CREDIT_DUAL_INTERFACE.XML', 12, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (57, N'PROD 476851 CREDIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_476851_CREDIT_DUAL_INTERFACE.XML', 12, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (58, N'PROD 476851 CREDIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 476851 CREDIT MP2323', 12, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (59, N'PROD 476851 CREDIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 476851 CREDIT GFX5', 12, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (60, N'PROD 476851 CREDIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 476851 CREDIT GFX2', 12, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (61, N'PROD 476852 CREDIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_476852_CREDIT_DUAL_INTERFACE.XML', 13, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (62, N'PROD 476852 CREDIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_476852_CREDIT_DUAL_INTERFACE.XML', 13, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (63, N'PROD 476852 CREDIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 476852 CREDIT MP2323', 13, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (64, N'PROD 476852 CREDIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_476852_CREDIT_GFX5.xml', 13, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (65, N'PROD 476852 CREDIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_476852_CREDIT_GFX2.xml', 13, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (66, N'PROD 476853 CREDIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_476853_CREDIT_DUAL_INTERFACE.XML', 14, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (67, N'PROD 476853 CREDIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_476853_CREDIT_DUAL_INTERFACE.XML', 14, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (68, N'PROD 476853 CREDIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 476853 CREDIT MP2323', 14, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (69, N'PROD 476853 CREDIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_476853_CREDIT_GFX5.xml', 14, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (70, N'PROD 476853 CREDIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_476853_CREDIT_GFX2.xml', 14, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (71, N'PROD 476854 CREDIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_476854_CREDIT_DUAL_INTERFACE.XML', 15, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (72, N'PROD 476854 CREDIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_476854_CREDIT_DUAL_INTERFACE.XML', 15, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (73, N'PROD 476854 CREDIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 476854 CREDIT MP2323', 15, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (74, N'PROD 476854 CREDIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_476854_CREDIT_GFX5.xml', 15, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (75, N'PROD 476854 CREDIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_476854_CREDIT_GFX2.xml', 15, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (76, N'PROD 489328 DEBIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_489328_DEBIT_DUAL_INTERFACE.XML', 16, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (77, N'PROD 489328 DEBIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_489328_DEBIT_DUAL_INTERFACE.XML', 16, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (78, N'PROD 489328 DEBIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 489328 DEBIT MP2323', 16, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (79, N'PROD 489328 DEBIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_489328_DEBIT_GFX5.xml', 16, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (80, N'PROD 489328 DEBIT GFX2', 0, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_489328_DEBIT_GFX2.XML', 16, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (81, N'PROD 489329 CREDIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_489329_CREDIT_DUAL_INTERFACE.XML', 17, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (82, N'PROD 489329 CREDIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_489329_CREDIT_DUAL_INTERFACE.XML', 17, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (83, N'PROD 489329 CREDIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_MP2323_489329_CONTACT_VISA.XML', 17, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (84, N'PROD 489329 CREDIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_489329_CREDIT_GFX5.XML', 17, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (85, N'PROD 489329 CREDIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_489329_CREDIT_GFX2.xml', 17, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (86, N'PROD 489330 CREDIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_489330_CREDIT_DUAL_INTERFACE.XML', 18, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (87, N'PROD 489330 CREDIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_489330_CREDIT_DUAL_INTERFACE.XML', 18, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (88, N'PROD 489330 CREDIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 489330 CREDIT MP2323', 18, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (89, N'PROD 489330 CREDIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_489330_CREDIT_GFX5.xml', 18, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (90, N'PROD 489330 CREDIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_489330_CREDIT_GFX2.xml', 18, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (91, N'PROD 498622 CREDIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_498622_CREDIT_DUAL_INTERFACE.XML', 19, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (92, N'PROD 498622 CREDIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_498622_CREDIT_DUAL_INTERFACE.XML', 19, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (93, N'PROD 498622 CREDIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 498622 CREDIT MP2323', 19, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (94, N'PROD 498622 CREDIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_498622_CREDIT_GFX5.XML', 19, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (95, N'PROD 498622 CREDIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_498622_CREDIT_GFX2.xml', 19, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (96, N'PROD 410899 DEBIT G298', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_410899_DEBIT_DUAL_INTERFACE.XML', 20, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (97, N'PROD 410899 DEBIT UBJ31G28', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ_410899_DEBIT_DUAL_INTERFACE.XML', 20, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (98, N'PROD 410899 DEBIT MP2323', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 410899 DEBIT MP2323', 20, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (99, N'PROD 410899 DEBIT GFX5', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 410899 DEBIT GFX5', 20, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
GO
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (100, N'PROD 410899 DEBIT GFX2', 1, N'VISA', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_410899_DEBIT_GFX2.xml', 20, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (101, N'PROD 512415 CREDIT G298', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_512415_MCHIP_CREDIT.XML', 21, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (102, N'PROD 512415 CREDIT UBJ31G28', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ31_G28_512415_MCHIP_CREDIT.XML', 21, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (103, N'PROD 512415 CREDIT MP2323', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 512415 CREDIT MP2323', 21, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (104, N'PROD 512415 CREDIT GFX5', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 512415 CREDIT GFX5', 21, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (105, N'PROD 512415 CREDIT GFX2', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_512415_CREDIT_GFX2.XML', 21, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (106, N'PROD 516727 CREDIT G298', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_516727_MCHIP_CREDIT.XML', 22, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (107, N'PROD 516727 CREDIT UBJ31G28', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ31_G28_516727_MCHIP_CREDIT.XML', 22, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (108, N'PROD 516727 CREDIT MP2323', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 516727 CREDIT MP2323', 22, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (109, N'PROD 516727 CREDIT GFX5', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 516727 CREDIT GFX5', 22, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (110, N'PROD 516727 CREDIT GFX2', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 516727 CREDIT GFX2', 22, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (111, N'PROD 525792 CREDIT G298', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_525792_MCHIP_CREDIT.XML', 23, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (112, N'PROD 525792 CREDIT UBJ31G28', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ31_G28_525792_MCHIP_CREDIT.XML', 23, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (113, N'PROD 525792 CREDIT MP2323', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 525792 CREDIT MP2323', 23, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (114, N'PROD 525792 CREDIT GFX5', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 525792 CREDIT GFX5', 23, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (115, N'PROD 525792 CREDIT GFX2', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_525792_CREDIT_GFX2.XML', 23, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (116, N'PROD 530065 CREDIT G298', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_530065_MCHIP_CREDIT.XML', 24, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (117, N'PROD 530065 CREDIT UBJ31G28', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ31_G28_530065_MCHIP_CREDIT.XML', 24, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (118, N'PROD 530065 CREDIT MP2323', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 530065 CREDIT MP2323', 24, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (119, N'PROD 530065 CREDIT GFX5', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 530065 CREDIT GFX5', 24, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (120, N'PROD 530065 CREDIT GFX2', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_530065_CREDIT_GFX2.XML', 24, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (121, N'PROD 533103 DEBIT G298', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_533103_MCHIP_DEBIT.XML', 25, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (122, N'PROD 533103 DEBIT UBJ31G28', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ31_G28_533103_MCHIP_DEBIT.xml', 25, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (123, N'PROD 533103 DEBIT MP2323', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 533103 DEBIT MP2323', 25, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (124, N'PROD 533103 DEBIT GFX5', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 533103 DEBIT GFX5', 25, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (125, N'PROD 533103 DEBIT GFX2', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_533103_DEBIT_GFX2.XML', 25, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (126, N'PROD 555894 CREDIT G298', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_555894_MCHIP_CREDIT.XML', 26, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (127, N'PROD 555894 CREDIT UBJ31G28', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ31_G28_555894_MCHIP_CREDIT.XML', 26, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (128, N'PROD 555894 CREDIT MP2323', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 555894 CREDIT MP2323', 26, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (129, N'PROD 555894 CREDIT GFX5', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 555894 CREDIT GFX5', 26, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (130, N'PROD 555894 CREDIT GFX2', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_555894_CREDIT_GFX2.XML', 26, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (131, N'PROD 557628 DEBIT G298', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_557628_MCHIP_DEBIT.XML', 27, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (132, N'PROD 557628 DEBIT UBJ31G28', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ31_557628_MCHIP_DEBIT.xml', 27, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (133, N'PROD 557628 DEBIT MP2323', 0, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_557628_CREDIT_MP2323.XML', 27, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (134, N'PROD 557628 DEBIT GFX5', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_557628_DEBIT_GFX2.XML', 27, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (135, N'PROD 557628 DEBIT GFX2', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_557628_DEBIT_GFX2.XML', 27, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (136, N'PROD 557649 DEBIT G298', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_557649_MCHIP_DEBIT.XML', 28, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (137, N'PROD 557649 DEBIT UBJ31G28', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ31_557649_MCHIP_DEBIT.xml', 28, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (138, N'PROD 557649 DEBIT MP2323', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 557649 DEBIT MP2323', 28, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (139, N'PROD 557649 DEBIT GFX5', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 557649 DEBIT GFX5', 28, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (140, N'PROD 557649 DEBIT GFX2', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_557649_DEBIT_GFX2.XML', 28, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (141, N'PROD 557701 CREDIT G298', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_GEMALTO_557701_MCHIP_CREDIT.XML', 29, 15, 5, N'3B6E000080318066B0840C016E0183009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (142, N'PROD 557701 CREDIT UBJ31G28', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD_UBJ31_G28_557701_MCHIP_CREDIT.XML', 29, 15, 5, N'3B6800000073C84000009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (143, N'PROD 557701 CREDIT MP2323', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 557701 CREDIT MP2323', 29, 15, 5, N'3B67000004124501600111', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (144, N'PROD 557701 CREDIT GFX5', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 557701 CREDIT GFX5', 29, 15, 5, N'3B6E000080318066B1A50102321983009000', 0, NULL, NULL)
INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID], [DESCRIPTION], [VALIDFLAG], [DOMAINCODE], [APPLTYPE], [PROCFILEINPUT], [PROCFILEOUTPUT], [EMBOSSENCFLAG], [EMBOSSENCHSM], [EMBOSSENCKEY], [RECORDLENGTH], [FILEEXTENSION], [MAGONLYFLAG], [EMBOSSFILE], [EMBFILEFORMAT], [PANORFULLENCRYP], [Remark], [PROFILE_NAME], [BIN_ID], [TRACK1_ICVV_OFFSET], [TRACK2_ICVV_OFFSET], [Profile_ATR], [REFFILEFLAG], [REFFILE], [CIOUTPUTDATA]) VALUES (145, N'PROD 557701 CREDIT GFX2', 1, N'MCHIP', 1, NULL, NULL, 0, N'CRYPTOCARD02', N'PCI KEY', 0, N'', 0, N'QIB-V1.erf', 0, N'PCI KEY', N'', N'PROD 557701 CREDIT GFX2', 29, 15, 5, N'3B6D000080318065B0894001F283009000', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[NP_TLS_APPLICATIONPROFILES] OFF
INSERT [dbo].[NP_TLS_AUDITLOGWEB] ([ACTIONDATETIME], [SOURCEIP], [USER_ID], [PAGE_NAME], [INFORMATION_TYPE], [DESCRIPTION], [FIELD03], [FIELD04]) VALUES (N'9/28/2020', N'10.0.33.228', N'Ankit', N'Login', N'Information', N'Login Successful', NULL, NULL)
INSERT [dbo].[NP_TLS_AUDITLOGWEB] ([ACTIONDATETIME], [SOURCEIP], [USER_ID], [PAGE_NAME], [INFORMATION_TYPE], [DESCRIPTION], [FIELD03], [FIELD04]) VALUES (N'9/28/2020', N'10.0.33.228', N'Ankit', N'Login', N'Information', N'Login Successful', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NP_TLS_BRANCHES] ON 

INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (4, N'0110', N'IB CORPORATE BRANCH', N'', 1, N'Qatar', N'IB CORPORATE BRANCH', N'IB CORPORATE BRANCH', N'Doha', 0, N'IB CORPORATE BRANCH', N'172.20.130.11', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (5, N'0210', N'Al Gharrafa', NULL, 1, N'Qatar', N'Al Gharrafa', N'Al Gharrafa', N'Doha', 0, N'Al Gharrafa', N'10.157.9.27', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (6, N'0220', N'Al Gharrafa - Female', NULL, 1, N'Qatar', N'Al Gharrafa - Female', N'Al Gharrafa - Female', N'Doha', 0, N'Al Gharrafa - Female', N'10.157.9.14
', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (8, N'0320', N'Salwa Road - Female', NULL, 1, N'Qatar', N'Salwa Road - Female', N'Salwa Road - Female', N'Doha', 0, N'Salwa Road - Female', N'10.102.109.17', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (9, N'0410', N'Al Khor', NULL, 1, N'Qatar', N'Al Khor', N'Al Khor', N'Doha', 0, N'Al Khor', N'10.103.109.45', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (12, N'0520', N'Airport - Female', NULL, 1, N'Qatar', N'Airport - Female', N'Airport - Female', N'Doha', 0, N'Airport - Female', N'10.107.9.13', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (13, N'0610', N'Al Sadd', NULL, 1, N'Qatar', N'Al Sadd', N'Al Sadd', N'Doha', 0, N'Al Sadd', N'10.164.9.31', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (14, N'0620', N'Al Sadd - Female', NULL, 1, N'Qatar', N'Al Sadd - Female', N'Al Sadd - Female', N'Doha', 0, N'Al Sadd - Female', N'10.164.9.33', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (15, N'0710', N'Al Rayyan', NULL, 1, N'Qatar', N'Al Rayyan', N'Al Rayyan', N'Doha', 0, N'Al Rayyan', N'10.141.109.24', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (16, N'0720', N'Al Rayyan - Female', NULL, 1, N'Qatar', N'Al Rayyan - Female', N'Al Rayyan - Female', N'Doha', 0, N'Al Rayyan - Female', N'10.141.109.17', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (17, N'0730', N'Al Rayyan - Al Jazeera', NULL, 1, N'Qatar', N'Al Rayyan - Al Jazeera', N'Al Rayyan - Al Jazeera', N'Doha', 0, N'Al Rayyan - Al Jazeera', N'172.20.130.11', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (18, N'1010', N'Al Wakra', NULL, 1, N'Qatar', N'Al Wakra', N'Al Wakra', N'Doha', 0, N'Al Wakra', N'10.107.9.17', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (19, N'1020', N'Al Wakra - Female', NULL, 1, N'Qatar', N'Al Wakra - Female', N'Al Wakra - Female', N'Doha', 0, N'Al Wakra - Female', N'10.107.9.16', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (20, N'1120', N'C-Ring - Female', NULL, 1, N'Qatar', N'C-Ring - Female', N'C-Ring - Female', N'Doha', 0, N'C-Ring - Female', N'172.20.130.11', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (21, N'1210', N'Modern Doha', NULL, 1, N'Qatar', N'Modern Doha', N'Modern Doha', N'Doha', 0, N'Modern Doha', N'172.20.130.11', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (22, N'1220', N'Modern Doha - Female', NULL, 1, N'Qatar', N'Modern Doha - Female', N'Modern Doha - Female', N'Doha', 0, N'Modern Doha - Female', N'172.20.130.11', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (23, N'1310', N'Umsaeed', NULL, 1, N'Qatar', N'Umsaeed', N'Umsaeed', N'Doha', 0, N'Umsaeed', N'10.156.9.17
', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (24, N'1410', N'Al Mansoura', NULL, 1, N'Qatar', N'Al Mansoura', N'Al Mansoura', N'Doha', 0, N'Al Mansoura', N'172.20.130.11', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (25, N'1510', N'Al Fanar', NULL, 1, N'Qatar', N'Al Fanar', N'Al Fanar', N'Doha', 0, N'Al Fanar', N'10.126.109.43', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (26, N'1520', N'Al Fanar - Female', NULL, 1, N'Qatar', N'Al Fanar - Female', N'Al Fanar - Female', N'Doha', 0, N'Al Fanar - Female', N'172.20.130.11', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (27, N'1530', N'Al Fanar - Al Jazeera', NULL, 1, N'Qatar', N'Al Fanar - Al Jazeera', N'Al Fanar - Al Jazeera', N'Doha', 0, N'Al Fanar - Al Jazeera', N'172.20.130.11', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (28, N'1610', N'Ras Laffan', NULL, 1, N'Qatar', N'Ras Laffan', N'Ras Laffan', N'Doha', 0, N'Ras Laffan', N'172.20.130.11', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (29, N'1710', N'AL KHRITIYAT', NULL, 1, N'Qatar', N'AL KHRITIYAT', N'AL KHRITIYAT', N'AL KHRITIYAT', 0, N'AL KHRITIYAT', N'172.20.130.11', 11000, NULL)
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (30, N'1810', N'Maither', NULL, 1, N'Qatar', N'Maither', N'Maither', N'Doha', 0, N'Maither', N'10.149.9.20
', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (31, N'1820', N'Maither - Female', NULL, 1, N'Qatar', N'Maither - Female', N'Maither - Female', N'Doha', 0, N'Maither - Female', N'172.20.130.11', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (32, N'1910', N'Dokhan', NULL, 1, N'Qatar', N'Dokhan', N'Dokhan', N'Doha', 0, N'Dokhan', N'10.124.9.12
', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (33, N'2010', N'Industrial Area', NULL, 1, N'Qatar', N'Industrial Area', N'Industrial Area', N'Doha', 0, N'Industrial Area', N'10.165.9.14
', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (34, N'2310', N'Barwa Village', NULL, 1, N'Qatar', N'Barwa Village', N'Barwa Village', N'Doha', 0, N'Barwa Village', N'172.20.130.11', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (35, N'2410', N'City Center', NULL, 1, N'Qatar', N'City Center', N'City Center', N'Doha', 0, N'City Center', N'10.145.9.47
', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (36, N'2510', N'Dar Al Salam', NULL, 1, N'Qatar', N'Dar Al Salam', N'Dar Al Salam', N'Doha', 0, N'Dar Al Salam', N'10.150.9.32', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (37, N'2610', N'Al-Shahanya', NULL, 1, N'Qatar', N'Al-Shahanya', N'Al-Shahanya', N'Doha', 0, N'Al-Shahanya', N'10.151.9.16
', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (38, N'2710', N'Um Salal', NULL, 1, N'Qatar', N'Um Salal', N'Um Salal', N'Doha', 0, N'Um Salal', N'10.152.9.41
', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (39, N'2720', N'Um Salal - Female', NULL, 1, N'Qatar', N'Um Salal - Female', N'Um Salal - Female', N'Doha', 0, N'Um Salal - Female', N'172.20.130.11', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (40, N'3010', N'Al-Awqaf', NULL, 1, N'Qatar', N'Al-Awqaf', N'Al-Awqaf', N'Doha', 0, N'Al-Awqaf', N'10.155.9.15
', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (41, N'3510', N'Qatar Mall', NULL, 1, N'Qatar', N'Doha', N'Qatar', N'Doha', 0, N'Qatar Mall', N'10.158.9.14
', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (42, N'3610', N'Doha Festival City', NULL, 1, N'Qatar', N'Doha Festival City', N'Doha Festival City', N'Doha', 0, N'Doha Festival City', N'10.161.9.16
', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (43, N'3810', N'Towar Mall', NULL, 1, N'Qatar', N'Towar Mall', N'Towar Mall', N'Doha', 0, N'Towar Mall', N'10.163.9.13
', 11000, CAST(N'2020-01-15T11:51:59.340' AS DateTime))
INSERT [dbo].[NP_TLS_BRANCHES] ([BRANCHID], [BRANCHCODE], [DESCRIPTION], [BRANCHOUTPUTPATH], [ENABLED], [COUNTRY], [ADDRESS1], [ADDRESS2], [CITY], [LICID], [BRANCH_NAME], [IP_ADDRESS], [PORT], [BRACTIVATIONDATE]) VALUES (44, N'4010', N'Ministry of health', NULL, 1, N'Qatar', N'Doha', N'Doha', N'Doha', NULL, N'MOH', N'10.146.9.12', 0, NULL)
SET IDENTITY_INSERT [dbo].[NP_TLS_BRANCHES] OFF
INSERT [dbo].[NP_TLS_CARDPLASTICPRODUCTJOIN] ([CARDPROFILEID], [PRODUCTCODE], [PLASTICCODE]) VALUES (N'11', N'P0051', N'000')
INSERT [dbo].[NP_TLS_CARDPLASTICPRODUCTJOIN] ([CARDPROFILEID], [PRODUCTCODE], [PLASTICCODE]) VALUES (N'11', N'P0051', N'000')
SET IDENTITY_INSERT [dbo].[NP_TLS_CARDPROFILES] ON 

INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (1, N'PROD 414082 CREDIT', N'414082', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (2, N'PROD 555577 CREDIT', N'555577', N'MCHIP', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (3, N'PROD 410805 CREDIT', N'410805', N'MCHIP', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (4, N'PROD 414393 DEBIT', N'414393', N'MCHIP', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (5, N'PROD 415456 DEBIT', N'415456', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (6, N'PROD 422742 CREDIT', N'422742', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (7, N'PROD 430742 CREDIT', N'430742', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (8, N'PROD 430747 CREDIT', N'430747', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (9, N'PROD 456525 CREDIT', N'456525', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (10, N'PROD 456526 CREDIT', N'456526', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (11, N'PROD 464159 CREDIT', N'464159', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (12, N'PROD 476851 CREDIT', N'476851', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (13, N'PROD 476852 CREDIT', N'476852', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (14, N'PROD 476853 CREDIT', N'476853', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (15, N'PROD 476854 CREDIT', N'476854', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (16, N'PROD 489328 DEBIT', N'489328', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (17, N'PROD 489329 CREDIT', N'489329', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (18, N'PROD 489330 CREDIT', N'489330', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (19, N'PROD 498622 CREDIT', N'498622', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (20, N'PROD 410899 DEBIT', N'410899', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (21, N'PROD 512415 CREDIT', N'512415', N'MCHIP', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (22, N'PROD 516727 CREDIT', N'516727', N'MCHIP', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (23, N'PROD 525792 CREDIT', N'525792', N'MCHIP', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (24, N'PROD 530065 CREDIT', N'530065', N'MCHIP', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (25, N'PROD 533103 DEBIT', N'533103', N'MCHIP', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (26, N'PROD 555894 CREDIT', N'555894', N'MCHIP', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (27, N'PROD 557628 DEBIT', N'557628', N'MCHIP', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (28, N'PROD 557649 DEBIT', N'557649', N'MCHIP', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (29, N'PROD 557701 CREDIT', N'557701', N'MCHIP', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'NA', 0)
INSERT [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID], [DESCRIPTION], [BIN], [DOMAINCODE], [VALIDFLAG], [PHOTOFLAG], [SIGNFLAG], [DAPFLAG], [DAIFLAG], [OUTPUTFILENAME], [INPUTFILENAME], [STATFILENAME], [JOBFILENAME], [AAFLAG], [AUTOIMPORTFLAG], [PRODUCTCODE], [PLASTICCODE], [TOTALCARD], [REMARK], [MAGONLYFLAG]) VALUES (30, N'TEST 700559 MAGONLY', N'700559', N'VISA', 1, 0, 0, 0, 0, N'NA', N'NA', NULL, NULL, 1, 1, NULL, NULL, NULL, N'TEST 700559 MAGONLY', 1)
SET IDENTITY_INSERT [dbo].[NP_TLS_CARDPROFILES] OFF
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (1, N'003', 0, N'003')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (1, N'016', 0, N'016')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (1, N'017', 0, N'019')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (1, N'262', 0, N'262')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (27, N'044', 0, N'044')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (3, N'013', 0, N'013')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (4, N'007', 0, N'007')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (6, N'088', 0, N'088')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (8, N'046', 0, N'046')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (10, N'002', 0, N'002')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (10, N'005', 0, N'005')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (10, N'011', 0, N'011')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (10, N'015', 0, N'015')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (10, N'261', 0, N'261')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (12, N'282', 0, N'282')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (18, N'101', 0, N'101')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (23, N'402', 0, N'402')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (23, N'000', 0, N'000')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (30, N'048', 0, N'048')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (4, N'020', 0, N'020')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (5, N'025', 0, N'025')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (7, N'045', 0, N'045')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (9, N'001', 0, N'001')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (9, N'006', 0, N'006')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (9, N'008', 0, N'008')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (9, N'010', 0, N'010')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (9, N'014', 0, N'014')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (9, N'018', 0, N'018')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (9, N'121', 0, N'121')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (11, N'301', 0, N'301')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (13, N'284', 0, N'284')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (14, N'283', 0, N'283')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (15, N'286', 0, N'286')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (15, N'287', 0, N'287')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (16, N'027', 0, N'027')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (17, N'102', 0, N'102')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (19, N'285', 0, N'285')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (21, N'400', 0, N'400')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (21, N'404', 0, N'404')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (22, N'401', 0, N'401')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (24, N'406', 0, N'406')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (25, N'043', 0, N'043')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (2, N'405', 0, N'405')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (26, N'407', 0, N'407')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (28, N'221', 0, N'221')
INSERT [dbo].[NP_TLS_JOINCARDPLASTICPRODUCTKEYS] ([APPPROFILEID], [KEYID], [PURPOSE], [PRODUCTCODE]) VALUES (29, N'403', 0, N'403')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'000', N'All Products')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'0000', N'Default-Plastic')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'0001', N'Test')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'001', N'VISA CLASSIC')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'002', N'VISA GOLD')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'003', N'VISA PLATINUM')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'005', N'VISA GOLD STAFF')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'006', N'VISA CLASSIC STAFF')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'007', N'VISA ELECTRON')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'008', N'AL YSR')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'010', N'VSDC CLASSIC')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'011', N'VSDC GOLD')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'013', N'VISA INFINITE')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'014', N'JANA CLASSIC')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'015', N'JANA GOLD')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'016', N'JANA PLATINUM')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'017', N' JANA CLASSIC STAFF')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'018', N'JANA GOLD STAFF')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'019', N'JANA PLATINUM STAFF')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'020', N'PAYROLL VISA ELECTRON')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'025', N'VISA STUDENT DEBIT')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'027', N'VISA REWARD')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'043', N'MCHIP WORLD DEBIT')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'044', N'MCHIP DEBIT PLATINUM')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'045', N'VISA PREPAID')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'046', N'VISA GIFT CARD')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'048', N'ATM Deposit Card')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'088', N'MOQ GIFT CARD')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'101', N'QMILES GOLD')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'102', N'QMILES PLATINUM')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'121', N'VISA INTERNET CARD')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'221', N'AAMALY MC DEBIT')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'241', N'MC Unknown')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'261', N'PREAPPROVED GOLD')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'262', N'PREAPPROVED PLATINUM')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'282', N'REVOLVE CLASSIC')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'283', N'REVOLVE GOLD')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'284', N'REVOLVE PLATINUM')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'285', N'REVOLVE INFINITE')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'286', N'LADIES CREDIT CARD')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'287', N'REVOLVE SIGNATURE')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'301', N'QMILES SIGNATURE')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'400', N'MC STUDENT PLATINUM')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'401', N'MC Revolve Titanium')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'402', N'MC Revolve World')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'403', N'MC Revolve World Elt')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'404', N'MC Revolve Platinum')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'405', N'MC Corp Purchase')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'406', N'MC Corp World')
INSERT [dbo].[NP_TLS_PLASTIC] ([PLASTICCODE], [DESCRIPTION]) VALUES (N'407', N'MC Corp World Elite')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'000', N'All Products')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'0000', N'Default-Product')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'0001', N'Platinum')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'001', N'VISA CLASSIC')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'002', N'VISA GOLD')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'003', N'VISA PLATINUM')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'005', N'VISA GOLD STAFF')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'006', N'VISA CLASSIC STAFF')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'007', N'VISA ELECTRON')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'008', N'AL YSR')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'010', N'VSDC CLASSIC')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'011', N'VSDC GOLD')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'013', N'VISA INFINITE')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'014', N'JANA CLASSIC')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'015', N'JANA GOLD')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'016', N'JANA PLATINUM')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'017', N' JANA CLASSIC STAFF')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'018', N'JANA GOLD STAFF')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'019', N'JANA PLATINUM STAFF')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'020', N'PAYROLL VISA ELECTRON')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'025', N'VISA STUDENT DEBIT')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'027', N'VISA REWARD')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'043', N'MCHIP WORLD DEBIT')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'044', N'MCHIP DEBIT PLATINUM')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'045', N'VISA PREPAID')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'046', N'VISA GIFT CARD')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'048', N'ATM Deposit Card')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'088', N'MOQ GIFT CARD')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'101', N'QMILES GOLD')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'102', N'QMILES PLATINUM')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'121', N'VISA INTERNET CARD')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'221', N'AAMALY MC DEBIT')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'241', N'MC Unknown')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'261', N'PREAPPROVED GOLD')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'262', N'PREAPPROVED PLATINUM')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'282', N'REVOLVE CLASSIC')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'283', N'REVOLVE GOLD')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'284', N'REVOLVE PLATINUM')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'285', N'REVOLVE INFINITE')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'286', N'LADIES CREDIT CARD')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'287', N'REVOLVE SIGNATURE')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'301', N'QMILES SIGNATURE')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'400', N'MC STUDENT PLATINUM')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'401', N'MC Revolve Titanium')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'402', N'MC Revolve World')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'403', N'MC Revolve World Elt')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'404', N'MC Revolve Platinum')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'405', N'MC Corp Purchase')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'406', N'MC Corp World')
INSERT [dbo].[NP_TLS_PRODUCT] ([PRODUCTCODE], [DESCRIPTION]) VALUES (N'407', N'MC Corp World Elite')
SET IDENTITY_INSERT [dbo].[PM_ENC_MODE] ON 

INSERT [dbo].[PM_ENC_MODE] ([ID], [ENC_MODE], [HEX_VALUE], [RFU]) VALUES (1, N'No Encryption', N'00', NULL)
INSERT [dbo].[PM_ENC_MODE] ([ID], [ENC_MODE], [HEX_VALUE], [RFU]) VALUES (2, N'CBC', N'01', NULL)
INSERT [dbo].[PM_ENC_MODE] ([ID], [ENC_MODE], [HEX_VALUE], [RFU]) VALUES (3, N'ECB', N'02', NULL)
SET IDENTITY_INSERT [dbo].[PM_ENC_MODE] OFF
SET IDENTITY_INSERT [dbo].[PM_LENGTH_ENCODING] ON 

INSERT [dbo].[PM_LENGTH_ENCODING] ([ID], [ENCODING_NAME], [HEX_VALUE], [RFU]) VALUES (1, N'BER Encoded', N'00', NULL)
INSERT [dbo].[PM_LENGTH_ENCODING] ([ID], [ENCODING_NAME], [HEX_VALUE], [RFU]) VALUES (2, N'No Length Encoding', N'01', NULL)
INSERT [dbo].[PM_LENGTH_ENCODING] ([ID], [ENCODING_NAME], [HEX_VALUE], [RFU]) VALUES (3, N'2Byte Encoded', N'02', NULL)
INSERT [dbo].[PM_LENGTH_ENCODING] ([ID], [ENCODING_NAME], [HEX_VALUE], [RFU]) VALUES (4, N'1Byte Encoded', N'03', NULL)
INSERT [dbo].[PM_LENGTH_ENCODING] ([ID], [ENCODING_NAME], [HEX_VALUE], [RFU]) VALUES (5, N'4Byte Encoded', N'04', NULL)
SET IDENTITY_INSERT [dbo].[PM_LENGTH_ENCODING] OFF
SET IDENTITY_INSERT [dbo].[PM_ORIGIN] ON 

INSERT [dbo].[PM_ORIGIN] ([ID], [ORIGIN_ID], [ORIGIN_NAME], [RFU]) VALUES (1, N'01', N'Default', NULL)
INSERT [dbo].[PM_ORIGIN] ([ID], [ORIGIN_ID], [ORIGIN_NAME], [RFU]) VALUES (2, N'02', N'Input', NULL)
INSERT [dbo].[PM_ORIGIN] ([ID], [ORIGIN_ID], [ORIGIN_NAME], [RFU]) VALUES (3, N'03', N'AutoGenerated', NULL)
INSERT [dbo].[PM_ORIGIN] ([ID], [ORIGIN_ID], [ORIGIN_NAME], [RFU]) VALUES (4, N'04', N'Unknown', NULL)
SET IDENTITY_INSERT [dbo].[PM_ORIGIN] OFF
SET IDENTITY_INSERT [dbo].[PM_PADDING_MODE] ON 

INSERT [dbo].[PM_PADDING_MODE] ([ID], [PAD_MODE], [HEX_VALUE], [RFU]) VALUES (1, N'No Padding', N'00', NULL)
INSERT [dbo].[PM_PADDING_MODE] ([ID], [PAD_MODE], [HEX_VALUE], [RFU]) VALUES (2, N'00 Padding', N'01', NULL)
INSERT [dbo].[PM_PADDING_MODE] ([ID], [PAD_MODE], [HEX_VALUE], [RFU]) VALUES (3, N'80 Padding', N'02', NULL)
SET IDENTITY_INSERT [dbo].[PM_PADDING_MODE] OFF
SET IDENTITY_INSERT [dbo].[PM_ROLES] ON 

INSERT [dbo].[PM_ROLES] ([ID], [ROLE], [HEX_VALUE], [RFU]) VALUES (1, N'All Roles', N'00', NULL)
INSERT [dbo].[PM_ROLES] ([ID], [ROLE], [HEX_VALUE], [RFU]) VALUES (2, N'Contact Only', N'01', NULL)
INSERT [dbo].[PM_ROLES] ([ID], [ROLE], [HEX_VALUE], [RFU]) VALUES (3, N'Contactless Only', N'02', NULL)
INSERT [dbo].[PM_ROLES] ([ID], [ROLE], [HEX_VALUE], [RFU]) VALUES (4, N'No Roles', N'03', NULL)
INSERT [dbo].[PM_ROLES] ([ID], [ROLE], [HEX_VALUE], [RFU]) VALUES (5, N'Custom Roles', N'04', NULL)
SET IDENTITY_INSERT [dbo].[PM_ROLES] OFF
SET IDENTITY_INSERT [dbo].[PM_SCHEME] ON 

INSERT [dbo].[PM_SCHEME] ([Scheme_ID], [Scheme], [RID]) VALUES (1, N'MasterCard', N'A000000004')
INSERT [dbo].[PM_SCHEME] ([Scheme_ID], [Scheme], [RID]) VALUES (2, N'VISA', N'A000000003')
INSERT [dbo].[PM_SCHEME] ([Scheme_ID], [Scheme], [RID]) VALUES (3, N'E_Dirham', N'A000000826')
SET IDENTITY_INSERT [dbo].[PM_SCHEME] OFF
ALTER TABLE [dbo].[NP_PRT_CHIPDETAIL] ADD  CONSTRAINT [DF_PRT_CHIPDETAIL_WaitCylces]  DEFAULT ((4)) FOR [WaitCylces]
GO
ALTER TABLE [dbo].[NP_SEC_USERGROUP_CONFIG] ADD  CONSTRAINT [DF_Sec_UserGroupConfig_Setting_LockedOption]  DEFAULT ((1)) FOR [LockedOption]
GO
ALTER TABLE [dbo].[NP_SEC_USERGROUP_CONFIG] ADD  CONSTRAINT [DF_Sec_UserGroupConfig_Setting_FailedAttemptToLocked]  DEFAULT ((3)) FOR [FailedAttemptToLocked]
GO
ALTER TABLE [dbo].[NP_SEC_USERGROUP_CONFIG] ADD  CONSTRAINT [DF_Sec_UserGroupConfig_Setting_AutoUnlockLockedUser]  DEFAULT ((1)) FOR [AutoUnlockLockedUser]
GO
ALTER TABLE [dbo].[NP_SEC_USERGROUP_CONFIG] ADD  CONSTRAINT [DF_Sec_UserGroupConfig_Setting_MinutsToAutoUnlockLockedUser]  DEFAULT ((30)) FOR [MinutsToAutoUnlockLockedUser]
GO
ALTER TABLE [dbo].[NP_SEC_USERGROUP_CONFIG] ADD  CONSTRAINT [DF_Sec_UserGroupConfig_Setting_MatchPasswordHistory]  DEFAULT ((1)) FOR [MatchPasswordHistory]
GO
ALTER TABLE [dbo].[NP_SEC_USERGROUP_CONFIG] ADD  CONSTRAINT [DF_Sec_UserGroupConfig_Setting_PasswordHistoryCount]  DEFAULT ((24)) FOR [PasswordHistoryCount]
GO
ALTER TABLE [dbo].[NP_SEC_USERGROUP_CONFIG] ADD  CONSTRAINT [DF_Sec_UserGroupConfig_Setting_PasswordComplexity]  DEFAULT ((1)) FOR [PasswordComplexity]
GO
ALTER TABLE [dbo].[NP_SEC_USERGROUP_CONFIG] ADD  CONSTRAINT [DF_Sec_UserGroupConfig_Setting_PasswordNeverExpire]  DEFAULT ((0)) FOR [PasswordNeverExpire]
GO
ALTER TABLE [dbo].[NP_SEC_USERGROUP_CONFIG] ADD  CONSTRAINT [DF_Sec_UserGroupConfig_Setting_PasswordAgeInDays]  DEFAULT ((30)) FOR [PasswordAgeInDays]
GO
ALTER TABLE [dbo].[NP_SEC_USERGROUP_CONFIG] ADD  CONSTRAINT [DF_Sec_UserGroupConfig_Setting_DaysToRemindChangePassword]  DEFAULT ((10)) FOR [DaysToRemindChangePassword]
GO
ALTER TABLE [dbo].[NP_SEC_USERGROUP_CONFIG] ADD  CONSTRAINT [DF_Sec_UserGroupConfig_Setting_EnableSessionOut]  DEFAULT ((1)) FOR [EnableSessionOut]
GO
ALTER TABLE [dbo].[NP_SEC_USERGROUP_CONFIG] ADD  CONSTRAINT [DF_Sec_UserGroupConfig_Setting_SessionOutMinuts]  DEFAULT ((30)) FOR [SessionOutMinuts]
GO
ALTER TABLE [dbo].[NP_SEC_USERGROUP_CONFIG] ADD  CONSTRAINT [DF_Sec_UserGroupConfig_Setting_DisableInactiveUser]  DEFAULT ((1)) FOR [DisableInactiveUser]
GO
ALTER TABLE [dbo].[NP_SEC_USERGROUP_CONFIG] ADD  CONSTRAINT [DF_Sec_UserGroupConfig_Setting_DaysToCheckInactiveUser]  DEFAULT ((180)) FOR [DaysToCheckInactiveUser]
GO
ALTER TABLE [dbo].[NP_TLS_APPLICATIONPROFILES] ADD  CONSTRAINT [DF_TLS_ApplicationProfiles_validflag]  DEFAULT ((1)) FOR [VALIDFLAG]
GO
ALTER TABLE [dbo].[NP_TLS_APPLICATIONPROFILES] ADD  CONSTRAINT [DF_TLS_ApplicationProfiles_domaincode]  DEFAULT ('VISA') FOR [DOMAINCODE]
GO
ALTER TABLE [dbo].[NP_TLS_Options] ADD  CONSTRAINT [DF__TLS_Optio__IMPPI__46136164]  DEFAULT ('127.0.0.1') FOR [IMPPINSERVERIP]
GO
ALTER TABLE [dbo].[NP_TLS_Options] ADD  CONSTRAINT [DF__TLS_Optio__IMPOR__4707859D]  DEFAULT ((1001)) FOR [IMPORTSERPORT]
GO
ALTER TABLE [dbo].[NP_TLS_Options] ADD  CONSTRAINT [DF__TLS_Optio__PINPA__47FBA9D6]  DEFAULT ((1000)) FOR [PINPADSERPORT]
GO
ALTER TABLE [dbo].[NP_TLS_Options] ADD  CONSTRAINT [DF__TLS_Optio__CMSTI__48EFCE0F]  DEFAULT ((16000)) FOR [CMSTIMEOUT]
GO
ALTER TABLE [dbo].[NP_TRN_EMBOSSRECORDS] ADD  CONSTRAINT [DF_TRN_EmbossRecords_validfrom]  DEFAULT ('01/00') FOR [VALIDFROM]
GO
ALTER TABLE [dbo].[NP_TRN_EMBOSSRECORDS] ADD  CONSTRAINT [DF_TRN_EmbossRecords_expiry]  DEFAULT ('12/09') FOR [EXPIRY]
GO
ALTER TABLE [dbo].[NP_TRN_EMBOSSRECORDS] ADD  CONSTRAINT [DF_TRN_EmbossRecords_membersince]  DEFAULT ((0)) FOR [MEMBERSINCE]
GO
ALTER TABLE [dbo].[NP_TRN_EMBOSSRECORDS] ADD  CONSTRAINT [DF_TRN_EmbossRecords_cardtype]  DEFAULT ('NA') FOR [CARDTYPE]
GO
ALTER TABLE [dbo].[NP_TRN_EMBOSSRECORDS] ADD  CONSTRAINT [DF_TRN_EmbossRecords_cvv2]  DEFAULT ((0)) FOR [CVV2]
GO
ALTER TABLE [dbo].[NP_TRN_EMBOSSRECORDS] ADD  CONSTRAINT [DF_TRN_EmbossRecords_STATUSCODE]  DEFAULT ('00') FOR [STATUSCODE]
GO
ALTER TABLE [dbo].[NP_TRN_EMBOSSRECORDS] ADD  CONSTRAINT [DF_TRN_EmbossRecords_warningcode]  DEFAULT ('NA') FOR [WARNINGCODE]
GO
ALTER TABLE [dbo].[NP_TRN_EMBOSSRECORDS] ADD  CONSTRAINT [DF_TRN_EmbossRecords_persostatus]  DEFAULT ((0)) FOR [PERSOSTATUS]
GO
ALTER TABLE [dbo].[NP_TRN_EMBOSSRECORDS] ADD  DEFAULT ((-1)) FOR [PersoRecID]
GO
ALTER TABLE [dbo].[NP_TRN_EMBOSSRECORDS_MAXIMAILER] ADD  CONSTRAINT [DF_TRN_EmbossRecords_Maximailer_validfrom]  DEFAULT ('01/00') FOR [VALIDFROM]
GO
ALTER TABLE [dbo].[NP_TRN_EMBOSSRECORDS_MAXIMAILER] ADD  CONSTRAINT [DF_TRN_EmbossRecords_Maximailer_expiry]  DEFAULT ('12/09') FOR [EXPIRY]
GO
ALTER TABLE [dbo].[NP_TRN_EMBOSSRECORDS_MAXIMAILER] ADD  CONSTRAINT [DF_TRN_EmbossRecords_Maximailer_cvv2]  DEFAULT ((0)) FOR [CVV2]
GO
ALTER TABLE [dbo].[NP_TRN_EMBOSSRECORDS_MAXIMAILER] ADD  CONSTRAINT [DF_TRN_EmbossRecords_Maximailer_BRANCHID]  DEFAULT ('0000') FOR [BRANCHID]
GO
ALTER TABLE [dbo].[NP_TRN_JOBS] ADD  CONSTRAINT [DF_TRN_Jobs_Description]  DEFAULT ('AUTO CREATE') FOR [DESCRIPTION]
GO
ALTER TABLE [dbo].[NP_TRN_JOBS] ADD  CONSTRAINT [DF_TRN_Jobs_statuscode]  DEFAULT ('01') FOR [STATUSCODE]
GO
ALTER TABLE [dbo].[NP_TRN_JOBS] ADD  CONSTRAINT [DF_TRN_Jobs_validflag]  DEFAULT ((1)) FOR [VALIDFLAG]
GO
ALTER TABLE [dbo].[NP_TRN_JOBS] ADD  CONSTRAINT [DF_TRN_Jobs_totalrecord]  DEFAULT ((0)) FOR [TOTALRECORD]
GO
ALTER TABLE [dbo].[NP_TRN_JOBS] ADD  CONSTRAINT [DF_TRN_Jobs_jobinsertdate]  DEFAULT (getdate()) FOR [JOBINSERTDATE]
GO
ALTER TABLE [dbo].[NP_TRN_JOBS] ADD  CONSTRAINT [DF_TRN_Jobs_jobinsertuser]  DEFAULT (suser_sname()) FOR [JOBINSERTUSER]
GO
ALTER TABLE [dbo].[NP_TRN_JOBS] ADD  CONSTRAINT [DF_TRN_Jobs_BRANCHID]  DEFAULT ('0000') FOR [BRANCHID]
GO
ALTER TABLE [dbo].[NP_TRN_JOBS] ADD  CONSTRAINT [DF_TRN_Jobs_PARENTJOBID]  DEFAULT ((0)) FOR [PARENTJOBID]
GO
ALTER TABLE [dbo].[NP_TRN_PERSORECORDS] ADD  CONSTRAINT [DF_TRN_PersoRecords_statuscode]  DEFAULT ('00') FOR [STATUSCODE]
GO
ALTER TABLE [dbo].[NP_TRN_PERSORECORDS] ADD  CONSTRAINT [DF_TRN_PersoRecords_stationno]  DEFAULT ((1)) FOR [STATIONNO]
GO
ALTER TABLE [dbo].[NP_TRN_PROCESSEDFILEDS] ADD  CONSTRAINT [DF_TRN_ProcessedFiles_embencflag]  DEFAULT ((1)) FOR [EMBENCFLAG]
GO
ALTER TABLE [dbo].[NP_TRN_PROCESSEDFILEDS] ADD  CONSTRAINT [DF_TRN_ProcessedFiles_persorecordsflag]  DEFAULT ((1)) FOR [PERSORECORDSFLAG]
GO
ALTER TABLE [dbo].[NP_TRN_PROCESSEDFILEDS] ADD  CONSTRAINT [DF_TRN_ProcessedFiles_totalrecord]  DEFAULT ((0)) FOR [TOTALRECORD]
GO
ALTER TABLE [dbo].[NP_TRN_PROCESSEDFILEDS] ADD  CONSTRAINT [DF_TRN_ProcessedFiles_processedrecord]  DEFAULT ((0)) FOR [PROCESSEDRECORD]
GO
ALTER TABLE [dbo].[NP_TRN_PROCESSEDFILEDS] ADD  CONSTRAINT [DF_TRN_ProcessedFiles_procdate]  DEFAULT (getdate()) FOR [PROCDATE]
GO
ALTER TABLE [dbo].[PM_BINS] ADD  DEFAULT ((0)) FOR [IsCardInk]
GO
ALTER TABLE [dbo].[PM_CHIP_AID_DETAILS] ADD  CONSTRAINT [DF_CHIP_AID_DETAILS1_CHIP_ID]  DEFAULT ((0)) FOR [CHIP_ID]
GO
ALTER TABLE [dbo].[PM_IMK] ADD  CONSTRAINT [DF_TBL_IMK_INSERTED_ON]  DEFAULT (getdate()) FOR [INSERTED_ON]
GO
ALTER TABLE [dbo].[PM_IMK] ADD  CONSTRAINT [DF_TBL_IMK_UPDATED_ON]  DEFAULT (getdate()) FOR [UPDATED_ON]
GO
ALTER TABLE [dbo].[KMS_IPK_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_KMS_IPK_DETAILS_KMS_CA_DETAILS] FOREIGN KEY([CA_ID])
REFERENCES [dbo].[KMS_CA_DETAILS] ([CA_ID])
GO
ALTER TABLE [dbo].[KMS_IPK_DETAILS] CHECK CONSTRAINT [FK_KMS_IPK_DETAILS_KMS_CA_DETAILS]
GO
ALTER TABLE [dbo].[KMS_KEY_SET]  WITH CHECK ADD  CONSTRAINT [FK_KMS_KEY_SET_KMS_KEY_TYPE] FOREIGN KEY([KEY_TYPE_ID])
REFERENCES [dbo].[KMS_KEY_TYPE] ([KEY_TYPE_ID])
GO
ALTER TABLE [dbo].[KMS_KEY_SET] CHECK CONSTRAINT [FK_KMS_KEY_SET_KMS_KEY_TYPE]
GO
ALTER TABLE [dbo].[KMS_RSA_KEY_PAIR]  WITH CHECK ADD  CONSTRAINT [FK_KMS_RSA_KEY_PAIR_KMS_IPK_DETAILS] FOREIGN KEY([IPK_ID])
REFERENCES [dbo].[KMS_IPK_DETAILS] ([IPK_ID])
GO
ALTER TABLE [dbo].[KMS_RSA_KEY_PAIR] CHECK CONSTRAINT [FK_KMS_RSA_KEY_PAIR_KMS_IPK_DETAILS]
GO
ALTER TABLE [dbo].[NP_PRT_MAGSTRIPEDETAILS]  WITH CHECK ADD  CONSTRAINT [FK_PRT_MagStripeDetail_PRT_MagStripeDetail] FOREIGN KEY([MagDetailID])
REFERENCES [dbo].[NP_PRT_MAGSTRIPEDETAILS] ([MagDetailID])
GO
ALTER TABLE [dbo].[NP_PRT_MAGSTRIPEDETAILS] CHECK CONSTRAINT [FK_PRT_MagStripeDetail_PRT_MagStripeDetail]
GO
ALTER TABLE [dbo].[NP_TLS_TERMINALS]  WITH CHECK ADD  CONSTRAINT [FK_TLS_Terminals_TLS_Terminals] FOREIGN KEY([SERIALNO])
REFERENCES [dbo].[NP_TLS_TERMINALS] ([SERIALNO])
GO
ALTER TABLE [dbo].[NP_TLS_TERMINALS] CHECK CONSTRAINT [FK_TLS_Terminals_TLS_Terminals]
GO
ALTER TABLE [dbo].[NP_TRN_EMBOSSRECORDS]  WITH CHECK ADD  CONSTRAINT [FK_NP_TRN_EMBOSSRECORDS_NP_TRN_JOBS] FOREIGN KEY([JOBID])
REFERENCES [dbo].[NP_TRN_JOBS] ([JOBID])
GO
ALTER TABLE [dbo].[NP_TRN_EMBOSSRECORDS] CHECK CONSTRAINT [FK_NP_TRN_EMBOSSRECORDS_NP_TRN_JOBS]
GO
ALTER TABLE [dbo].[NP_TRN_JOBS]  WITH CHECK ADD  CONSTRAINT [FK_NP_TRN_JOBS_NP_TLS_APPLICATIONPROFILES] FOREIGN KEY([APPPROFILEID])
REFERENCES [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID])
GO
ALTER TABLE [dbo].[NP_TRN_JOBS] CHECK CONSTRAINT [FK_NP_TRN_JOBS_NP_TLS_APPLICATIONPROFILES]
GO
ALTER TABLE [dbo].[NP_TRN_JOBS]  WITH CHECK ADD  CONSTRAINT [FK_NP_TRN_JOBS_NP_TLS_CARDPROFILES] FOREIGN KEY([CARDPROFILEID])
REFERENCES [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID])
GO
ALTER TABLE [dbo].[NP_TRN_JOBS] CHECK CONSTRAINT [FK_NP_TRN_JOBS_NP_TLS_CARDPROFILES]
GO
ALTER TABLE [dbo].[NP_TRN_PERSORECORDS]  WITH CHECK ADD  CONSTRAINT [FK_NP_TRN_PERSORECORDS_NP_TLS_APPLICATIONPROFILES] FOREIGN KEY([APPPROFILEID])
REFERENCES [dbo].[NP_TLS_APPLICATIONPROFILES] ([APPPROFILEID])
GO
ALTER TABLE [dbo].[NP_TRN_PERSORECORDS] CHECK CONSTRAINT [FK_NP_TRN_PERSORECORDS_NP_TLS_APPLICATIONPROFILES]
GO
ALTER TABLE [dbo].[NP_TRN_PERSORECORDS]  WITH CHECK ADD  CONSTRAINT [FK_NP_TRN_PERSORECORDS_NP_TLS_CARDPROFILES] FOREIGN KEY([CARDPROFILEID])
REFERENCES [dbo].[NP_TLS_CARDPROFILES] ([CARDPROFILEID])
GO
ALTER TABLE [dbo].[NP_TRN_PERSORECORDS] CHECK CONSTRAINT [FK_NP_TRN_PERSORECORDS_NP_TLS_CARDPROFILES]
GO
/****** Object:  StoredProcedure [dbo].[NP_TRN_ApprovedJobsAdmin_SP]    Script Date: 10/1/2020 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[NP_TRN_ApprovedJobsAdmin_SP]
	@BranchId varchar(10),
	@beginFiscal varchar(10)=null, 
	@endFiscal varchar(10) =null
AS
SELECT DISTINCT TRN_Jobs.ID AS JobId,TRN_EmbossRecords.PERSOSTATUS, TRN_Jobs.BRANCHID,  Convert(varchar, TRN_Jobs.JOBINSERTDATE,111)  AS JobDate, TRN_Jobs.DESCRIPTION, TLS_CardProfiles.DESCRIPTION AS CARDPROFILE, TRN_ProcessedFiles.FILENAME as FILENAMES
FROM TRN_EmbossRecords
INNER JOIN TRN_Jobs 
    on  TRN_EmbossRecords.JOBID = TRN_Jobs.ID 
	LEFT JOIN  TRN_ProcessedFiles
    ON TRN_Jobs.ID = TRN_ProcessedFiles.JOBID 
INNER JOIN TLS_CardProfiles 
    on TRN_Jobs.CARDPROFILEID = TLS_CardProfiles.ID
WHERE (TRN_EmbossRecords.STATUSCODE = '00' OR TRN_EmbossRecords.STATUSCODE = '01') 
 AND (TRN_Jobs.VALIDFLAG = '1') and TRN_Jobs.BRANCHID=@BranchId 
 and TRN_EmbossRecords.PERSOSTATUS='0'
 and  Convert(varchar, TRN_Jobs.JOBINSERTDATE,111) >=  @beginFiscal
 AND Convert(varchar, TRN_Jobs.JOBINSERTDATE,111) <= @endFiscal  















GO
/****** Object:  StoredProcedure [dbo].[PM_ReadENC_MODE_SP]    Script Date: 10/1/2020 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[PM_ReadENC_MODE_SP]
	  
AS
BEGIN
	SELECT [ID],[ENC_MODE],[HEX_VALUE] FROM [dbo].[PM_ENC_MODE] order by ID
	end

GO
/****** Object:  StoredProcedure [dbo].[PM_ReadLENGTH_ENCODING_SP]    Script Date: 10/1/2020 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[PM_ReadLENGTH_ENCODING_SP]
	
AS
BEGIN
	SELECT [ID],[ENCODING_NAME],[HEX_VALUE] FROM [PM_LENGTH_ENCODING] order by ID
	end

GO
/****** Object:  StoredProcedure [dbo].[PM_ReadORIGIN_SP]    Script Date: 10/1/2020 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[PM_ReadORIGIN_SP]
AS
BEGIN
	SELECT [ID],[ORIGIN_ID],[ORIGIN_NAME],[RFU] FROM [PM_ORIGIN] order by ID
end

GO
/****** Object:  StoredProcedure [dbo].[PM_ReadPADDING_MODE_SP]    Script Date: 10/1/2020 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[PM_ReadPADDING_MODE_SP]
	
AS
BEGIN
	SELECT [ID],[PAD_MODE],[HEX_VALUE] FROM [PM_PADDING_MODE] order by ID
end

GO
/****** Object:  StoredProcedure [dbo].[PM_ReadROLES_SP]    Script Date: 10/1/2020 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[PM_ReadROLES_SP]
	
AS
BEGIN
SELECT [ID],[ROLE],[HEX_VALUE] FROM [PM_ROLES] order by ID
END

GO
/****** Object:  StoredProcedure [dbo].[PM_ReadScheme_SP]    Script Date: 10/1/2020 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PM_ReadScheme_SP]
	AS
BEGIN
	select * from PM_SCHEME order by Scheme_ID
END

GO
/****** Object:  StoredProcedure [dbo].[READ_USER]    Script Date: 10/1/2020 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[READ_USER]
	@USERNAME varchar(50),
	
   @PASSWORD varchar(100)=null
AS
declare @Result INT
BEGIN
	--select * from NP_SEC_USER  where USERNAME='ankit'
	set @Result = -1  --User LockedOut
 select @Result, @Result as [Login]
END
GO
/****** Object:  StoredProcedure [dbo].[SEC_CheckPassword_SP]    Script Date: 10/1/2020 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SEC_CheckPassword_SP]  
   @USERNAME varchar(50),
   @PASSWORD varchar(100)=null,
   @Result int OUT
AS
Declare
 @PwdCount int,
 @failedattemptcount int,
 @UserGroup varchar(50),
  @GroupDesc varchar(50)    -- (-1 for User LockedOut, 0 Failed Login, 1 for Successful Login)
 set @Result = (select count(1) "Login" from NP_SEC_User where USERNAME = @USERNAME and Password = @PASSWORD)
 set @UserGroup = (Select GROUPID from NP_SEC_Group_USer where USERID = (select ID from NP_SEC_User where USERNAME = @USERNAME))
 set @GroupDesc = (select DESCRIPTION  from NP_SEC_GROUP where GROUP_ID = @UserGroup)
 if((select Count(*) from NP_Sec_UserGroup_Config where ID = @USERNAME and LockedOption = 1)>0)
  set @failedattemptcount = (select FailedAttemptToLocked from NP_Sec_UserGroup_Config where ID = @USERNAME)
 else if((select Count(*) from NP_Sec_UserGroup_Config where ID = (select DESCRIPTION  from NP_SEC_GROUP where GROUP_ID = '1009') and LockedOption = 1)>0)
  set @failedattemptcount = (select FailedAttemptToLocked from NP_Sec_UserGroup_Config where ID = @GroupDesc)
 else if((select Count(*) from NP_Sec_UserGroup_Config where ID = @GroupDesc and LockedOption = 1)>0)
  set @failedattemptcount = (select FailedAttemptToLocked from NP_Sec_UserGroup_Config where ID = @GroupDesc)
 else set @failedattemptcount = 0
 set @PwdCount=(select INVALIDPASSWORDCOUNT from NP_SEC_User where USERNAME = @USERNAME)
 if (@Result = 1)
  update NP_SEC_User set INVALIDPASSWORDCOUNT = 0 where USERNAME = @USERNAME
 else if ((select INVALIDPASSWORDCOUNT from NP_SEC_User where USERNAME = @USERNAME) < @failedattemptcount)
  update NP_SEC_User set INVALIDPASSWORDCOUNT = @PwdCount +1 where USERNAME = @USERNAME
 if (((select INVALIDPASSWORDCOUNT from NP_SEC_User where USERNAME = @USERNAME) = @failedattemptcount) AND @failedattemptcount !=0)
  set @Result = -1  --User LockedOut
 select @Result, @Result as [Login]
GO
/****** Object:  StoredProcedure [dbo].[SEC_UpdateUserStatus_FN]    Script Date: 10/1/2020 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[SEC_UpdateUserStatus_FN]  
   @UserId varchar(50),
   @Active bit,
   @LockedOption bit,
   @UpdatedBy varchar(50)
AS

DECLARE 
@ErrorSave INT

SET @ErrorSave = 0
if(((select Active from NP_SEC_User where USERNAME=@UserId) = 0) and @Active = 1)
	update NP_SEC_User
				set Active = @Active,
					LASTLOGIN = GETDATE(),
					UpdatedBy = @UpdatedBy,
					UpdatedOn = GETDATE()
				where 
					USERNAME = @UserId
if @LockedOption = 0
	BEGIN
		update NP_SEC_User
				set INVALIDPASSWORDCOUNT = 0,
					Active = @Active,
					UpdatedBy = @UpdatedBy,
					UpdatedOn = GETDATE()
				where 
					USERNAME = @UserId
	END
else
	BEGIN
		update NP_SEC_User
				set Active = @Active,
					UpdatedBy = @UpdatedBy,
					UpdatedOn = GETDATE()
				where 
					USERNAME = @UserId
	END


-- Check result
SET @ErrorSave = @@ERROR
select @ErrorSave


---------------------------------------
GO
/****** Object:  StoredProcedure [dbo].[TLS_InsertLoginLog_FN]    Script Date: 10/1/2020 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TLS_InsertLoginLog_FN]
(
	@LOG_TIME [varchar](20),
	@USER_ID [varchar](50),
	@SOURCE_IP [varchar](20),
	@SOURCE_PC [varchar](250),
	@LOGIN_STATUS [varchar](2),
	@Session bit=null
)
AS
  BEGIN
   --declare @usercount int =(select count(ID) from  LOG_Logins where USER_ID=@USER_ID)
   --if(@usercount=0)
	   begin
		   INSERT INTO NP_LOG_Logins
		 ( LOG_TIME, [USER_ID], SOURCE_IP, LOGIN_STATUS,SOURCE_PC, Session)
	
		 VALUES 
		 ( @LOG_TIME, @USER_ID, @SOURCE_IP, @LOGIN_STATUS,@SOURCE_PC, @Session)
		 end
	 --else if(@usercount=1)
		--   begin
		-- update LOG_Logins set LOGIN_STATUS=0 ,SOURCE_IP=@SOURCE_IP where USER_ID=@USER_ID
		--  end

--Updated By : Kamlesh
--Updated On : 26-Jul-15
--Updated For : to updated lastlogin on User table
	if(@LOGIN_STATUS = '1')
		update NP_SEC_User
			set LASTLOGIN = GETDATE()
			where ID = SCOPE_IDENTITY()


SELECT  @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[TLS_ReadLastLoginTimeByStatus_SP]    Script Date: 10/1/2020 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[TLS_ReadLastLoginTimeByStatus_SP]
	@USER_ID varchar(50),
	@LOGIN_STATUS int
AS
   SELECT TOP 1 *
        FROM NP_LOG_Logins
        WHERE --USER_ID  = @USER_ID		AND 
		LOGIN_STATUS = '1' AND ID=(SELECT MAX(ID) FROM NP_LOG_Logins  WHERE USER_ID  = @USER_ID)
		ORDER BY LOG_TIME DESC
GO
/****** Object:  StoredProcedure [dbo].[TLS_updateLoginLog_FN]    Script Date: 10/1/2020 5:53:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[TLS_updateLoginLog_FN]
(
	@LOG_TIME [varchar](20),
	@USER_ID [varchar](50),
	@SOURCE_IP [varchar](20),
	@SOURCE_PC varchar(max),
	@LOGIN_STATUS [varchar](2),
	@Session bit=null
	
)
AS
  BEGIN
  
	UPDATE NP_LOG_Logins
	  set LOGIN_STATUS=0,LOG_TIME=''+@LOG_TIME+'' , Session=@Session 
	where ID = (SELECT MAX(ID) FROM NP_LOG_Logins where USER_ID=''+@USER_ID +'') 
	end
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Minimum Length of Password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NP_SEC_PASSWORD_COMPLEXITY', @level2type=N'COLUMN',@level2name=N'MinLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Maximum length of Password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NP_SEC_PASSWORD_COMPLEXITY', @level2type=N'COLUMN',@level2name=N'MaxLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Required Special Char if true or 0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NP_SEC_PASSWORD_COMPLEXITY', @level2type=N'COLUMN',@level2name=N'ReqSpecialChar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Upper Alpha required if true and Alpha Any should false or 0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NP_SEC_PASSWORD_COMPLEXITY', @level2type=N'COLUMN',@level2name=N'ReqAlphaUpper'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lower Alpha required if true and Alpha Any should false or 0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NP_SEC_PASSWORD_COMPLEXITY', @level2type=N'COLUMN',@level2name=N'ReqAlphaLower'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Allow contains user name if true' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NP_SEC_PASSWORD_COMPLEXITY', @level2type=N'COLUMN',@level2name=N'AllowUName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Req. Numeric if true' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NP_SEC_PASSWORD_COMPLEXITY', @level2type=N'COLUMN',@level2name=N'ReqNumeric'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'01 New , 02 InUse, 03 Disabled,04 Exhausted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NP_TRN_INVENTORY', @level2type=N'COLUMN',@level2name=N'Status'
GO
