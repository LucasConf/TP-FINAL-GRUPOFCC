USE [master]
GO
/****** Object:  Database [TP PAGINA]    Script Date: 17/10/2019 11:47:59 ******/
CREATE DATABASE [TP PAGINA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TP PAGINA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TP PAGINA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TP PAGINA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TP PAGINA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TP PAGINA] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TP PAGINA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TP PAGINA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TP PAGINA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TP PAGINA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TP PAGINA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TP PAGINA] SET ARITHABORT OFF 
GO
ALTER DATABASE [TP PAGINA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TP PAGINA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TP PAGINA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TP PAGINA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TP PAGINA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TP PAGINA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TP PAGINA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TP PAGINA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TP PAGINA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TP PAGINA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TP PAGINA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TP PAGINA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TP PAGINA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TP PAGINA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TP PAGINA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TP PAGINA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TP PAGINA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TP PAGINA] SET RECOVERY FULL 
GO
ALTER DATABASE [TP PAGINA] SET  MULTI_USER 
GO
ALTER DATABASE [TP PAGINA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TP PAGINA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TP PAGINA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TP PAGINA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TP PAGINA] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TP PAGINA', N'ON'
GO
ALTER DATABASE [TP PAGINA] SET QUERY_STORE = OFF
GO
USE [TP PAGINA]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [TP PAGINA]
GO
/****** Object:  User [alumno]    Script Date: 17/10/2019 11:48:00 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Hardware]    Script Date: 17/10/2019 11:48:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hardware](
	[IdHardware] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Precio] [money] NOT NULL,
	[Descripcion] [varchar](500) NOT NULL,
	[Stock] [int] NOT NULL,
	[Foto] [varchar](100) NOT NULL,
	[Destacado] [bit] NULL,
 CONSTRAINT [PK_Hardware] PRIMARY KEY CLUSTERED 
(
	[IdHardware] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Noticias]    Script Date: 17/10/2019 11:48:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noticias](
	[IdNoticia] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[Foto] [varchar](50) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Destacada] [bit] NULL,
 CONSTRAINT [PK_Noticias] PRIMARY KEY CLUSTERED 
(
	[IdNoticia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ropa]    Script Date: 17/10/2019 11:48:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ropa](
	[IdRopa] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Precio] [money] NOT NULL,
	[Descripcion] [varchar](500) NOT NULL,
	[Stock] [int] NOT NULL,
	[Foto] [varchar](100) NOT NULL,
	[Destacado] [bit] NULL,
 CONSTRAINT [PK_Ropa] PRIMARY KEY CLUSTERED 
(
	[IdRopa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skateparks]    Script Date: 17/10/2019 11:48:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skateparks](
	[IdSkatePark] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Ubicacion] [varchar](200) NOT NULL,
	[Descripcion] [varchar](500) NOT NULL,
	[Foto] [varchar](100) NOT NULL,
	[Destacado] [bit] NULL,
 CONSTRAINT [PK_Skateparks] PRIMARY KEY CLUSTERED 
(
	[IdSkatePark] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 17/10/2019 11:48:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hardware] ON 

INSERT [dbo].[Hardware] ([IdHardware], [Nombre], [Precio], [Descripcion], [Stock], [Foto], [Destacado]) VALUES (2, N'Llave T Supreme', 1000.0000, N'de ruta', 1, N'llavetsupreme.jpg', NULL)
INSERT [dbo].[Hardware] ([IdHardware], [Nombre], [Precio], [Descripcion], [Stock], [Foto], [Destacado]) VALUES (3, N'Lija Element', 1500.0000, N'Lija de Skate marca Element', 30, N'lijaelement.jpg', NULL)
INSERT [dbo].[Hardware] ([IdHardware], [Nombre], [Precio], [Descripcion], [Stock], [Foto], [Destacado]) VALUES (4, N'Trucks Independent', 3000.0000, N'Trucks de la marca independent', 130, N'trucksindpendent.jpg', NULL)
INSERT [dbo].[Hardware] ([IdHardware], [Nombre], [Precio], [Descripcion], [Stock], [Foto], [Destacado]) VALUES (5, N'Trucks Element', 2700.0000, N'Trucks de la marca Element', 30, N'truckselement.jpg', NULL)
INSERT [dbo].[Hardware] ([IdHardware], [Nombre], [Precio], [Descripcion], [Stock], [Foto], [Destacado]) VALUES (7, N'Ruedas Supreme', 4000.0000, N'Ruedas de la colaboracion entre el SkateShop supreme y la marca Spitfire', 10, N'spitfireruedassupreme.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Hardware] OFF
SET IDENTITY_INSERT [dbo].[Noticias] ON 

INSERT [dbo].[Noticias] ([IdNoticia], [Titulo], [Descripcion], [Foto], [Fecha], [Destacada]) VALUES (1, N'Muere Tony Hawk', N'Uno de los Skaters mas famosos de todos los tiempos, Tony Hawk, fue encontrado muerto en el dia de ayer en su cama luego de una sobredosis.', N'tonyhawkmuere.jpg', CAST(N'2019-10-17' AS Date), 1)
INSERT [dbo].[Noticias] ([IdNoticia], [Titulo], [Descripcion], [Foto], [Fecha], [Destacada]) VALUES (4, N'Nyjah firma con Adidas', N'El Skater Nyjah Houston confirmo hace unas horas que terminara su contrato con Nike y pasara a formar parte de la familia de Adidas Skateboarding.', N'nyjahadidas.jpg', CAST(N'2019-09-17' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Noticias] OFF
SET IDENTITY_INSERT [dbo].[Ropa] ON 

INSERT [dbo].[Ropa] ([IdRopa], [Nombre], [Precio], [Descripcion], [Stock], [Foto], [Destacado]) VALUES (1, N'Zapatilla Nike SB Dunk Low Pro', 6400.0000, N'La zapatilla Nike SB Dunk Low Pro presenta el icónico estilo Dunk en un estilo de perfil bajo. La unidad Zoom Air en el talón y la lengüeta acolchada ofrecen un ajuste cómodo, ideal para practicar skateboarding.', 13, N'dunklow.jpg', 0)
INSERT [dbo].[Ropa] ([IdRopa], [Nombre], [Precio], [Descripcion], [Stock], [Foto], [Destacado]) VALUES (3, N'Zapatillas Vans SK8 HI', 5500.0000, N'Sin stock', 0, N'vanssk8hi.jpg', 0)
INSERT [dbo].[Ropa] ([IdRopa], [Nombre], [Precio], [Descripcion], [Stock], [Foto], [Destacado]) VALUES (4, N'Zapatillas Nike SB Nyjah Free', 6000.0000, N'Una de las zapatillas mas nuevas en el mercado son las Nyjah Free, del Pro-Skater Nyjah Houston y Nike.', 12, N'nyjahfree.jpg', 1)
INSERT [dbo].[Ropa] ([IdRopa], [Nombre], [Precio], [Descripcion], [Stock], [Foto], [Destacado]) VALUES (5, N'Buzo Thrasher', 3100.0000, N'Un buzo con una alta calidad y de los mas iconicos de la cultura', 9, N'buzothrasher.jpg', 0)
INSERT [dbo].[Ropa] ([IdRopa], [Nombre], [Precio], [Descripcion], [Stock], [Foto], [Destacado]) VALUES (6, N'Buzo Nike SB Icon Camo', 3600.0000, N'Sin stock', 0, N'buzonikesb.jpg', 0)
SET IDENTITY_INSERT [dbo].[Ropa] OFF
SET IDENTITY_INSERT [dbo].[Skateparks] ON 

INSERT [dbo].[Skateparks] ([IdSkatePark], [Nombre], [Ubicacion], [Descripcion], [Foto], [Destacado]) VALUES (1, N'Parque Costanera Skatepark (Pacha)', N'Av Costanera Rafael Obligado 76', N'El Skatepark Parque Costanera, tambien conocido por la comunidad como Pacha, ', N'pacha.jpg', 0)
INSERT [dbo].[Skateparks] ([IdSkatePark], [Nombre], [Ubicacion], [Descripcion], [Foto], [Destacado]) VALUES (2, N'Skatepark Converse', N'Castañeda 2020', N'El skatepark de Converse', N'skateparkconverse.jpg', 0)
INSERT [dbo].[Skateparks] ([IdSkatePark], [Nombre], [Ubicacion], [Descripcion], [Foto], [Destacado]) VALUES (3, N'Vans Skatepark', N'Av. Belisario Roldán 4511', N'Uno de los mejores skateparks de la ciudad de Buenos Aires es el Skatepark de Vans, que viene con un Bowl de nivel profesional.', N'vans.jpg', 1)
INSERT [dbo].[Skateparks] ([IdSkatePark], [Nombre], [Ubicacion], [Descripcion], [Foto], [Destacado]) VALUES (4, N'Skatepark Plaza Haiti ', N' Av. Dorrego 3626', N'El Skatepark de Plaza Haiti es un park muy completo', N'plazahaiti.jpg', 0)
INSERT [dbo].[Skateparks] ([IdSkatePark], [Nombre], [Ubicacion], [Descripcion], [Foto], [Destacado]) VALUES (5, N'Skatepark Parque Centenario', N'Parque Centenario', N'Este es un Skatepark que hace unos pocos años fue remodelado por la marca Nike', N'cente.jpg', 0)
SET IDENTITY_INSERT [dbo].[Skateparks] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Contraseña]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
USE [master]
GO
ALTER DATABASE [TP PAGINA] SET  READ_WRITE 
GO
