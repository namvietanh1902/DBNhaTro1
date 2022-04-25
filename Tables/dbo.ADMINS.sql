CREATE TABLE [dbo].[ADMINS]
(
[UserID] [int] NOT NULL,
[Name] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Gender] [bit] NULL,
[NgaySinh] [date] NULL,
[SDT] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADMINS] ADD CONSTRAINT [pk_admin_acc] PRIMARY KEY CLUSTERED  ([UserID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADMINS] ADD CONSTRAINT [FK__ADMINS__UserID__2BFE89A6] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Account] ([UserID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
