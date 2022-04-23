CREATE TABLE [dbo].[HopDongThuePhong]
(
[MaThue] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MaPhong] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaKhach] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NgayThue] [date] NULL,
[TenKhach] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HopDongThuePhong] ADD CONSTRAINT [PK__HopDongT__9CC2FDA36ECD09DF] PRIMARY KEY CLUSTERED  ([MaThue]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HopDongThuePhong] ADD CONSTRAINT [FK__HopDongTh__MaKha__73BA3083] FOREIGN KEY ([MaKhach]) REFERENCES [dbo].[KhachTro] ([MaKhach]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[HopDongThuePhong] ADD CONSTRAINT [FK__HopDongTh__MaPho__72C60C4A] FOREIGN KEY ([MaPhong]) REFERENCES [dbo].[PhongTro] ([MaPhong]) ON DELETE CASCADE ON UPDATE CASCADE
GO
