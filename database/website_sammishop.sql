-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 26, 2025 at 05:55 PM
-- Server version: 8.0.37
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website_sammishop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  `category_status` tinyint NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `avatar`, `status`, `category_status`, `content`, `created_at`, `updated_at`) VALUES
(16, 'LÀM SẠCH DA', '1740583381-tay_trang.jpg', 1, 1, '<p>L&agrave;m sạch da</p>\r\n', '2025-02-14 17:24:20', '2025-02-26 17:23:43'),
(18, ' CHĂM SÓC TÓC - HAIR', '1740583658-cham_soc_toc.jpg', 1, 1, '<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://sammishop.com/collections/cham-soc-toc-hair\">&nbsp;CHĂM S&Oacute;C T&Oacute;C - HAIR</a></p>\r\n\r\n<p><a href=\"https://sammishop.com/collections/cham-soc-toc-hair\">&nbsp;CHĂM S&Oacute;C T&Oacute;C - HAIR</a></p>\r\n', '2025-02-14 17:36:51', '2025-02-26 22:27:38'),
(19, 'CHĂM SÓC DA', '1740583742-duong_am.jpg', 1, 1, '<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://sammishop.com/collections/cham-soc-da\">Chăm sóc da</a></p>\r\n', '2025-02-14 17:37:22', '2025-02-26 23:53:08'),
(20, 'MẶT NẠ', '1740583782-mat_na.jpg', 1, 1, '<p><a href=\"https://sammishop.com/collections/mat-na\">&nbsp;Mặt nạ</a></p>\r\n', '2025-02-14 17:40:05', '2025-02-26 23:56:25'),
(21, 'CHĂM SÓC CƠ THỂ', '1740583901-nuoc_hoa.jpg', 1, 1, '<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://sammishop.com/collections/cham-soc-co-the\">Chăm sóc cơ thể;</a></p>\r\n', '2025-02-14 17:40:30', '2025-02-26 23:56:11'),
(22, 'Blog - Beauty Tips/Review', '1615570865-watch.png', 1, 0, '<ol>\r\n	<li>Blog - Beauty Tips/Review</li>\r\n</ol>\r\n', '2025-02-14 17:41:05', '2021-06-29 08:18:52'),
(23, ' SET QUÀ TẶNG - GIFT', '1615653389-polo.png', 1, 1, '<p><a href=\"https://sammishop.com/collections/set-qua-tang-gift\">&nbsp;SET QU&Agrave; TẶNG - GIFT</a></p>\r\n', '2025-02-15 06:11:33', '2021-03-13 23:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `content` text NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `category_id`, `name`, `avatar`, `summary`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 22, ' Top 5 loại kem chống nắng body nhất định phải có', '1615715336-la-roche-posay.jpg', '<p>Top 5 loại kem chống nắng body nhất định phải c&oacute;111111111111</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p>Top 5 loại kem chống nắng body nhất định phải c&oacute;1111111111111</p>\r\n', 1, '2025-02-15 09:31:32', '2021-03-14 18:58:11'),
(4, 22, 'Thẩm mỹ Quốc tế Khaan áp dụng công nghệ giảm béo nổi bật', '1619164766-cach-ke-long-may-dep-1.jpg', '<p>Thẩm mỹ Quốc tế Khaan &aacute;p dụng c&ocirc;ng nghệ giảm b&eacute;o nổi bật</p>\r\n', '<p>Thẩm mỹ Quốc tế Khaan &aacute;p dụng c&ocirc;ng nghệ giảm b&eacute;o nổi bật</p>\r\n', 1, '2025-02-15 10:52:40', '2021-04-23 14:59:26'),
(5, 22, 'Bí kíp chọn kem lót cho mọi loại da', '1615719213-mat-na-ngu-duong-da-2-trong-1-klairs-90ml-04.jpg', '<p>Thẩm mỹ Quốc tế Khaan &aacute;p dụng c&ocirc;ng nghệ giảm b&eacute;o nổi bật</p>\r\n', '<p>Thẩm mỹ Quốc tế Khaan &aacute;p dụng c&ocirc;ng nghệ giảm b&eacute;o nổi bật</p>\r\n', 0, '2025-02-15 10:53:33', '2025-02-26 17:51:39'),
(6, 24, 'Bí quyết cho đôi lông mày tự nhiên cùng chì kẻ Karadium siêu mềm', '1615724152-chi-ke-may-2-dau-karadium.jpg', '<p><strong>Theo nh&acirc;n tướng học từ xa xưa của người &Aacute; Đ&ocirc;ng, bộ ch&acirc;n m&agrave;y c&oacute; ảnh hưởng &iacute;t nhiều đến vận tr&igrave;nh cuộc đời của mỗi người. V&agrave; theo nh&acirc;n tướng học, h&agrave;ng l&ocirc;ng m&agrave;y l&agrave; một trong những ngũ quan ảnh hưởng đến vận mệnh con người. Đường n&eacute;t l&ocirc;ng m&agrave;y phần n&agrave;o biểu thị cho vận tr&igrave;nh cuộc sống. Bởi lẽ đ&oacute;, sở hữu đ&ocirc;i l&ocirc;ng m&agrave;y đẹp v&agrave; hợp tướng mạo l&agrave; điều ai cũng mong muốn. Coco shop giới thiệu đến n&agrave;ng những điều n&ecirc;n lưu &yacute; v&agrave; đầy đủ c&aacute;c bước hướng dẫn c&aacute;ch kẻ l&ocirc;ng m&agrave;y.</strong></p>\r\n', '<p>Theo nh&acirc;n tướng học từ xa xưa của người &Aacute; Đ&ocirc;ng, bộ ch&acirc;n m&agrave;y c&oacute; ảnh hưởng &iacute;t nhiều đến vận tr&igrave;nh cuộc đời của mỗi người. V&agrave; theo nh&acirc;n tướng học, h&agrave;ng l&ocirc;ng m&agrave;y l&agrave; một trong những ngũ quan ảnh hưởng đến vận mệnh con người. Đường n&eacute;t l&ocirc;ng m&agrave;y đ&atilde; phần n&agrave;o n&oacute;i l&ecirc;n vận tr&igrave;nh cuộc sống. Bởi lẽ đ&oacute;, sở hữu đ&ocirc;i l&ocirc;ng m&agrave;y đẹp v&agrave; hợp tướng mạo l&agrave; điều ai cũng mong muốn.&nbsp;<a href=\"https://cocoshop.vn/\">Coco shop</a>&nbsp;giới thiệu đến n&agrave;ng những điều n&ecirc;n lưu &yacute; v&agrave; đầy đủ c&aacute;c bước hướng dẫn c&aacute;ch kẻ l&ocirc;ng m&agrave;y.<br />\r\n<br />\r\nNhững d&aacute;ng l&ocirc;ng m&agrave;y thường gặp<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"cach ke long may dep 1\" src=\"https://cocoshop.vn/uploads/news/2020_02/cach-ke-long-may-dep-1.jpg\" style=\"height:660px; width:564px\" /></p>\r\n\r\n<p><br />\r\n<br />\r\nĐể c&oacute; được một đ&ocirc;i ch&acirc;n m&agrave;y đẹp v&agrave; hợp phong thủy mang lại vận kh&iacute; tốt cho chủ nh&acirc;n th&igrave; bạn cần chọn d&aacute;ng m&agrave;y ph&ugrave; hợp với khung xương mặt. Đ&acirc;y kh&ocirc;ng chỉ l&agrave; nh&acirc;n tướng học m&agrave; trước hết n&oacute; mang t&iacute;nh thẩm mỹ rất l&agrave; cao. Kh&ocirc;ng chỉ l&agrave; d&aacute;ng m&agrave;y m&agrave; bạn c&ograve;n phải để &yacute; đến n&agrave;u của ch&acirc;n m&agrave;y c&oacute; ph&ugrave; hợp với m&agrave;u da của bạn chưa. Nếu n&agrave;ng c&oacute; nước da sậm sẽ kh&ocirc;ng th&iacute;ch hợp với cặp l&ocirc;ng m&agrave;y mảnh, nhạt. Ngược lại, nếu sở hữu l&agrave;n da trắng, s&aacute;ng, n&agrave;ng cũng chẳng cần t&ocirc; vẽ cho m&agrave;i ng&agrave;i qu&aacute; đậm. Ch&acirc;n m&agrave;y qu&aacute; đỗi nhạt nh&ograve;a sẽ ảnh hưởng đến vận kh&iacute;, l&agrave;m gương mặt thất thần, v&ocirc; hồn v&agrave; kh&ocirc;ng tạo được thiện cảm với người xunh quanh. Để đơn giản h&oacute;a, m&agrave;u l&ocirc;ng m&agrave;y chỉ cần chọn theo c&ocirc;ng thức: T&oacute;c đen-m&agrave;y đen/n&acirc;u đậm, t&oacute;c n&acirc;u-m&agrave;y n&acirc;u gỗ đậm, t&oacute;c v&agrave;ng đỏ-m&agrave;y n&acirc;u bạc xỉu&hellip; chỉ cần m&agrave;u l&ocirc;ng m&agrave;y tr&ugrave;ng hay s&aacute;ng hơn m&agrave;u t&oacute;c một t&ocirc;ng l&agrave; được.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"cach ke long may dep 3 1024x536\" src=\"https://cocoshop.vn/uploads/news/2020_02/cach-ke-long-may-dep-3-1024x536.jpg\" style=\"height:314px; width:600px\" /></p>\r\n\r\n<p><br />\r\n<br />\r\nC&oacute; rất nhiều c&aacute;ch để c&oacute; đ&ocirc;i l&ocirc;ng m&agrave;y ưng &yacute; như phun, th&ecirc;u, rồi d&ugrave;ng b&uacute;t dạ, d&ugrave;ng phấn bột nhưng c&oacute; lẽ d&ugrave;ng&nbsp;<a href=\"https://cocoshop.vn/ke-may-eyebrown/\">ch&igrave; kẻ</a>&nbsp;vẫn mang lại n&eacute;t tự nhi&ecirc;n mềm mại v&agrave; chị em c&oacute; thể thoả sức s&aacute;ng tạo với nhiều d&aacute;ng l&ocirc;ng m&agrave;y mới<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"chi ke may 2 dau karadium 3 1\" src=\"https://cocoshop.vn/uploads/news/2020_02/chi-ke-may-2-dau-karadium-3_1.png\" style=\"height:831px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://cocoshop.vn/ke-may-eyebrown/chi-ke-may-2-dau-karadium-01-black-brown.html\">Ch&igrave; kẻ m&agrave;y 2 đầu Karadium</a>&nbsp;n&agrave;y c&oacute; thiết kế 2 đầu tiện lợi gồm 1 đầu ch&igrave;, 1 đầu chổi, gi&uacute;p t&aacute;n m&agrave;u l&ocirc;ng m&agrave;y tự nhi&ecirc;n v&agrave; đều nhất</li>\r\n	<li>Th&agrave;nh phần ho&agrave;n to&agrave;n l&agrave;nh t&iacute;nh, kh&ocirc;ng g&acirc;y độc hại cho da, đạt ti&ecirc;u chuẩn kiểm định chất lượng quốc tế.</li>\r\n	<li>Chống nước, mồ h&ocirc;i si&ecirc;u tốt, gi&uacute;p giữ đường kẻ m&agrave;y kh&ocirc;ng tr&ocirc;i, kh&ocirc;ng x&ecirc; dịch</li>\r\n	<li>Đầu ch&igrave; nhỏ chỉ 2mm dễ d&agrave;ng vẩy sợi hay tạo d&aacute;ng m&agrave;y</li>\r\n</ul>\r\n\r\n<p><br />\r\nCoco Shop c&oacute; đủ 5 tone m&agrave;u tha hồ cho c&aacute;c bạn chọn lựa để ph&ugrave; hợp với m&agrave;u da v&agrave; m&agrave;u t&oacute;c của mỗi bạn:</p>\r\n\r\n<ul>\r\n	<li>01: Black Brown</li>\r\n	<li>02: Dark Brown</li>\r\n	<li>03: Real Brown</li>\r\n	<li>04: Gray Brown</li>\r\n	<li>05: Light Brown</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"chi ke may 2 dau karadium 6\" src=\"https://cocoshop.vn/uploads/news/2020_02/chi-ke-may-2-dau-karadium-6.jpeg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><br />\r\nSau khi đ&atilde; chọn được d&aacute;ng l&ocirc;ng m&agrave;y v&agrave; m&agrave;u l&ocirc;ng m&agrave;y ph&ugrave; hợp với m&agrave;u da của m&igrave;nh bạn cần tiến h&agrave;nh vẽ ch&acirc;n m&agrave;y th&ocirc;i.<br />\r\n<br />\r\n<strong>Bước 1: X&aacute;c định c&aacute;ch điểm để tạo khu&ocirc;n</strong><br />\r\nĐầu ch&acirc;n m&agrave;y được x&aacute;c định bằng c&aacute;ch đặt một đường thẳng dọc theo c&aacute;ch mũi v&agrave; đầu mắt, điểm giao với ch&acirc;n m&agrave;y ở đ&acirc;u th&igrave; đ&oacute; l&agrave; đầu ch&acirc;n m&agrave;y (bạn c&oacute; thể d&ugrave;ng lu&ocirc;n c&acirc;y b&uacute;t kẻ m&agrave;y để x&aacute;c định c&aacute;c điểm).<br />\r\nTiếp theo để x&aacute;c định điểm đu&ocirc;i l&ocirc;ng m&agrave;y, n&agrave;ng tạo đường thẳng giả định từ c&aacute;nh mũi đi qua đu&ocirc;i mắt đến điểm giao ở ch&acirc;n m&agrave;y.<br />\r\nCuối c&ugrave;ng đỉnh ch&acirc;n m&agrave;y c&oacute; thể x&aacute;c định bằng đường thẳng từ c&aacute;nh mũi qua con ngươi hoặc sẽ bằng 2/3 chiều d&agrave;i ch&acirc;n m&agrave;y t&iacute;nh từ đầu m&agrave;y.<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"cach ke long may dep 4 1024x682\" src=\"https://cocoshop.vn/uploads/news/2020_02/cach-ke-long-may-dep-4-1024x682.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p><br />\r\n<br />\r\n<strong>Bước 2: Tạo khu&ocirc;n ch&acirc;n m&agrave;y</strong><br />\r\nSau khi đ&atilde; c&oacute; ba điểm quan trọng nhất, n&agrave;ng tiến h&agrave;nh đến thao t&aacute;c định h&igrave;nh khu&ocirc;n l&ocirc;ng m&agrave;y bằng c&aacute;ch nối ba điểm để tạo đường kẻ tr&ecirc;n. Tiếp đến x&aacute;c định độ rộng giữa hai đường l&ocirc;ng m&agrave;y để kẻ đường kẻ dưới. B&iacute; quyết cho khu&ocirc;n ch&acirc;n m&agrave;y sắc n&eacute;t nhất l&agrave; n&agrave;ng n&ecirc;n sử dụng ch&igrave; c&oacute; đầu mảnh hoặc s&aacute;p kẻ ngang.<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"cach ke long may dep 8\" src=\"https://cocoshop.vn/uploads/news/2020_02/cach-ke-long-may-dep-8.jpg\" style=\"height:750px; width:600px\" /></p>\r\n\r\n<p><br />\r\n<br />\r\n<strong>Bước 3: T&ocirc; m&agrave;u ch&acirc;n m&agrave;y</strong><br />\r\nD&ugrave;ng ch&igrave; vẽ l&ocirc;ng m&agrave;y bắt đầu t&ocirc; v&agrave;o trong phần khu&ocirc;n sẵn c&oacute;. N&agrave;ng h&atilde;y t&ocirc; nhẹ nh&agrave;ng cho m&agrave;u được đều v&agrave; tự nhi&ecirc;n, nhưng nơi nhạt m&agrave;u, thưa l&ocirc;ng th&igrave; cần được dặm đậm hơn. B&iacute; quyết để h&agrave;ng l&ocirc;ng m&agrave;y đẹp, đều m&agrave;u một c&aacute;ch ho&agrave;n hảo ch&iacute;nh l&agrave; d&ugrave;ng phấn bột ch&acirc;n m&agrave;y c&ugrave;ng m&agrave;u t&ocirc; đ&egrave; l&ecirc;n phần ch&igrave; đ&atilde; t&ocirc; trước đ&oacute;. Sau đ&oacute; d&ugrave;ng cọ chải lại cho những sợi l&ocirc;ng &ldquo;ngay h&agrave;ng thẳng lối&rdquo; v&agrave; đều m&agrave;u. Cuối c&ugrave;ng sử dụng mascara ch&acirc;n m&agrave;y &ldquo;nhuộm&rdquo; m&agrave;u những sợi l&ocirc;ng cho tr&ugrave;ng m&agrave;u vẽ b&ecirc;n dưới. Th&ecirc;m một chi tiết cho đ&ocirc;i l&ocirc;ng m&agrave;y tự nhi&ecirc;n nhất l&agrave; phần đầu n&ecirc;n nhạt m&agrave;u hơn phần đu&ocirc;i, sự chuyển m&agrave;u của ch&acirc;n m&agrave;u tương tự phong c&aacute;ch ombr&eacute;.<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"cach ke long may dep 9 1024x534\" src=\"https://cocoshop.vn/uploads/news/2020_02/cach-ke-long-may-dep-9-1024x534.jpg\" style=\"height:313px; width:600px\" /></p>\r\n\r\n<p><br />\r\n<br />\r\n<strong>Bước 4: Điều chỉnh</strong><br />\r\nĐể đ&ocirc;i l&ocirc;ng m&agrave;y th&ecirc;m sắc sảo, sắc n&eacute;t n&agrave;ng h&atilde;y d&ugrave;ng tăm b&ocirc;ng loại bỏ phần bột thừa hay n&eacute;t vẽ bị lem. Sau đ&oacute; th&ecirc;m ch&uacute;t phấn s&aacute;ng hoặc kem che khuyết điểm để l&agrave;m nổi bật h&agrave;ng l&ocirc;ng m&agrave;y.<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"cach ke long may dep 10 1024x576\" src=\"https://cocoshop.vn/uploads/news/2020_02/cach-ke-long-may-dep-10-1024x576.jpg\" style=\"height:338px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2025-02-15 12:15:52', '2025-02-26 17:38:35'),
(7, 24, 'Bí kíp chọn 4 món Skincare cơ bản dành cho nàng mới tập tành', '1740583182-1615724152-chi-ke-may-2-dau-karadium.jpg', '<p>Bắt đầu cho c&ocirc;ng cuộc chăm s&oacute;c l&agrave;n da với nhiều loại sản phẩm c&ugrave;ng những chức năng kh&aacute;c nhau đ&ocirc;i khi khiến bạn kh&ocirc;ng biết lựa chọn như thế n&agrave;o cho ph&ugrave; hợp. L&agrave;m sao để khi sử dụng, hợp &yacute; với da v&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng đ&oacute; l&agrave; một trong những vấn đề v&ocirc; c&ugrave;ng quan trọng.</p>\r\n\r\n<p>D&agrave;nh cho những bạn mới tập t&agrave;nh skincare, nh&agrave; Sam h&ocirc;m nay sẽ đưa đến cho bạn 4 m&oacute;n bảo bối cũng như b&iacute; k&iacute;p gi&uacute;p cho bạn mới &ldquo;bước ch&acirc;n v&agrave;o nghề&rdquo; chọn được c&aacute;c sản phẩm l&agrave;nh t&iacute;nh cũng như an to&agrave;n nhất cho mọi loại da sử dụng.</p>\r\n', '<p><strong>1.&nbsp;Chọn tẩy trang an to&agrave;n sạch s&acirc;u</strong></p>\r\n\r\n<p>Dẫu bạn kh&ocirc;ng trang điểm cũng n&ecirc;n tẩy trang để da mặt được l&agrave;m sạch &ldquo;tối đa&rdquo; c&ograve;n nếu đ&atilde; makeup th&igrave; c&agrave;ng cần tẩy trang kĩ hơn nữa n&egrave; v&igrave; lớp makeup tồn tr&ecirc;n da sẽ khiến da dễ sinh mụn. Nước tẩy trang nhẹ dịu v&agrave; kh&ocirc;ng l&agrave;m mất đi c&acirc;n bằng độ ẩm l&agrave; chai tẩy trang l&iacute; tưởng nhất cho bạn vừa mới bắt đầu skincare.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000246282/file/2_d1766699fe6545358953cdb4094e3350_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SẢN PHẨM:<br />\r\nLOREAL MICELLAR WATER 3-IN-1 REFRESHING EVEN FOR SENSITIVE SKIN 400ML<br />\r\nC&oacute; t&aacute;c dụng l&agrave;m sạch, giữ ẩm v&agrave; dưỡng mềm da đồng thời chỉ trong một sản phẩm. Sản phẩm gi&uacute;p lấy đi sạch cặn trang điểm nhưng kh&ocirc;ng l&agrave;m kh&ocirc; da. Hơn thế, th&agrave;nh phần an to&agrave;n, kh&ocirc;ng chứa cồn v&agrave; c&ocirc;ng nghệ ti&ecirc;n tiến gi&uacute;p da giữ nước, th&ocirc;ng tho&aacute;ng, mềm mượt chỉ trong một bước.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2.&nbsp;Chọn sữa rửa mặt nhẹ dịu</strong><br />\r\nRửa mặt 2 lần/ ng&agrave;y kh&ocirc;ng bao giờ ch&uacute;ng ta c&oacute; thể bỏ qua bước n&agrave;y được. Da mặt được l&agrave;m sạch cuốn tr&ocirc;i đi bụi bẩn bả nhờn l&agrave;m da th&ocirc;ng tho&aacute;ng hơn hẳn. Vẫn l&agrave; một em nhẹ dịu ngăn ngừa mụn v&agrave; an to&agrave;n cho da nhạy cảm sử dụng để bạn c&oacute; thể chọn lựa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000246282/file/3_f003036cc11440a58b87a3ca35d01909_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SẢN PHẨM:<br />\r\nSỮA RỬA MẶT SENKA PERFECT WHIP ACNES CARE 100G<br />\r\nChiết xuất hoa C&uacute;c từ v&ugrave;ng Kyoto Nhật Bản: một trong những dược liệu cổ truyền của người Nhật với t&aacute;c dụng chống vi khuẩn, kh&aacute;ng vi&ecirc;m.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3.&nbsp;Chọn toner cho da th&ecirc;m ẩm mịn</strong><br />\r\nSau c&aacute;c bước l&agrave;m da sạch, th&igrave; đ&acirc;y ch&iacute;nh l&agrave; l&uacute;c cấp ẩm cho da. Đồng thời toner c&ograve;n hỗ trợ kh&aacute;ng khuẩn v&agrave; ngừa vi&ecirc;m, c&acirc;n bằng độ Ph cho da vừa khỏe vừa xinh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000246282/file/4_70aa13b35f0748c8b48281aeb3d73c99_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SẢN PHẨM:<br />\r\nKLAIRS SUPPLE PREPARATION UNSCENTED TONER 180ML<br />\r\nTh&agrave;nh phần chiết xuất từ thực vật gi&uacute;p c&acirc;n bằng độ pH của da. Gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng.<br />\r\nHỗ trợ cải thiện hiệu quả chăm s&oacute;c da ở c&aacute;c bước tiếp theo, gi&uacute;p l&agrave;n da của bạn hấp thụ serum hay kem dưỡng tốt hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4.&nbsp;Chọn kem dưỡng l&agrave;nh t&iacute;nh nhưng nhiều dưỡng chất</strong><br />\r\nTh&ecirc;m dưỡng chất th&ecirc;m năng lượng, kem dưỡng ẩm kh&ocirc;ng thể thiếu v&agrave; l&agrave; một trong những &ldquo;vật bất li th&acirc;n&rdquo; với nhiều c&ocirc; n&agrave;ng. Gi&uacute;p giảm k&iacute;ch ứng, giảm ửng đỏ cũng như l&agrave;m ẩm mịn da hơn, ngăn ngừa t&igrave;nh trạng &ldquo;da thiếu nước&rdquo; kh&ocirc; hanh bong tr&oacute;c. B&ecirc;n cạnh đ&oacute; kem dưỡng c&ograve;n cung cấp c&aacute;c dưỡng chất cần thiết kh&aacute;c nu&ocirc;i da khỏe mạnh v&agrave; s&aacute;ng mịn hơn mỗi ng&agrave;y tr&ocirc;ng&nbsp;thấy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000246282/file/5_286ec86b69c4423f9023f4cd8f5523d9_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SẢN PHẨM:<br />\r\nSKIN1004 MADAGASCAR CENTELLA CREAM 75ML<br />\r\nVới th&agrave;nh phần ch&iacute;nh l&agrave; rau m&aacute; từ v&ugrave;ng Madagascar l&agrave;m giảm t&igrave;nh trạng mụn, hỗ trợ kh&aacute;ng vi&ecirc;m, l&agrave;m dịu, t&aacute;i tạo da, dưỡng ẩm, tăng độ đ&agrave;n hồi cho da v&agrave; l&agrave;m dịu l&agrave;n da mụn, t&aacute;i tạo da mang lại l&agrave;n da tươi mới.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2025-02-15 10:25:18', '2025-02-26 22:19:42');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL COMMENT 'Id của user trong trường hợp đã login và đặt hàng, là khóa ngoại liên kết với bảng users',
  `fullname` varchar(255) DEFAULT NULL COMMENT 'Tên khách hàng',
  `address` varchar(255) DEFAULT NULL COMMENT 'Địa chỉ khách hàng',
  `phone` varchar(255) DEFAULT NULL COMMENT 'SĐT khách hàng',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email khách hàng',
  `note` text COMMENT 'Ghi chú từ khách hàng',
  `price_total` int DEFAULT NULL COMMENT 'Tổng giá trị đơn hàng',
  `payment_status` tinyint DEFAULT NULL COMMENT 'Trạng thái đơn hàng: 0 - Chưa thành toán, 1 - Đã thành toán',
  `status` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo đơn',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật cuối'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `address`, `phone`, `email`, `note`, `price_total`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(97, 11, 'nguyen van a', 'hanoi', '0123456789', 'anguyen@gmail.com', '', 351000, 0, 1, '2025-02-26 11:49:29', '2025-02-26 19:51:50'),
(98, 11, 'nguyen van a', 'hanoi', '0123456789', 'anguyen@gmail.com', '', -999900000, 0, 1, '2025-02-26 11:49:50', '2025-02-26 19:51:50'),
(99, 11, 'nguyen van a', 'hanoi', '0123456789', 'anguyen@gmail.com', '', 68000, 1, 1, '2025-02-26 11:50:00', '2025-02-26 18:52:02'),
(100, 11, 'nguyen van a', 'hanoi', '0123456789', 'anguyen@gmail.com', '', 9000, 0, 3, '2025-02-26 13:00:05', '2025-02-26 20:00:22'),
(101, 11, 'nguyen van a', 'hanoi', '0123456789', 'anguyen@gmail.com', '', 351000, 1, 1, '2025-02-26 16:20:15', '2025-02-26 23:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quality` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quality`) VALUES
(35, 97, 21, 1),
(36, 98, 35, 1),
(37, 99, 20, 1),
(38, 100, 36, 1),
(39, 101, 21, 1),
(40, 101, 35, 1);

-- --------------------------------------------------------

--
-- Table structure for table `producers`
--

CREATE TABLE `producers` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `producers`
--

INSERT INTO `producers` (`id`, `name`, `avatar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Maybeline', '1740584180-brand_1.jpg', 1, '2025-02-15 14:47:43', '2025-02-26 22:36:20'),
(2, 'Bioderma', '1740584204-brand_2.jpg', 1, '2025-02-15 15:00:26', '2025-02-26 22:36:44'),
(3, 'Beplain', '1740584225-brand_3.jpg', 1, '2025-02-15 15:01:06', '2025-02-26 22:37:05'),
(4, 'Round Lab', '1740584255-brand_4.jpg', 1, '2025-02-15 15:01:28', '2025-02-26 22:37:35'),
(5, 'Diane Castel Paris', '1740584280-brand_5.jpg', 1, '2025-02-15 15:01:51', '2025-02-26 22:38:00'),
(6, 'Les Essentiels', '1740584316-brand_6.jpg', 1, '2025-02-15 15:02:46', '2025-02-26 22:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `producer_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quality` int DEFAULT NULL,
  `summary` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `discount` int NOT NULL DEFAULT '0',
  `hotproduct` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `producer_id`, `title`, `avatar`, `price`, `quality`, `summary`, `content`, `status`, `discount`, `hotproduct`, `created_at`, `updated_at`) VALUES
(30, 19, 2, 'Bioderma Kem dưỡng Cicabio Creme+ 40ml', '1740584745-bioderma_1.jpg', 385000, 100, '<p>Bioderma Kem dưỡng Cicabio Creme+ 40ml</p>\r\n', '<p><strong>Loại da ph&ugrave; hợp:</strong></p>\r\n\r\n<ul>\r\n	<li>D&agrave;nh cho người trưởng th&agrave;nh, trẻ em v&agrave; trẻ sơ sinh (trừ trẻ sinh non)</li>\r\n	<li>Vết thương nhẹ: vết trầy, vết cắt, da sau c&aacute;c liệu ph&aacute;p da liễu (peel, laser,...)</li>\r\n	<li>Da kh&ocirc; do k&iacute;ch ứng, mẩn đỏ, n&oacute;ng r&aacute;t, tr&oacute;c vảy, ngứa...</li>\r\n	<li>V&ugrave;ng da sau khi xăm (tr&ecirc;n cơ thể/mặt)</li>\r\n	<li><strong>Lưu &yacute;:</strong>&nbsp;Chỉ b&ocirc;i tr&ecirc;n vết thương kh&ocirc;ng c&ograve;n rỉ dịch</li>\r\n</ul>\r\n\r\n<p><strong>C&ocirc;ng dụng:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Hoạt chất độc quyền Antalgicine&reg;, loại bỏ sự kh&oacute; chịu ngay tức th&igrave;, giảm cảm gi&aacute;c muốn g&atilde;i v&agrave; c&agrave;o da</li>\r\n	<li>Resveratrol, đồng v&agrave; centella asiatica t&aacute;c động to&agrave;n diện l&ecirc;n từng giai đoạn phục hồi vết thương</li>\r\n	<li>Hyaluronic Acid v&agrave; Glycerine tạo m&agrave;ng phim bảo vệ, giữ ẩm, kh&ocirc;ng g&acirc;y b&iacute;t da</li>\r\n	<li>Phức hợp đồng v&agrave; kẽm gi&uacute;p kh&aacute;ng khuẩn v&agrave; bảo vệ da</li>\r\n	<li>Phức hợp độc quyền D.A.F&trade; được chứng nhận tăng ngưỡng dung nạp v&agrave; tăng cường đề kh&aacute;ng cho l&agrave;n da nhạy cảm</li>\r\n</ul>\r\n', 1, 20, 1, '2025-02-19 08:32:42', '2025-02-26 22:45:45'),
(35, 23, 1, 'Maybelline Makeup Remover Lip & Eye 150ml - mới', '1740584609-maybe_2.jpg', 100000, 5, '<p>Maybelline Makeup Remover Lip &amp; Eye 150ml - mới</p>\r\n', '<p>Maybelline Makeup Remover Lip &amp; Eye 150ml - mới</p>\r\n', 1, 100, 0, '2025-02-15 13:34:33', '2025-02-26 22:43:29'),
(36, 23, 1, 'Kem nền kiềm dầu chống nắng Maybelline Fit Me Matte+Poreless SPF22', '1740584527-maybe_1.jpg', 10000, 10, '<p>Kem nền kiềm dầu chống nắng Maybelline Fit Me Matte+Poreless SPF22</p>\r\n', '<p><strong>Kem nền kiềm dầu chống nắng Maybelline Fit Me Matte+Poreless SPF22</strong>&nbsp;l&agrave; kem nền của Mỹ, với c&ocirc;ng nghệ Micro Powders hạt phấn si&ecirc;u nhỏ kh&ocirc;ng dầu, kh&ocirc;ng hương liệu độc quyền cho hiệu ứng mịn l&igrave; tự nhi&ecirc;n, tiệp m&agrave;u da c&ugrave;ng khả năng kiềm dầu hiệu quả cả ng&agrave;y d&agrave;i, ph&ugrave; hợp cho da dầu.</p>\r\n', 1, 20, 0, '2025-02-15 13:37:41', '2025-02-26 22:42:07'),
(37, 16, 2, 'Bioderma Nước tẩy trang Sebium H2O 500 ml', '1740591563-1740588096-bioderma_2.jpg', 390000, 15, '<h1>Bioderma Nước tẩy trang Sebium H2O 500 ml</h1>\r\n', '<h1>Bioderma Nước tẩy trang Sebium H2O 500 ml</h1>\r\n', 1, 25, 1, '2025-02-26 16:50:14', '2025-02-26 17:46:17'),
(38, 19, 3, 'Beplain Kem chống nắng Sunmuse Tone-Up & Correcting Sunscreen SPF50+ PA++++ 50ml', '1740591414-beplain_1.jpg', 311000, 30, '<h1>Beplain Kem chống nắng Sunmuse Tone-Up &amp; Correcting Sunscreen SPF50+ PA++++ 50ml</h1>\r\n', '<h1>Beplain Kem chống nắng Sunmuse Tone-Up &amp; Correcting Sunscreen SPF50+ PA++++ 50ml</h1>\r\n', 1, 25, 1, '2025-02-26 17:36:54', '2025-02-26 17:46:12'),
(39, 20, 3, 'Beplain Mặt nạ dưỡng da Multi Hyaluronic Acid Mask 25ml', '1740591547-beplain_2.jpg', 48000, 10, '<h1>Beplain Mặt nạ dưỡng da Multi Hyaluronic Acid Mask 25ml</h1>\r\n', '<h1>Beplain Mặt nạ dưỡng da Multi Hyaluronic Acid Mask 25ml</h1>\r\n', 1, 35, 1, '2025-02-26 17:39:07', '2025-02-26 17:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `avatar`) VALUES
(142, 36, '1740584527-maybe_1.jpg'),
(143, 35, '1740584609-maybe_2.jpg'),
(144, 30, '1740584745-bioderma_1.jpg'),
(145, 37, '1740588614-1740588096-bioderma_2.jpg'),
(146, 38, '1740591414-beplain_1.jpg'),
(147, 39, '1740591547-beplain_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `phone`, `address`, `password`, `status`, `created_at`, `updated_at`) VALUES
(11, 'nguyen van a', 'anguyen@gmail.com', '0123456789', 'hanoi', 'e10adc3949ba59abbe56e057f20f883e', 0, '2025-02-19 16:04:22', NULL),
(12, 'nguyen van b', 'bnguyen@gmail.com', '0323777652', 'hà nội', 'e10adc3949ba59abbe56e057f20f883e', 0, '2025-02-23 14:14:51', NULL),
(13, 'nguyen van a', 'anguyen@gmail.com', '0123456789', 'hanoi', 'e10adc3949ba59abbe56e057f20f883e', 0, '2025-02-23 14:20:45', NULL),
(14, 'admin', 'admin@gmail.com', '0323777652', 'Trịnh văn bô', 'e10adc3949ba59abbe56e057f20f883e', 1, '2025-02-23 14:32:49', NULL),
(15, 'Dương Anh Đức', 'duonganhduc@gmail.com', '0345678901', 'Hà Nội', 'e10adc3949ba59abbe56e057f20f883e', 0, '2025-02-26 11:30:13', NULL),
(16, 'abc', 'abc@gmail.com', '0323777657', 'hn', 'e10adc3949ba59abbe56e057f20f883e', 0, '2025-02-26 11:38:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_brand` (`producer_id`),
  ADD KEY `product_category` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_image` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `producers`
--
ALTER TABLE `producers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `order_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `product_brand` FOREIGN KEY (`producer_id`) REFERENCES `producers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `product_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_image` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
