USE [11TR]
GO
/****** Object:  Table [dbo].[DatePars]    Script Date: 26.10.2022 12:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatePars](
	[id_datePar] [int] IDENTITY(1,1) NOT NULL,
	[DayTitle] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DatePars] PRIMARY KEY CLUSTERED 
(
	[id_datePar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pars]    Script Date: 26.10.2022 12:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pars](
	[id_par] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Pars] PRIMARY KEY CLUSTERED 
(
	[id_par] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stud]    Script Date: 26.10.2022 12:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stud](
	[id_Stud] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[ColorSt] [text] NULL,
 CONSTRAINT [PK_stud] PRIMARY KEY CLUSTERED 
(
	[id_Stud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudPars]    Script Date: 26.10.2022 12:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudPars](
	[id_Check] [int] IDENTITY(1,1) NOT NULL,
	[Stud_id] [int] NOT NULL,
	[par_id] [int] NOT NULL,
	[datePar_id] [int] NOT NULL,
	[ChecStat] [bit] NOT NULL,
 CONSTRAINT [PK_StudPars] PRIMARY KEY CLUSTERED 
(
	[id_Check] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DatePars] ON 

INSERT [dbo].[DatePars] ([id_datePar], [DayTitle]) VALUES (1, N'20.10     ')
INSERT [dbo].[DatePars] ([id_datePar], [DayTitle]) VALUES (2, N'21.10     ')
INSERT [dbo].[DatePars] ([id_datePar], [DayTitle]) VALUES (3, N'22.10     ')
INSERT [dbo].[DatePars] ([id_datePar], [DayTitle]) VALUES (4, N'23.10     ')
INSERT [dbo].[DatePars] ([id_datePar], [DayTitle]) VALUES (5, N'24.10     ')
INSERT [dbo].[DatePars] ([id_datePar], [DayTitle]) VALUES (6, N'25.10     ')
SET IDENTITY_INSERT [dbo].[DatePars] OFF
SET IDENTITY_INSERT [dbo].[Pars] ON 

INSERT [dbo].[Pars] ([id_par], [Title]) VALUES (1, N'физика')
INSERT [dbo].[Pars] ([id_par], [Title]) VALUES (2, N'математика ')
INSERT [dbo].[Pars] ([id_par], [Title]) VALUES (3, N'русский язык ')
INSERT [dbo].[Pars] ([id_par], [Title]) VALUES (4, N'химия ')
INSERT [dbo].[Pars] ([id_par], [Title]) VALUES (5, N'биология')
SET IDENTITY_INSERT [dbo].[Pars] OFF
SET IDENTITY_INSERT [dbo].[stud] ON 

INSERT [dbo].[stud] ([id_Stud], [Name], [ColorSt]) VALUES (1, N'Николаев Костя', N'Red')
INSERT [dbo].[stud] ([id_Stud], [Name], [ColorSt]) VALUES (2, N'Иванов Линар Jkvfpjdbx', N'Black')
INSERT [dbo].[stud] ([id_Stud], [Name], [ColorSt]) VALUES (3, N'Мирзасалихов Айнур', N'Green')
INSERT [dbo].[stud] ([id_Stud], [Name], [ColorSt]) VALUES (4, N'Бипешкин Максим', N'blue')
SET IDENTITY_INSERT [dbo].[stud] OFF
SET IDENTITY_INSERT [dbo].[StudPars] ON 

INSERT [dbo].[StudPars] ([id_Check], [Stud_id], [par_id], [datePar_id], [ChecStat]) VALUES (1, 1, 1, 1, 1)
INSERT [dbo].[StudPars] ([id_Check], [Stud_id], [par_id], [datePar_id], [ChecStat]) VALUES (2, 2, 1, 1, 1)
INSERT [dbo].[StudPars] ([id_Check], [Stud_id], [par_id], [datePar_id], [ChecStat]) VALUES (3, 3, 1, 1, 1)
INSERT [dbo].[StudPars] ([id_Check], [Stud_id], [par_id], [datePar_id], [ChecStat]) VALUES (4, 4, 1, 1, 0)
INSERT [dbo].[StudPars] ([id_Check], [Stud_id], [par_id], [datePar_id], [ChecStat]) VALUES (5, 1, 2, 1, 1)
INSERT [dbo].[StudPars] ([id_Check], [Stud_id], [par_id], [datePar_id], [ChecStat]) VALUES (6, 2, 2, 1, 1)
INSERT [dbo].[StudPars] ([id_Check], [Stud_id], [par_id], [datePar_id], [ChecStat]) VALUES (7, 3, 2, 1, 0)
INSERT [dbo].[StudPars] ([id_Check], [Stud_id], [par_id], [datePar_id], [ChecStat]) VALUES (8, 4, 2, 1, 1)
INSERT [dbo].[StudPars] ([id_Check], [Stud_id], [par_id], [datePar_id], [ChecStat]) VALUES (9, 1, 1, 2, 1)
INSERT [dbo].[StudPars] ([id_Check], [Stud_id], [par_id], [datePar_id], [ChecStat]) VALUES (10, 2, 1, 2, 1)
INSERT [dbo].[StudPars] ([id_Check], [Stud_id], [par_id], [datePar_id], [ChecStat]) VALUES (11, 3, 1, 2, 1)
INSERT [dbo].[StudPars] ([id_Check], [Stud_id], [par_id], [datePar_id], [ChecStat]) VALUES (12, 4, 1, 2, 0)
SET IDENTITY_INSERT [dbo].[StudPars] OFF
ALTER TABLE [dbo].[StudPars]  WITH CHECK ADD  CONSTRAINT [FK_StudPars_DatePars] FOREIGN KEY([datePar_id])
REFERENCES [dbo].[DatePars] ([id_datePar])
GO
ALTER TABLE [dbo].[StudPars] CHECK CONSTRAINT [FK_StudPars_DatePars]
GO
ALTER TABLE [dbo].[StudPars]  WITH CHECK ADD  CONSTRAINT [FK_StudPars_Pars] FOREIGN KEY([par_id])
REFERENCES [dbo].[Pars] ([id_par])
GO
ALTER TABLE [dbo].[StudPars] CHECK CONSTRAINT [FK_StudPars_Pars]
GO
ALTER TABLE [dbo].[StudPars]  WITH CHECK ADD  CONSTRAINT [FK_StudPars_stud] FOREIGN KEY([Stud_id])
REFERENCES [dbo].[stud] ([id_Stud])
GO
ALTER TABLE [dbo].[StudPars] CHECK CONSTRAINT [FK_StudPars_stud]
GO
