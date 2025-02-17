USE [master]
GO
/****** Object:  Database [BokadoIn]    Script Date: 5/1/2020 1:36:40 AM ******/
CREATE DATABASE [BokadoIn] ON  PRIMARY 
( NAME = N'BokadoIn', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BokadoIn.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BokadoIn_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BokadoIn_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BokadoIn] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BokadoIn].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BokadoIn] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BokadoIn] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BokadoIn] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BokadoIn] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BokadoIn] SET ARITHABORT OFF 
GO
ALTER DATABASE [BokadoIn] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BokadoIn] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BokadoIn] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BokadoIn] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BokadoIn] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BokadoIn] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BokadoIn] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BokadoIn] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BokadoIn] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BokadoIn] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BokadoIn] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BokadoIn] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BokadoIn] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BokadoIn] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BokadoIn] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BokadoIn] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BokadoIn] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BokadoIn] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BokadoIn] SET RECOVERY FULL 
GO
ALTER DATABASE [BokadoIn] SET  MULTI_USER 
GO
ALTER DATABASE [BokadoIn] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BokadoIn] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BokadoIn', N'ON'
GO
USE [BokadoIn]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 5/1/2020 1:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[mid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[subject] [nvarchar](max) NULL,
	[message] [nvarchar](50) NULL,
	[datetimeMess] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Register]    Script Date: 5/1/2020 1:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rent]    Script Date: 5/1/2020 1:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rent](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[Oname] [nvarchar](50) NULL,
	[Oemail] [nvarchar](50) NULL,
	[Ophone] [nvarchar](50) NULL,
	[purpose] [nvarchar](50) NULL,
	[proptype] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[descrip] [nvarchar](max) NULL,
	[price] [nvarchar](50) NULL,
	[pic] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sell]    Script Date: 5/1/2020 1:36:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sell](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[Oname] [nvarchar](50) NULL,
	[Oemail] [nvarchar](50) NULL,
	[Ophone] [nvarchar](50) NULL,
	[purpose] [nvarchar](50) NULL,
	[proptype] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[descrip] [nvarchar](max) NULL,
	[price] [nvarchar](50) NULL,
	[pic] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([mid], [name], [email], [subject], [message], [datetimeMess]) VALUES (1, N'ali', N'Ali123@gmail.com', N'service tax', N'How can we pay service tax?', N'4/23/2020 1:12:49 AM')
INSERT [dbo].[Message] ([mid], [name], [email], [subject], [message], [datetimeMess]) VALUES (2, N'Ali', N'Ali123@gmail.com', N'abc ', N'hello world', N'4/26/2020 2:41:39 AM')
SET IDENTITY_INSERT [dbo].[Message] OFF
SET IDENTITY_INSERT [dbo].[Register] ON 

INSERT [dbo].[Register] ([id], [name], [email], [password], [role]) VALUES (1, N'user', N'user12@gmail.com', N'12345', N'User')
INSERT [dbo].[Register] ([id], [name], [email], [password], [role]) VALUES (2, N'admin', N'Ali123@gmail.com', N'12345', N'Admin')
INSERT [dbo].[Register] ([id], [name], [email], [password], [role]) VALUES (3, N'Maaz', N'Maaz12@gmail.com', N'12345', N'User')
INSERT [dbo].[Register] ([id], [name], [email], [password], [role]) VALUES (4, N'Umar', N'Umar12@gmail.com', N'12345', N'Admin')
INSERT [dbo].[Register] ([id], [name], [email], [password], [role]) VALUES (5, N'Fasih', N'Fasih123@gmail.com', N'12345', N'User')
INSERT [dbo].[Register] ([id], [name], [email], [password], [role]) VALUES (6, N'User2', N'user2@gmail.com', N'12345', N'User')
INSERT [dbo].[Register] ([id], [name], [email], [password], [role]) VALUES (7, N'Admin2', N'Admin2@gmail.com', N'12345', N'Admin')
SET IDENTITY_INSERT [dbo].[Register] OFF
SET IDENTITY_INSERT [dbo].[Rent] ON 

INSERT [dbo].[Rent] ([rid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (1, N'Ali', N'Ali123@gmail.com', N'12345875543344', N'Rent', N'House', N'Karachi', N'gulistan-e-jauhar', N'A 4 BHA  a beautiful house ', N'2000000', N'pictures/2.jpg')
INSERT [dbo].[Rent] ([rid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (2, N'Faraz', N'Faraz12@gmail.com', N'094556373738', N'Rent', N'Villa', N'Lahore', N'abc area', N'A 4 BHA  a beautiful house ', N'200000', N'pictures/big-1.jpg')
INSERT [dbo].[Rent] ([rid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (3, N'Khan', N'Khan123@gmail.com', N'08762534250', N'Rent', N'Flat', N'Islamabad', N'abc area', N'A 4 BHA  a beautiful flat', N'7000', N'pictures/1.jpg')
INSERT [dbo].[Rent] ([rid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (4, N'Shah', N'Shah12@gmail.com', N'08762534908', N'Rent', N'Villa', N'Murree', N'abc area', N'A 4 BHA  a beautiful house ', N'9000', N'pictures/big-2.jpg')
INSERT [dbo].[Rent] ([rid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (5, N'Maaz', N'Maaz12@gmail.com', N'03456789394', N'Rent', N'Flat', N'Karachi', N'gulishan-e-Iqbal', N'A 4 BHA flat on 4th floor of Faraz View ', N'30000', N'pictures/6.jpg')
INSERT [dbo].[Rent] ([rid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (6, N'John', N'John13@gmail.com', N'03456742334', N'Rent', N'Flat', N'Peshawar', N'abc area', N'A 4 BHA flat on 4th floor of Faraz View ', N'40000', N'pictures/4.jpg')
INSERT [dbo].[Rent] ([rid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (7, N'User2', N'user2@gmail.com', N'0362784894949', N'Rent', N'House', N'Lahore', N'gulistan-e-jauhar', N'A 4 BHA  a beautiful house ', N'30000', N'pictures/big-2.jpg')
SET IDENTITY_INSERT [dbo].[Rent] OFF
SET IDENTITY_INSERT [dbo].[Sell] ON 

INSERT [dbo].[Sell] ([sid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (1, N'Ali', N'Ali123@gmail.com', N'1234512345566', N'Sell', N'Flat', N'Lahore', N'gulistan-e-jauhar', N'A 4 BHA flat on 4th floor of Faraz View ', N'30000', N'pictures/1.jpg')
INSERT [dbo].[Sell] ([sid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (2, N'Umar', N'Umar12@gmail.com', N'123450990900', N'Sell', N'Flat', N'Karachi', N'gulishan-e-Iqbal', N'A 4 BHA flat on 4th floor of Faraz View ', N'3000', N'pictures/big-1.jpg')
INSERT [dbo].[Sell] ([sid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (3, N'Shah', N'Shah12@gmail.com', N'123456778999', N'Sell', N'Flat', N'Karachi', N'gulistan-e-jauhar', N'A 4 BHA flat on 5th floor ', N'20000', N'pictures/6.jpg')
INSERT [dbo].[Sell] ([sid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (4, N'Maaz', N'Maaz@gmail.com', N'03245685606', N'Sell', N'Flat', N'Lahore', N'gulishan-e-Iqbal', N'A 7 BHA  a beautiful house near sea view', N'200000', N'pictures/4.jpg')
INSERT [dbo].[Sell] ([sid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (5, N'Fasih', N'Fasih123@gmail.com', N'034267839485', N'Sell', N'Farm House', N'Murree', N'gulistan-e-jauhar', N'A 4 BHA farmhouse on 4th floor of Faraz View ', N'2000000', N'pictures/5.jpg')
INSERT [dbo].[Sell] ([sid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (6, N'Shahzaib', N'Shahzaib12@gmail.com', N'03458723848', N'Sell', N'Flat', N'Pindi', N'abc area', N'A 4 BHA flat on 4th floor of Faraz View ', N'2000000', N'pictures/6.jpg')
INSERT [dbo].[Sell] ([sid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (7, N'Ansar', N'Ansar12@gmail.com', N'08762534256', N'Sell', N'House', N'Lahore', N'abc area', N'A 4 BHA  a beautiful house ', N'3000000', N'pictures/big-2.jpg')
INSERT [dbo].[Sell] ([sid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (8, N'John', N'John13@gmail.com', N'03458723878', N'Sell', N'Flat', N'Islamabad', N'gulistan-e-jauhar', N'A 4 BHA flat on 4th floor of Faraz View ', N'7000000', N'pictures/1.jpg')
INSERT [dbo].[Sell] ([sid], [Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (9, N'Hasham', N'Hasham146@gmail.com', N'03456789332', N'Sell', N'Flat', N'Peshavar', N'abc area', N'A 4 BHA flat on 4th floor of Faraz View ', N'20000000', N'pictures/4.jpg')
SET IDENTITY_INSERT [dbo].[Sell] OFF
USE [master]
GO
ALTER DATABASE [BokadoIn] SET  READ_WRITE 
GO
