/****** Object:  Table [dbo].[Roles]    Script Date: 6/3/2016 5:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[role] [varchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaskCategories]    Script Date: 6/3/2016 5:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaskCategories](
	[taskCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[taskCategory] [varchar](50) NULL,
 CONSTRAINT [PK_taskCategories] PRIMARY KEY CLUSTERED 
(
	[taskCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 6/3/2016 5:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tasks](
	[taskID] [int] IDENTITY(1,1) NOT NULL,
	[taskCategoryID] [int] NULL,
	[userID] [int] NULL,
	[description] [varchar](50) NULL,
	[completed] [bit] NULL,
	[dateCreated] [datetime] NULL,
	[dateCompleted] [datetime] NULL,
	[dateScheduled] [datetime] NULL,
 CONSTRAINT [PK_tasks] PRIMARY KEY CLUSTERED 
(
	[taskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/3/2016 5:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[roleID] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([roleID], [role]) VALUES (1, N'Tasker')
INSERT [dbo].[Roles] ([roleID], [role]) VALUES (2, N'Creator')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[TaskCategories] ON 

INSERT [dbo].[TaskCategories] ([taskCategoryID], [taskCategory]) VALUES (1, N'Business')
INSERT [dbo].[TaskCategories] ([taskCategoryID], [taskCategory]) VALUES (2, N'Personal')
SET IDENTITY_INSERT [dbo].[TaskCategories] OFF
SET IDENTITY_INSERT [dbo].[Tasks] ON 

INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (1, 2, 1, N'Get Milk', 1, CAST(N'2016-03-27 11:42:58.000' AS DateTime), CAST(N'2016-05-15 15:49:43.877' AS DateTime), NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (2, 1, 1, N'Finish Chapter 2', 1, CAST(N'2016-03-28 11:44:58.277' AS DateTime), CAST(N'2014-04-14 09:46:22.900' AS DateTime), CAST(N'2013-03-29 00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (3, 1, 1, N'Write Code for Chapter 3', 1, CAST(N'2016-03-29 11:45:16.000' AS DateTime), CAST(N'2014-04-14 09:49:17.310' AS DateTime), CAST(N'2013-03-29 00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (4, 1, 1, N'Write Chapter 4', 1, CAST(N'2016-03-30 11:54:26.000' AS DateTime), CAST(N'2014-09-14 17:33:49.773' AS DateTime), NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (5, 1, 1, N'Plan Chapter 5', 1, CAST(N'2016-03-28 11:54:40.180' AS DateTime), CAST(N'2014-04-14 09:48:01.720' AS DateTime), CAST(N'2016-03-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (6, 1, 1, N'Learn JQuery', 0, CAST(N'2016-03-31 16:00:23.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (7, 1, 1, N'created by Test Harness', 0, CAST(N'2016-05-09 17:18:00.393' AS DateTime), NULL, CAST(N'2016-11-24 00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (8, 2, 1, N'This is a test task', 0, CAST(N'2016-05-09 18:26:10.907' AS DateTime), NULL, CAST(N'2016-02-11 00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (9, 2, 1, N'This is a test task', 0, CAST(N'2016-05-09 18:26:28.297' AS DateTime), NULL, CAST(N'2016-11-24 00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (10, 2, 1, N'This is a test task', 0, CAST(N'2016-05-09 18:27:06.843' AS DateTime), NULL, CAST(N'2016-11-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (11, 2, 1, N'Test Task', 0, CAST(N'2016-05-09 18:33:11.410' AS DateTime), NULL, CAST(N'2016-03-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (12, 2, 1, N'Task Task 2', 0, CAST(N'2016-05-09 18:35:07.660' AS DateTime), NULL, CAST(N'2016-03-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (13, 1, 1, N'Updated by Test Harness', 0, CAST(N'2016-05-14 16:49:06.587' AS DateTime), NULL, CAST(N'2016-11-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (14, 2, 2, N'New Task for Jeff', 0, CAST(N'2016-05-27 12:23:42.053' AS DateTime), NULL, CAST(N'2016-11-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (15, 2, 2, N'New Task for Jeff 2', 0, CAST(N'2016-05-27 12:23:42.157' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (16, 1, 1, N'Some Text', 0, CAST(N'2016-11-13 16:42:51.587' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (17, NULL, 1, N'testoring', 0, CAST(N'2016-11-16 12:56:10.850' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (18, 1, 1, N'Testoring', 0, CAST(N'2016-11-16 13:04:38.623' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (19, 2, 1, N'Testoring 3', 0, CAST(N'2016-11-16 13:06:11.187' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (20, 1, 1, N'Testoring 2', 0, CAST(N'2016-11-16 13:06:49.893' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (21, 2, 1, N'Testoring 4', 0, CAST(N'2016-11-16 13:07:01.983' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (22, 1, 1, N'created by Test Harness 2', 0, CAST(N'2016-12-05 11:50:51.210' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (23, 1, 1, N'created by Test Harness', 0, CAST(N'2016-12-05 11:51:05.953' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (24, 1, 1, N'created by Test Harness', 0, CAST(N'2016-12-05 11:54:26.990' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (25, 2, 1, N'This is a test task', 0, CAST(N'2016-12-05 11:54:37.613' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (26, 1, 1, N'created by Test Harness', 0, CAST(N'2016-12-05 16:57:32.510' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (27, 1, 1, N'created by Test Harness', 0, CAST(N'2016-12-05 16:58:23.080' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (28, 2, 1, N'This is a test task', 0, CAST(N'2016-12-05 16:59:23.767' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (29, 1, 0, N'New Task 2', 0, CAST(N'2016-12-07 11:03:19.413' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (30, NULL, 1, N'test', 0, CAST(N'2016-12-12 12:19:24.923' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (31, NULL, 1, N'New Task 2 2014 Edit 2', 0, CAST(N'2017-02-11 14:49:39.153' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (32, 1, 1, N'updated Test', 1, CAST(N'2017-02-16 20:26:57.537' AS DateTime), CAST(N'2014-04-27 10:03:48.390' AS DateTime), NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (33, NULL, 1, N'created by Test Harness e/ No Category', 0, CAST(N'2017-02-25 08:44:40.977' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (34, NULL, 1, N'created by Test Harness e/ No Category', 0, CAST(N'2017-02-25 08:44:42.220' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (35, 1, 1, N'created by Test Harness w/ Category', 0, CAST(N'2017-02-25 08:45:19.227' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (36, 1, 1, N'created by Test Harness', 0, CAST(N'2017-04-13 10:35:23.513' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (37, 1, 1, N'created by Test Harness', 0, CAST(N'2017-04-13 11:30:21.937' AS DateTime), NULL, CAST(N'2016-11-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (38, 1, 1, N'created by Test Harness', 0, CAST(N'2017-04-13 11:32:56.137' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (39, 2, 1, N'New Task on Code Archive Recreation Update', 0, CAST(N'2017-04-14 09:15:06.950' AS DateTime), NULL, CAST(N'2016-11-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (40, 1, 1, N'A test', 0, CAST(N'2017-04-16 09:15:32.150' AS DateTime), NULL, CAST(N'2016-11-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (41, 2, 1, N'New Task for Video Demo is now edited!', 0, CAST(N'2017-04-26 18:21:03.803' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (42, 1, 1, N'New Task demoing AngularJS App Edited!', 0, CAST(N'2017-04-26 19:01:36.370' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (43, 1, 1, N'This is a new task Edited', 0, CAST(N'2017-04-27 10:01:46.717' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (44, 1, 1, N'Test', 0, CAST(N'2017-04-27 10:02:55.357' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (45, NULL, 1, N'Test', 0, CAST(N'2017-04-27 10:03:01.693' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (46, NULL, 1, N'Test Again create task', 0, CAST(N'2017-04-27 10:03:12.507' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (47, 2, 1, N'New Task 3', 0, CAST(N'2017-04-27 10:04:25.707' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (48, NULL, 1, N'Test', 0, CAST(N'2017-04-27 10:17:18.287' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (49, NULL, 1, N'Test Creation with no category specified', 0, CAST(N'2017-04-27 10:18:16.957' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (50, 2, 1, N'Test Created w/ Category specified', 0, CAST(N'2017-04-27 10:19:39.780' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (51, NULL, 1, N'New Task Created in popup w/ no Category specified', 0, CAST(N'2017-04-27 10:44:09.463' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (52, 1, 1, N'test', 0, CAST(N'2017-08-25 09:16:26.967' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (53, 1, 1, N'test', 0, CAST(N'2017-08-25 09:17:36.127' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (54, 1, 1, N'Created by Test Harness', 0, CAST(N'2017-08-26 21:41:04.850' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (55, 2, 1, N'A test  2', 0, CAST(N'2017-08-26 21:56:34.073' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (56, 1, 1, N'test', 0, CAST(N'2017-08-26 22:34:00.173' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (57, 1, 1, N'test', 0, CAST(N'2017-08-26 22:34:11.697' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (58, 1, 1, N'test', 0, CAST(N'2017-08-26 22:40:16.937' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (59, 1, 1, N'test', 0, CAST(N'2017-08-26 22:41:09.570' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (60, 1, 1, N'test', 0, CAST(N'2017-08-26 22:42:24.053' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (61, 1, 1, N'test', 0, CAST(N'2017-08-26 22:43:45.643' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (62, 1, 1, N'test', 0, CAST(N'2017-08-26 22:43:53.120' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (63, 1, 1, N'test', 0, CAST(N'2017-08-26 22:44:24.930' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (64, 1, 1, N'test', 0, CAST(N'2017-08-26 22:45:29.447' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (65, 1, 1, N'test', 0, CAST(N'2017-08-26 22:46:02.340' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (66, 2, 1, N'test updated', 0, CAST(N'2017-08-26 22:46:21.900' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (67, 1, 1, N'Created by Test Harness', 0, CAST(N'2017-09-14 12:36:10.397' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (68, 2, 1, N'New Task edited from Angular', 0, CAST(N'2017-09-14 12:40:11.813' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (69, 1, 1, N'Brand new Task Angular Edited', 0, CAST(N'2017-09-14 12:41:46.433' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (70, 1, 1, N'created by Test Harness', 0, CAST(N'2016-05-15 11:40:10.627' AS DateTime), NULL, CAST(N'2016-05-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (71, 1, 1, N'created by Test Harness', 0, CAST(N'2016-05-15 11:42:59.450' AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (72, 1, 1, N'Test Task Updated', 0, CAST(N'2016-05-15 12:01:00.310' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tasks] OFF
SET IDENTITY_INSERT [dbo].[Users] ON

INSERT [dbo].[Users] ([userID], [userName], [password], [roleID]) VALUES (1, N'me', N'AB86A1E1EF70DFF97959067B723C5C24', 1)
INSERT [dbo].[Users] ([userID], [userName], [password], [roleID]) VALUES (2, N'wife', N'BB4694A26A39DF7501F8BB8CBDD13E38', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_TaskCategories] FOREIGN KEY([taskCategoryID])
REFERENCES [dbo].[TaskCategories] ([taskCategoryID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_TaskCategories]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([roleID])
REFERENCES [dbo].[Roles] ([roleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
