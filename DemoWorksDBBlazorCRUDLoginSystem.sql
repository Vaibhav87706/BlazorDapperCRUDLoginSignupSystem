USE [master]
GO
/****** Object:  Database [DemoWorks]    Script Date: 25-02-2024 13:46:23 ******/
CREATE DATABASE [DemoWorks]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DemoWorks', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DemoWorks.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DemoWorks_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DemoWorks_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DemoWorks] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DemoWorks].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DemoWorks] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DemoWorks] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DemoWorks] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DemoWorks] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DemoWorks] SET ARITHABORT OFF 
GO
ALTER DATABASE [DemoWorks] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DemoWorks] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DemoWorks] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DemoWorks] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DemoWorks] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DemoWorks] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DemoWorks] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DemoWorks] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DemoWorks] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DemoWorks] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DemoWorks] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DemoWorks] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DemoWorks] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DemoWorks] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DemoWorks] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DemoWorks] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DemoWorks] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DemoWorks] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DemoWorks] SET  MULTI_USER 
GO
ALTER DATABASE [DemoWorks] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DemoWorks] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DemoWorks] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DemoWorks] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DemoWorks] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DemoWorks] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DemoWorks] SET QUERY_STORE = ON
GO
ALTER DATABASE [DemoWorks] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DemoWorks]
GO
/****** Object:  Table [dbo].[CustomerTable]    Script Date: 25-02-2024 13:46:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerTable](
	[Customer_id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Name] [nvarchar](50) NULL,
	[Contact_No] [nvarchar](50) NULL,
	[Email_Id] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[Special_request] [nvarchar](100) NULL,
 CONSTRAINT [PK_CustomerTable] PRIMARY KEY CLUSTERED 
(
	[Customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginTable]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](255) NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_Login_Table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReservationTable]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservationTable](
	[Reservation_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[Price] [float] NULL,
	[Therapist_Peference] [nvarchar](50) NULL,
 CONSTRAINT [PK_ReservationTable] PRIMARY KEY CLUSTERED 
(
	[Reservation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[SalesId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[Quantity] [int] NULL,
	[CreatedDt] [datetime2](7) NULL,
	[UpdatedDt] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[SalesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Spas_Table]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spas_Table](
	[Spa_id] [int] IDENTITY(1,1) NOT NULL,
	[Spa_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Spas_Table] PRIMARY KEY CLUSTERED 
(
	[Spa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TherapyCategory_Table]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TherapyCategory_Table](
	[TherapyCategory_id] [int] IDENTITY(1,1) NOT NULL,
	[TherapyCategory_name] [varchar](50) NULL,
 CONSTRAINT [PK_MassageTherapies_Table] PRIMARY KEY CLUSTERED 
(
	[TherapyCategory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TherapyDetails_Table]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TherapyDetails_Table](
	[TherapyDetail_id] [int] IDENTITY(1,1) NOT NULL,
	[TherapyDetail_Name] [nvarchar](50) NULL,
	[TherapyCategory_id] [int] NOT NULL,
 CONSTRAINT [PK_TherapyDetails_Table] PRIMARY KEY CLUSTERED 
(
	[TherapyDetail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sales] ADD  DEFAULT (getdate()) FOR [CreatedDt]
GO
ALTER TABLE [dbo].[TherapyDetails_Table]  WITH CHECK ADD  CONSTRAINT [FK_TherapyDetails_Table_TherapyCategory_Table1] FOREIGN KEY([TherapyCategory_id])
REFERENCES [dbo].[TherapyCategory_Table] ([TherapyCategory_id])
GO
ALTER TABLE [dbo].[TherapyDetails_Table] CHECK CONSTRAINT [FK_TherapyDetails_Table_TherapyCategory_Table1]
GO
/****** Object:  StoredProcedure [dbo].[DeleteSales]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[DeleteSales]
(
    @SalesId INT
)
AS
BEGIN
    DELETE FROM Sales
    WHERE SalesId=@SalesId
END

GO
/****** Object:  StoredProcedure [dbo].[GetSalesById]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[GetSalesById]
(
    @SalesId INT
)
AS
BEGIN

    SELECT
        SalesId,
        ProductName,
        Quantity
    FROM Sales
    WHERE SalesId=@SalesId

END

GO
/****** Object:  StoredProcedure [dbo].[GetSalesDetails]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSalesDetails]
AS
BEGIN
        SELECT
            SalesId,
            ProductName,
            Quantity
        FROM Sales
END
GO
/****** Object:  StoredProcedure [dbo].[GetTherapyDetailsByCategoryId]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTherapyDetailsByCategoryId] 
    @categoryId INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        TC.TherapyCategory_id,
        TC.TherapyCategory_name,
        TD.TherapyDetail_id,
        TD.TherapyDetail_Name
    FROM 
        TherapyCategory_Table TC
    INNER JOIN 
        TherapyDetails_Table TD ON TC.TherapyCategory_id = TD.TherapyCategory_id
    WHERE 
        TC.TherapyCategory_id = @categoryId;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetUserByCredentials]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[GetUserByCredentials]
  (
  @username varchar(50),
  @password varchar(50)
  )
  as
  begin
   SELECT * FROM LoginTable WHERE username=@username and password=@password
  end
GO
/****** Object:  StoredProcedure [dbo].[Login_Table]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Login_Table]

(

        @UserName varchar(50),

        @Password varchar(50)

)

as

declare @status int

if exists(select * from LoginTable where UserName=@UserName and Password=@Password)

       set @status=1

else

       set @status=0

select @status

GO
/****** Object:  StoredProcedure [dbo].[Loginsystem]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[Loginsystem]
(
@username varchar(50),
@password varchar(50),
@Role     varchar(50)
)
as
begin
insert into LoginTable (id, username, password,Role )
values (1,'vaibhav','123','user');
end
GO
/****** Object:  StoredProcedure [dbo].[SaveSalesDetails]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveSalesDetails]

    @ProductName NVARCHAR(100),
    @Quantity INT

AS
BEGIN
        INSERT INTO Sales
        (
            ProductName,
            Quantity
        )
        VALUES
        (
            @ProductName,
            @Quantity
        )
END

GO
/****** Object:  StoredProcedure [dbo].[Spaallname]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Spaallname]
AS
BEGIN
        SELECT
		Spa_Name
            
        FROM Spas_Table
END
GO
/****** Object:  StoredProcedure [dbo].[test]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[test] 
  @TherapyCat INT
  as 
  begin
  Select * from TherapyDetails_Table where TherapyCategory_id = @TherapyCat;
  end
GO
/****** Object:  StoredProcedure [dbo].[TherapyAllCategory]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[TherapyAllCategory]
AS
BEGIN
        SELECT
		TherapyCategory_name
            
        FROM TherapyCategory_Table
END
GO
/****** Object:  StoredProcedure [dbo].[TherapyAllDetails]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[TherapyAllDetails]
AS
BEGIN
        SELECT
				TherapyDetail_Name
            
        FROM TherapyDetails_Table
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateSales]    Script Date: 25-02-2024 13:46:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[UpdateSales]
(
    @ProductName NVARCHAR(100),
    @Quantity INT,
    @SalesId INT

)
AS
BEGIN

    UPDATE Sales SET
        ProductName=@ProductName,
        Quantity=@Quantity
    WHERE SalesId=@SalesId
END

GO
USE [master]
GO
ALTER DATABASE [DemoWorks] SET  READ_WRITE 
GO
