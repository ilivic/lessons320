USE [KOTIKI320]
GO
/****** Object:  Table [dbo].[Studs]    Script Date: 25.10.2022 12:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studs](
	[id_Stud] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Groop] [char](3) NOT NULL,
	[Colors] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Studs] PRIMARY KEY CLUSTERED 
(
	[id_Stud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Studs] ON 

INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (1, N'Абрамов Д. Д.', N'320', N'blue', 1)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (2, N'2 Бакиров К. Ю.', N'320', N'Red', 0)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (3, N'3 Булдакова Е. Д.', N'320', N'Red', 1)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (4, N'4 Васильев Р. А.', N'320', N'Red', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (5, N'5 Габдрахманов Р. И.', N'320', N'Green', 1)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (6, N'6 Галиева 3. А.', N'320', N'Green', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (7, N'7 Гараева Р. М.', N'320', N'Yellow', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (8, N'8 Гилаев Д. И.', N'320', N'blue', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (9, N'9 Гиниятуллин И. Ф.', N'320', N'blue', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (10, N'10 Зарипов Р. Б.', N'320', N'Green', 0)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (11, N'11 Зиятдинов К. А.', N'320', N'Green', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (12, N'12 Исмагилов И. Р.', N'320', N'Red', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (13, N'13 Котдусов Б. М.', N'320', N'Yellow', 1)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (14, N'14 Петров Н. С.', N'320', N'Red', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (15, N'15 Сабирзянов И. Н.', N'320', N'blue', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (16, N'16 Сайфудинов У. Р.', N'320', N'Yellow', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (17, N'17 Сайфуллин Б. И.', N'320', N'Yellow', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (18, N'18 Сафиуллин Р. Р.', N'320', N'Green', 0)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (19, N'19 Тимуршин Б. Р.', N'320', N'Yellow', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (20, N'20 Турушкин С. И.', N'320', N'blue', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (21, N'21 Хайбуллина Э. Р.', N'320', N'Yellow', 0)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (22, N'22 Шайхутдинов Б. А.', N'320', N'blue', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (23, N'23 Шарипов К. Р.', N'320', N'Yellow', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (24, N'24 Щепкин Д. М.', N'320', N'blue', NULL)
INSERT [dbo].[Studs] ([id_Stud], [Name], [Groop], [Colors], [Status]) VALUES (25, N'25 Ясавеев Р. А.', N'320', N'blue', 0)
SET IDENTITY_INSERT [dbo].[Studs] OFF
GO
