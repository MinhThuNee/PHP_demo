-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 12, 2024 at 09:49 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan1`
--

CREATE TABLE `binhluan1` (
  `mabl` int NOT NULL,
  `mahh` int NOT NULL,
  `makh` int NOT NULL,
  `ngaybl` date NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `binhluan1`
--

INSERT INTO `binhluan1` (`mabl`, `mahh`, `makh`, `ngaybl`, `noidung`) VALUES
(1, 3, 7, '2020-08-14', '  gghnn'),
(2, 4, 7, '2020-08-14', '  nhẹ và đẹp'),
(3, 3, 5, '2020-08-14', 'lịch sự, nhã nhặn'),
(4, 3, 5, '2020-08-14', '  đẹp và lịch sự'),
(5, 3, 5, '2020-08-14', '  đẹp và lịch sự'),
(6, 3, 5, '2020-08-14', '  đẹp và lịch sự'),
(7, 3, 5, '2020-08-14', '  đẹp và lịch sự'),
(8, 3, 5, '2020-08-14', '  dfgdfsg'),
(9, 3, 5, '2020-08-14', '  dfgdfsg'),
(10, 3, 5, '2020-08-14', '  dfgdfsg'),
(11, 3, 5, '2020-08-14', '  dfgdfsg'),
(12, 3, 5, '2020-08-14', '  dfgdfsg'),
(13, 3, 5, '2020-08-14', '  hello'),
(14, 3, 5, '2020-08-14', '  hello'),
(15, 3, 5, '2020-08-14', '  hello');

-- --------------------------------------------------------

--
-- Table structure for table `cthoadon1`
--

CREATE TABLE `cthoadon1` (
  `masohd` int NOT NULL,
  `mahh` int NOT NULL,
  `soluongmua` int NOT NULL,
  `mausac` varchar(20) NOT NULL,
  `size` int NOT NULL,
  `thanhtien` int NOT NULL,
  `tinhtrang` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `cthoadon1`
--

INSERT INTO `cthoadon1` (`masohd`, `mahh`, `soluongmua`, `mausac`, `size`, `thanhtien`, `tinhtrang`) VALUES
(7, 3, 2, 'Màu Hồng', 35, 1090000, 0),
(9, 3, 2, ' Màu Hồng', 35, 1090000, 0),
(9, 12, 2, 'Màu Be ', 0, 1150000, 0),
(10, 9, 2, 'Màu Kem ', 38, 1490000, 0),
(10, 15, 1, 'Màu Xám Nhạt ', 37, 545000, 0),
(11, 9, 2, 'Màu Kem ', 38, 1490000, 0),
(11, 15, 1, 'Màu Xám Nhạt ', 37, 545000, 0),
(12, 9, 2, 'Màu Kem ', 38, 1490000, 0),
(12, 15, 1, 'Màu Xám Nhạt ', 37, 545000, 0),
(13, 2, 1, 'Màu Trắng', 0, 545000, 0),
(13, 24, 3, 'Màu Đen ', 38, 1800000, 0),
(14, 2, 1, 'Màu Trắng', 0, 545000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `mahh` int NOT NULL,
  `tenhh` varchar(60) NOT NULL,
  `dongia` float NOT NULL,
  `menu_id` int DEFAULT NULL,
  `giamgia` float NOT NULL,
  `hinh` varchar(50) NOT NULL,
  `Nhom` int NOT NULL,
  `maloai` int NOT NULL,
  `dacbiet` bit(1) NOT NULL,
  `soluotxem` int NOT NULL,
  `ngaylap` date NOT NULL,
  `mota` varchar(2000) NOT NULL,
  `soluongton` int NOT NULL,
  `mausac` varchar(20) NOT NULL,
  `size` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`mahh`, `tenhh`, `dongia`, `menu_id`, `giamgia`, `hinh`, `Nhom`, `maloai`, `dacbiet`, `soluotxem`, `ngaylap`, `mota`, `soluongton`, `mausac`, `size`) VALUES
(1, 'Giày Slingback Canvas', 545000, 3, 0, '1.jpg', 0, 1, b'1', 5, '2020-08-08', 'Vải bố và da nhân tạo. Phù hợp đi làm, đi tiệc và đi chơi', 50, 'Màu Trắng', 35),
(2, 'Giày Slingback Canvas', 545000, 3, 0, '2.jpg', 0, 1, b'1', 3, '2020-08-08', 'Vải bố và da nhân tạo. Phù hợp đi làm, đi tiệc và đi chơi', 50, ' Màu Hồng', 35),
(3, 'Giày Slingback Canvas  ', 545000, 3, 300000, '3.jpg', 0, 1, b'0', 4, '2020-08-08', 'Vải bố và da nhân tạo. Phù hợp đi làm, đi tiệc và đi chơi', 50, 'Màu Xanh Navy ', 36),
(4, 'Giày Sandal Bệt Mũi Nhọn', 545000, 8, 0, '4.jpg', 1, 3, b'0', 1, '2020-08-08', 'Chất liệu Satin. Phù hợp đi làm, đi chơi và đi học', 50, ' Màu Be Đậm ', 36),
(5, 'Giày Sandal Bệt Mũi Nhọn ', 525000, 8, 0, '5.jpg', 1, 3, b'1', 0, '2020-08-08', 'Chất liệu Satin. Phù hợp đi làm, đi chơi và đi học', 50, 'Màu Xanh Navy ', 37),
(6, 'Giày Sandal Bệt Mũi Nhọn', 525000, 8, 8, '6.jpg', 1, 3, b'0', 0, '2020-08-08', 'Chất liệu Satin. Phù hợp đi làm, đi chơi và đi học', 50, 'Màu Đen ', 36),
(9, 'Giày Sneaker Neon Light 2 ', 745000, 7, 0, '7.jpg', 2, 5, b'1', 1, '2020-08-08', 'Chất liệu nhân tạo. Phù hợp đi làm, đi chơi và đi học', 50, 'Màu Trắng ', 38),
(10, 'Giày Sneaker Neon Light 2 ', 745000, 7, 0, '8.jpg', 2, 5, b'1', 1, '2020-08-08', 'Chất liệu nhân tạo. Phù hợp đi làm, đi chơi và đi học', 50, 'Màu Kem ', 37),
(11, 'Giày Cao Gót Bít Mũi Nhọn', 575000, 8, 0, '9.jpg', 3, 1, b'0', 1, '2020-08-08', 'Chất liệu nhân tạo. Phù hợp đi làm, đi chơi và đi tiệc', 50, 'Màu Be ', 38),
(12, 'Giày Cao Gót Neon Light ', 575000, 8, 350000, '10.jpg', 3, 1, b'0', 2, '2020-08-08', 'Chất liệu nhân tạo. Phù hợp đi làm, đi chơi và đi tiệc', 50, 'Màu Đen ', 38),
(15, 'Giày Slingback Mũi Nhọn Quai Co Giãn ', 545000, 8, 0, '11.jpg', 4, 1, b'0', 1, '2020-08-08', 'Chất liệu nhân tạo. Phù hợp đi làm, đi chơi và đi tiệc', 50, 'Màu Xám Nhạt ', 37),
(16, 'Giày Slingback Mũi Nhọn Quai Co Giãn', 545000, 8, 300000, '12.jpg', 4, 1, b'0', 2, '2020-08-08', 'Chất liệu nhân tạo. Phù hợp đi làm, đi chơi và đi tiệc', 50, 'Màu Hồng Đậm ', 37),
(17, 'Giày Slingback Mũi Nhọn Quai Co Giãn ', 545000, NULL, 0, '13.jpg', 4, 1, b'1', 2, '2020-08-08', 'Chất liệu nhân tạo. Phù hợp đi làm, đi chơi và đi tiệc', 50, 'Màu Đen ', 38),
(18, 'Dép Quai Chữ V Đan Chéo Vân Cá Sấu ', 495000, NULL, 300000, '14.jpg', 5, 8, b'0', 1, '2020-08-08', 'Da nhân tạo, Phù hợp đi chơi', 50, 'Xanh Bạc Hà ', 37),
(19, 'Dép Quai Chữ V Đan Chéo Vân Cá Sấu', 495000, NULL, 0, '15.jpg', 5, 8, b'1', 1, '2020-08-08', 'Da nhân tạo, Phù hợp đi chơi', 50, 'Màu Vàng Đậm ', 35),
(20, 'Dép Quai Chữ V Đan Chéo Vân Cá Sấu', 495000, NULL, 0, '16.jpg', 5, 8, b'0', 1, '2020-08-08', 'Da nhân tạo, Phù hợp đi chơi', 50, 'Màu Đen', 36),
(21, 'Giày Búp Bê Đính Nơ Phối Họa Tiết Nhiệt Đới', 525000, NULL, 0, '21.jpg', 4, 4, b'0', 1, '2020-08-15', 'Giày Búp Bê Đính Nơ Phối Họa Tiết Nhiệt Đới. Thích hợp đi làm, du lịch, đi dạo phố', 50, 'Màu vàng', 35),
(22, 'giày búp bê', 5000000, NULL, 50000, '22.jpg', 1, 4, b'0', 1, '2020-08-04', 'Thoải mái, đẹp', 23, 'Màu vàng nâu', 36),
(24, 'Giày cao gót - vàng', 600000, NULL, 0, '24.jpg', 3, 7, b'1', 1, '2020-07-04', 'Thời trang đi tiệc, đi chơi, dạ hội', 12, 'Xanh đen', 38);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon1`
--

CREATE TABLE `hoadon1` (
  `masohd` int NOT NULL,
  `makh` int NOT NULL,
  `ngaydat` date NOT NULL,
  `tongtien` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `hoadon1`
--

INSERT INTO `hoadon1` (`masohd`, `makh`, `ngaydat`, `tongtien`) VALUES
(1, 7, '2020-08-13', 2240000),
(2, 7, '2020-08-13', 2240000),
(3, 7, '2020-08-13', 2240000),
(4, 7, '2020-08-13', 2240000),
(5, 7, '2020-08-13', 2240000),
(6, 7, '2020-08-13', 2240000),
(7, 7, '2020-08-13', 2240000),
(8, 7, '2020-08-13', 2240000),
(9, 7, '2020-08-13', 2240000),
(10, 7, '2020-08-13', 2035000),
(11, 7, '2020-08-13', 2035000),
(12, 7, '2020-08-13', 2035000),
(13, 5, '2020-09-02', 545000),
(14, 7, '2020-09-09', 545000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang1`
--

CREATE TABLE `khachhang1` (
  `makh` int NOT NULL,
  `tenkh` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `diachi` text NOT NULL,
  `sodienthoai` varchar(12) NOT NULL,
  `vaitro` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `khachhang1`
--

INSERT INTO `khachhang1` (`makh`, `tenkh`, `username`, `matkhau`, `email`, `diachi`, `sodienthoai`, `vaitro`) VALUES
(3, 'a', 'a', '202cb962ac59075b964b07152d234b70', 'a@gmail.com', '', '', 0),
(4, 'a', 'a', '202cb962ac59075b964b07152d234b70', 'a@gmail.com', '', '', 0),
(5, 'an', 'an', '202cb962ac59075b964b07152d234b70', 'an@gmail.com', '', '', 0),
(6, 'an', 'an', '202cb962ac59075b964b07152d234b70', 'an@gmail.com', '', '', 0),
(7, 'Nguyên', 'nguyen', '202cb962ac59075b964b07152d234b70', 'nguyen@gmail.com', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `maloai` int NOT NULL,
  `tenloai` varchar(50) NOT NULL,
  `idmenu` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`, `idmenu`) VALUES
(1, 'Giày Cao Gót', 3),
(3, 'Giày Sandals', 3),
(4, 'Giày Búp Bê', 3),
(5, 'Giày Sneaker', 3),
(6, 'Giày Boots', 3),
(7, 'Giày Da Thật', 3),
(8, 'Giày Lười', 3),
(10, 'Túi da', 4),
(13, 'túi da', 4);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `idmenu` int NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `link` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `STT` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`idmenu`, `name`, `parent_id`, `link`, `slug`, `STT`) VALUES
(3, 'Giày', 0, '?c=product&a=category', 'giay', 0),
(4, 'Túi Xách', 0, '?c=product&a=category', 'tui-xach', 0),
(5, 'Liên Hệ', 0, '?c=home&a=lienhe', '', 0),
(6, 'Tài Khoản', 0, '?c=home&a=taikhoan', '', 0),
(7, 'Giày nam', 3, '?c=product&a=category', 'giay-nam', 0),
(8, 'Giày nữ', 3, '?c=product&a=category', 'giay-nu', 0),
(9, 'Túi xách tay', 4, '?c=product&a=category', 'tui-xach-tay', 0),
(10, 'Túi đeo chéo', 4, '?c=product&a=category', 'tui-deo-cheo', 0),
(11, 'Túi da thật', 4, '?c=product&a=category', 'tui-da-that', 0),
(12, 'Trang chủ', 0, '/php2/index.php', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan1`
--
ALTER TABLE `binhluan1`
  ADD PRIMARY KEY (`mabl`),
  ADD KEY `fk_bl_mahh` (`mahh`),
  ADD KEY `fk_bl_kh` (`makh`);

--
-- Indexes for table `cthoadon1`
--
ALTER TABLE `cthoadon1`
  ADD PRIMARY KEY (`masohd`,`mahh`),
  ADD KEY `fk_cthd_mahh` (`mahh`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`mahh`),
  ADD KEY `FK_hanghoa_maloai` (`maloai`);

--
-- Indexes for table `hoadon1`
--
ALTER TABLE `hoadon1`
  ADD PRIMARY KEY (`masohd`),
  ADD KEY `fk_hoadon_kh` (`makh`);

--
-- Indexes for table `khachhang1`
--
ALTER TABLE `khachhang1`
  ADD PRIMARY KEY (`makh`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`maloai`),
  ADD KEY `FK_loai_menu` (`idmenu`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idmenu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan1`
--
ALTER TABLE `binhluan1`
  MODIFY `mabl` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `mahh` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `hoadon1`
--
ALTER TABLE `hoadon1`
  MODIFY `masohd` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `khachhang1`
--
ALTER TABLE `khachhang1`
  MODIFY `makh` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loai`
--
ALTER TABLE `loai`
  MODIFY `maloai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `idmenu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan1`
--
ALTER TABLE `binhluan1`
  ADD CONSTRAINT `fk_bl_kh` FOREIGN KEY (`makh`) REFERENCES `khachhang1` (`makh`),
  ADD CONSTRAINT `fk_bl_mahh` FOREIGN KEY (`mahh`) REFERENCES `hanghoa` (`mahh`);

--
-- Constraints for table `cthoadon1`
--
ALTER TABLE `cthoadon1`
  ADD CONSTRAINT `fk_cthd_mahd` FOREIGN KEY (`masohd`) REFERENCES `hoadon1` (`masohd`),
  ADD CONSTRAINT `fk_cthd_mahh` FOREIGN KEY (`mahh`) REFERENCES `hanghoa` (`mahh`);

--
-- Constraints for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `FK_hanghoa_maloai` FOREIGN KEY (`maloai`) REFERENCES `loai` (`maloai`);

--
-- Constraints for table `hoadon1`
--
ALTER TABLE `hoadon1`
  ADD CONSTRAINT `fk_hoadon_kh` FOREIGN KEY (`makh`) REFERENCES `khachhang1` (`makh`);

--
-- Constraints for table `loai`
--
ALTER TABLE `loai`
  ADD CONSTRAINT `FK_loai_menu` FOREIGN KEY (`idmenu`) REFERENCES `menu` (`idmenu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
