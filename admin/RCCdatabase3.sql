USE [NewProductsModule]
GO
/****** Object:  Table [dbo].[EblastGroups]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EblastGroups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[description] [nvarchar](1024) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EblastGroupsIndex]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EblastGroupsIndex](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupID] [int] NOT NULL,
	[userID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EblastHistory]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EblastHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[emailTemplateID] [int] NULL,
	[dateSent] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EblastTemplates]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EblastTemplates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[subject] [nvarchar](255) NULL,
	[body] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GalleryItem]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GalleryItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImgName] [varchar](64) NULL,
	[ImgDesc] [varchar](512) NULL,
	[CatName] [varchar](64) NULL,
	[FSLoc] [varchar](1024) NULL,
	[Seq] [int] NULL,
 CONSTRAINT [PK_GalleryItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LbandR]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LbandR](
	[Market Segment] [varchar](50) NULL,
	[CatId] [numeric](18, 0) NULL,
	[Type] [varchar](50) NULL,
	[Part Number] [varchar](50) NULL,
	[Technology] [varchar](50) NULL,
	[Frequency Band] [varchar](50) NULL,
	[Output Power] [varchar](50) NULL,
	[Voltage] [varchar](50) NULL,
	["PW] [varchar](50) NULL,
	[ DF"] [varchar](50) NULL,
	[Matching] [varchar](50) NULL,
	[Input Match] [varchar](50) NULL,
	[Output Match] [varchar](50) NULL,
	[PkgId] [numeric](18, 0) NULL,
	[Package] [varchar](50) NULL,
	[Date Added] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCApps]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCApps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](1024) NULL,
	[Link] [varchar](max) NULL,
	[isFeatured] [bit] NULL,
	[CatId] [int] NULL,
 CONSTRAINT [PK_RCApps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCAppsCat]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCAppsCat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [varchar](100) NULL,
	[Seq] [int] NULL,
 CONSTRAINT [PK_RCAppsCat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCBio]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCBio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Title] [varchar](100) NULL,
	[Description] [varchar](1024) NULL,
	[Seq] [int] NULL,
	[FSLoc] [varchar](1024) NULL,
	[Email] [varchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[Phone2] [varchar](20) NULL,
	[Category] [varchar](100) NULL,
 CONSTRAINT [PK_RCBio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCCalendar]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCCalendar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](1024) NULL,
	[OwnerId] [int] NULL,
	[minAccess] [int] NULL,
 CONSTRAINT [PK_RCCalendar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCCalendarEvent]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RCCalendarEvent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventID] [int] NULL,
	[CalendarID] [int] NULL,
 CONSTRAINT [PK_RCCalendarEvent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RCCalendarUser]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RCCalendarUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[CalendarId] [int] NULL,
 CONSTRAINT [PK_RCCalendarUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RCCEmail]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCCEmail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[dtAdded] [datetime] NOT NULL,
 CONSTRAINT [PK__RCCEmail__31EC6D26] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCCEmailUnsubscribe]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCCEmailUnsubscribe](
	[Id] [int] NULL,
	[Email] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCContent]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCContent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Value] [varchar](max) NULL,
	[DateEntered] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[Slug] [nvarchar](256) NULL,
 CONSTRAINT [PK_RCContent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rccTestimonials]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rccTestimonials](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dateCreated] [datetime] NULL,
	[firstName] [nvarchar](50) NULL,
	[lastName] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[company] [nvarchar](50) NULL,
	[position] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[quote] [nvarchar](max) NULL,
	[isApproved] [bit] NULL,
	[ip] [nvarchar](24) NULL,
	[RatingValue] [decimal](18, 0) NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RCDoc]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCDoc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[FileName] [varchar](1024) NULL,
	[Description] [varchar](1024) NULL,
	[CatId] [int] NULL,
	[Seq] [int] NULL,
	[FileData] [varbinary](max) NULL,
 CONSTRAINT [PK_RCDoc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCDocCat]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCDocCat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Seq] [int] NULL,
	[bPublic] [bit] NULL,
	[ParentId] [int] NULL,
 CONSTRAINT [PK_RCDocCat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCDocSecurity]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RCDocSecurity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatId] [int] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_RCDocSecurity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RCEvent]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCEvent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[StartDt] [datetime] NULL,
	[EndDt] [datetime] NULL,
	[Owner] [int] NULL,
	[Desc] [varchar](2048) NULL,
	[Location] [varchar](100) NULL,
 CONSTRAINT [PK_RCEvent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCEvents]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCEvents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[dateStart] [datetime] NULL,
	[dateModified] [datetime] NULL,
	[Description] [varchar](1024) NULL,
 CONSTRAINT [PK_RCEvents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCGallery2]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCGallery2](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](1024) NULL,
	[isFeatured] [bit] NULL,
	[flagShowThumb] [bit] NULL,
	[oldCatId] [int] NULL,
	[CatId] [int] NULL,
	[Seq] [int] NULL,
 CONSTRAINT [PK_RCGallery2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCGallery2Cat]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RCGallery2Cat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Seq] [int] NULL,
 CONSTRAINT [PK_RCGallery2Cat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RCGallery2Image]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCGallery2Image](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](128) NULL,
	[Description] [varchar](1024) NULL,
	[Alt] [varchar](128) NULL,
	[Data] [image] NULL,
	[ContentType] [varchar](10) NULL,
	[DateModified] [datetime] NULL,
	[GalleryId] [int] NULL,
	[DateDeleted] [datetime] NULL,
	[isDeleted] [varchar](1) NULL,
	[Seq] [int] NULL,
 CONSTRAINT [PK_RCGallery2Image] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCLink]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCLink](
                [Id] [int] IDENTITY(1,1) NOT NULL,
                [Name] [varchar](100) NULL,
                [Description] [varchar](2048) NULL,
                [Link] [varchar](max) NULL,
                [Image] [varbinary](max) NULL,
                [CatId] [int] NULL,
CONSTRAINT [PK_RCLinks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCLiterature]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCLiterature](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Description] [text] NULL,
	[Attachment] [varbinary](max) NULL,
	[Img] [image] NULL,
	[AttachmentName] [nvarchar](255) NULL,
	[dtEntered] [datetime] NULL,
	[dtModified] [datetime] NULL,
	[LineId] [int] NULL,
	[Seq] [int] NULL,
	[Data] [image] NULL,
	[ImgURL] [varchar](1024) NULL,
	[fId] [varchar](100) NULL,
	[Size] [varchar](100) NULL,
	[CatId] [int] NULL,
	[BroFile] [varbinary](max) NULL,
	[BroFileName] [nvarchar](255) NULL,
	[CADFile] [varbinary](max) NULL,
	[CADFileName] [nvarchar](255) NULL,
 CONSTRAINT [PK_RCLiterature] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCLiteratureCat]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCLiteratureCat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[fId] [varchar](100) NULL,
	[ParentId] [int] NULL,
	[Label] [nvarchar](50) NULL,
	[browseImageURL] [varchar](1024) NULL,
	[Seq] [int] NULL,
	[LineId] [int] NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_RCLiteratureCat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCMarket]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RCMarket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](1024) NULL,
 CONSTRAINT [PK_Market] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RCNews]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCNews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NULL,
	[Description] [nvarchar](1024) NULL,
	[Contents] [varchar](max) NULL,
	[PubDate] [datetime] NULL,
	[Img] [image] NULL,
	[CatID] [int] NULL,
	[Slug] [nvarchar](256) NULL,
 CONSTRAINT [PK_RCNews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCNewsCat]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RCNewsCat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Seq] [int] NULL,
 CONSTRAINT [PK_RCNewsCat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RCProduct]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Description] [text] NULL,
	[Attachment] [varbinary](max) NULL,
	[Img] [image] NULL,
	[AttachmentName] [nvarchar](255) NULL,
	[dtEntered] [datetime] NULL,
	[dtModified] [datetime] NULL,
	[LineId] [int] NULL,
	[Seq] [int] NULL,
	[Data] [image] NULL,
	[ImgURL] [varchar](1024) NULL,
	[fId] [varchar](100) NULL,
	[Size] [varchar](100) NULL,
	[CatId] [int] NULL,
	[BroFile] [varbinary](max) NULL,
	[BroFileName] [nvarchar](255) NULL,
	[CADFile] [varbinary](max) NULL,
	[CADFileName] [nvarchar](255) NULL,
	[bHome] [bit] NULL,
	[Output] [varchar](50) NULL,
	[Gain] [varchar](50) NULL,
	[Pulse] [varchar](50) NULL,
	[Freq] [varchar](50) NULL,
	[Eff] [varchar](50) NULL,
	[Duty] [nchar](10) NULL,
	[Voltage] [nchar](10) NULL,
	[Matching] [nvarchar](50) NULL,
	[bLBandA] [bit] NULL,
	[bLBandR] [bit] NULL,
	[bSBandR] [bit] NULL,
	[bCBandR] [bit] NULL,
	[b50Ohm] [bit] NULL,
	[bComm] [bit] NULL,
	[PackageId] [int] NULL,
	[bPallet] [bit] NULL,
	[Slug] [nvarchar](256) NULL,
 CONSTRAINT [PK_RCProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCProductCat]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCProductCat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[fId] [varchar](100) NULL,
	[ParentId] [int] NULL,
	[Label] [nvarchar](50) NULL,
	[browseImageURL] [varchar](1024) NULL,
	[Seq] [int] NULL,
	[LineId] [int] NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_RCProductCat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCProductLine]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCProductLine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](1024) NULL,
	[Seq] [int] NULL,
 CONSTRAINT [PK_RCProductLine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCProductPackage]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RCProductPackage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_RCProductPackage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RCPromo]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCPromo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StartDt] [datetime] NULL,
	[EndDt] [datetime] NULL,
	[Name] [varchar](128) NULL,
	[Desc] [varchar](128) NULL,
	[isFeatured] [bit] NULL,
	[Slug] [nvarchar](256) NULL,
 CONSTRAINT [PK_RCPromo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCSeo]    Script Date: 7/17/2018 4:02:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RCSeo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Seq] [int] NULL,
	[Page] [varchar](1024) NULL,
	[Title] [varchar](1024) NULL,
	[Desc] [varchar](1024) NULL,
	[Keywords] [varchar](1024) NULL,
	[flagSitemap] [varchar](1) NULL,
	[StructuredData] [varchar](max) NULL,
 CONSTRAINT [PK_RC-Seo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCSpecial]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCSpecial](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[Price] [varchar](50) NULL,
	[SunriseDate] [datetime] NULL,
	[SunsetDate] [datetime] NULL,
	[Link] [varchar](1024) NULL,
	[Menu] [varbinary](max) NULL,
	[CatId] [int] NULL,
	[MenuFileName] [varchar](255) NULL,
	[Description] [varchar](1024) NULL,
	[Slug] [nvarchar](256) NULL,
 CONSTRAINT [PK_RCSpecial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCSpecialCat]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCSpecialCat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [varchar](100) NULL,
	[Seq] [int] NULL,
 CONSTRAINT [PK_RCSpecialCat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCString]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCString](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Value] [varchar](1024) NULL,
	[CatId] [int] NOT NULL,
 CONSTRAINT [PK_RCString] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCStringCat]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCStringCat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_RCStringCat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCSurvey]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCSurvey](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Desc] [varchar](1000) NULL,
	[Slug] [nvarchar](256) NULL,
 CONSTRAINT [PK_RCSurvey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCSurveyAnswer]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCSurveyAnswer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NULL,
	[Answer] [varchar](1000) NULL,
 CONSTRAINT [PK_RCSurveyAnswer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCSurveyQuestion]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCSurveyQuestion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SurveyId] [int] NULL,
	[Question] [varchar](2000) NULL,
	[AnswerTypeId] [int] NULL,
	[bTextResponse] [bit] NULL,
	[Seq] [int] NULL,
 CONSTRAINT [PK_RCSurveyQuestion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCSurveyResult]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RCSurveyResult](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SurveyId] [int] NULL,
	[dtCreated] [datetime] NULL,
 CONSTRAINT [PK_RCSurveyResult] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RCSurveyResultDetail]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RCSurveyResultDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ResultId] [int] NULL,
	[QuestionId] [int] NULL,
	[Answer] [nvarchar](2000) NULL,
 CONSTRAINT [PK_RCSurveyResultDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RCTestimonials]    Script Date: 12/18/2017 4:51:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RCTestimonials](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dateCreated] [datetime] NULL,
	[firstName] [nvarchar](50) NULL,
	[lastName] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[company] [nvarchar](50) NULL,
	[position] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[quote] [nvarchar](max) NULL,
	[isApproved] [bit] NULL,
	[ip] [nvarchar](24) NULL,
	[RatingValue] [decimal](18, 0) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RCVideo]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCVideo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VidName] [varchar](64) NULL,
	[VidDesc] [varchar](1024) NULL,
	[Code] [varchar](1024) NULL,
	[Seq] [int] NULL,
	[CatId] [int] NULL,
	[isFeatured] [bit] NULL,
	[Slug] [nvarchar](256) NULL,
 CONSTRAINT [PK_RCVideo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RCVideoCat]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RCVideoCat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [varchar](100) NULL,
	[Seq] [int] NULL,
	[Slug] [nvarchar](256) NULL,
 CONSTRAINT [PK_RCVideoCat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[access] [int] NOT NULL,
	[lastAccessed] [datetime] NULL,
	[dateCreated] [datetime] NULL,
	[firstName] [nvarchar](50) NULL,
	[lastName] [nvarchar](50) NULL,
	[address1] [nvarchar](50) NULL,
	[address2] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[zip] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[fax] [nvarchar](50) NULL,
	[mobile] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[ip] [nvarchar](50) NULL,
	[notes] [ntext] NULL,
	[isMailingList] [bit] NULL,
	[UserGroup] [varchar](50) NULL,
 CONSTRAINT [PK__Users__3D5E1FD2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VideoItem]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VideoItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VidName] [varchar](64) NULL,
	[VidDesc] [varchar](512) NULL,
	[CatName] [varchar](64) NULL,
	[Code] [varchar](1024) NULL,
	[Seq] [int] NULL,
	[Slug] [nvarchar](256) NULL,
 CONSTRAINT [PK_VideoItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[RCEmail]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[RCEmail]
AS
SELECT     ID, Email, dtAdded
FROM         dbo.RCCEmail
WHERE     (Email NOT IN
                          (SELECT     Email
                            FROM          dbo.RCCEmailUnsubscribe))

GO

/****** Object:  Table [dbo].[RCLinkCat]    Script Date: 6/29/2018 8:41:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RCLinkCat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Image] [varbinary](max) NULL,
	[Seq] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[RCLinkCat] ADD  CONSTRAINT [DF_RCLinkCat_Seq]  DEFAULT ((1)) FOR [Seq]
GO


/****** Object:  Table [dbo].[WMALinks]    Script Date: 11/28/2017 4:11:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WMALinks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [nvarchar](max) NULL,
	[location] [nvarchar](max) NULL,
	[name] [varchar](50) NULL,
	[action] [varchar](50) NULL,
	[label] [varchar](255) NULL,
	[properties] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


/****** Object:  Table [dbo].[WMAImages]    Script Date: 11/28/2017 4:11:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WMAImages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[filename] [varchar](255) NULL,
	[src] [varchar](500) NULL,
	[properties] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


CREATE TABLE [dbo].[WMATableMapper](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](256) NOT NULL,
	[Table] [varchar](256) NOT NULL,
	[Active] [int] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[WMATableMapper] ADD  CONSTRAINT [DF_WMATableMapper_Active]  DEFAULT ((1)) FOR [Active]
GO

/****** Object:  View [dbo].[vProductCat]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vProductCat]
AS
SELECT        dbo.RCProduct.CatId, dbo.RCProduct.Img, dbo.RCProduct.Output, dbo.RCProduct.Gain, dbo.RCProduct.Pulse, dbo.RCProduct.Freq, dbo.RCProduct.Duty, dbo.RCProduct.Eff, dbo.RCProductCat.Id, 
                         dbo.RCProductCat.fId, dbo.RCProductCat.ParentId, dbo.RCProductCat.Label, dbo.RCProductCat.Seq, dbo.RCProductCat.LineId, dbo.RCProductCat.Name, dbo.RCProduct.Id AS pId, dbo.RCProduct.PackageId, 
                         dbo.RCProduct.Voltage, dbo.RCProduct.Matching, dbo.RCProductPackage.Name AS PkgName, dbo.RCProductPackage.Link, dbo.RCProduct.Name AS PName, dbo.RCProduct.Description, 
                         dbo.RCProduct.Attachment, dbo.RCProduct.AttachmentName, dbo.RCProduct.Data, dbo.RCProduct.BroFile, dbo.RCProduct.BroFileName, dbo.RCProduct.bLBandA, dbo.RCProduct.bLBandR, 
                         dbo.RCProduct.bSBandR, dbo.RCProduct.bCBandR, dbo.RCProduct.b50Ohm, dbo.RCProduct.bComm, dbo.RCProduct.bPallet
FROM            dbo.RCProduct INNER JOIN
                         dbo.RCProductCat ON dbo.RCProduct.CatId = dbo.RCProductCat.Id INNER JOIN
                         dbo.RCProductPackage ON dbo.RCProduct.PackageId = dbo.RCProductPackage.Id

GO
/****** Object:  View [dbo].[vRCDocCat]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vRCDocCat]
AS
SELECT        TOP (100) PERCENT Id, COALESCE
                             ((SELECT        Name + ' :: ' AS Expr1
                                 FROM            dbo.RCDocCat AS t2
                                 WHERE        (Id = t1.ParentId)) + Name, Name) AS Name
FROM            dbo.RCDocCat AS t1
ORDER BY Name



GO
/****** Object:  View [dbo].[vSurveyResult]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSurveyResult]
AS
SELECT        dbo.RCSurveyResultDetail.Id, dbo.RCSurveyResultDetail.ResultId, dbo.RCSurveyResultDetail.QuestionId, dbo.RCSurveyResultDetail.Answer, 
                         dbo.RCSurveyQuestion.SurveyId, dbo.RCSurveyQuestion.Question, dbo.RCSurveyQuestion.AnswerTypeId, dbo.RCSurveyQuestion.bTextResponse, 
                         dbo.RCSurveyQuestion.Seq
FROM            dbo.RCSurveyResultDetail INNER JOIN
                         dbo.RCSurveyQuestion ON dbo.RCSurveyResultDetail.QuestionId = dbo.RCSurveyQuestion.Id

GO
/****** Object:  View [dbo].[vTechnology]    Script Date: 6/3/2014 2:08:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vTechnology]
AS
SELECT     dbo.RCProduct.Id AS pId, dbo.RCProduct.Name, dbo.RCProduct.Img, dbo.RCProductCat.Id, dbo.RCProductCat.Label, dbo.RCProductCat.LineId, 
                      dbo.RCProduct.CatId
FROM         dbo.RCProduct INNER JOIN
                      dbo.RCProductCat ON dbo.RCProduct.CatId = dbo.RCProductCat.Id

GO
ALTER TABLE [dbo].[RCApps] ADD  CONSTRAINT [DF_RCApps_isFeatured]  DEFAULT ((0)) FOR [isFeatured]
GO
ALTER TABLE [dbo].[RCCEmail] ADD  CONSTRAINT [DF__RCCEmail__dtAdde__32E0915F]  DEFAULT (getdate()) FOR [dtAdded]
GO
ALTER TABLE [dbo].[RCContent] ADD  CONSTRAINT [DF_RCContent_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
GO
ALTER TABLE [dbo].[RCContent] ADD  CONSTRAINT [DF_RCContent_DateModified]  DEFAULT (getdate()) FOR [DateModified]
GO
ALTER TABLE [dbo].[RCGallery2] ADD  CONSTRAINT [DF_RCGallery2_isFeatured]  DEFAULT ((0)) FOR [isFeatured]
GO
ALTER TABLE [dbo].[RCGallery2] ADD  CONSTRAINT [DF_RCGallery2_flagShowThumb]  DEFAULT ((0)) FOR [flagShowThumb]
GO
ALTER TABLE [dbo].[RCGallery2Image] ADD  CONSTRAINT [DF_RCGallery2Image_isDeleted]  DEFAULT ('N') FOR [isDeleted]
GO
ALTER TABLE [dbo].[RCLiterature] ADD  CONSTRAINT [DF_RCLiterature_dtEntered]  DEFAULT (getdate()) FOR [dtEntered]
GO
ALTER TABLE [dbo].[RCLiterature] ADD  CONSTRAINT [DF_RCLiterature_dtModified]  DEFAULT (getdate()) FOR [dtModified]
GO
ALTER TABLE [dbo].[RCProduct] ADD  CONSTRAINT [DF_RCProduct_dtEntered]  DEFAULT (getdate()) FOR [dtEntered]
GO
ALTER TABLE [dbo].[RCProduct] ADD  CONSTRAINT [DF_RCProduct_dtModified]  DEFAULT (getdate()) FOR [dtModified]
GO
ALTER TABLE [dbo].[RCProduct] ADD  CONSTRAINT [DF_RCProduct_bHome]  DEFAULT ((0)) FOR [bHome]
GO
ALTER TABLE [dbo].[RCProduct] ADD  CONSTRAINT [DF_RCProduct_bLBandA]  DEFAULT ((0)) FOR [bLBandA]
GO
ALTER TABLE [dbo].[RCProduct] ADD  CONSTRAINT [DF_RCProduct_bLBandR]  DEFAULT ((0)) FOR [bLBandR]
GO
ALTER TABLE [dbo].[RCProduct] ADD  CONSTRAINT [DF_RCProduct_bSBandR]  DEFAULT ((0)) FOR [bSBandR]
GO
ALTER TABLE [dbo].[RCProduct] ADD  CONSTRAINT [DF_RCProduct_bCBandR]  DEFAULT ((0)) FOR [bCBandR]
GO
ALTER TABLE [dbo].[RCProduct] ADD  CONSTRAINT [DF_RCProduct_b50Ohm]  DEFAULT ((0)) FOR [b50Ohm]
GO
ALTER TABLE [dbo].[RCProduct] ADD  CONSTRAINT [DF_RCProduct_bComm]  DEFAULT ((0)) FOR [bComm]
GO
ALTER TABLE [dbo].[RCSurveyQuestion] ADD  CONSTRAINT [DF_RCSurveyQuestion_bTextResponse]  DEFAULT ((0)) FOR [bTextResponse]
GO
ALTER TABLE [dbo].[RCSurveyResult] ADD  CONSTRAINT [DF_RCSurveyResult_dtCreated]  DEFAULT (getdate()) FOR [dtCreated]
GO
ALTER TABLE [dbo].[RCVideo] ADD  CONSTRAINT [DF_RCVideo_isFeatured]  DEFAULT ((0)) FOR [isFeatured]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_isMailingList]  DEFAULT ((1)) FOR [isMailingList]
GO
ALTER TABLE [dbo].[RCProduct]  WITH CHECK ADD  CONSTRAINT [FK_RCProduct_RCProductCat] FOREIGN KEY([LineId])
REFERENCES [dbo].[RCProductLine] ([Id])
GO
ALTER TABLE [dbo].[RCProduct] CHECK CONSTRAINT [FK_RCProduct_RCProductCat]
GO
ALTER TABLE [dbo].[RCSurveyAnswer]  WITH CHECK ADD  CONSTRAINT [FK_RCSurveyAnswer_RCSurveyQuestion1] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[RCSurveyQuestion] ([Id])
GO
ALTER TABLE [dbo].[RCSurveyAnswer] CHECK CONSTRAINT [FK_RCSurveyAnswer_RCSurveyQuestion1]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RCCEmail"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RCEmail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RCEmail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[48] 4[23] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RCProduct"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 32
         End
         Begin Table = "RCProductCat"
            Begin Extent = 
               Top = 6
               Left = 248
               Bottom = 125
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RCProductPackage"
            Begin Extent = 
               Top = 138
               Left = 54
               Bottom = 231
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4965
         Alias = 900
         Table = 1815
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vProductCat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vProductCat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RCSurveyResultDetail"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RCSurveyQuestion"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 135
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vSurveyResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vSurveyResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RCProduct"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "RCProductCat"
            Begin Extent = 
               Top = 6
               Left = 239
               Bottom = 114
               Right = 403
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1890
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vTechnology'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vTechnology'
GO

SET IDENTITY_INSERT [dbo].[RCStringCat] ON 
GO
INSERT [dbo].[RCStringCat] ([Id], [Name]) VALUES (1, N'Config Flags')
GO
INSERT [dbo].[RCStringCat] ([Id], [Name]) VALUES (2, N'Email Recipients')
GO
INSERT [dbo].[RCStringCat] ([Id], [Name]) VALUES (3, N'Site Info')
GO
INSERT [dbo].[RCStringCat] ([Id], [Name]) VALUES (4, N'SMTP Auth')
GO
INSERT [dbo].[RCStringCat] ([Id], [Name]) VALUES (5, N'Image Settings')
GO
INSERT [dbo].[RCStringCat] ([Id], [Name]) VALUES (6, N'Misc Settings')
GO
SET IDENTITY_INSERT [dbo].[RCStringCat] OFF
GO

SET IDENTITY_INSERT [dbo].[RCString] ON 

GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (1, N'GenContact', N'erdrick.s@romeocomp.com', 2)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (2, N'Address', N'316 Alta Vista Terrace', 3)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (3, N'Address2', N'', 3)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (4, N'City-State-Zip', N'Creve Coeur IL 61610', 3)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (5, N'Host', N'mail.real-fast.com', 4)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (6, N'SMTPAccount', N'test@real-fast.com', 4)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (7, N'SMTPPassword', N'real76005fast', 4)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (8, N'SMTP_Auth_Enabled', N'True', 4)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (9, N'Phone', N'309-397-7717', 3)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (10, N'Phone2', N'309-698-0094', 3)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (11, N'Fax', N'555-555-1234', 3)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (12, N'Staff Bios', N'False', 1)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (13, N'Content', N'True', 1)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (14, N'Docs', N'False', 1)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (15, N'Eblast', N'False', 1)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (16, N'Events', N'False', 1)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (17, N'Gallery', N'False', 1)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (18, N'Users', N'True', 1)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (19, N'Videos', N'False', 1)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (20, N'Testimonials', N'False', 1)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (21, N'SEO', N'True', 1)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (22, N'News', N'False', 1)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (23, N'Promo', N'False', 1)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (24, N'Large', N'1024', 5)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (25, N'Medium', N'755', 5)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (26, N'Small', N'400', 5)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (27, N'Thumb', N'160', 5)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (28, N'Gallery2', N'False', 1)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (29, N'MaxTestimonialLength', N'128', 6)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (30, N'QuickContact', N'mike.m@rccwebmedia.com', 2)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (31, N'GenContact', N'mike.m@rccwebmedia.com', 2)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (32, N'QuickContact', N'mike.m@rccwebmedia.com', 2)
GO
INSERT [dbo].[RCString] ([Id], [Name], [Value], [CatId]) VALUES (33, N'Copyright', N'&copy; {Today.Year} Company Name', 3)
GO
SET IDENTITY_INSERT [dbo].[RCString] OFF
GO



INSERT INTO [dbo].[WMALinks] ([url],[location],[name],[action],[label],[properties]) VALUES(N'about', N'About.aspx', N'About', N'Rewrite', N'About', N'{"alt":"","title":"","target":"","rel":"","class":"","style":"","onclick":""}')
GO
INSERT INTO [dbo].[WMALinks] ([url],[location],[name],[action],[label],[properties]) VALUES(N'news', N'news.aspx', N'News', N'Rewrite', N'News', N'{"alt":"","title":"","target":"","rel":"","class":"","style":"","onclick":""}')
GO
INSERT INTO [dbo].[WMALinks] ([url],[location],[name],[action],[label],[properties]) VALUES(N'news/*', N'newsstory.aspx', N'', N'Rewrite', N'', N'{"alt":"","title":"","target":"","rel":"","class":"","style":"","onclick":""}')
GO
INSERT INTO [dbo].[WMALinks] ([url],[location],[name],[action],[label],[properties]) VALUES(N'reviews', N'reviews.aspx', N'Reviews', N'Rewrite', N'Reviews', N'{"alt":"","title":"","target":"","rel":"","class":"","style":"","onclick":""}')
GO
INSERT INTO [dbo].[WMALinks] ([url],[location],[name],[action],[label],[properties]) VALUES(N'videos', N'videos.apsx', N'Videos', N'Rewrite', N'Videos', N'{"alt":"","title":"","target":"","rel":"","class":"","style":"","onclick":""}')
GO
INSERT INTO [dbo].[WMALinks] ([url],[location],[name],[action],[label],[properties]) VALUES(N'gallery', N'gallerylist.aspx', N'Gallery', N'Rewrite', N'Gallery', N'{"alt":"","title":"","target":"","rel":"","class":"","style":"","onclick":""}')
GO
INSERT INTO [dbo].[WMALinks] ([url],[location],[name],[action],[label],[properties]) VALUES(N'gallery/*', N'gallery.aspx', N'Gallery Images', N'Rewrite', N'', N'{"alt":"","title":"","target":"","rel":"","class":"","style":"","onclick":""}')
GO
INSERT INTO [dbo].[WMALinks] ([url],[location],[name],[action],[label],[properties]) VALUES(N'gallery/category/*', N'gallerylist.aspx', N'Gallery Category', N'Rewrite', N'', N'{"alt":"","title":"","target":"","rel":"","class":"","style":"","onclick":""}')
GO
INSERT INTO [dbo].[WMALinks] ([url],[location],[name],[action],[label],[properties]) VALUES(N'contact', N'contact.aspx', N'Contact', N'Rewrite', N'Contact', N'{"alt":"","title":"","target":"","rel":"","class":"","style":"","onclick":""}')
GO
INSERT INTO [dbo].[WMALinks] ([url],[location],[name],[action],[label],[properties]) VALUES(N'links', N'Links.aspx', N'Links', N'Rewrite', N'Links', N'{"alt":"","title":"","target":"","rel":"","class":"","style":"","onclick":""}')
GO
INSERT INTO [dbo].[WMALinks] ([url],[location],[name],[action],[label],[properties]) VALUES(N'promotions', N'Promotions.aspx', N'Promotions', N'Rewrite', N'Promotions', N'{"alt":"","title":"","target":"","rel":"","class":"","style":"","onclick":""}')
GO
INSERT INTO [dbo].[WMALinks] ([url],[location],[name],[action],[label],[properties]) VALUES(N'privacy-policy', N'privacy.aspx', N'Privacy Policy', N'Rewrite', N'Privacy Policy', N'{"alt":"","title":"","target":"","rel":"","class":"","style":"","onclick":""}')
GO
INSERT INTO [dbo].[WMALinks] ([url],[location],[name],[action],[label],[properties]) VALUES(N'terms-and-conditions', N'users.aspx', N'Terms & Conditions', N'Rewrite', N'Terms & Conditions', N'{"alt":"","title":"","target":"","rel":"","class":"","style":"","onclick":""}')
GO
INSERT INTO [dbo].[WMALinks] ([url],[location],[name],[action],[label],[properties]) VALUES(N'thank-you/*', N'ThankYou.aspx', N'', N'Rewrite', N'', N'{"alt":"","title":"","target":"","rel":"","class":"","style":"","onclick":""}')
GO

INSERT INTO [dbo].[RCContent]([Name],[Value],[Slug]) VALUES(N'Contact Thank You', N'We appreciate your request and we be contacting you shortly', N'for-contacting-us')
GO
INSERT INTO [dbo].[RCContent]([Name],[Value],[Slug]) VALUES(N'Reviews Thank You', N'We appreciate your feedback.', N'for-your-review')
GO
INSERT INTO [dbo].[RCContent]([Name],[Value],[Slug]) VALUES(N'Contact', N'For more information please fill out the form below.', N'')
GO
INSERT INTO [dbo].[RCContent]([Name],[Value],[Slug]) VALUES(N'Reviews', N'', N'<h1>Reviews</h1><p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', N'')
GO
INSERT INTO [dbo].[RCContent]([Name],[Value],[Slug]) VALUES(N'News', N'', N'<h1>News</h1><p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', N'')
GO
INSERT INTO [dbo].[RCContent]([Name],[Value],[Slug]) VALUES(N'About', N'', N'<h1>About</h1><p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', N'')
GO
INSERT INTO [dbo].[RCContent]([Name],[Value],[Slug]) VALUES(N'Home', N'<h1>Welcome</h1><p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', N'')
GO
INSERT INTO [dbo].[RCContent]([Name],[Value],[Slug]) VALUES(N'Gallery', N'', N'<h1>Gallery</h1><p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', N'')
GO
INSERT INTO [dbo].[RCContent]([Name],[Value],[Slug]) VALUES(N'Videos', N'', N'<h1>Videos</h1><p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', N'')
GO
INSERT INTO [dbo].[RCContent]([Name],[Value],[Slug]) VALUES(N'Links', N'', N'<h1>Links</h1><p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', N'')
GO
INSERT INTO [dbo].[RCContent]([Name],[Value],[Slug]) VALUES(N'Promotions', N'', N'<h1>Promotions</h1><p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', N'')
GO
INSERT INTO [dbo].[RCContent]([Name],[Value],[Slug]) VALUES(N'Privacy Policy', N'<p>This privacy notice discloses the privacy practices for {Site Url}. This privacy notice applies solely to information collected by this website. It will notify you of the following:</p><ol><li>What personally identifiable information is collected from you through the website, how it is used and with whom it may be shared.</li><li>What choices are available to you regarding the use of your data.</li><li>How you can correct any inaccuracies in the information.</li></ol><h3>Information Collection, Use, and Sharing</h3><p>{Company Name} is the sole owner of the information collected on this site. We only have access to/collect information that you voluntarily give us via email or other direct contact from you. We will not sell or rent this information to anyone.</p><p>We will use your information to respond to you, regarding the reason you contacted us. We will not share your information with any third party outside of our organization, other than as necessary to fulfill your request, e.g. to ship an order.</p><p>Unless you ask us not to, we may contact you via email in the future to tell you about specials, new products or services, or changes to this privacy policy.</p><h3>Your Access to and Control Over Information</h3><p>You may opt out of any future contacts from us at any time. You can do the following at any time by contacting us via the email address or phone number given on our website:</p><ul><li>See what data we have about you, if any.</li><li>Change/correct any data we have about you.</li><li>Have us delete any data we have about you.</li><li>Express any concern you have about our use of your data.</li></ul>', N'')
GO
INSERT INTO [dbo].[RCContent]([Name],[Value],[Slug]) VALUES(N'Terms & Conditions', N'<p>Please note that this website is provided &quot;as is&quot; and should be accessed and used by you at your own risk. Although reasonable efforts are used to ensure that the website will be current and will contain no errors or inaccuracies, no representations, warranties, guarantees or conditions (whether express or implied) are given as to the operation of this website or that this website and the information, content or materials included in this website will be error free or completely accurate or current at all times, or at any time.</p><p>All content, including without limitation, all text, design, graphics, drawings, photographs, code and software, and all organization and presentation of such content, which forms a part of this website, are subject to intellectual property rights, including copyright and trade-marks held by or licensed to {Company Name}. All such rights are expressly reserved.</p><p>You are permitted to copy electronically and print hard copies of pages from this website for your own non-commercial and lawful use, provided that such copies clearly display the copyright and any other proprietary notices of {Company Name}. No other copying of this website, in whole or in part, is permitted without the express written authorization of {Company Name}.</p><p>&quot;{Company Name}&quot;, &nbsp;and certain other names, words, logos, slogans and images used on this website are the property of and are subject to trade-mark rights held by {Company Name}. Certain other trade-marks, trade names, words, logos, slogans and images listed on this website are the property of their respective owners. Use of any such property, except as expressly authorized, shall constitute a violation of the rights of the owner of the property. This website may contain links to other websites. All such other websites are independent from this website and from {Company Name}. {Company Name} has no control over and expressly disclaims any liability for such websites or their contents. The provision of any link does not constitute an endorsement of such linked website by {Company Name}.</p><p>{Company Name} and its directors, employees, agents, representatives, successors and assigns shall not be liable for any damages whatsoever arising out or related to access to or use of this website or any other website linked to this website, whether or not such damages might be foreseeable and even if {Company Name} is informed of their possibility, including without limitations liability for direct, indirect, special, punitive, incidental or consequential damages (including lost profits, lost savings, business interruption or loss of data).</p><p>The Terms and Conditions related to the use of this Website, together with the Website Privacy Policy, constitute the entire agreement between {Company Name} and you pertaining to the subject matter hereof, and supersede any and all written and oral agreements previously existing between us with respect to such subject matter.</p>', N'')
GO



INSERT INTO [dbo].[WMATableMapper] ([Name] ,[Table]) VALUES (N'Content', N'RCContent')
GO
INSERT INTO [dbo].[WMATableMapper] ([Name] ,[Table]) VALUES (N'Links', N'WMALinks')
GO
INSERT INTO [dbo].[WMATableMapper] ([Name] ,[Table]) VALUES (N'Images', N'WMAImages')
GO
INSERT INTO [dbo].[WMATableMapper] ([Name] ,[Table]) VALUES (N'News', N'RCNews')
GO
INSERT INTO [dbo].[WMATableMapper] ([Name] ,[Table]) VALUES (N'News Category', N'RCNewCat')
GO
INSERT INTO [dbo].[WMATableMapper] ([Name] ,[Table]) VALUES (N'Gallery', N'RCGallery2')
GO
INSERT INTO [dbo].[WMATableMapper] ([Name] ,[Table]) VALUES (N'Gallery Category', N'RCGallery2Cat')
GO
INSERT INTO [dbo].[WMATableMapper] ([Name] ,[Table]) VALUES (N'Gallery Image', N'RCGallery2Image')
GO
INSERT INTO [dbo].[WMATableMapper] ([Name] ,[Table]) VALUES (N'External Links', N'RCLink')
GO
INSERT INTO [dbo].[WMATableMapper] ([Name] ,[Table]) VALUES (N'External Links Category', N'RCLinkCat')
GO


SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([Id], [access], [lastAccessed], [dateCreated], [firstName], [lastName], [address1], [address2], [city], [state], [zip], [country], [phone], [fax], [mobile], [email], [password], [ip], [notes], [isMailingList], [UserGroup]) VALUES (1, 11, CAST(0x0000A13900000000 AS DateTime), CAST(0x0000A13900000000 AS DateTime), N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'rcc@romeocomp.com', N'wma$#@!2', N'', N'', 0, N'')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO

/****** PROCEDURE for redirect rule in the Web.config file ******/
CREATE PROCEDURE [dbo].[GetUrlRedirect] 
@input nvarchar(256)
AS
SELECT ur.location
FROM dbo.WMALinks ur 
WHERE ur.url = @input Or ur.url + '/' = @input And ur.action = 'Redirect'
GO

/****** PROCEDURE for rewrite rule in the Web.config file ******/
CREATE PROCEDURE [dbo].[GetUrlRewrite] 
@input nvarchar(256)
AS
SELECT TOP 1 location
FROM dbo.WMALinks
WHERE PATINDEX(REPLACE(url, '*', '%'), @input) > 0
AND action ='Rewrite'
ORDER BY LEN(REPLACE(REPLACE(url, '*/', ''), '/*', '')) DESC
GO

