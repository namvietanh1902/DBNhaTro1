CREATE TABLE [dbo].[HopDongThuePhong]
(
[MaKhach] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MaPhong] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TenKhach] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NgayThue] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HopDongThuePhong] ADD CONSTRAINT [pk_thue_phong] PRIMARY KEY CLUSTERED  ([MaKhach], [MaPhong]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HopDongThuePhong] ADD CONSTRAINT [FK__HopDongTh__MaKha__49C3F6B7] FOREIGN KEY ([MaKhach]) REFERENCES [dbo].[KhachTro] ([MaKhach]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[HopDongThuePhong] ADD CONSTRAINT [FK__HopDongTh__MaPho__4AB81AF0] FOREIGN KEY ([MaPhong]) REFERENCES [dbo].[PhongTro] ([MaPhong]) ON DELETE CASCADE ON UPDATE CASCADE
GO
