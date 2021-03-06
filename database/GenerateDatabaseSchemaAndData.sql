/****** Object:  Table [dbo].[Roles]    Script Date: 2/22/2014 9:51:12 AM ******/
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
/****** Object:  Table [dbo].[TaskCategories]    Script Date: 2/22/2014 9:51:12 AM ******/
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
/****** Object:  Table [dbo].[Tasks]    Script Date: 2/22/2014 9:51:12 AM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 2/22/2014 9:51:12 AM ******/
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

INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (1, 2, 1, N'Get Milk', 0, CAST(0x0000A18E00C11358 AS DateTime), NULL, CAST(0x0000A19000000000 AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (2, 1, 1, N'Finish Chapter 2', 0, CAST(0x0000A18F00C1A04B AS DateTime), NULL, CAST(0x0000A19000000000 AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (3, 1, 1, N'Write Code for Chapter 3', 0, CAST(0x0000A19000C1B510 AS DateTime), NULL, CAST(0x0000A19000000000 AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (4, 1, 1, N'Write Chapter 4', 0, CAST(0x0000A19100C43998 AS DateTime), NULL, CAST(0x0000A18700000000 AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (5, 1, 1, N'Plan Chapter 5', 0, CAST(0x0000A18F00C44A36 AS DateTime), NULL, CAST(0x0000A18700000000 AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (6, 1, 1, N'Learn JQuery', 0, CAST(0x0000A1920107C6F4 AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (7, 1, 1, N'created by Test Harness', 0, CAST(0x0000A1B9011D18D6 AS DateTime), NULL, CAST(0x0000A28000000000 AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (8, 2, 1, N'This is a test task', 0, CAST(0x0000A1B9012FD268 AS DateTime), NULL, CAST(0x0000A2CF00000000 AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (9, 2, 1, N'This is a test task', 0, CAST(0x0000A1B9012FE6C9 AS DateTime), NULL, CAST(0x0000A28000000000 AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (10, 2, 1, N'This is a test task', 0, CAST(0x0000A1B9013013F5 AS DateTime), NULL, CAST(0x0000A27D00000000 AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (11, 2, 1, N'Test Task', 0, CAST(0x0000A1B90131BF2F AS DateTime), NULL, CAST(0x0000A28000000000 AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (12, 2, 1, N'Task Task 2', 0, CAST(0x0000A1B90132476A AS DateTime), NULL, CAST(0x0000A27E00000000 AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (13, 1, 1, N'created by Test Harness', 0, CAST(0x0000A1BE01152908 AS DateTime), NULL, CAST(0x0000A27E00000000 AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (14, 2, 2, N'New Task for Jeff', 0, CAST(0x0000A1CB00CC4378 AS DateTime), NULL, CAST(0x0000A27E00000000 AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (15, 2, 2, N'New Task for Jeff 2', 0, CAST(0x0000A1CB00CC4397 AS DateTime), NULL, CAST(0x0000A27E00000000 AS DateTime))
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (16, 1, 1, N'Some Text', 0, CAST(0x0000A27501137194 AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (17, NULL, 1, N'testoring', 0, CAST(0x0000A27800D52F37 AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (18, 1, 1, N'Testoring', 0, CAST(0x0000A27800D78243 AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (19, 2, 1, N'Testoring 3', 0, CAST(0x0000A27800D7EEBC AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (20, 1, 1, N'Testoring 2', 0, CAST(0x0000A27800D81C18 AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (21, 2, 1, N'Testoring 4', 0, CAST(0x0000A27800D82A43 AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (22, 1, 1, N'created by Test Harness', 0, CAST(0x0000A28B00C33DE3 AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (23, 1, 1, N'created by Test Harness', 0, CAST(0x0000A28B00C34F2A AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (24, 1, 1, N'created by Test Harness', 0, CAST(0x0000A28B00C43AC1 AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (25, 2, 1, N'This is a test task', 0, CAST(0x0000A28B00C44734 AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (26, 1, 1, N'created by Test Harness', 0, CAST(0x0000A28B011779E9 AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (27, 1, 1, N'created by Test Harness', 0, CAST(0x0000A28B0117B52C AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (28, 2, 1, N'This is a test task', 0, CAST(0x0000A28B0117FC4A AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (29, 1, 0, N'New Task 2', 0, CAST(0x0000A28D00B62FF0 AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (30, NULL, 1, N'test', 0, CAST(0x0000A29200CB1625 AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (31, NULL, 1, N'New Task 2 2014 Edit 2', 0, CAST(0x0000A2CF00F459B2 AS DateTime), NULL, NULL)
INSERT [dbo].[Tasks] ([taskID], [taskCategoryID], [userID], [description], [completed], [dateCreated], [dateCompleted], [dateScheduled]) VALUES (32, 1, 1, N'New Task Edit 2', 0, CAST(0x0000A2D40150FE8D AS DateTime), NULL, NULL)
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
