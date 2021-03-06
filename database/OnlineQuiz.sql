USE [QuizOnline]
GO
/****** Object:  Table [dbo].[question]    Script Date: 4/18/2020 12:32:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question](
	[quiz] [nvarchar](max) NOT NULL,
	[answer1] [nvarchar](max) NULL,
	[answer2] [nvarchar](max) NULL,
	[answer3] [nvarchar](max) NULL,
	[answer4] [nvarchar](max) NULL,
	[isright] [nvarchar](50) NULL,
	[date] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[result]    Script Date: 4/18/2020 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[result](
	[userName] [nvarchar](50) NOT NULL,
	[quiz] [nvarchar](50) NULL,
	[cusAnswer] [nvarchar](50) NULL,
	[trueAnswer] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_result] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 4/18/2020 12:32:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[userName] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[question] ([quiz], [answer1], [answer2], [answer3], [answer4], [isright], [date]) VALUES (N'ai là mèo máy vậy ở nhà tôi', N'doremon', N'nobita', N'me', N'you', N'1', CAST(N'2020-01-10' AS Date))
INSERT [dbo].[question] ([quiz], [answer1], [answer2], [answer3], [answer4], [isright], [date]) VALUES (N'Ở đâu có em ?', N'Nhà', N'Net', N'Lớp', N'Trường', N'1', CAST(N'2020-01-11' AS Date))
INSERT [dbo].[question] ([quiz], [answer1], [answer2], [answer3], [answer4], [isright], [date]) VALUES (N'b', N'c', N'd', N'e', N'f', N'1', CAST(N'2020-03-25' AS Date))
INSERT [dbo].[user] ([userName], [password], [email], [type]) VALUES (N'chi chi nguyen', N'260899', N'ccnye268@fpt.edu.vn', N'teacher')
INSERT [dbo].[user] ([userName], [password], [email], [type]) VALUES (N'chi chi nguyen1', N'dkmlove15', N'tuan1504199919@gmail.com', N'teacher')
INSERT [dbo].[user] ([userName], [password], [email], [type]) VALUES (N'chi chi nguyen2', N'dkmlove15', N'tuandtahe130353@fpt.edu.vn', N'student')
INSERT [dbo].[user] ([userName], [password], [email], [type]) VALUES (N'do trong anh tuan', N'dkmlove15', N'tuan150419999@gmail.com', N'student')
INSERT [dbo].[user] ([userName], [password], [email], [type]) VALUES (N'king', N'dkmlove15', N'tuandtahe130352@fpt.edu.vn', N'student')
INSERT [dbo].[user] ([userName], [password], [email], [type]) VALUES (N'king1', N'dkmlove16', N'tuan250419999@gmail.com', N'student')
INSERT [dbo].[user] ([userName], [password], [email], [type]) VALUES (N'tuan15041999', N'kiendaika9x', N'Anh Tuấn', N'Student')
INSERT [dbo].[user] ([userName], [password], [email], [type]) VALUES (N'tuanvm', N'dkmlove3', N'Mạnh Tuấn', N'teacher')
ALTER TABLE [dbo].[result]  WITH CHECK ADD  CONSTRAINT [FK_result_user] FOREIGN KEY([userName])
REFERENCES [dbo].[user] ([userName])
GO
ALTER TABLE [dbo].[result] CHECK CONSTRAINT [FK_result_user]
GO
