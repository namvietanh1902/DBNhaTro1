CREATE TABLE [dbo].[Account]
(
[UserID] [int] NOT NULL IDENTITY(1, 1),
[Username] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Pass] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhanQuyen] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] ADD CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED  ([UserID]) ON [PRIMARY]
GO
