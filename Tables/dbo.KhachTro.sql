CREATE TABLE [dbo].[KhachTro]
(
[MaKhach] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TenKhach] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NgaySinh] [date] NULL,
[GioiTinh] [bit] NULL,
[CMND] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SDT] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NgheNghiep] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[KhachTro] ADD CONSTRAINT [PK__KhachTro__D0CB8DDDBEC0C44A] PRIMARY KEY CLUSTERED  ([MaKhach]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[KhachTro] ADD CONSTRAINT [fk_account] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Account] ([UserID])
GO
ALTER TABLE [dbo].[KhachTro] ADD CONSTRAINT [fk_account1] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Account] ([UserID])
GO
