USE [master]
GO
/****** Object:  Database [TRACNGHIEM]    Script Date: 16-Aug-20 9:58:28 AM ******/
CREATE DATABASE [TRACNGHIEM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TRACNGHIEM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TRACNGHIEM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TRACNGHIEM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TRACNGHIEM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TRACNGHIEM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TRACNGHIEM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TRACNGHIEM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET ARITHABORT OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TRACNGHIEM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TRACNGHIEM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TRACNGHIEM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TRACNGHIEM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET RECOVERY FULL 
GO
ALTER DATABASE [TRACNGHIEM] SET  MULTI_USER 
GO
ALTER DATABASE [TRACNGHIEM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TRACNGHIEM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TRACNGHIEM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TRACNGHIEM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TRACNGHIEM] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TRACNGHIEM', N'ON'
GO
ALTER DATABASE [TRACNGHIEM] SET QUERY_STORE = OFF
GO
USE [TRACNGHIEM]
GO
/****** Object:  Table [dbo].[DetailExam]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailExam](
	[DANGuoiHoc] [nchar](10) NULL,
	[idExam] [int] NOT NULL,
	[idQuestion] [int] NOT NULL,
 CONSTRAINT [PK_DetailExam] PRIMARY KEY CLUSTERED 
(
	[idExam] ASC,
	[idQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[id] [int] NOT NULL,
	[idUser] [nchar](50) NULL,
	[idSubject] [int] NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Learning]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Learning](
	[id] [int] NOT NULL,
	[idUser] [nchar](50) NULL,
	[idSubject] [int] NULL,
 CONSTRAINT [PK_Learning] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LearningProcess]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LearningProcess](
	[idLearning] [int] NOT NULL,
	[idQuestion] [int] NOT NULL,
	[Choose] [bit] NULL,
 CONSTRAINT [PK_LearningProcess] PRIMARY KEY CLUSTERED 
(
	[idLearning] ASC,
	[idQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Level]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTheme] [int] NOT NULL,
	[idLevel] [int] NOT NULL,
	[question] [nvarchar](2000) NOT NULL,
	[A] [nvarchar](1000) NOT NULL,
	[B] [nvarchar](1000) NOT NULL,
	[C] [nvarchar](1000) NOT NULL,
	[D] [nvarchar](1000) NOT NULL,
	[correct] [char](1) NOT NULL,
	[explain] [nchar](1000) NULL,
	[lastUpdate] [datetime] NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Themes]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Themes](
	[id] [int] NOT NULL,
	[idSubject] [int] NULL,
	[name] [nvarchar](50) NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_Themes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tokens]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tokens](
	[token] [int] NOT NULL,
	[username] [nchar](50) NULL,
	[datelogin] [date] NULL,
 CONSTRAINT [PK_Tokens] PRIMARY KEY CLUSTERED 
(
	[token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[username] [nchar](50) NOT NULL,
	[password] [nchar](50) NULL,
	[fullName] [nvarchar](100) NULL,
	[address] [nvarchar](200) NULL,
	[email] [nchar](50) NULL,
	[phoneNumber] [nvarchar](20) NULL,
	[birthday] [date] NULL,
	[Job] [nvarchar](50) NULL,
	[linkavata] [ntext] NULL,
	[isAdmin] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Level] ON 

INSERT [dbo].[Level] ([id], [name]) VALUES (1, N'Dễ')
INSERT [dbo].[Level] ([id], [name]) VALUES (2, N'Trung Bình')
INSERT [dbo].[Level] ([id], [name]) VALUES (3, N'Khó')
SET IDENTITY_INSERT [dbo].[Level] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([id], [idTheme], [idLevel], [question], [A], [B], [C], [D], [correct], [explain], [lastUpdate], [isDelete]) VALUES (1, 1, 1, N'Widget nào sau đây dùng để nhập dữ vào', N'TextFormFiel', N'Inkwell', N'PageRouter', N'DateTie', N'A', N'Chưa có giải nghĩa                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', CAST(N'2020-08-14T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Question] ([id], [idTheme], [idLevel], [question], [A], [B], [C], [D], [correct], [explain], [lastUpdate], [isDelete]) VALUES (3, 1, 1, N'Widget nào bàdfasdfa', N'Fadfasf', N'àdsfasafs', N'ádfasdfasf', N'àdsfafa', N'B', N'Chưa có giải nghĩa                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', CAST(N'2020-08-14T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Question] ([id], [idTheme], [idLevel], [question], [A], [B], [C], [D], [correct], [explain], [lastUpdate], [isDelete]) VALUES (5, 1, 1, N'Cấu hình để lập trình web bằng flutter SDK', N'$ flutter channel beta

$ flutter upgrade

$ flutter config --enable-web', N'Chưa soạn ', N'Chưa soạn', N'Chưa soạn', N'A', N'Chưa có giải thích                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', CAST(N'2020-08-14T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([id], [name], [isDelete]) VALUES (1, N'Flutter', 0)
INSERT [dbo].[Subject] ([id], [name], [isDelete]) VALUES (2, N'Java', 0)
INSERT [dbo].[Subject] ([id], [name], [isDelete]) VALUES (3, N'Toán Cao Cấp', 0)
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
INSERT [dbo].[Themes] ([id], [idSubject], [name], [isDelete]) VALUES (1, 1, N'Design', 0)
INSERT [dbo].[Themes] ([id], [idSubject], [name], [isDelete]) VALUES (2, 1, N'Form', 0)
INSERT [dbo].[Themes] ([id], [idSubject], [name], [isDelete]) VALUES (3, 1, N'Gestures', 0)
INSERT [dbo].[Themes] ([id], [idSubject], [name], [isDelete]) VALUES (4, 1, N'Images', 0)
INSERT [dbo].[Themes] ([id], [idSubject], [name], [isDelete]) VALUES (5, 1, N'Lists', 0)
INSERT [dbo].[Themes] ([id], [idSubject], [name], [isDelete]) VALUES (6, 1, N'Maintenance', 0)
INSERT [dbo].[Themes] ([id], [idSubject], [name], [isDelete]) VALUES (7, 1, N'Navigation', 0)
INSERT [dbo].[Themes] ([id], [idSubject], [name], [isDelete]) VALUES (8, 1, N'Networking', 0)
INSERT [dbo].[Themes] ([id], [idSubject], [name], [isDelete]) VALUES (9, 1, N'Persistence', 0)
INSERT [dbo].[Themes] ([id], [idSubject], [name], [isDelete]) VALUES (10, 1, N'Plugins', 0)
INSERT [dbo].[Themes] ([id], [idSubject], [name], [isDelete]) VALUES (11, 1, N'Testing', 0)
GO
INSERT [dbo].[Users] ([username], [password], [fullName], [address], [email], [phoneNumber], [birthday], [Job], [linkavata], [isAdmin]) VALUES (N'tranhieu                                          ', N'123456                                            ', N'trần văn hiếu', N'446 lý thái tổ', N'tranhieuglpk@gmail.com                            ', N'0335286360', CAST(N'2020-10-10' AS Date), N'SinhVien', N'https://x3english.com/wp-content/uploads/2019/07/trang-web-hoc-tieng-anh-696x365.jpg', 0)
GO
/****** Object:  Index [UI_DetailExam]    Script Date: 16-Aug-20 9:58:29 AM ******/
ALTER TABLE [dbo].[DetailExam] ADD  CONSTRAINT [UI_DetailExam] UNIQUE NONCLUSTERED 
(
	[idExam] ASC,
	[idQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IU_Exam]    Script Date: 16-Aug-20 9:58:29 AM ******/
ALTER TABLE [dbo].[Exam] ADD  CONSTRAINT [IU_Exam] UNIQUE NONCLUSTERED 
(
	[idSubject] ASC,
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IU_Learning]    Script Date: 16-Aug-20 9:58:29 AM ******/
ALTER TABLE [dbo].[Learning] ADD  CONSTRAINT [IU_Learning] UNIQUE NONCLUSTERED 
(
	[idSubject] ASC,
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IU_LearningProcess]    Script Date: 16-Aug-20 9:58:29 AM ******/
ALTER TABLE [dbo].[LearningProcess] ADD  CONSTRAINT [IU_LearningProcess] UNIQUE NONCLUSTERED 
(
	[idLearning] ASC,
	[idQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DetailExam]  WITH CHECK ADD  CONSTRAINT [FK_DetailExam_Exam] FOREIGN KEY([idExam])
REFERENCES [dbo].[Exam] ([id])
GO
ALTER TABLE [dbo].[DetailExam] CHECK CONSTRAINT [FK_DetailExam_Exam]
GO
ALTER TABLE [dbo].[DetailExam]  WITH CHECK ADD  CONSTRAINT [FK_DetailExam_Question] FOREIGN KEY([idQuestion])
REFERENCES [dbo].[Question] ([id])
GO
ALTER TABLE [dbo].[DetailExam] CHECK CONSTRAINT [FK_DetailExam_Question]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Subject] FOREIGN KEY([idSubject])
REFERENCES [dbo].[Subject] ([id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Subject]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([username])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Users]
GO
ALTER TABLE [dbo].[Learning]  WITH CHECK ADD  CONSTRAINT [FK_Learning_Subject] FOREIGN KEY([idSubject])
REFERENCES [dbo].[Subject] ([id])
GO
ALTER TABLE [dbo].[Learning] CHECK CONSTRAINT [FK_Learning_Subject]
GO
ALTER TABLE [dbo].[Learning]  WITH CHECK ADD  CONSTRAINT [FK_Learning_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([username])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Learning] CHECK CONSTRAINT [FK_Learning_Users]
GO
ALTER TABLE [dbo].[LearningProcess]  WITH CHECK ADD  CONSTRAINT [FK_LearningProcess_Learning] FOREIGN KEY([idLearning])
REFERENCES [dbo].[Learning] ([id])
GO
ALTER TABLE [dbo].[LearningProcess] CHECK CONSTRAINT [FK_LearningProcess_Learning]
GO
ALTER TABLE [dbo].[LearningProcess]  WITH CHECK ADD  CONSTRAINT [FK_LearningProcess_Question] FOREIGN KEY([idQuestion])
REFERENCES [dbo].[Question] ([id])
GO
ALTER TABLE [dbo].[LearningProcess] CHECK CONSTRAINT [FK_LearningProcess_Question]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Level] FOREIGN KEY([idLevel])
REFERENCES [dbo].[Level] ([id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Level]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Themes] FOREIGN KEY([idTheme])
REFERENCES [dbo].[Themes] ([id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Themes]
GO
ALTER TABLE [dbo].[Themes]  WITH CHECK ADD  CONSTRAINT [FK_Themes_Subject] FOREIGN KEY([idSubject])
REFERENCES [dbo].[Subject] ([id])
GO
ALTER TABLE [dbo].[Themes] CHECK CONSTRAINT [FK_Themes_Subject]
GO
/****** Object:  StoredProcedure [dbo].[GET_LIST_THEME]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_LIST_THEME] 
	-- Add the parameters for the stored procedure here
	@idSubject int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id,name FROM Themes where idSubject=@idSubject and isDelete=0
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CREATE_ACCOUNT]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CREATE_ACCOUNT]
	-- Add the parameters for the stored procedure here

	--String userName, String fullName, String email, DateTime birthday, String password
	@userName  nchar(50),
	@fullName nchar(50),
	@email  nchar(50),
	@phoneNumber nvarchar(20),
	@birthday date,
	@password nchar(50),
	@isAdmin bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	begin try
		Insert into Users(username,fullName,email,phoneNumber ,birthday,password, isAdmin)
		values(@userName,@fullName,@email,@phoneNumber,@birthday,@password,@isAdmin)
	
		SELECT 1 AS STATES
	
	end try
	begin catch
		SELECT 0 AS STATES
	
	end catch

END
GO
/****** Object:  StoredProcedure [dbo].[SP_CreateQuestion]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CreateQuestion]
	-- Add the parameters for the stored procedure here
	@question nvarchar(2000),
	@idTheme int,
	@idLeve int,
	@A nvarchar(1000),
	@B nvarchar(1000),
	@C nvarchar(1000),
	@D nvarchar(1000),
	@correct char(1),
	@expain nchar(1000),
	@lastUpdate datetime,
	@isDelete bit
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	begin try
		Insert into Question(id,question,idTheme,idLevel,A,B,C,D, correct, explain, lastUpdate, isDelete)
		Values(0,@question,@idTheme, @idLeve, @A, @B, @C, @D,@correct,@expain, @lastUpdate,0)
		return 1
	end try

	begin catch
		return 0
	end catch
	
	-- đã đủ tính năng
	-- chưa test

END
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteQuestion]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_DeleteQuestion]
	-- Add the parameters for the stored procedure here
	@idQuestion int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF Exists(Select * from Question where id=@idQuestion)
	begin

		Update Question
		set isDelete =1
		where id=@idQuestion
		return 1
	end	
	return 0

END
GO
/****** Object:  StoredProcedure [dbo].[SP_EditQuestion]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_EditQuestion]
	-- Add the parameters for the stored procedure here
	@idQuestion int,
	@question nvarchar(2000),
	@idTheme int,
	@idLevel int,
	@A nvarchar(1000),
	@B nvarchar(1000),
	@C nvarchar(1000),
	@D nvarchar(1000),
	@correct char(1),
	@explain nchar(1000),
	@lastUpdate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	IF Exists(Select * from Question where id = @idQuestion)
	begin
		UPDATE Question
		SET question = @question, idTheme = @idTheme, idLevel =@idLevel, A=@A, B=@B, C=@C, D=@D, correct=@correct, explain=@explain, lastUpdate= @lastUpdate
		WHERE id= @idQuestion;
	end
	return 0;

	--da du tinh nang, chua test
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GET_ALL_USER]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GET_ALL_USER]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM USERs
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GET_LIST_MON_HOC]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE	[dbo].[SP_GET_LIST_MON_HOC]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id, name FROM Subject where isDelete=0;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GET_USER_INFOR]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GET_USER_INFOR]
	-- Add the parameters for the stored procedure here
	@userName  nchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *FROM Users where username= @userName

END
GO
/****** Object:  StoredProcedure [dbo].[SP_LOGIN]    Script Date: 16-Aug-20 9:58:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_LOGIN] 
	-- Add the parameters for the stored procedure here
	@username nchar(50),
	@password NCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS(SELECT * FROM USERS WHERE username =@username and password=@password)
	begin
		SELECT username,fullName,address,email,phoneNumber,birthday,Job,linkavata,isAdmin From Users where username= @username
	end
	
END
GO
USE [master]
GO
ALTER DATABASE [TRACNGHIEM] SET  READ_WRITE 
GO
