create database quanlinhansu
go
create table PhongBan(
maphongban char(10) primary key,
tenphongban nvarchar(30)
)
create table NhanVien(
manv char(10) primary key,
hoten nvarchar(30),
ngaysinh datetime,
cccd char(12),
gioitinh nvarchar(10),
sodienthoai varchar(10),
chucvu nvarchar(20),
diachi nvarchar(50)
)
create table PhongBan_NhanVien(
manv char(10) foreign key references NhanVien(manv),
maphongban char(10) foreign key references PhongBan(maphongban)
)
create table BangChamCong(
mabangchamcong char(10) primary key,
ngaybatdau datetime,
ngayketthuc datetime,
)
create table NhanVien_ChamCong(
manv char(10) foreign key references  NhanVien(manv),
mabangchamcong char(10) foreign key references BangChamCong(mabangchamcong),
ngaycong int,
ngaynghi int
)
create table Luong(
mabangluong char(10) primary key,
manv char(10) foreign key references NhanVien(manv),
thang int,
luongcb float,
hesoluong float
)
create table TaiKhoan(
manv char(10) foreign key references NhanVien(manv),
taikhoan char(30),
matkhau char(30),
phanquyen char(30)
)
create table KhenThuong(
makhenthuong char(10) primary key,
tenkhenthuong nvarchar(30),
tienthuong float
)
create table NhanVien_KhenThuong(
manv char(10) foreign key references NhanVien(manv),
makhenthuong char(10) foreign key references KhenThuong(makhenthuong)
)
create table BangCap(
mabangcap char(10) primary key,
tenbangcap nvarchar(30)
)
create table NhanVien_BangCap(
manv char(10) foreign key references NhanVien(manv),
mabangcap char(10) foreign key references BangCap(mabangcap),
xeploai nvarchar(10)
)
create table ChungChi(
machungchi char(10) primary key,
tenchungchi nvarchar(30),
nagycap datetime,
ngayhethan datetime,
)
create table NhanVien_ChungChi(
manv char(10) foreign key references NhanVien(manv),
machungchi char(10) foreign key references ChungChi(machungchi)
)
create table KyLuat(
makyluat char(10) primary key,
tenkyluat nvarchar(50),
tienphat float
)
create table NhanVien_KyLuat(
manv char(10) foreign key references NhanVien(manv),
makyluat char(10) foreign key references KyLuat(makyluat)
)
create table CongTac(
macongtac char(10) primary key,
tencongtac nvarchar(50),
ngaycongtac datetime,
thoigian int,
diadiem nvarchar(50)
)
create table NhanVien_CongTac(
manv char(10) foreign key references NhanVien(manv),
macongtac char(10) foreign key references CongTac(macongtac)
)
create table DaoTao(
madaotao char(10) primary key,
tendaotao nvarchar(50),
ngaydaotao datetime,
thoigian int,
diadiem nvarchar(50)
)
create table NhanVien_DaoTao(
manv char(10) foreign key references NhanVien(manv),
madaotao char(10) foreign key references DaoTao(madaotao)
)
create table HopDong(
mahopdong char(10) primary key,
tenhopdong nvarchar(50),
manv char(10) foreign key references NhanVien(manv),
ngayky datetime,
ngayhethieuluc datetime,
noidung nvarchar(300),
ghichu nvarchar(100)
)
create table PhuCap(
maphucap char(10) primary key,
tenphucap nvarchar(50),
tienphucap float
)
create table NhanVien_PhuCap(
manv char(10) foreign key references NhanVien(manv),
maphucap char(10) foreign key references PhuCap(maphucap)
)
create table BaoHiem(
mabaohiem char(10) primary key,
tenbaohiem nvarchar(50),
)
create table NhanVien_BaoHiem(
manv char(10) foreign key references NhanVien(manv),
mabaohiem char(10) foreign key references BaoHiem(mabaohiem),
sobaohiem char(10),
tenbaohiem nvarchar(50),
ngaylap datetime,
ngayhethan datetime, 
tienbaohiem float
)
