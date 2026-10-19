CREATE DATABASE QL_ChiTieu;
GO
USE QL_ChiTieu;
CREATE TABLE dbo.ChiTieu(MaCT int IDENTITY(1,1) PRIMARY KEY,NgayChi date NOT NULL,NoiDung nvarchar(100) NOT NULL,LoaiChi nvarchar(30) NOT NULL,SoTien decimal(18,0) NOT NULL,GhiChu nvarchar(200) NULL);
INSERT dbo.ChiTieu(NgayChi,NoiDung,LoaiChi,SoTien,GhiChu) VALUES
('2026-10-01',N'Ăn sáng',N'Ăn uống',35000,NULL),('2026-10-02',N'Xe buýt',N'Đi lại',10000,NULL),('2026-10-03',N'Mua giáo trình',N'Học tập',120000,NULL),('2026-10-04',N'Xem phim',N'Giải trí',90000,NULL),('2026-10-05',N'Cà phê',N'Ăn uống',45000,NULL),('2026-10-06',N'Đổ xăng',N'Đi lại',70000,NULL),('2026-10-07',N'Bút vở',N'Học tập',55000,NULL),('2026-10-08',N'Ăn trưa',N'Ăn uống',60000,NULL),('2026-10-09',N'Gửi xe',N'Đi lại',15000,NULL),('2026-10-10',N'Khác',N'Khác',25000,NULL);
