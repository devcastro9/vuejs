USE [CONDOBO]
GO

/****** Object:  Table [dbo].[tblCompCentroCostoDet]    Script Date: 03/08/2021 13:57:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tblCompCentroCostoDet](
	[CompCentroCostoDetId] [int] NOT NULL,
	[EmpresaId] [int] NOT NULL,
	[GestionId] [int] NOT NULL,
	[CompId] [int] NOT NULL,
	[CompDetId] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[PlanId] [int] NOT NULL,
	[MonedaId] [int] NOT NULL,
	[CentroCostoId] [int] NOT NULL,
	[CentroCostoDetId] [int] NOT NULL,
	[DebeOrg] [decimal](18, 5) NOT NULL,
	[HaberOrg] [decimal](18, 5) NOT NULL,
	[DebeBs] [decimal](18, 5) NOT NULL,
	[HaberBs] [decimal](18, 5) NOT NULL,
	[DebeUs] [decimal](18, 5) NOT NULL,
	[HaberUs] [decimal](18, 5) NOT NULL,
	[EstadoId] [int] NOT NULL,
	[sLastUpdate_id] [varchar](50) NULL,
	[dtLastUpdate_dt] [datetime] NULL,
	[iConcurrency_id] [smallint] NULL,
 CONSTRAINT [CompCentroCostoDetPK] PRIMARY KEY NONCLUSTERED 
(
	[CompCentroCostoDetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

