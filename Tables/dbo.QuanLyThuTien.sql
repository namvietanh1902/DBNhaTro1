CREATE TABLE [dbo].[QuanLyThuTien]
(
[MaThu] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MaPhong] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaKhach] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TenKhach] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TienDichVu] [money] NULL,
[TienNha] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QuanLyThuTien] ADD CONSTRAINT [PK__QuanLyTh__314EEB5F4AA1E6A4] PRIMARY KEY CLUSTERED  ([MaThu]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QuanLyThuTien] ADD CONSTRAINT [FK__QuanLyThu__MaKha__14270015] FOREIGN KEY ([MaKhach]) REFERENCES [dbo].[KhachTro] ([MaKhach]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[QuanLyThuTien] ADD CONSTRAINT [FK__QuanLyThu__MaPho__1332DBDC] FOREIGN KEY ([MaPhong]) REFERENCES [dbo].[PhongTro] ([MaPhong]) ON DELETE CASCADE ON UPDATE CASCADE
GO
