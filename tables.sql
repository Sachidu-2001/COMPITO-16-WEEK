USE [GestioneContravvenzioni]
GO
/****** Object:  Table [dbo].[ANAGRAFICA]    Script Date: 28/02/2025 17:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ANAGRAFICA](
	[idanagrafica] [int] IDENTITY(1,1) NOT NULL,
	[Cognome] [varchar](50) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Indirizzo] [varchar](100) NOT NULL,
	[Città] [varchar](50) NULL,
	[CAP] [char](5) NOT NULL,
	[Cod_Fisc] [char](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idanagrafica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPO_VIOLAZIONE]    Script Date: 28/02/2025 17:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPO_VIOLAZIONE](
	[idviolazione] [int] IDENTITY(1,1) NOT NULL,
	[descrizione] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idviolazione] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VERBALE]    Script Date: 28/02/2025 17:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VERBALE](
	[idverbale] [int] IDENTITY(1,1) NOT NULL,
	[DataViolazione] [date] NULL,
	[IndirizzoViolazione] [varchar](100) NULL,
	[Nominativo_Agente] [varchar](50) NULL,
	[DataTrascrizioneVerbale] [date] NULL,
	[Importo] [decimal](10, 2) NULL,
	[DecurtamentoPunti] [int] NULL,
	[idanagrafica] [int] NULL,
	[idviolazione] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idverbale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VERBALE]  WITH CHECK ADD FOREIGN KEY([idanagrafica])
REFERENCES [dbo].[ANAGRAFICA] ([idanagrafica])
GO
ALTER TABLE [dbo].[VERBALE]  WITH CHECK ADD FOREIGN KEY([idviolazione])
REFERENCES [dbo].[TIPO_VIOLAZIONE] ([idviolazione])
GO
/****** Object:  StoredProcedure [dbo].[progetto_settimanale]    Script Date: 28/02/2025 17:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[progetto_settimanale]
as 
select * from ANAGRAFICA;
GO
/****** Object:  StoredProcedure [dbo].[progetto_Sp]    Script Date: 28/02/2025 17:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[progetto_Sp]
as 
select * from ANAGRAFICA;
GO
