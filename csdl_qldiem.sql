-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 09, 2020 lúc 04:27 PM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `csdl_qldiem`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `magv` int(10) NOT NULL,
  `tengv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`magv`, `tengv`, `diachi`, `sdt`) VALUES
(102, 'Xuân An', 'Ba Vì', '06354656');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien_mon`
--

CREATE TABLE `giaovien_mon` (
  `id` int(10) NOT NULL,
  `mamon` int(10) DEFAULT NULL,
  `magv` int(10) DEFAULT NULL,
  `ghichu` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giaovien_mon`
--

INSERT INTO `giaovien_mon` (`id`, `mamon`, `magv`, `ghichu`) VALUES
(1, 57, 102, '324324');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophocphan`
--

CREATE TABLE `lophocphan` (
  `malophocphan` int(10) NOT NULL,
  `tenlophocphan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mamon` int(10) NOT NULL,
  `magv` int(10) NOT NULL,
  `namhoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hocki` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `giaidoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lophocphan`
--

INSERT INTO `lophocphan` (`malophocphan`, `tenlophocphan`, `mamon`, `magv`, `namhoc`, `hocki`, `giaidoan`) VALUES
(18, 'CSE', 57, 102, '2018', '2', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop_sinhvien`
--

CREATE TABLE `lop_sinhvien` (
  `id` int(10) NOT NULL,
  `malophocphan` int(10) DEFAULT NULL,
  `masv` int(10) DEFAULT NULL,
  `dcc` float NOT NULL,
  `dgk` float NOT NULL,
  `dbt` float NOT NULL,
  `dth` float NOT NULL,
  `trongso` float NOT NULL,
  `diemthi` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lop_sinhvien`
--

INSERT INTO `lop_sinhvien` (`id`, `malophocphan`, `masv`, `dcc`, `dgk`, `dbt`, `dth`, `trongso`, `diemthi`) VALUES
(4, 18, 13, 9, 9, 9, 9, 0.5, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `mamon` int(10) NOT NULL,
  `tenmon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nganh` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`mamon`, `tenmon`, `nganh`) VALUES
(57, 'Kĩ thuật phần mềm', 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganhhoc`
--

CREATE TABLE `nganhhoc` (
  `manganh` int(10) NOT NULL,
  `tennganh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nganhhoc`
--

INSERT INTO `nganhhoc` (`manganh`, `tennganh`, `mota`) VALUES
(24, 'Công nghệ thông tin', '1212'),
(25, 'Kinh tế', '234234'),
(26, 'Phẫu thuật thẩm mĩ', '564164');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `masv` int(10) NOT NULL,
  `tensv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cmt` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lop` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`masv`, `tensv`, `cmt`, `diachi`, `lop`) VALUES
(13, 'Nguyễn Văn B', '08465146496', 'Ba Vì ', '59TH1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(10) NOT NULL,
  `tentk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cap` int(10) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `tentk`, `matkhau`, `cap`, `email`) VALUES
(7, 'admin', '1234567', 2, 'annx72@gmail.com'),
(9, 'annx72', '12345689', 3, 'nguyenxuanan@gmail.com'),
(10, 'teacher', '123456', 1, 'adsfsd@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`magv`);

--
-- Chỉ mục cho bảng `giaovien_mon`
--
ALTER TABLE `giaovien_mon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mamon` (`mamon`,`magv`),
  ADD KEY `giaovien_mon_ibfk_1` (`magv`);

--
-- Chỉ mục cho bảng `lophocphan`
--
ALTER TABLE `lophocphan`
  ADD PRIMARY KEY (`malophocphan`),
  ADD KEY `mamon` (`mamon`),
  ADD KEY `magv` (`magv`);

--
-- Chỉ mục cho bảng `lop_sinhvien`
--
ALTER TABLE `lop_sinhvien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `malophocphan` (`malophocphan`,`masv`),
  ADD KEY `masv` (`masv`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`mamon`),
  ADD KEY `nganh` (`nganh`);

--
-- Chỉ mục cho bảng `nganhhoc`
--
ALTER TABLE `nganhhoc`
  ADD PRIMARY KEY (`manganh`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`masv`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `magv` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `giaovien_mon`
--
ALTER TABLE `giaovien_mon`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `lophocphan`
--
ALTER TABLE `lophocphan`
  MODIFY `malophocphan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `lop_sinhvien`
--
ALTER TABLE `lop_sinhvien`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `mamon` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `nganhhoc`
--
ALTER TABLE `nganhhoc`
  MODIFY `manganh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `masv` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `giaovien_mon`
--
ALTER TABLE `giaovien_mon`
  ADD CONSTRAINT `giaovien_mon_ibfk_1` FOREIGN KEY (`magv`) REFERENCES `giaovien` (`magv`) ON DELETE CASCADE,
  ADD CONSTRAINT `giaovien_mon_ibfk_2` FOREIGN KEY (`mamon`) REFERENCES `monhoc` (`mamon`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `lophocphan`
--
ALTER TABLE `lophocphan`
  ADD CONSTRAINT `lophocphan_ibfk_1` FOREIGN KEY (`mamon`) REFERENCES `monhoc` (`mamon`),
  ADD CONSTRAINT `lophocphan_ibfk_2` FOREIGN KEY (`magv`) REFERENCES `giaovien` (`magv`);

--
-- Các ràng buộc cho bảng `lop_sinhvien`
--
ALTER TABLE `lop_sinhvien`
  ADD CONSTRAINT `lop_sinhvien_ibfk_1` FOREIGN KEY (`malophocphan`) REFERENCES `lophocphan` (`malophocphan`) ON DELETE CASCADE,
  ADD CONSTRAINT `lop_sinhvien_ibfk_2` FOREIGN KEY (`masv`) REFERENCES `sinhvien` (`masv`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD CONSTRAINT `monhoc_ibfk_1` FOREIGN KEY (`nganh`) REFERENCES `nganhhoc` (`manganh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
