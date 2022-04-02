CREATE TABLE [dbo].[PhongTro]
(
[MaPhong] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SoNguoi] [int] NULL,
[GiaPhong] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PhongTro] ADD CONSTRAINT [PK__PhongTro__20BD5E5B83ADDF34] PRIMARY KEY CLUSTERED  ([MaPhong]) ON [PRIMARY]
GO
