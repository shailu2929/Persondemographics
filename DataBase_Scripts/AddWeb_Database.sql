USE [master]
GO
/****** Object:  Database [AddWeb]    Script Date: 08/21/2021 14:09:18 ******/
CREATE DATABASE [AddWeb] ON  PRIMARY 
( NAME = N'AddWeb', FILENAME = N'D:\AddWeb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AddWeb_log', FILENAME = N'D:\AddWeb_log.ldf' , SIZE = 4224KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AddWeb] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AddWeb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AddWeb] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [AddWeb] SET ANSI_NULLS OFF
GO
ALTER DATABASE [AddWeb] SET ANSI_PADDING OFF
GO
ALTER DATABASE [AddWeb] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [AddWeb] SET ARITHABORT OFF
GO
ALTER DATABASE [AddWeb] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [AddWeb] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [AddWeb] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [AddWeb] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [AddWeb] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [AddWeb] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [AddWeb] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [AddWeb] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [AddWeb] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [AddWeb] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [AddWeb] SET  DISABLE_BROKER
GO
ALTER DATABASE [AddWeb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [AddWeb] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [AddWeb] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [AddWeb] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [AddWeb] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [AddWeb] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [AddWeb] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [AddWeb] SET  READ_WRITE
GO
ALTER DATABASE [AddWeb] SET RECOVERY FULL
GO
ALTER DATABASE [AddWeb] SET  MULTI_USER
GO
ALTER DATABASE [AddWeb] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [AddWeb] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'AddWeb', N'ON'
GO
USE [AddWeb]
GO
/****** Object:  Table [dbo].[Person_Demographic_Details]    Script Date: 08/21/2021 14:09:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person_Demographic_Details](
	[Person_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[Age] [varchar](20) NULL,
	[Gender] [varchar](10) NULL,
	[Address] [varchar](100) NULL,
	[Country] [int] NULL,
	[State] [int] NULL,
	[City] [int] NULL,
	[experience] [int] NULL,
	[Prev_Company] [varchar](200) NULL,
	[designation] [varchar](50) NULL,
 CONSTRAINT [PK_Person_Demographic_Details] PRIMARY KEY CLUSTERED 
(
	[Person_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Person_Demographic_Details] ON
INSERT [dbo].[Person_Demographic_Details] ([Person_Id], [Name], [Age], [Gender], [Address], [Country], [State], [City], [experience], [Prev_Company], [designation]) VALUES (1, N'Nikhil Saini', N'25', N'1', N'81/82, Mahesh Colony', 3, 3, 6, 12, N'velocis systems', N'dot net developer')
INSERT [dbo].[Person_Demographic_Details] ([Person_Id], [Name], [Age], [Gender], [Address], [Country], [State], [City], [experience], [Prev_Company], [designation]) VALUES (2, N'Shailesh Joshi', N'32', N'1', N'', 3, 3, 5, 0, N'', N'')
INSERT [dbo].[Person_Demographic_Details] ([Person_Id], [Name], [Age], [Gender], [Address], [Country], [State], [City], [experience], [Prev_Company], [designation]) VALUES (3, N'Reena Tiwari', N'32', N'2', N'81/82, Mahesh Colony', 3, 4, 7, 12, N'velocis systems', N'dot net developer')
INSERT [dbo].[Person_Demographic_Details] ([Person_Id], [Name], [Age], [Gender], [Address], [Country], [State], [City], [experience], [Prev_Company], [designation]) VALUES (4, N'Sachin Joshi', N'28', N'1', N'81/82, Mahesh Colony', 3, 4, 7, 12, N'velocis systems', N'dot net developer')
INSERT [dbo].[Person_Demographic_Details] ([Person_Id], [Name], [Age], [Gender], [Address], [Country], [State], [City], [experience], [Prev_Company], [designation]) VALUES (5, N'Sourabh Jain', N'21', N'1', N'81/82, Mahesh Colony', 3, 4, 8, 0, N'', N'')
INSERT [dbo].[Person_Demographic_Details] ([Person_Id], [Name], [Age], [Gender], [Address], [Country], [State], [City], [experience], [Prev_Company], [designation]) VALUES (6, N'Mnju Tiwari', N'25', N'2', N'81/82, Mahesh Colony', 3, 1, 1, 12, N'velocis systems', N'dot net developer')
INSERT [dbo].[Person_Demographic_Details] ([Person_Id], [Name], [Age], [Gender], [Address], [Country], [State], [City], [experience], [Prev_Company], [designation]) VALUES (7, N'Suman Sharma', N'25', N'1', N'81/82, Mahesh Colony', 3, 4, 7, 0, N'', N'')
INSERT [dbo].[Person_Demographic_Details] ([Person_Id], [Name], [Age], [Gender], [Address], [Country], [State], [City], [experience], [Prev_Company], [designation]) VALUES (8, N'Rekha Tiwari', N'32', N'2', N'81/82, Mahesh Colony', 3, 4, 7, 12, N'velocis systems', N'dot net developer')
INSERT [dbo].[Person_Demographic_Details] ([Person_Id], [Name], [Age], [Gender], [Address], [Country], [State], [City], [experience], [Prev_Company], [designation]) VALUES (9, N'Vishnu Sharma', N'32', N'1', N'81/82, Mahesh Colony', 3, 4, 7, 0, N'', N'')
INSERT [dbo].[Person_Demographic_Details] ([Person_Id], [Name], [Age], [Gender], [Address], [Country], [State], [City], [experience], [Prev_Company], [designation]) VALUES (10, N'Hemant', N'25', N'1', N'81/82, Mahesh Colony', 3, 3, 6, 20, N'velocis systems', N'dot net developer')
INSERT [dbo].[Person_Demographic_Details] ([Person_Id], [Name], [Age], [Gender], [Address], [Country], [State], [City], [experience], [Prev_Company], [designation]) VALUES (11, N'Rohit Sharma', N'32', N'1', N'81/82, Mahesh Colony', 3, 4, 7, 12, N'velocis systems', N'dot net developer')
INSERT [dbo].[Person_Demographic_Details] ([Person_Id], [Name], [Age], [Gender], [Address], [Country], [State], [City], [experience], [Prev_Company], [designation]) VALUES (12, N'Mitesh Sharma', N'25', N'1', N'81/82, Mahesh Colony', 3, 4, 8, 12, N'velocis systems', N'dot net developer')
INSERT [dbo].[Person_Demographic_Details] ([Person_Id], [Name], [Age], [Gender], [Address], [Country], [State], [City], [experience], [Prev_Company], [designation]) VALUES (13, N'Ashok Joshi', N'25', N'1', N'81/82, Mahesh Colony', 3, 4, 7, 12, N'velocis systems', N'dot net developer')
INSERT [dbo].[Person_Demographic_Details] ([Person_Id], [Name], [Age], [Gender], [Address], [Country], [State], [City], [experience], [Prev_Company], [designation]) VALUES (14, N'Ronit Roy', N'32', N'1', N'81/82, Mahesh Colony', 3, 4, 8, 12, N'velocis systems', N'dot net developer')
INSERT [dbo].[Person_Demographic_Details] ([Person_Id], [Name], [Age], [Gender], [Address], [Country], [State], [City], [experience], [Prev_Company], [designation]) VALUES (15, N'Dinesh Sharma', N'35', N'1', N'81/82, Mahesh Colony', 3, 4, 7, 12, N'velocis systems', N'dot net developer')
SET IDENTITY_INSERT [dbo].[Person_Demographic_Details] OFF
/****** Object:  Table [dbo].[CountryMaster]    Script Date: 08/21/2021 14:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CountryMaster](
	[Country_Id] [int] IDENTITY(1,1) NOT NULL,
	[Country_Name] [varchar](20) NULL,
 CONSTRAINT [PK_CountryMaster] PRIMARY KEY CLUSTERED 
(
	[Country_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CountryMaster] ON
INSERT [dbo].[CountryMaster] ([Country_Id], [Country_Name]) VALUES (1, N'Afghanistan')
INSERT [dbo].[CountryMaster] ([Country_Id], [Country_Name]) VALUES (2, N'Austalia')
INSERT [dbo].[CountryMaster] ([Country_Id], [Country_Name]) VALUES (3, N'India')
INSERT [dbo].[CountryMaster] ([Country_Id], [Country_Name]) VALUES (4, N'NewZeland')
INSERT [dbo].[CountryMaster] ([Country_Id], [Country_Name]) VALUES (5, N'SouthAfrica')
SET IDENTITY_INSERT [dbo].[CountryMaster] OFF
/****** Object:  Table [dbo].[CityMaster]    Script Date: 08/21/2021 14:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CityMaster](
	[City_Id] [int] NULL,
	[City_Name] [varchar](20) NULL,
	[State_Id] [int] NULL,
	[Country_Id] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (1, N'Bhilwara', 1, 3)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (2, N'Bharatpur', 1, 3)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (3, N'Agra', 2, 3)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (4, N'Mathura', 2, 3)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (5, N'Indore', 3, 3)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (6, N'Bhopal', 3, 3)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (7, N'Chandigarh', 4, 3)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (8, N'Gudaspur', 4, 3)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (9, N'Sydney', 9, 2)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (10, N'Brisbane', 10, 2)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (11, N'Hobart', 11, 2)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (12, N'Melbourne', 12, 2)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (13, N'Kabul', 13, 1)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (14, N'Christchurch', 14, 4)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (15, N'Napier', 6, 4)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (16, N'Wellington', 5, 4)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (17, N'Captown', 8, 5)
INSERT [dbo].[CityMaster] ([City_Id], [City_Name], [State_Id], [Country_Id]) VALUES (18, N'Durban', 7, 5)
/****** Object:  Table [dbo].[StateMaster]    Script Date: 08/21/2021 14:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StateMaster](
	[State_Id] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](20) NULL,
	[Country_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[State_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[StateMaster] ON
INSERT [dbo].[StateMaster] ([State_Id], [StateName], [Country_Id]) VALUES (1, N'Rajasthan', 3)
INSERT [dbo].[StateMaster] ([State_Id], [StateName], [Country_Id]) VALUES (2, N'Uttar Pradesh', 3)
INSERT [dbo].[StateMaster] ([State_Id], [StateName], [Country_Id]) VALUES (3, N'MP', 3)
INSERT [dbo].[StateMaster] ([State_Id], [StateName], [Country_Id]) VALUES (4, N'Punjab', 3)
INSERT [dbo].[StateMaster] ([State_Id], [StateName], [Country_Id]) VALUES (5, N'Wellington', 4)
INSERT [dbo].[StateMaster] ([State_Id], [StateName], [Country_Id]) VALUES (6, N'Napier', 4)
INSERT [dbo].[StateMaster] ([State_Id], [StateName], [Country_Id]) VALUES (7, N'Durban', 5)
INSERT [dbo].[StateMaster] ([State_Id], [StateName], [Country_Id]) VALUES (8, N'Captown', 5)
INSERT [dbo].[StateMaster] ([State_Id], [StateName], [Country_Id]) VALUES (9, N'Sydney', 2)
INSERT [dbo].[StateMaster] ([State_Id], [StateName], [Country_Id]) VALUES (10, N'Birsbane', 2)
INSERT [dbo].[StateMaster] ([State_Id], [StateName], [Country_Id]) VALUES (11, N'Hobart', 2)
INSERT [dbo].[StateMaster] ([State_Id], [StateName], [Country_Id]) VALUES (12, N'Melbourne', 2)
INSERT [dbo].[StateMaster] ([State_Id], [StateName], [Country_Id]) VALUES (13, N'Kabul', 1)
INSERT [dbo].[StateMaster] ([State_Id], [StateName], [Country_Id]) VALUES (14, N'Christchurch', 4)
SET IDENTITY_INSERT [dbo].[StateMaster] OFF
/****** Object:  StoredProcedure [dbo].[Proc_AddWeb]    Script Date: 08/21/2021 14:09:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_AddWeb]
(
@Action varchar(20),
@Person_id int,
@country_id int,
@State_id int,
@City_id int,
@Name varchar(20),
@Age varchar(20),
@Gender varchar(10),
@address varchar(100),
@experience int,
@prevcompany varchar(200),
@designation varchar(50)

)

AS
BEGIN

	If @Action='Select_Data'
	Begin
		Select pd.name,pd.age,case when pd.gender=1 then 'Male' else 'Female' end as Gender
		,pd.address,Country_Name,sm.StateName,ctm.City_Name,pd.experience as experience
		,pd.Prev_Company,pd.designation from dbo.Person_Demographic_Details pd
		inner join dbo.CountryMaster cm on cm.Country_Id = pd.Country
		inner join dbo.StateMaster sm on sm.Country_Id = cm.Country_Id and sm.State_Id = pd.State
		inner join dbo.CityMaster ctm on ctm.State_Id = sm.State_Id and ctm.Country_Id= sm.Country_Id 
		and ctm.Country_Id = cm.Country_Id and ctm.City_Id = pd.city
		order by name

	End

	If @Action='get_country'
	Begin
		select country_id,country_name from CountryMaster order by Country_Name
	End

	If @Action='get_state'
	Begin
		select state_id,StateName from StateMaster where Country_Id=@country_id order by StateName
	End

	If @Action='get_city'
	Begin
		select city_id,City_Name from CityMaster where State_Id=@State_id  order by City_Name
	End
	
	If @Action='Insert_Details'
	Begin
		insert into Person_Demographic_Details(name,age,gender,address,country,state,city,experience,Prev_Company,designation)
		values(@name,@age,@gender,@address,@country_id,@State_id,@city_id,@experience,@prevcompany,@designation) 
	End
	
	If @Action='GetAllPerson'
	Begin
		 select person_id,name from Person_Demographic_Details
		 where experience=0 and Prev_Company='' and designation='' order by name
	End
	
	If @Action='Insert_More_Details'
	Begin
		Update Person_Demographic_Details set experience=@experience,Prev_Company=@prevcompany,designation=@designation
		where Person_id=@Person_id
	End
END
GO
