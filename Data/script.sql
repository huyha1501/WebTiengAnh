USE [TestEnglish]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[BannerId] [int] NOT NULL,
	[Link] [varchar](500) NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[BannerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartId] [int] NOT NULL,
	[UserId] [varchar](36) NULL,
	[CourseId] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](255) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](500) NULL,
	[Thumbnail] [varchar](250) NULL,
	[CourseContent] [nvarchar](max) NULL,
	[CourseDescription] [nvarchar](max) NULL,
	[Price] [int] NULL,
	[PriceOld] [int] NULL,
	[Status] [bit] NULL,
	[IsHomePageShow] [bit] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseVideo]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseVideo](
	[VideoId] [varchar](36) NOT NULL,
	[CourseId] [int] NULL,
	[VideoName] [varchar](500) NULL,
	[VideoLink] [varchar](500) NULL,
 CONSTRAINT [PK_CourseVideo] PRIMARY KEY CLUSTERED 
(
	[VideoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[FeedBackId] [int] NOT NULL,
	[UserId] [varchar](36) NULL,
	[Content] [nvarchar](max) NULL,
	[CreateTime] [bigint] NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[FeedBackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HelpRequest]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HelpRequest](
	[HelpRequestId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](255) NULL,
	[ContentRequest] [nvarchar](max) NULL,
	[Status] [varchar](20) NULL,
	[CreateTime] [bigint] NULL,
 CONSTRAINT [PK_HelpRequest] PRIMARY KEY CLUSTERED 
(
	[HelpRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsId] [bigint] IDENTITY(1,1) NOT NULL,
	[NewsCategoryId] [int] NULL,
	[Title] [nvarchar](500) NULL,
	[Thumbnail] [varchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[CreateTime] [bigint] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsCategory]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsCategory](
	[NewsCategoryId] [int] NOT NULL,
	[NewsCategoryName] [nvarchar](500) NULL,
	[IsShowHomePage] [bit] NULL,
	[TotalNews] [int] NULL,
 CONSTRAINT [PK_NewsCategory] PRIMARY KEY CLUSTERED 
(
	[NewsCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [varchar](36) NOT NULL,
	[OrderCode] [varchar](20) NULL,
	[UserId] [varchar](36) NULL,
	[Note] [varchar](max) NULL,
	[TotalCost] [int] NULL,
	[TotalItem] [int] NULL,
	[Status] [varchar](20) NULL,
	[CreateTime] [bigint] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [varchar](36) NULL,
	[CourseId] [int] NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToeicFullTest]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToeicFullTest](
	[ToeicFullTestId] [varchar](36) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[TotalTime] [smallint] NULL,
	[CreateTime] [bigint] NULL,
 CONSTRAINT [PK_ToeicFullTest] PRIMARY KEY CLUSTERED 
(
	[ToeicFullTestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToeicFullTestDescription]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToeicFullTestDescription](
	[ToeicFullTestDescriptionId] [varchar](36) NOT NULL,
	[ToeicFullTestId] [varchar](36) NULL,
	[Part] [int] NULL,
	[Picture] [varchar](500) NULL,
	[Audio] [varchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[CreateTime] [bigint] NULL,
 CONSTRAINT [PK_ToeicFullTestDescription] PRIMARY KEY CLUSTERED 
(
	[ToeicFullTestDescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToeicFullTestDescriptionQuestion]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToeicFullTestDescriptionQuestion](
	[ToeicFullTestDescriptionQuestionId] [bigint] IDENTITY(1,1) NOT NULL,
	[ToeicFullTestDescriptionId] [varchar](36) NULL,
	[ToeicFullTestId] [varchar](36) NULL,
	[Part] [int] NULL,
	[Question] [nvarchar](max) NULL,
	[Answer] [nvarchar](max) NULL,
 CONSTRAINT [PK_ToeicFullTestDescriptionQuestion] PRIMARY KEY CLUSTERED 
(
	[ToeicFullTestDescriptionQuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToeicMiniTest]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToeicMiniTest](
	[ToeicMiniTestId] [varchar](36) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[TotalTime] [smallint] NULL,
	[CreateTime] [bigint] NULL,
 CONSTRAINT [PK_ToeicMiniTest] PRIMARY KEY CLUSTERED 
(
	[ToeicMiniTestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToeicMiniTestDescription]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToeicMiniTestDescription](
	[ToeicMiniTestDescriptionId] [varchar](36) NOT NULL,
	[ToeicMiniTestId] [varchar](36) NULL,
	[Audio] [varchar](500) NULL,
	[Picture] [varchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[Part] [int] NULL,
	[PartName] [nvarchar](50) NULL,
	[CreateTime] [bigint] NULL,
 CONSTRAINT [PK_ToeicMiniTestDescription] PRIMARY KEY CLUSTERED 
(
	[ToeicMiniTestDescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToeicMiniTestDescriptionQuestion]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToeicMiniTestDescriptionQuestion](
	[ToeicMiniTestDescriptionQuestionId] [bigint] IDENTITY(1,1) NOT NULL,
	[ToeicMiniTestDescriptionId] [varchar](36) NULL,
	[ToeicMiniTestId] [varchar](36) NULL,
	[Part] [int] NULL,
	[Question] [nvarchar](max) NULL,
	[Answer] [nvarchar](max) NULL,
 CONSTRAINT [PK_ToeicMiniTestDescriptionQuestion] PRIMARY KEY CLUSTERED 
(
	[ToeicMiniTestDescriptionQuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToeicSkillTest]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToeicSkillTest](
	[ToeicSkillTestId] [varchar](36) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[TotalTime] [smallint] NULL,
	[Part] [int] NULL,
	[CreateTime] [bigint] NULL,
 CONSTRAINT [PK_ToeicSkillTest] PRIMARY KEY CLUSTERED 
(
	[ToeicSkillTestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToeicSkillTestDescription]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToeicSkillTestDescription](
	[ToeicSkillTestDescriptionId] [varchar](36) NOT NULL,
	[ToeicSkillTestId] [varchar](36) NULL,
	[Audio] [varchar](500) NULL,
	[Picture] [varchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[CreateTime] [bigint] NULL,
 CONSTRAINT [PK_ToeicSkillTestDescription] PRIMARY KEY CLUSTERED 
(
	[ToeicSkillTestDescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToeicSkillTestDescriptionQuestion]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToeicSkillTestDescriptionQuestion](
	[ToeicSkillTestDescriptionQuestionId] [bigint] IDENTITY(1,1) NOT NULL,
	[ToeicSkillTestDescriptionId] [varchar](36) NULL,
	[ToeicSkillTestId] [varchar](36) NULL,
	[Question] [nvarchar](max) NULL,
	[Answer] [nvarchar](max) NULL,
 CONSTRAINT [PK_ToeicSkillTestDescriptionQuestion] PRIMARY KEY CLUSTERED 
(
	[ToeicSkillTestDescriptionQuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [varchar](36) NOT NULL,
	[Avatar] [varchar](500) NULL,
	[Name] [nvarchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Phone] [varchar](20) NULL,
	[Password] [varchar](255) NULL,
	[Token] [varchar](max) NULL,
	[CreateTime] [bigint] NULL,
	[Enable] [bit] NULL,
	[Admin] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTestResult]    Script Date: 22/11/2022 10:27:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTestResult](
	[UserTestResultId] [bigint] IDENTITY(1,1) NOT NULL,
	[TestId] [varchar](36) NULL,
	[TestName] [nvarchar](500) NULL,
	[TestSkill] [nvarchar](500) NULL,
	[UserId] [varchar](36) NULL,
	[ListQuestion] [nvarchar](max) NULL,
	[TotalCorrect] [int] NULL,
	[TotalQuestion] [int] NULL,
	[CreateTime] [bigint] NULL,
	[TotalTimeEslapse] [int] NULL,
	[TypeTest] [varchar](50) NULL,
	[TotalTime] [int] NULL,
 CONSTRAINT [PK_UserTestResult] PRIMARY KEY CLUSTERED 
(
	[UserTestResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Course]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[CourseVideo]  WITH CHECK ADD  CONSTRAINT [FK_CourseVideo_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[CourseVideo] CHECK CONSTRAINT [FK_CourseVideo_Course]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_FeedBack_User]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsCategory] FOREIGN KEY([NewsCategoryId])
REFERENCES [dbo].[NewsCategory] ([NewsCategoryId])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_NewsCategory]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Course]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[ToeicFullTestDescription]  WITH CHECK ADD  CONSTRAINT [FK_ToeicFullTestDescription_ToeicFullTest] FOREIGN KEY([ToeicFullTestId])
REFERENCES [dbo].[ToeicFullTest] ([ToeicFullTestId])
GO
ALTER TABLE [dbo].[ToeicFullTestDescription] CHECK CONSTRAINT [FK_ToeicFullTestDescription_ToeicFullTest]
GO
ALTER TABLE [dbo].[ToeicFullTestDescriptionQuestion]  WITH CHECK ADD  CONSTRAINT [FK_ToeicFullTestDescriptionQuestion_ToeicFullTest] FOREIGN KEY([ToeicFullTestId])
REFERENCES [dbo].[ToeicFullTest] ([ToeicFullTestId])
GO
ALTER TABLE [dbo].[ToeicFullTestDescriptionQuestion] CHECK CONSTRAINT [FK_ToeicFullTestDescriptionQuestion_ToeicFullTest]
GO
ALTER TABLE [dbo].[ToeicFullTestDescriptionQuestion]  WITH CHECK ADD  CONSTRAINT [FK_ToeicFullTestDescriptionQuestion_ToeicFullTestDescription] FOREIGN KEY([ToeicFullTestDescriptionId])
REFERENCES [dbo].[ToeicFullTestDescription] ([ToeicFullTestDescriptionId])
GO
ALTER TABLE [dbo].[ToeicFullTestDescriptionQuestion] CHECK CONSTRAINT [FK_ToeicFullTestDescriptionQuestion_ToeicFullTestDescription]
GO
ALTER TABLE [dbo].[ToeicMiniTestDescription]  WITH CHECK ADD  CONSTRAINT [FK_ToeicMiniTestDescription_ToeicMiniTest] FOREIGN KEY([ToeicMiniTestId])
REFERENCES [dbo].[ToeicMiniTest] ([ToeicMiniTestId])
GO
ALTER TABLE [dbo].[ToeicMiniTestDescription] CHECK CONSTRAINT [FK_ToeicMiniTestDescription_ToeicMiniTest]
GO
ALTER TABLE [dbo].[ToeicMiniTestDescriptionQuestion]  WITH CHECK ADD  CONSTRAINT [FK_ToeicMiniTestDescriptionQuestion_ToeicMiniTest] FOREIGN KEY([ToeicMiniTestId])
REFERENCES [dbo].[ToeicMiniTest] ([ToeicMiniTestId])
GO
ALTER TABLE [dbo].[ToeicMiniTestDescriptionQuestion] CHECK CONSTRAINT [FK_ToeicMiniTestDescriptionQuestion_ToeicMiniTest]
GO
ALTER TABLE [dbo].[ToeicMiniTestDescriptionQuestion]  WITH CHECK ADD  CONSTRAINT [FK_ToeicMiniTestDescriptionQuestion_ToeicMiniTestDescription] FOREIGN KEY([ToeicMiniTestDescriptionId])
REFERENCES [dbo].[ToeicMiniTestDescription] ([ToeicMiniTestDescriptionId])
GO
ALTER TABLE [dbo].[ToeicMiniTestDescriptionQuestion] CHECK CONSTRAINT [FK_ToeicMiniTestDescriptionQuestion_ToeicMiniTestDescription]
GO
ALTER TABLE [dbo].[ToeicSkillTestDescription]  WITH CHECK ADD  CONSTRAINT [FK_ToeicSkillTestDescription_ToeicSkillTest] FOREIGN KEY([ToeicSkillTestId])
REFERENCES [dbo].[ToeicSkillTest] ([ToeicSkillTestId])
GO
ALTER TABLE [dbo].[ToeicSkillTestDescription] CHECK CONSTRAINT [FK_ToeicSkillTestDescription_ToeicSkillTest]
GO
ALTER TABLE [dbo].[ToeicSkillTestDescriptionQuestion]  WITH CHECK ADD  CONSTRAINT [FK_ToeicSkillTestDescriptionQuestion_ToeicSkillTest] FOREIGN KEY([ToeicSkillTestId])
REFERENCES [dbo].[ToeicSkillTest] ([ToeicSkillTestId])
GO
ALTER TABLE [dbo].[ToeicSkillTestDescriptionQuestion] CHECK CONSTRAINT [FK_ToeicSkillTestDescriptionQuestion_ToeicSkillTest]
GO
ALTER TABLE [dbo].[ToeicSkillTestDescriptionQuestion]  WITH CHECK ADD  CONSTRAINT [FK_ToeicSkillTestDescriptionQuestion_ToeicSkillTestDescription] FOREIGN KEY([ToeicSkillTestDescriptionId])
REFERENCES [dbo].[ToeicSkillTestDescription] ([ToeicSkillTestDescriptionId])
GO
ALTER TABLE [dbo].[ToeicSkillTestDescriptionQuestion] CHECK CONSTRAINT [FK_ToeicSkillTestDescriptionQuestion_ToeicSkillTestDescription]
GO
ALTER TABLE [dbo].[UserTestResult]  WITH CHECK ADD  CONSTRAINT [FK_UserTestResult_ToeicFullTest] FOREIGN KEY([TestId])
REFERENCES [dbo].[ToeicFullTest] ([ToeicFullTestId])
GO
ALTER TABLE [dbo].[UserTestResult] CHECK CONSTRAINT [FK_UserTestResult_ToeicFullTest]
GO
ALTER TABLE [dbo].[UserTestResult]  WITH CHECK ADD  CONSTRAINT [FK_UserTestResult_ToeicMiniTest] FOREIGN KEY([TestId])
REFERENCES [dbo].[ToeicMiniTest] ([ToeicMiniTestId])
GO
ALTER TABLE [dbo].[UserTestResult] CHECK CONSTRAINT [FK_UserTestResult_ToeicMiniTest]
GO
ALTER TABLE [dbo].[UserTestResult]  WITH CHECK ADD  CONSTRAINT [FK_UserTestResult_ToeicSkillTest] FOREIGN KEY([TestId])
REFERENCES [dbo].[ToeicSkillTest] ([ToeicSkillTestId])
GO
ALTER TABLE [dbo].[UserTestResult] CHECK CONSTRAINT [FK_UserTestResult_ToeicSkillTest]
GO
ALTER TABLE [dbo].[UserTestResult]  WITH CHECK ADD  CONSTRAINT [FK_UserTestResult_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserTestResult] CHECK CONSTRAINT [FK_UserTestResult_User]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã banner' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'BannerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Link ảnh banner' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Banner', @level2type=N'COLUMN',@level2name=N'Link'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã giỏ hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CartId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã người dùng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khóa học' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cart', @level2type=N'COLUMN',@level2name=N'CourseId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã thông tin liên hệ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contact', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contact', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contact', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ trung tâm ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contact', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khóa học' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'CourseId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên khóa học' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'CourseName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đường dẫn tới file ảnh đại diện' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'Thumbnail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả chi tiết khóa học' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'CourseContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả khóa học' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'CourseDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá khóa học' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá khóa học trước khuyến mại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN',@level2name=N'PriceOld'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã video khóa học' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CourseVideo', @level2type=N'COLUMN',@level2name=N'VideoId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khóa học' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CourseVideo', @level2type=N'COLUMN',@level2name=N'CourseId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên video' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CourseVideo', @level2type=N'COLUMN',@level2name=N'VideoName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đường dẫn video' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CourseVideo', @level2type=N'COLUMN',@level2name=N'VideoLink'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã phản hồi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FeedBack', @level2type=N'COLUMN',@level2name=N'FeedBackId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã người dùng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FeedBack', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nội dung phản hồi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FeedBack', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian tạo phản hồi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FeedBack', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã yêu cầu tư vấn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HelpRequest', @level2type=N'COLUMN',@level2name=N'HelpRequestId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên người gửi yêu cầu tư vấn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HelpRequest', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại của người gửi yêu cầu tư vấn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HelpRequest', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email của người gửi yêu cầu tư vấn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HelpRequest', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nội dung yêu cầu tư vấn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HelpRequest', @level2type=N'COLUMN',@level2name=N'ContentRequest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái xử lý yêu cầu tư vấn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HelpRequest', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày gửi yêu cầu tư vấn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HelpRequest', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tin tức' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'NewsId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại tin tức' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'NewsCategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tiêu đề tin tức' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ảnh đại diện' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'Thumbnail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả tin tức ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nội dung tin tức' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian tạo tin tức' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'News', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại tin tức' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NewsCategory', @level2type=N'COLUMN',@level2name=N'NewsCategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên loại tin tức' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NewsCategory', @level2type=N'COLUMN',@level2name=N'NewsCategoryName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cho phép hiển thị lên trang chủ hay không' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NewsCategory', @level2type=N'COLUMN',@level2name=N'IsShowHomePage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tổng số tin tức' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NewsCategory', @level2type=N'COLUMN',@level2name=N'TotalNews'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã đơn đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code đơn đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'OrderCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã học viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ghi chú' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'Note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tổng giá đơn hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tổng số lượng khóa học đặt mua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'TotalItem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái đơn đặt hàng ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày tạo đơn đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết đơn đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'COLUMN',@level2name=N'OrderDetailId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã đơn đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khóa học' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'COLUMN',@level2name=N'CourseId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá mua khóa học' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã bài FullTest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTest', @level2type=N'COLUMN',@level2name=N'ToeicFullTestId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên bài kiểm tra ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTest', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian làm bài kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTest', @level2type=N'COLUMN',@level2name=N'TotalTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày tạo bài kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTest', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã mô tả phần kiểm tra bài FullTest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTestDescription', @level2type=N'COLUMN',@level2name=N'ToeicFullTestDescriptionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã bài kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTestDescription', @level2type=N'COLUMN',@level2name=N'ToeicFullTestId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phần' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTestDescription', @level2type=N'COLUMN',@level2name=N'Part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTestDescription', @level2type=N'COLUMN',@level2name=N'Picture'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Âm thanh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTestDescription', @level2type=N'COLUMN',@level2name=N'Audio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả phần kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTestDescription', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian tạo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTestDescription', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã câu hỏi bài FullTest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'ToeicFullTestDescriptionQuestionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã mô tả phần kiểm tra bài FullTest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'ToeicFullTestDescriptionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã bài kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'ToeicFullTestId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phần' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'Part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Câu hỏi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'Question'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Câu trả lời' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicFullTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'Answer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã bài MiniTest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTest', @level2type=N'COLUMN',@level2name=N'ToeicMiniTestId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên bài kiểm tra ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTest', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian làm bài kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTest', @level2type=N'COLUMN',@level2name=N'TotalTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày tạo bài kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTest', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã mô tả phần kiểm tra bài MiniTest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTestDescription', @level2type=N'COLUMN',@level2name=N'ToeicMiniTestDescriptionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã bài MiniTest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTestDescription', @level2type=N'COLUMN',@level2name=N'ToeicMiniTestId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Âm thanh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTestDescription', @level2type=N'COLUMN',@level2name=N'Audio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTestDescription', @level2type=N'COLUMN',@level2name=N'Picture'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả phần kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTestDescription', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phần' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTestDescription', @level2type=N'COLUMN',@level2name=N'Part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên phần' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTestDescription', @level2type=N'COLUMN',@level2name=N'PartName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian tạo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTestDescription', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã câu hỏi bài MiniTest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'ToeicMiniTestDescriptionQuestionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã mô tả phần kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'ToeicMiniTestDescriptionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã bài MiniTest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'ToeicMiniTestId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phần' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'Part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Câu hỏi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'Question'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Câu trả lời' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicMiniTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'Answer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã bài MiniTest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTest', @level2type=N'COLUMN',@level2name=N'ToeicSkillTestId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên bài kiểm tra ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTest', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian làm bài kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTest', @level2type=N'COLUMN',@level2name=N'TotalTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phần' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTest', @level2type=N'COLUMN',@level2name=N'Part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày tạo bài kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTest', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã mô tả phần kiểm tra bài SkillTest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTestDescription', @level2type=N'COLUMN',@level2name=N'ToeicSkillTestDescriptionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã bài SkillTest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTestDescription', @level2type=N'COLUMN',@level2name=N'ToeicSkillTestId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Âm thanh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTestDescription', @level2type=N'COLUMN',@level2name=N'Audio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTestDescription', @level2type=N'COLUMN',@level2name=N'Picture'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mô tả phần kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTestDescription', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian tạo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTestDescription', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã câu hỏi bài SkillTest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'ToeicSkillTestDescriptionQuestionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã mô tả phần kiểm tra bài SkillTest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'ToeicSkillTestDescriptionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã bài SkillTest' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'ToeicSkillTestId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Câu hỏi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'Question'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Câu trả lời' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ToeicSkillTestDescriptionQuestion', @level2type=N'COLUMN',@level2name=N'Answer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã người dùng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ảnh đại diện' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên người dùng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email của người dùng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số điện thoại của người dùng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Xác thực tài khoản bằng Token' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian tạo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trạng thái tài khoản (đã kích hoạt, chưa kích hoạt)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Enable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Có là quản trị viên hay không' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã kết quả bài kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserTestResult', @level2type=N'COLUMN',@level2name=N'UserTestResultId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã bài kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserTestResult', @level2type=N'COLUMN',@level2name=N'TestId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên bài kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserTestResult', @level2type=N'COLUMN',@level2name=N'TestName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kiểm tra kỹ năng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserTestResult', @level2type=N'COLUMN',@level2name=N'TestSkill'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã người dùng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserTestResult', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Danh sách câu hỏi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserTestResult', @level2type=N'COLUMN',@level2name=N'ListQuestion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tổng số câu trả lời đúng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserTestResult', @level2type=N'COLUMN',@level2name=N'TotalCorrect'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tổng số câu hỏi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserTestResult', @level2type=N'COLUMN',@level2name=N'TotalQuestion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian bắt đầu làm bài' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserTestResult', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian hoàn thành bài kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserTestResult', @level2type=N'COLUMN',@level2name=N'TotalTimeEslapse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Loại bài kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserTestResult', @level2type=N'COLUMN',@level2name=N'TypeTest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời gian làm bài kiểm tra' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserTestResult', @level2type=N'COLUMN',@level2name=N'TotalTime'
GO
