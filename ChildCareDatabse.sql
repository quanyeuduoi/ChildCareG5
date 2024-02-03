USE [master]
GO
/****** Object:  Database [ChildCare]    Script Date: 2/3/2024 11:15:59 PM ******/
CREATE DATABASE [ChildCare]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChildCare', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ChildCare.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ChildCare_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ChildCare_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ChildCare] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChildCare].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChildCare] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChildCare] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChildCare] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChildCare] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChildCare] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChildCare] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChildCare] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChildCare] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChildCare] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChildCare] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChildCare] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChildCare] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChildCare] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChildCare] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChildCare] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChildCare] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChildCare] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChildCare] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChildCare] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChildCare] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChildCare] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChildCare] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChildCare] SET RECOVERY FULL 
GO
ALTER DATABASE [ChildCare] SET  MULTI_USER 
GO
ALTER DATABASE [ChildCare] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChildCare] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChildCare] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChildCare] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ChildCare] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ChildCare] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ChildCare', N'ON'
GO
ALTER DATABASE [ChildCare] SET QUERY_STORE = ON
GO
ALTER DATABASE [ChildCare] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ChildCare]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Gmail] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](10) NOT NULL,
	[OTP] [nvarchar](6) NULL,
	[FullName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EmployeeAccount] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] NOT NULL,
	[Phonenumber] [int] NULL,
	[Address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Child]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Child](
	[ChildID] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](255) NOT NULL,
	[Age] [int] NOT NULL,
	[CusID] [int] NULL,
 CONSTRAINT [PK_Child] PRIMARY KEY CLUSTERED 
(
	[ChildID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] NOT NULL,
	[DepartmentName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[DocID] [int] NOT NULL,
	[Age] [int] NULL,
	[DepartmentID] [int] NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[DocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorSchedueList]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorSchedueList](
	[DSListID] [int] IDENTITY(1,1) NOT NULL,
	[DocID] [int] NOT NULL,
	[SchuedueID] [int] NOT NULL,
 CONSTRAINT [PK_DoctorList] PRIMARY KEY CLUSTERED 
(
	[DSListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[MarketingID] [int] NOT NULL,
	[Feedback] [nvarchar](255) NULL,
	[FeedbackAns] [nvarchar](255) NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[ManagerID] [int] NOT NULL,
	[Age] [int] NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[ManagerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marketing]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marketing](
	[MarketingID] [int] NOT NULL,
	[Age] [int] NULL,
 CONSTRAINT [PK_Marketing] PRIMARY KEY CLUSTERED 
(
	[MarketingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalRecord]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalRecord](
	[MedrecordID] [int] IDENTITY(1,1) NOT NULL,
	[DocID] [int] NOT NULL,
	[MedrecordDate] [date] NULL,
	[MedrecordDetail] [nvarchar](255) NULL,
	[ChildID] [int] NOT NULL,
 CONSTRAINT [PK_MedicalRecord] PRIMARY KEY CLUSTERED 
(
	[MedrecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicine]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine](
	[MedID] [int] IDENTITY(1,1) NOT NULL,
	[MedName] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Medicine] PRIMARY KEY CLUSTERED 
(
	[MedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicineList]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicineList](
	[MedListID] [int] IDENTITY(1,1) NOT NULL,
	[MedicalRecordID] [int] NOT NULL,
	[MedID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_MedicineList] PRIMARY KEY CLUSTERED 
(
	[MedListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PayID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NULL,
	[Price] [int] NOT NULL,
	[Status] [nvarchar](50) NULL,
	[CustomerID] [int] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[Detail] [nvarchar](255) NULL,
	[ServiceID] [int] NULL,
	[Image] [nvarchar](50) NULL,
	[PostTitlie] [nvarchar](255) NULL,
	[PostShort] [nvarchar](500) NULL,
	[MarketingID] [int] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QA]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QA](
	[QAID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](255) NULL,
	[Answer] [nvarchar](255) NULL,
	[CustomerID] [int] NOT NULL,
	[MarketingID] [int] NULL,
 CONSTRAINT [PK_QA] PRIMARY KEY CLUSTERED 
(
	[QAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[ReservationID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[DateOrder] [date] NULL,
	[ServiceID] [int] NOT NULL,
	[PayID] [int] NULL,
	[TimeAppointment] [date] NULL,
 CONSTRAINT [PK_Reservation] PRIMARY KEY CLUSTERED 
(
	[ReservationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedue]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedue](
	[SchuedueID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Slot] [int] NULL,
	[ReservationID] [int] NULL,
 CONSTRAINT [PK_Schedue] PRIMARY KEY CLUSTERED 
(
	[SchuedueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [int] NOT NULL,
	[ServiceName] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[DepartmentID] [int] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 2/3/2024 11:15:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[SliderID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [image] NULL,
	[MarketingID] [int] NULL,
	[Link] [nvarchar](50) NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[SliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Account] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Account]
GO
ALTER TABLE [dbo].[Child]  WITH CHECK ADD  CONSTRAINT [FK_Child_Customer1] FOREIGN KEY([CusID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Child] CHECK CONSTRAINT [FK_Child_Customer1]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Account] FOREIGN KEY([DocID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Account]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Department]
GO
ALTER TABLE [dbo].[DoctorSchedueList]  WITH CHECK ADD  CONSTRAINT [FK_DoctorList_Doctor] FOREIGN KEY([DocID])
REFERENCES [dbo].[Doctor] ([DocID])
GO
ALTER TABLE [dbo].[DoctorSchedueList] CHECK CONSTRAINT [FK_DoctorList_Doctor]
GO
ALTER TABLE [dbo].[DoctorSchedueList]  WITH CHECK ADD  CONSTRAINT [FK_DoctorList_Schedue] FOREIGN KEY([SchuedueID])
REFERENCES [dbo].[Schedue] ([SchuedueID])
GO
ALTER TABLE [dbo].[DoctorSchedueList] CHECK CONSTRAINT [FK_DoctorList_Schedue]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Customer]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Marketing] FOREIGN KEY([MarketingID])
REFERENCES [dbo].[Marketing] ([MarketingID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Marketing]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_Account] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_Account]
GO
ALTER TABLE [dbo].[Marketing]  WITH CHECK ADD  CONSTRAINT [FK_Marketing_Account] FOREIGN KEY([MarketingID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Marketing] CHECK CONSTRAINT [FK_Marketing_Account]
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD  CONSTRAINT [FK_MedicalRecord_Child] FOREIGN KEY([ChildID])
REFERENCES [dbo].[Child] ([ChildID])
GO
ALTER TABLE [dbo].[MedicalRecord] CHECK CONSTRAINT [FK_MedicalRecord_Child]
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD  CONSTRAINT [FK_MedicalRecord_Doctor] FOREIGN KEY([DocID])
REFERENCES [dbo].[Doctor] ([DocID])
GO
ALTER TABLE [dbo].[MedicalRecord] CHECK CONSTRAINT [FK_MedicalRecord_Doctor]
GO
ALTER TABLE [dbo].[MedicineList]  WITH CHECK ADD  CONSTRAINT [FK_MedicineList_MedicalRecord] FOREIGN KEY([MedicalRecordID])
REFERENCES [dbo].[MedicalRecord] ([MedrecordID])
GO
ALTER TABLE [dbo].[MedicineList] CHECK CONSTRAINT [FK_MedicineList_MedicalRecord]
GO
ALTER TABLE [dbo].[MedicineList]  WITH CHECK ADD  CONSTRAINT [FK_MedicineList_Medicine] FOREIGN KEY([MedID])
REFERENCES [dbo].[Medicine] ([MedID])
GO
ALTER TABLE [dbo].[MedicineList] CHECK CONSTRAINT [FK_MedicineList_Medicine]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Customer1] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Customer1]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Service]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Marketing] FOREIGN KEY([MarketingID])
REFERENCES [dbo].[Marketing] ([MarketingID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Marketing]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Service]
GO
ALTER TABLE [dbo].[QA]  WITH CHECK ADD  CONSTRAINT [FK_QA_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[QA] CHECK CONSTRAINT [FK_QA_Customer]
GO
ALTER TABLE [dbo].[QA]  WITH CHECK ADD  CONSTRAINT [FK_QA_Marketing] FOREIGN KEY([MarketingID])
REFERENCES [dbo].[Marketing] ([MarketingID])
GO
ALTER TABLE [dbo].[QA] CHECK CONSTRAINT [FK_QA_Marketing]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Customer]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Payment] FOREIGN KEY([PayID])
REFERENCES [dbo].[Payment] ([PayID])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Payment]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Service]
GO
ALTER TABLE [dbo].[Schedue]  WITH CHECK ADD  CONSTRAINT [FK_Schedue_Reservation] FOREIGN KEY([ReservationID])
REFERENCES [dbo].[Reservation] ([ReservationID])
GO
ALTER TABLE [dbo].[Schedue] CHECK CONSTRAINT [FK_Schedue_Reservation]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Department]
GO
ALTER TABLE [dbo].[Slider]  WITH CHECK ADD  CONSTRAINT [FK_Slider_Marketing] FOREIGN KEY([MarketingID])
REFERENCES [dbo].[Marketing] ([MarketingID])
GO
ALTER TABLE [dbo].[Slider] CHECK CONSTRAINT [FK_Slider_Marketing]
GO
USE [master]
GO
ALTER DATABASE [ChildCare] SET  READ_WRITE 
GO

CREATE TRIGGER CreateIDRecordBasedOnRole
ON Account
AFTER INSERT
AS
BEGIN
    DECLARE @Role NVARCHAR(50);

    SELECT @Role = Role
    FROM inserted;

    IF @Role = 'Customer'
    BEGIN
        -- Insert into Customer table
        INSERT INTO Customer (CustomerID)
        SELECT i.AccountID
        FROM inserted i;
    END
    ELSE IF @Role = 'Doctor'
    BEGIN
        -- Insert into Doctor table
        INSERT INTO Doctor (DocID)
        SELECT i.AccountID
        FROM inserted i;
    END
    ELSE IF @Role = 'Manager'
    BEGIN
        -- Insert into Manager table
        INSERT INTO Manager (ManagerID)
        SELECT i.AccountID
        FROM inserted i;
    END
    ELSE IF @Role = 'Marketing'
    BEGIN
        -- Insert into Marketing table
        INSERT INTO Marketing (MarketingID)
        SELECT i.AccountID
        FROM inserted i;
    END;
END;