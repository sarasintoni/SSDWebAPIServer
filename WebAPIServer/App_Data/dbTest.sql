USE [dbTest]
GO
/****** Object:  Table [dbo].[clienti]    Script Date: 17-Nov-17 11:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clienti](
	[id] [int] NULL,
	[node_id] [int] NULL,
	[req] [int] NULL,
	[mag] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[costi]    Script Date: 17-Nov-17 11:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[costi](
	[id] [int] NOT NULL,
	[mag] [int] NULL,
	[cli] [int] NULL,
	[cost] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[magazzini]    Script Date: 17-Nov-17 11:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[magazzini](
	[id] [int] NOT NULL,
	[node_id] [int] NULL,
	[cap] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (1, 9568, 43, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (2, 9365, 26, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (3, 5352, 48, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (4, 11577, 26, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (5, 6883, 36, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (6, 10850, 35, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (7, 2467, 34, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (8, 438, 26, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (9, 8651, 32, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (10, 6937, 20, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (11, 6586, 28, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (12, 8154, 30, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (13, 149, 49, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (14, 1861, 19, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (15, 11249, 40, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (16, 6646, 30, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (17, 6461, 46, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (18, 7607, 42, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (19, 248, 45, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (20, 10933, 33, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (21, 3581, 23, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (22, 1773, 38, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (23, 1316, 38, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (24, 7971, 39, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (25, 10556, 28, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (26, 4973, 22, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (27, 4278, 12, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (28, 622, 46, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (29, 914, 25, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (30, 8541, 19, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (31, 8553, 45, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (32, 4950, 33, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (33, 1013, 48, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (34, 6671, 40, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (35, 6099, 43, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (36, 2816, 30, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (37, 8552, 39, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (38, 7640, 13, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (39, 4704, 20, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (40, 3181, 35, 1)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (1, 9568, 43, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (2, 9365, 26, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (3, 5352, 48, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (4, 11577, 26, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (5, 6883, 36, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (6, 10850, 35, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (7, 2467, 34, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (8, 438, 26, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (9, 8651, 32, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (10, 6937, 20, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (11, 6586, 28, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (12, 8154, 30, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (13, 149, 49, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (14, 1861, 19, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (15, 11249, 40, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (16, 6646, 30, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (17, 6461, 46, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (18, 7607, 42, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (19, 248, 45, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (20, 10933, 33, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (21, 3581, 23, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (22, 1773, 38, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (23, 1316, 38, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (24, 7971, 39, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (25, 10556, 28, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (26, 4973, 22, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (27, 4278, 12, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (28, 622, 46, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (29, 914, 25, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (30, 8541, 19, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (31, 8553, 45, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (32, 4950, 33, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (33, 1013, 48, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (34, 6671, 40, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (35, 6099, 43, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (36, 2816, 30, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (37, 8552, 39, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (38, 7640, 13, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (39, 4704, 20, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (40, 3181, 35, 2)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (1, 9568, 43, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (2, 9365, 26, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (3, 5352, 48, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (4, 11577, 26, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (5, 6883, 36, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (6, 10850, 35, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (7, 2467, 34, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (8, 438, 26, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (9, 8651, 32, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (10, 6937, 20, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (11, 6586, 28, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (12, 8154, 30, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (13, 149, 49, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (14, 1861, 19, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (15, 11249, 40, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (16, 6646, 30, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (17, 6461, 46, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (18, 7607, 42, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (19, 248, 45, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (20, 10933, 33, 3)
GO
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (21, 3581, 23, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (22, 1773, 38, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (23, 1316, 38, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (24, 7971, 39, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (25, 10556, 28, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (26, 4973, 22, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (27, 4278, 12, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (28, 622, 46, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (29, 914, 25, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (30, 8541, 19, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (31, 8553, 45, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (32, 4950, 33, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (33, 1013, 48, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (34, 6671, 40, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (35, 6099, 43, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (36, 2816, 30, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (37, 8552, 39, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (38, 7640, 13, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (39, 4704, 20, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (40, 3181, 35, 3)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (1, 9568, 43, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (2, 9365, 26, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (3, 5352, 48, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (4, 11577, 26, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (5, 6883, 36, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (6, 10850, 35, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (7, 2467, 34, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (8, 438, 26, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (9, 8651, 32, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (10, 6937, 20, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (11, 6586, 28, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (12, 8154, 30, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (13, 149, 49, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (14, 1861, 19, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (15, 11249, 40, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (16, 6646, 30, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (17, 6461, 46, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (18, 7607, 42, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (19, 248, 45, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (20, 10933, 33, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (21, 3581, 23, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (22, 1773, 38, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (23, 1316, 38, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (24, 7971, 39, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (25, 10556, 28, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (26, 4973, 22, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (27, 4278, 12, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (28, 622, 46, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (29, 914, 25, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (30, 8541, 19, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (31, 8553, 45, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (32, 4950, 33, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (33, 1013, 48, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (34, 6671, 40, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (35, 6099, 43, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (36, 2816, 30, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (37, 8552, 39, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (38, 7640, 13, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (39, 4704, 20, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (40, 3181, 35, 4)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (1, 9568, 43, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (2, 9365, 26, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (3, 5352, 48, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (4, 11577, 26, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (5, 6883, 36, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (6, 10850, 35, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (7, 2467, 34, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (8, 438, 26, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (9, 8651, 32, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (10, 6937, 20, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (11, 6586, 28, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (12, 8154, 30, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (13, 149, 49, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (14, 1861, 19, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (15, 11249, 40, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (16, 6646, 30, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (17, 6461, 46, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (18, 7607, 42, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (19, 248, 45, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (20, 10933, 33, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (21, 3581, 23, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (22, 1773, 38, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (23, 1316, 38, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (24, 7971, 39, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (25, 10556, 28, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (26, 4973, 22, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (27, 4278, 12, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (28, 622, 46, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (29, 914, 25, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (30, 8541, 19, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (31, 8553, 45, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (32, 4950, 33, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (33, 1013, 48, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (34, 6671, 40, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (35, 6099, 43, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (36, 2816, 30, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (37, 8552, 39, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (38, 7640, 13, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (39, 4704, 20, 5)
INSERT [dbo].[clienti] ([id], [node_id], [req], [mag]) VALUES (40, 3181, 35, 5)
GO
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (1, 1, 1, 1177)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (2, 1, 2, 1150)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (3, 1, 3, 694)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (4, 1, 4, 1522)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (5, 1, 5, 1018)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (6, 1, 6, 1339)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (7, 1, 7, 329)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (8, 1, 8, 584)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (9, 1, 9, 1379)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (10, 1, 10, 1344)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (11, 1, 11, 933)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (12, 1, 12, 1042)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (13, 1, 13, 897)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (14, 1, 14, 526)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (15, 1, 15, 1327)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (16, 1, 16, 1105)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (17, 1, 17, 1096)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (18, 1, 18, 1074)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (19, 1, 19, 752)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (20, 1, 20, 1308)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (21, 1, 21, 444)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (22, 1, 22, 406)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (23, 1, 23, 425)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (24, 1, 24, 1034)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (25, 1, 25, 1687)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (26, 1, 26, 536)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (27, 1, 27, 598)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (28, 1, 28, 586)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (29, 1, 29, 974)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (30, 1, 30, 1148)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (31, 1, 31, 1403)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (32, 1, 32, 610)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (33, 1, 33, 472)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (34, 1, 34, 1042)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (35, 1, 35, 1017)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (36, 1, 36, 522)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (37, 1, 37, 1113)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (38, 1, 38, 1153)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (39, 1, 39, 550)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (40, 1, 40, 359)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (41, 2, 1, 385)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (42, 2, 2, 365)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (43, 2, 3, 408)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (44, 2, 4, 633)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (45, 2, 5, 41)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (46, 2, 6, 395)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (47, 2, 7, 764)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (48, 2, 8, 931)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (49, 2, 9, 401)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (50, 2, 10, 427)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (51, 2, 11, 213)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (52, 2, 12, 293)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (53, 2, 13, 1372)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (54, 2, 14, 852)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (55, 2, 15, 430)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (56, 2, 16, 127)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (57, 2, 17, 350)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (58, 2, 18, 328)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (59, 2, 19, 1226)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (60, 2, 20, 424)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (61, 2, 21, 990)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (62, 2, 22, 806)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (63, 2, 23, 828)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (64, 2, 24, 284)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (65, 2, 25, 778)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (66, 2, 26, 454)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (67, 2, 27, 869)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (68, 2, 28, 987)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (69, 2, 29, 1285)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (70, 2, 30, 243)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (71, 2, 31, 494)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (72, 2, 32, 626)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (73, 2, 33, 878)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (74, 2, 34, 146)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (75, 2, 35, 334)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (76, 2, 36, 832)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (77, 2, 37, 284)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (78, 2, 38, 208)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (79, 2, 39, 645)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (80, 2, 40, 904)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (81, 3, 1, 655)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (82, 3, 2, 627)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (83, 3, 3, 139)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (84, 3, 4, 999)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (85, 3, 5, 495)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (86, 3, 6, 816)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (87, 3, 7, 379)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (88, 3, 8, 546)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (89, 3, 9, 856)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (90, 3, 10, 848)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (91, 3, 11, 411)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (92, 3, 12, 519)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (93, 3, 13, 987)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (94, 3, 14, 468)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (95, 3, 15, 804)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (96, 3, 16, 582)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (97, 3, 17, 573)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (98, 3, 18, 552)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (99, 3, 19, 841)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (100, 3, 20, 785)
GO
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (101, 3, 21, 625)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (102, 3, 22, 421)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (103, 3, 23, 444)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (104, 3, 24, 511)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (105, 3, 25, 1199)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (106, 3, 26, 136)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (107, 3, 27, 524)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (108, 3, 28, 603)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (109, 3, 29, 900)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (110, 3, 30, 625)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (111, 3, 31, 915)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (112, 3, 32, 269)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (113, 3, 33, 493)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (114, 3, 34, 519)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (115, 3, 35, 476)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (116, 3, 36, 448)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (117, 3, 37, 591)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (118, 3, 38, 630)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (119, 3, 39, 278)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (120, 3, 40, 539)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (121, 4, 1, 116)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (122, 4, 2, 135)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (123, 4, 3, 703)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (124, 4, 4, 503)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (125, 4, 5, 487)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (126, 4, 6, 358)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (127, 4, 7, 1059)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (128, 4, 8, 1226)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (129, 4, 9, 594)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (130, 4, 10, 874)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (131, 4, 11, 382)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (132, 4, 12, 261)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (133, 4, 13, 1667)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (134, 4, 14, 1147)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (135, 4, 15, 343)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (136, 4, 16, 548)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (137, 4, 17, 419)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (138, 4, 18, 303)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (139, 4, 19, 1521)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (140, 4, 20, 289)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (141, 4, 21, 1285)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (142, 4, 22, 1101)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (143, 4, 23, 1123)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (144, 4, 24, 286)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (145, 4, 25, 1033)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (146, 4, 26, 749)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (147, 4, 27, 1164)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (148, 4, 28, 1282)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (149, 4, 29, 1580)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (150, 4, 30, 274)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (151, 4, 31, 749)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (152, 4, 32, 921)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (153, 4, 33, 1173)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (154, 4, 34, 436)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (155, 4, 35, 728)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (156, 4, 36, 1127)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (157, 4, 37, 235)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (158, 4, 38, 599)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (159, 4, 39, 940)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (160, 4, 40, 1199)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (161, 5, 1, 792)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (162, 5, 2, 764)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (163, 5, 3, 309)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (164, 5, 4, 1136)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (165, 5, 5, 633)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (166, 5, 6, 953)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (167, 5, 7, 266)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (168, 5, 8, 433)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (169, 5, 9, 993)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (170, 5, 10, 986)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (171, 5, 11, 548)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (172, 5, 12, 656)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (173, 5, 13, 874)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (174, 5, 14, 354)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (175, 5, 15, 941)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (176, 5, 16, 719)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (177, 5, 17, 710)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (178, 5, 18, 689)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (179, 5, 19, 728)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (180, 5, 20, 923)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (181, 5, 21, 641)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (182, 5, 22, 308)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (183, 5, 23, 330)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (184, 5, 24, 648)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (185, 5, 25, 1329)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (186, 5, 26, 150)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (187, 5, 27, 411)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (188, 5, 28, 489)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (189, 5, 29, 787)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (190, 5, 30, 762)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (191, 5, 31, 1045)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (192, 5, 32, 401)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (193, 5, 33, 380)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (194, 5, 34, 656)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (195, 5, 35, 631)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (196, 5, 36, 334)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (197, 5, 37, 728)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (198, 5, 38, 767)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (199, 5, 39, 111)
INSERT [dbo].[costi] ([id], [mag], [cli], [cost]) VALUES (200, 5, 40, 555)
GO
INSERT [dbo].[magazzini] ([id], [node_id], [cap]) VALUES (1, 3969, 290)
INSERT [dbo].[magazzini] ([id], [node_id], [cap]) VALUES (2, 6722, 290)
INSERT [dbo].[magazzini] ([id], [node_id], [cap]) VALUES (3, 5087, 290)
INSERT [dbo].[magazzini] ([id], [node_id], [cap]) VALUES (4, 9610, 290)
INSERT [dbo].[magazzini] ([id], [node_id], [cap]) VALUES (5, 4483, 290)
