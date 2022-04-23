CREATE TABLE [dbo].[HoaDonHangThang]
(
[MaHD] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MaThue] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Thang] [date] NULL,
[DienDauThang] [int] NULL,
[DienCuoiThang] [int] NULL,
[NuocDauThang] [int] NULL,
[NuocCuoiThang] [int] NULL,
[TienDien] [money] NULL,
[TienNuoc] [money] NULL,
[TienPhong] [money] NULL,
[TongTien] [money] NULL,
[TrangThai] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HoaDonHangThang] ADD CONSTRAINT [PK__HoaDonHa__2725A6E08239B206] PRIMARY KEY CLUSTERED  ([MaHD]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HoaDonHangThang] ADD CONSTRAINT [FK__HoaDonHan__MaThu__03F0984C] FOREIGN KEY ([MaThue]) REFERENCES [dbo].[HopDongThuePhong] ([MaThue]) ON DELETE CASCADE ON UPDATE CASCADE
GO
