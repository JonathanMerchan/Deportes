USE [master]
GO
/****** Object:  Database [DB_Deportes]    Script Date: 21/10/2021 20:30:52 ******/
CREATE DATABASE [DB_Deportes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_Deportes', FILENAME = N'C:\Users\Marce\DB_Deportes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_Deportes_log', FILENAME = N'C:\Users\Marce\DB_Deportes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_Deportes] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_Deportes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_Deportes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_Deportes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_Deportes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_Deportes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_Deportes] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_Deportes] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DB_Deportes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_Deportes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_Deportes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_Deportes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_Deportes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_Deportes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_Deportes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_Deportes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_Deportes] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_Deportes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_Deportes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_Deportes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_Deportes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_Deportes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_Deportes] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DB_Deportes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_Deportes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_Deportes] SET  MULTI_USER 
GO
ALTER DATABASE [DB_Deportes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_Deportes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_Deportes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_Deportes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_Deportes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_Deportes] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DB_Deportes] SET QUERY_STORE = OFF
GO
USE [DB_Deportes]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 21/10/2021 20:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_canchas]    Script Date: 21/10/2021 20:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_canchas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Deporte] [nvarchar](max) NULL,
	[N_Espectadores] [nvarchar](max) NULL,
	[Medidas] [nvarchar](max) NULL,
	[Id_escenario] [int] NOT NULL,
	[escenarioId] [int] NULL,
 CONSTRAINT [PK_tb_canchas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_encuentros]    Script Date: 21/10/2021 20:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_encuentros](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_torneo] [int] NOT NULL,
	[Id_cancha] [int] NOT NULL,
	[Fecha] [datetime2](7) NOT NULL,
	[Id_persona] [int] NOT NULL,
	[canchaId] [int] NULL,
	[personaId] [int] NULL,
 CONSTRAINT [PK_tb_encuentros] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_equipos]    Script Date: 21/10/2021 20:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_equipos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Deporte] [nvarchar](max) NULL,
	[F_creacion] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tb_equipos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_equipos_torneos]    Script Date: 21/10/2021 20:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_equipos_torneos](
	[Id_equipo] [int] NOT NULL,
	[Id_torneo] [int] NOT NULL,
	[equiposId] [int] NULL,
	[torneosId] [int] NULL,
 CONSTRAINT [PK_tb_equipos_torneos] PRIMARY KEY CLUSTERED 
(
	[Id_equipo] ASC,
	[Id_torneo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_escenario]    Script Date: 21/10/2021 20:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_escenario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Direccion] [nvarchar](max) NULL,
	[Telefono] [nvarchar](max) NULL,
	[Id_municipio] [int] NOT NULL,
	[municipioId] [int] NULL,
 CONSTRAINT [PK_tb_escenario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_municipios]    Script Date: 21/10/2021 20:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_municipios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_municipios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_personas]    Script Date: 21/10/2021 20:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_personas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[N_identificacion] [int] NOT NULL,
	[tipo_persona] [nvarchar](max) NULL,
	[Nombres] [nvarchar](max) NULL,
	[Apellidos] [nvarchar](max) NULL,
	[Genero] [nvarchar](max) NULL,
	[Direccion] [nvarchar](max) NULL,
	[Celular] [nvarchar](max) NULL,
	[Correo] [nvarchar](max) NULL,
	[RH] [nvarchar](max) NULL,
	[EPS] [nvarchar](max) NULL,
	[F_nacimiento] [datetime2](7) NOT NULL,
	[Rol] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_personas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_personas_equipos]    Script Date: 21/10/2021 20:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_personas_equipos](
	[Id_persona] [int] NOT NULL,
	[Id_equipo] [int] NOT NULL,
	[personasId] [int] NULL,
	[equiposId] [int] NULL,
 CONSTRAINT [PK_tb_personas_equipos] PRIMARY KEY CLUSTERED 
(
	[Id_persona] ASC,
	[Id_equipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_torneos]    Script Date: 21/10/2021 20:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_torneos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Categoria] [nvarchar](max) NULL,
	[F_Inicio] [datetime2](7) NOT NULL,
	[F_Fin] [datetime2](7) NOT NULL,
	[N_rondas] [int] NOT NULL,
 CONSTRAINT [PK_tb_torneos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_torneos_encuentros]    Script Date: 21/10/2021 20:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_torneos_encuentros](
	[Id_torneo] [int] NOT NULL,
	[Id_encuentro] [int] NOT NULL,
	[Id_equipo] [int] NOT NULL,
	[Id_equipo2] [int] NULL,
	[Id_ganador] [int] NULL,
	[torneosId] [int] NULL,
	[encuentrosId] [int] NULL,
	[equipoId] [int] NULL,
 CONSTRAINT [PK_tb_torneos_encuentros] PRIMARY KEY CLUSTERED 
(
	[Id_torneo] ASC,
	[Id_encuentro] ASC,
	[Id_equipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_canchas_escenarioId]    Script Date: 21/10/2021 20:30:53 ******/
CREATE NONCLUSTERED INDEX [IX_tb_canchas_escenarioId] ON [dbo].[tb_canchas]
(
	[escenarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_encuentros_canchaId]    Script Date: 21/10/2021 20:30:53 ******/
CREATE NONCLUSTERED INDEX [IX_tb_encuentros_canchaId] ON [dbo].[tb_encuentros]
(
	[canchaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_encuentros_personaId]    Script Date: 21/10/2021 20:30:53 ******/
CREATE NONCLUSTERED INDEX [IX_tb_encuentros_personaId] ON [dbo].[tb_encuentros]
(
	[personaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_equipos_torneos_equiposId]    Script Date: 21/10/2021 20:30:53 ******/
CREATE NONCLUSTERED INDEX [IX_tb_equipos_torneos_equiposId] ON [dbo].[tb_equipos_torneos]
(
	[equiposId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_equipos_torneos_torneosId]    Script Date: 21/10/2021 20:30:53 ******/
CREATE NONCLUSTERED INDEX [IX_tb_equipos_torneos_torneosId] ON [dbo].[tb_equipos_torneos]
(
	[torneosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_escenario_municipioId]    Script Date: 21/10/2021 20:30:53 ******/
CREATE NONCLUSTERED INDEX [IX_tb_escenario_municipioId] ON [dbo].[tb_escenario]
(
	[municipioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_personas_equipos_equiposId]    Script Date: 21/10/2021 20:30:53 ******/
CREATE NONCLUSTERED INDEX [IX_tb_personas_equipos_equiposId] ON [dbo].[tb_personas_equipos]
(
	[equiposId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_personas_equipos_personasId]    Script Date: 21/10/2021 20:30:53 ******/
CREATE NONCLUSTERED INDEX [IX_tb_personas_equipos_personasId] ON [dbo].[tb_personas_equipos]
(
	[personasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_torneos_encuentros_encuentrosId]    Script Date: 21/10/2021 20:30:53 ******/
CREATE NONCLUSTERED INDEX [IX_tb_torneos_encuentros_encuentrosId] ON [dbo].[tb_torneos_encuentros]
(
	[encuentrosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_torneos_encuentros_equipoId]    Script Date: 21/10/2021 20:30:53 ******/
CREATE NONCLUSTERED INDEX [IX_tb_torneos_encuentros_equipoId] ON [dbo].[tb_torneos_encuentros]
(
	[equipoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_torneos_encuentros_torneosId]    Script Date: 21/10/2021 20:30:53 ******/
CREATE NONCLUSTERED INDEX [IX_tb_torneos_encuentros_torneosId] ON [dbo].[tb_torneos_encuentros]
(
	[torneosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_canchas]  WITH CHECK ADD  CONSTRAINT [FK_tb_canchas_tb_escenario_escenarioId] FOREIGN KEY([escenarioId])
REFERENCES [dbo].[tb_escenario] ([Id])
GO
ALTER TABLE [dbo].[tb_canchas] CHECK CONSTRAINT [FK_tb_canchas_tb_escenario_escenarioId]
GO
ALTER TABLE [dbo].[tb_encuentros]  WITH CHECK ADD  CONSTRAINT [FK_tb_encuentros_tb_canchas_canchaId] FOREIGN KEY([canchaId])
REFERENCES [dbo].[tb_canchas] ([Id])
GO
ALTER TABLE [dbo].[tb_encuentros] CHECK CONSTRAINT [FK_tb_encuentros_tb_canchas_canchaId]
GO
ALTER TABLE [dbo].[tb_encuentros]  WITH CHECK ADD  CONSTRAINT [FK_tb_encuentros_tb_personas_personaId] FOREIGN KEY([personaId])
REFERENCES [dbo].[tb_personas] ([Id])
GO
ALTER TABLE [dbo].[tb_encuentros] CHECK CONSTRAINT [FK_tb_encuentros_tb_personas_personaId]
GO
ALTER TABLE [dbo].[tb_equipos_torneos]  WITH CHECK ADD  CONSTRAINT [FK_tb_equipos_torneos_tb_equipos_equiposId] FOREIGN KEY([equiposId])
REFERENCES [dbo].[tb_equipos] ([Id])
GO
ALTER TABLE [dbo].[tb_equipos_torneos] CHECK CONSTRAINT [FK_tb_equipos_torneos_tb_equipos_equiposId]
GO
ALTER TABLE [dbo].[tb_equipos_torneos]  WITH CHECK ADD  CONSTRAINT [FK_tb_equipos_torneos_tb_torneos_torneosId] FOREIGN KEY([torneosId])
REFERENCES [dbo].[tb_torneos] ([Id])
GO
ALTER TABLE [dbo].[tb_equipos_torneos] CHECK CONSTRAINT [FK_tb_equipos_torneos_tb_torneos_torneosId]
GO
ALTER TABLE [dbo].[tb_escenario]  WITH CHECK ADD  CONSTRAINT [FK_tb_escenario_tb_municipios_municipioId] FOREIGN KEY([municipioId])
REFERENCES [dbo].[tb_municipios] ([Id])
GO
ALTER TABLE [dbo].[tb_escenario] CHECK CONSTRAINT [FK_tb_escenario_tb_municipios_municipioId]
GO
ALTER TABLE [dbo].[tb_personas_equipos]  WITH CHECK ADD  CONSTRAINT [FK_tb_personas_equipos_tb_equipos_equiposId] FOREIGN KEY([equiposId])
REFERENCES [dbo].[tb_equipos] ([Id])
GO
ALTER TABLE [dbo].[tb_personas_equipos] CHECK CONSTRAINT [FK_tb_personas_equipos_tb_equipos_equiposId]
GO
ALTER TABLE [dbo].[tb_personas_equipos]  WITH CHECK ADD  CONSTRAINT [FK_tb_personas_equipos_tb_personas_personasId] FOREIGN KEY([personasId])
REFERENCES [dbo].[tb_personas] ([Id])
GO
ALTER TABLE [dbo].[tb_personas_equipos] CHECK CONSTRAINT [FK_tb_personas_equipos_tb_personas_personasId]
GO
ALTER TABLE [dbo].[tb_torneos_encuentros]  WITH CHECK ADD  CONSTRAINT [FK_tb_torneos_encuentros_tb_encuentros_encuentrosId] FOREIGN KEY([encuentrosId])
REFERENCES [dbo].[tb_encuentros] ([Id])
GO
ALTER TABLE [dbo].[tb_torneos_encuentros] CHECK CONSTRAINT [FK_tb_torneos_encuentros_tb_encuentros_encuentrosId]
GO
ALTER TABLE [dbo].[tb_torneos_encuentros]  WITH CHECK ADD  CONSTRAINT [FK_tb_torneos_encuentros_tb_equipos_equipoId] FOREIGN KEY([equipoId])
REFERENCES [dbo].[tb_equipos] ([Id])
GO
ALTER TABLE [dbo].[tb_torneos_encuentros] CHECK CONSTRAINT [FK_tb_torneos_encuentros_tb_equipos_equipoId]
GO
ALTER TABLE [dbo].[tb_torneos_encuentros]  WITH CHECK ADD  CONSTRAINT [FK_tb_torneos_encuentros_tb_torneos_torneosId] FOREIGN KEY([torneosId])
REFERENCES [dbo].[tb_torneos] ([Id])
GO
ALTER TABLE [dbo].[tb_torneos_encuentros] CHECK CONSTRAINT [FK_tb_torneos_encuentros_tb_torneos_torneosId]
GO
USE [master]
GO
ALTER DATABASE [DB_Deportes] SET  READ_WRITE 
GO
