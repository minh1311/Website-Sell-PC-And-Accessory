-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 19, 2023 lúc 05:53 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project_mvc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `avatar`, `description`, `status`, `created_at`, `updated_at`) VALUES
(20, 'Điện thoại', '1654851149-danh-muc-phone.jpg', '<p>Điện thoại ch&iacute;nh h&atilde;ng nguy&ecirc;n seal đảm bảo chắt lượng</p>\r\n', 0, '2023-05-01 01:16:15', '2023-06-17 14:27:15'),
(21, 'Tai nghe', '1654851225-banner-phu-3.jpg', '<p>Tai nghe gi&aacute; rẻ, chất lượng &acirc;m thanh tuyệt vời</p>\r\n', 1, '2023-05-01 01:16:15', '2023-06-08 15:53:45'),
(22, 'Đồng hồ thông minh', '1654851266-banner-phu-4.jpg', '<p>Đồng hồ th&ocirc;ng minh l&agrave; phụ kiện kh&ocirc;ng thể thiếu với một t&iacute;n đồ c&ocirc;ng nghệ</p>\r\n', 1, '2023-05-01 01:16:15', '2023-06-17 14:26:14'),
(23, 'Sạc dự phòng', '1654852224-sac-du-phong-1.jpg', '<p>Sạc dự ph&ograve;ng si&ecirc;u re, si&ecirc;u tr&acirc;u.</p>\r\n', 1, '2023-05-01 01:16:15', '2023-05-01 08:16:15'),
(24, 'Máy tính', '1654852711-macbook-pro-2021.png', '<p>M&aacute;y t&iacute;nh hiện đại, sang trọng</p>\r\n', 1, '2023-05-01 01:16:15', '2023-05-01 08:16:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `introduces`
--

CREATE TABLE `introduces` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `introduces`
--

INSERT INTO `introduces` (`id`, `title`, `summary`, `avatar`, `content`, `status`, `created_at`, `updated_at`) VALUES
(4, 'DIGITAL WORLD LÀ GÌ?', 'Công ty TNHH Digital World (Digital World Co. Ltd) thành lập vào tháng 03/2022', '1654956259-introduce-logo-to.png', '<p>C&ocirc;ng ty TNHH Digital World (Digital World Co. Ltd) th&agrave;nh lập v&agrave;o th&aacute;ng 03/2001&nbsp;, lĩnh vực hoạt động ch&iacute;nh của c&ocirc;ng ty bao gồm: mua b&aacute;n sửa chữa c&aacute;c thiết bị li&ecirc;n quan đến điện thoại di động, thiết bị kỹ thuật số v&agrave; c&aacute;c lĩnh vực li&ecirc;n quan đến thương mại điện tử.Bằng trải nghiệm về thị trường điện thoại di động từ đầu những năm 1990, c&ugrave;ng với việc nghi&ecirc;n cứu kỹ tập qu&aacute;n mua h&agrave;ng của kh&aacute;ch h&agrave;ng Việt Nam, Digital World đ&atilde; x&acirc;y dựng một phương thức kinh doanh chưa từng c&oacute; ở Việt Nam trước đ&acirc;y. C&ocirc;ng ty đ&atilde; x&acirc;y dựng được một phong c&aacute;ch tư vấn b&aacute;n h&agrave;ng đặc biệt nhờ v&agrave;o một đội ngũ nh&acirc;n vi&ecirc;n chuy&ecirc;n nghiệp v&agrave; trang web d<a href=\"http://www.thegioididong.com/\">igitalworld</a>.com&nbsp;hỗ trợ như l&agrave; một cẩm nang về điện thoại di động v&agrave; một k&ecirc;nh thương mại điện tử h&agrave;ng đầu tại Việt Nam. Hiện nay, số lượng điện thoại b&aacute;n ra trung b&igrave;nh tại Digital World khoảng 300.000 m&aacute;y/th&aacute;ng chiếm khoảng 15% thị phần điện thoại ch&iacute;nh h&atilde;ng cả nước.</p>\r\n', 1, '2023-05-01 01:16:15', '2023-06-11 21:04:19'),
(5, 'QUÁ TRÌNH PHÁT TRIỂN', 'Tháng 3/2001: Ra quyết định thành lập công ty. Sau 3 tháng thành lập, công ty ra mắt website www.digitalworld.com và 3 cửa hàng nhỏ tại đường Hoàng Văn Thụ, Lê Lai, CMT8 (Tp.HCM).', '', '<p>Th&aacute;ng 3/2001: Ra quyết định th&agrave;nh lập c&ocirc;ng ty. Sau 3 th&aacute;ng th&agrave;nh lập, c&ocirc;ng ty ra mắt website&nbsp;<a href=\"http://www.thegioimobile.com/\">www.digitalworld.com</a>&nbsp;v&agrave; 3 cửa h&agrave;ng nhỏ tại đường Bắc Từ Li&ecirc;m- H&agrave; Nội.Th&aacute;ng 10/2001, ban gi&aacute;m đốc c&ocirc;ng ty quyết định khai trương si&ecirc;u thị đầu ti&ecirc;n tại 89A, Nguyễn Đ&igrave;nh Chiểu, Tp.HCM với t&ecirc;n gọi ban đầu l&agrave;&nbsp;&nbsp;<a href=\"http://www.thegioimobile.com/\">www.digitalworld.com</a>&nbsp;. Với quy m&ocirc; hơn 200 m2, si&ecirc;u thị được x&acirc;y dựng khang trang n&agrave;y đ&atilde; th&agrave;nh c&ocirc;ng rực rỡ bởi n&oacute; kh&aacute;c biệt ho&agrave;n to&agrave;n với hơn 10.000 cửa h&agrave;ng điện thoại di động nhỏ lẻ l&uacute;c bấy giờ tr&ecirc;n địa b&agrave;n th&agrave;nh phố Hồ Ch&iacute; Minh.Th&aacute;ng 1/2005 si&ecirc;u thị thứ 2 của&nbsp;&nbsp;<a href=\"http://www.thegioimobile.com/\">www.digitalworld.com</a>&nbsp;&nbsp;ra mắt tại số 330 Cộng H&ograve;a (TPHCM).Th&aacute;ng 1/2006, si&ecirc;u thị thứ 3 được khai trương tại 26 Phan Đăng Lưu v&agrave; 2 th&aacute;ng sau lại th&ecirc;m 1 cửa h&agrave;ng nữa ra đời tại 182A, Nguyễn Thị Minh Khai.Giai đoạn 2007 - 2009 l&agrave; giai đoạn thegioididong.com mở rộng ở TPHCM, Đ&agrave; Nẵng v&agrave; H&agrave; Nội.Đến cuối năm 2009, thegioididong.com c&oacute; tổng cộng 38 si&ecirc;u thị với 19 si&ecirc;u thị tại TPCHM, 5 si&ecirc;u thị tại H&agrave; Nội, 2 si&ecirc;u thị tại Đ&agrave; Nẵng v&agrave; 12 si&ecirc;u thị kh&aacute;c tại c&aacute;c tỉnh Đồng Nai, Long An, B&igrave;nh Dương, C&agrave; Mau,&hellip;2007 cũng l&agrave; năm C&ocirc;ng ty TNHH Digital World&nbsp;chuyển đổi sang C&ocirc;ng ty Cổ phần để mở rộng cơ hội ph&aacute;t triển.Từ năm 2010 tới 2011 đ&aacute;nh dấu bước ph&aacute;t triển vượt bậc với sự ra đời li&ecirc;n tiếp của c&aacute;c si&ecirc;u thị Digital World.</p>\r\n\r\n<div class=\"ddict_div\" style=\"top: 42.316px; max-width: 150px; left: 547.267px;\"><img class=\"ddict_audio\" src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/img/audio.png\" />\r\n<p class=\"ddict_sentence\">www.thegioimobi.com</p>\r\n\r\n<hr />\r\n<p class=\"ddict_didumean\">Did you mean <span class=\"ddict_spell\">www.thegioimobi.cơm</span></p>\r\n</div>\r\n', 0, '2023-05-01 01:16:15', '2023-06-17 14:28:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maps`
--

CREATE TABLE `maps` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `hotline` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `map_url` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `maps`
--

INSERT INTO `maps` (`id`, `title`, `hotline`, `fax`, `email`, `summary`, `map_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Đường Nguyên Xá, Bắc Từ Liêm, Hà Nội', '0968696968', '659021', 'digitalworld@gmai.com', 'Đến với chúng tôi để trải nghiệm sản phẩm tốt nhất', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.473685885786!2d105.73331873699033!3d21.053735080594365!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345457e292d5bf%3A0x20ac91c94d74439a!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2hp4buHc', 1, '2023-05-01 01:16:15', '2023-06-17 14:28:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `category_id`, `title`, `summary`, `avatar`, `content`, `status`, `created_at`, `updated_at`) VALUES
(6, 20, 'Đánh giá iPhone 13', 'iPhone 13 thiết kế vẫn vuông vức nhưng cụm camera sau độc lạ hơn. Xét về phong cách thiết kế, iPhone 13 năm nay vẫn sở hữu khung viền vuông vức giống như trên dòng iPhone 12 trước đó. Theo trải nghiệm của tác giả thì iPhone 13 vẫn mang lại cho người dùng ', '1654854525-product-banner-phu-1.jpg', '<h3>X&eacute;t về phong c&aacute;ch thiết kế, iPhone 13 năm nay vẫn sở hữu khung viền vu&ocirc;ng vức giống như tr&ecirc;n d&ograve;ng iPhone 12 trước đ&oacute;. Theo trải nghiệm của t&aacute;c giả th&igrave; iPhone 13 vẫn mang lại cho người d&ugrave;ng cảm gi&aacute;c cầm nắm thoải m&aacute;i v&agrave; chắc chắn. Ngo&agrave;i ra th&igrave; ở phần mặt sau v&agrave; mặt trước của iPhone 13 đều được trang bị một lớp k&iacute;nh nhưng chỉ c&oacute; phần mặt trước của m&aacute;y sẽ được trang bị lớp bảo vệ Ceramic Shield m&agrave; th&ocirc;i. Cụ thể th&igrave; lớp bảo vệ n&agrave;y gi&uacute;p mặt k&iacute;nh của chiếc iPhone 13 trở n&ecirc;n bền hơn, chống trầy xước v&agrave; nứt vỡ tốt hơn một ch&uacute;t so với thế hệ tiền nhiệm.</h3>\r\n', 1, '2023-05-01 01:16:15', '2023-06-05 14:29:25'),
(7, 20, 'Samsung Galaxy S22 Series có gì mới', 'Sau dòng Galaxy S21 thì Samsung đã ra mắt Galaxy S22 series trong sự kiện ngày 16/2 với giá khởi điểm từ 21.9 triệu. Bên cạnh những điểm nhấn về thiết kế, dòng Galaxy S22 cấu hình cực mạnh với Snapdragon 8 Gen 1 và đặc biệt là camera có nhiều cải tiến. Sa', '1654854741-new-banner-phu-2.jpeg', '<p>Đầu ti&ecirc;n, c&ugrave;ng m&igrave;nh điểm qua th&ocirc;ng số cấu h&igrave;nh của Galaxy S22 Ultra nh&eacute;.</p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh: Tấm nền Dynamic AMOLED 2X, k&iacute;ch thước 6.8 inch, độ ph&acirc;n giải QHD+ (3.088 x 1.440 pixel), mật độ điểm ảnh 500 ppi, k&iacute;nh cường lực Gorilla Glass Victus+.</li>\r\n	<li>Camera sau: 12 MP + 108 MP + 10 MP + 10 MP.</li>\r\n	<li>Camera trước: 40 MP.</li>\r\n	<li>CPU: Snapdragon 8 Gen 1.</li>\r\n	<li>RAM: 8 GB hoặc 12 GB.</li>\r\n	<li>Bộ nhớ trong: 128 GB, 256 GB v&agrave;, 512 GB.</li>\r\n	<li>Pin: 5.000 mAh, sạc nhanh 45 W, sạc ngược kh&ocirc;ng d&acirc;y.</li>\r\n	<li>Hệ điều h&agrave;nh: Android 12 (giao diện One UI 4.1)</li>\r\n</ul>\r\n', 1, '2023-05-01 01:16:15', '2023-06-01 14:29:48'),
(8, 20, 'Apple Watch Series 7 có gì mới?', 'Với Apple Watch Series 7, Apple đã loại bỏ tất cả những tin đồn và cung cấp một chiếc đồng hồ mới trông giống chiếc cũ một cách đáng kinh ngạc. Phần lớn Apple Watch Series 7 tương tự như năm ngoái, vì vậy bài đánh giá này sẽ tập trung vào tất cả những gì ', '1654855011-new-apple-watch.jpg', '<p>Rất may, Apple Watch Series 7 tu&acirc;n theo cấu tr&uacute;c gi&aacute; tương tự như Series 6. N&oacute; cũng c&oacute; sẵn từ tất cả c&aacute;c điểm nghi ngờ th&ocirc;ng thường ở tất cả c&aacute;c địa điểm th&ocirc;ng thường mỗi năm tr&ocirc;i qua. Bạn c&oacute; thể mua Apple Watch từ Apple v&agrave; một loạt c&aacute;c nh&agrave; cung cấp b&ecirc;n thứ ba tại cửa h&agrave;ng v&agrave; trực tuyến, bao gồm Amazon, Walmart, Best Buy, Adorama v&agrave; nhiều nh&agrave; cung cấp dịch vụ kh&aacute;c như Verizon v&agrave; AT&amp;T. Mặc d&ugrave; h&atilde;y thận trọng một ch&uacute;t, v&igrave; Đồng hồ được b&aacute;n qua c&aacute;c nh&agrave; mạng c&oacute; xu hướng đi k&egrave;m với g&oacute;i di động v&agrave; c&oacute; thể bạn sẽ cần một g&oacute;i hiện c&oacute; để bắt đầu. Điều đ&oacute; đang được n&oacute;i, nếu bạn th&iacute;ch nh&agrave; cung cấp dịch vụ của m&igrave;nh v&agrave; bạn đang c&acirc;n nhắc một chiếc Apple Watch di động, n&oacute; thường c&oacute; thể l&agrave; một lựa chọn tuyệt vời.</p>\r\n', 1, '2023-05-01 09:53:57', '2023-06-01 16:56:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `price_total` int(11) NOT NULL,
  `payment_status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `address`, `mobile`, `email`, `note`, `price_total`, `payment_status`, `created_at`, `updated_at`) VALUES
(26, 0, 'Nguyen Hoang Minh', 'Ha Nam', 988905853, 'minhnguyeny2002@gmail.com', '13213', 18870000, 0, '2023-05-01 01:16:15', '2023-06-17 14:49:27'),
(27, 0, 'Nguyen Hoang Minh', 'Ha Nam', 1232321321, 'minhnguyeny2002@gmail.com', '123123', 128400000, 0, '2023-05-01 02:16:45', '2023-05-01 09:30:22'),
(28, 0, 'Nguyen Hoang Minh', 'Ha Nam', 4234, 'minhnguyeny2002@gmail.com', '423423', 62500000, 0, '2023-05-01 03:06:06', '2023-06-17 14:51:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quality`, `created_at`, `updated_at`) VALUES
(10, 26, 32, '3', '2023-05-01 01:16:15', '2023-06-17 14:52:05'),
(11, 26, 17, '1', '2023-05-01 02:16:15', '2023-05-01 08:16:15'),
(12, 27, 18, '1', '2023-05-01 02:16:45', '2023-06-17 14:53:33'),
(13, 27, 20, '5', '2023-05-01 02:16:45', '2023-06-17 14:53:40'),
(14, 27, 22, '2', '2023-05-01 02:16:45', '2023-06-17 14:53:45'),
(15, 28, 19, '1', '2023-05-01 03:06:06', '2023-06-17 14:54:06'),
(16, 28, 23, '1', '2023-05-01 03:06:06', '2023-06-17 14:54:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `hot` varchar(255) DEFAULT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `avatar`, `price`, `weight`, `supplier`, `summary`, `content`, `hot`, `status`, `created_at`, `updated_at`) VALUES
(16, 20, 'IPhone 13 Pro ', '1654851627-product-iphone-13-pro.png', 29000000, '220 gr', 'APPLE', 'IPhone 13 Pro sang trọng, hoàn thiện.', '<p>IPhone 13 Pro năm nay c&oacute; thể sẽ kh&ocirc;ng c&oacute; nhiều sự thay đổi về thiết kế, khi m&aacute;y vẫn sở hữu kiểu d&aacute;ng tương tự như iPhone 12 Pro với c&aacute;c cạnh viền vu&ocirc;ng vắn v&agrave; hai mặt k&iacute;nh cường lực cao cấp n', '1', 1, '2023-05-01 01:16:15', '2023-05-03 08:16:15'),
(17, 22, 'Apple Watch S7 LTE 41 mm', '1654851884-product-banner-phu-4.jpg', 12000000, '120 gr', 'APPLE', 'Apple Watch S7 LTE 41 mm viền nhôm dây silicone có thiết kế được nâng cấp hơn so với phiên bản tiền nhiệm. Sở hữu vẻ ngoài sang trọng và hiện đại, Apple Watch S7 được thiết kế các góc bo tròn mềm mại với mặt đồng hồ được vác cong tạo cảm giác liền mạch ', '<p>Apple Watch S7 LTE 41 mm viền nh&ocirc;m d&acirc;y silicone c&oacute; thiết kế được n&acirc;ng cấp hơn so với phi&ecirc;n bản tiền nhiệm. Sở hữu vẻ ngo&agrave;i sang trọng v&agrave; hiện đại, Apple Watch S7 được thiết kế c&aacute;c g&oacute;c bo tr&ogr', '1', 1, '2023-05-01 01:16:15', '2023-05-11 08:59:45'),
(18, 21, 'Tai nghe bluetooth Samsung ITFIT A08C', '1654851941-product-banner-phu-3.jpg', 2400000, '80 gr', 'SAMSUNG', 'Tai nghe bluetooth Samsung ITFIT A08C có thiết kế nhỏ gọn, âm thanh mạnh mẽ cùng thời lượng pin dài cho trải nghiệm tốt vượt bậc. Tai nghe thích hợp với nhiều đối tượng người dùng, đặc biệt là người dùng trẻ.', '<p>Tai nghe bluetooth Samsung ITFIT A08C c&oacute; thiết kế nhỏ gọn, &acirc;m thanh mạnh mẽ c&ugrave;ng thời lượng pin d&agrave;i cho trải nghiệm tốt vượt bậc. Tai nghe th&iacute;ch hợp với nhiều đối tượng người d&ugrave;ng, đặc biệt l&agrave; người d&ugr', '1', 1, '2023-05-01 01:16:15', '2023-05-06 08:06:15'),
(19, 20, 'Samsung Galaxy S22 Ultra 5G', '1654852051-product-ss-s22-ultra.png', 26500000, '250 gr', 'SAMSUNG', 'Samsung Galaxy S22 Ultra 5G 512 GB là một \"siêu phẩm\" với bút S Pen nhanh hơn được tích hợp sẵn, nhiều cải tiến về camera, màn hình sáng hơn và sạc 45 W nhanh hơn.', '<p>Samsung Galaxy S22 Ultra 5G 512 GB l&agrave; một &quot;si&ecirc;u phẩm&quot; với b&uacute;t S Pen nhanh hơn được t&iacute;ch hợp sẵn, nhiều cải tiến về camera, m&agrave;n h&igrave;nh s&aacute;ng hơn v&agrave; sạc 45 W nhanh hơn.</p>\r\n', '1', 1, '2023-05-01 01:16:15', '2023-06-01 08:16:15'),
(20, 20, 'Xiaomi 12 Pro', '1654852439-product-xiaomi-12-pro.jpg', 16400000, '210 gr', 'Xiaomi', 'Điện thoại Xiaomi 12 Pro có thiết kế hiện đại, cao cấp được tạo nên từ bộ khung kim loại cực gọn nhẹ, các đường nét 3D tinh xảo tạo ra nét mượt mà và bóng bẩy. Chính điểm nhấn này đã tạo ra sự khác biệt hoàn toàn với những chiếc Flagship khác trên thị trư', '<p>Điện thoại Xiaomi 12 Pro c&oacute; thiết kế hiện đại, cao cấp được tạo n&ecirc;n từ bộ khung kim loại cực gọn nhẹ, c&aacute;c đường n&eacute;t 3D tinh xảo tạo ra n&eacute;t mượt m&agrave; v&agrave; b&oacute;ng bẩy. Ch&iacute;nh điểm nhấn n&agrave;y đ&a', '1', 1, '2023-05-01 01:16:15', '2023-05-06 08:16:15'),
(21, 23, 'Sạc Dự PhòngROBOT RT180', '1654852305-product-sac-du-phong-1.jpg', 420000, '190 gr', 'ROBOT', 'Pin Sạc Dự Phòng 10.000mAh ROBOT RT180 - 2 Cổng Sạc Vào Type-C/Micro, Kích Thước Mỏng và Nhẹ - HÀNG CHÍNH HÃNG', '<h1>Pin Sạc Dự Ph&ograve;ng 10.000mAh ROBOT RT180 - 2 Cổng Sạc V&agrave;o Type-C/Micro, K&iacute;ch Thước Mỏng v&agrave; Nhẹ - H&Agrave;NG CH&Iacute;NH H&Atilde;NG</h1>\r\n', '1', 1, '2023-05-01 01:16:15', '2023-05-01 00:16:57'),
(22, 20, 'OPPO Reno6', '1654852558-product-oppo-reno-6.jpg', 22000000, '200 gr', 'OPPO', 'Nối tiếp sự thành công của dòng Reno5, OPPO mới đây đã trình làng bộ đôi siêu phẩm thuộc dòng OPPO Reno6 series có cấu hình mạnh mẽ, thiết kế ấn tượng. Trong đó, chiếc OPPO Reno6 5G với những cải tiến mới mẻ hơn thế hệ tiền nhiệm chắc chắn sẽ là một siêu ', '<h3>Nối tiếp sự th&agrave;nh c&ocirc;ng của d&ograve;ng Reno5, OPPO mới đ&acirc;y đ&atilde; tr&igrave;nh l&agrave;ng bộ đ&ocirc;i si&ecirc;u phẩm thuộc d&ograve;ng OPPO Reno6 series c&oacute; cấu h&igrave;nh mạnh mẽ, thiết kế ấn tượng.&nbsp;Trong đ&oacute', '1', 1, '2023-05-01 01:16:15', '2023-05-23 18:06:01'),
(23, 24, 'Macbook Pro 14', '1654852784-product-macbook-pro-2021.png', 36000000, '1300 gr', 'APPLE', 'Laptop Macbook Pro 14\" 2021 - M1 Pro 14 Core GPU/512GB - Chính hãng Apple VN', '<h1>Laptop Macbook Pro 14&quot; 2021 - M1 Pro 14 Core GPU/512GB - Ch&iacute;nh h&atilde;ng Apple VN</h1>\r\n', '1', 1, '2023-05-01 01:16:15', '2023-06-10 16:19:44'),
(24, 20, 'Samsung Galaxy A73 (5G)', '1655213870-product-samsung-galaxy-a73-1-600x600.jpg', 11690000, '181 gr', 'SAMSUNG', 'Điện thoại cao cấp nhất dòng Galaxy A series sở hữu nhiều nâng cấp đáng giá so với thế hệ trước, từ ngoại hình cho đến hiệu năng, đặc biệt là hệ thống camera. Sau đây là những đánh giá chi tiết về chiếc Samsung A73 giúp bạn có cái nhìn tổng quan nhất về c', '<h2><strong>Đ&aacute;nh gi&aacute; Samsung A73 - Hiệu năng mượt m&agrave;, chụp ảnh chuy&ecirc;n nghiệp</strong></h2>\r\n\r\n<p>Điện thoại cao cấp nhất d&ograve;ng Galaxy A series sở hữu nhiều n&acirc;ng cấp đ&aacute;ng gi&aacute; so với thế hệ trước, từ ngoạ', '1', 1, '2023-05-01 01:16:15', '2023-06-14 20:37:50'),
(25, 20, 'Samsung Galaxy Note 20 Ultra 5G', '1655214142-product-sansung-note-20.jpg', 18990000, '200 gr', 'SAMSUNG', 'Bên cạnh biên bản Galaxy Note 20 thường, Samsung còn cho ra mắt Note 20 Ultra 5G cho khả năng kết nối dữ liệu cao cùng thiết kế nguyên khối sang trọng, bắt mắt. Đây sẽ là sự lựa chọn hoàn hảo dành cho bạn để sử dụng mà không bị lỗi thời sau thời gian dài ', '<h2><strong>Điện thoại Samsung Note 20 Ultra 5G - Sang trọng, hiệu năng vượt trội</strong></h2>\r\n\r\n<p>B&ecirc;n cạnh bi&ecirc;n bản Galaxy Note 20 thường, Samsung c&ograve;n cho ra mắt&nbsp;<strong>Note 20 Ultra 5G</strong>&nbsp;cho khả năng kết nối dữ li', '1', 1, '2023-05-01 01:16:15', '2023-06-14 20:42:22'),
(26, 24, 'Asus Vivobook 13 Slate Oled T3300KA', '1655214258-product-laptop-asus-vi-13.jpg', 15790000, '1900 gr', 'Asus ', 'Laptop Asus Vivobook 13 Slate OLED T3300 là dòng laptop 2 trong 1 hiếm hoi của thương hiệu Asus. Thiết kế độc đáo này giúp cho người dùng có một trải nghiệm thú vị.', '<h2><strong>Laptop Asus Vivobook 13 Slate OLED (T3300) &ndash; laptop 2 trong 1 tiện lợi</strong></h2>\r\n\r\n<p><strong>Laptop Asus Vivobook 13 Slate OLED T3300</strong>&nbsp;l&agrave; d&ograve;ng laptop 2 trong 1 hiếm hoi của thương hiệu Asus. Thiết kế độc ', '1', 1, '2023-05-01 01:16:15', '2023-06-14 20:44:18'),
(27, 24, 'Asus TUF Gaming FA506IHR HN019W', '1655214375-product-laptop-TUF.jpg', 15990000, '2100 gr', 'Asus ', 'Laptop Asus TUF Gaming FA506IHR-HN019W một siêu phẩm mang nhiều tính năng vượt trội, thiết kế tinh tế, chiếm trọn vị trí trong lòng tín đồ công nghệ. Tìm hiểu ngay laptop Asus Gaming qua những thông tin sau đây!', '<h2><strong>Laptop Asus TUF Gaming FA506IHR-HN019W &ndash; Mạnh mẽ, bền bỉ</strong></h2>\r\n\r\n<p>Laptop Asus TUF Gaming FA506IHR-HN019W một si&ecirc;u phẩm mang nhiều t&iacute;nh năng vượt trội, thiết kế tinh tế, chiếm trọn vị tr&iacute; trong l&ograve;ng t', '1', 1, '2023-05-01 01:16:15', '2023-06-14 20:46:15'),
(28, 21, 'Tai nghe Bluetooth Samsung Galaxy Buds Pro', '1655215882-product-buds-pro_1.jpg', 2250000, '60 gr', 'SAMSUNG', 'Tai nghe True Wireless Samsung Galaxy Buds Pro là dòng sản phẩm tai nghe không dây thế hệ mới nhất từ Samsung. Với phiên bản lần này được lột xác hoàn toàn về thiết kế cũng như chất âm xứng đáng là lựa chọn hàng đầu cho người dùng đang mong muốn tìm cho m', '<p>Tai nghe True Wireless Samsung Galaxy Buds Pro l&agrave; d&ograve;ng sản phẩm tai nghe kh&ocirc;ng d&acirc;y thế hệ mới nhất từ Samsung. Với phi&ecirc;n bản lần n&agrave;y được lột x&aacute;c ho&agrave;n to&agrave;n về thiết kế cũng như chất &acirc;m x', '1', 1, '2023-05-01 01:16:15', '2023-06-14 21:11:22'),
(29, 21, 'Tai nghe chụp tai Sony WH-1000XM4', '1655216084-product-headphone.jpg', 5890000, '190 gr', 'Sony', 'Trong thế giới phụ kiện âm thanh nói chung và tai nghe nói riêng, Sony luôn là một trong những thương hiệu dẫn đầu. Nếu năm 2018, hãng cho ra mắt chiếc 1000XM3 được đông đảo người dùng đón nhận. Thì năm nay 2020, Sony WH-1000XM4 phụ kiện tai ngh', '<h2><strong>Sony WH-1000XM4 &ndash; Bản n&acirc;ng c&acirc;́p nhẹ của WH-1000XM3</strong></h2>\r\n\r\n<p><em>Trong th&ecirc;́ giới phụ ki&ecirc;̣n &acirc;m thanh n&oacute;i chung v&agrave; tai nghe n&oacute;i ri&ecirc;ng, Sony lu&ocirc;n l&agrave; m&ocirc;̣t ', '1', 1, '2023-05-01 01:16:15', '2023-06-14 21:14:44'),
(30, 22, 'Huawei Watch GT3 Pro', '1655216221-product-dhtt-huawei.jpg', 7990000, '160 gr', 'Huawei', 'Đồng hồ thông minh Huawei Watch GT3 Pro là sản phẩm công nghệ được mong chờ. Đồng hồ sở hữu thiết kế cổ điển với nhiều tính năng theo dõi tập luyện chuyên nghiệp cùng thời lượng pin sử dài lâu.', '<h2><strong>Đồng hồ Huawei Watch GT 3 Pro - Phong c&aacute;ch, hiện đại</strong></h2>\r\n\r\n<p>Đồng hồ th&ocirc;ng minh Huawei Watch GT3 Pro l&agrave; sản phẩm c&ocirc;ng nghệ được mong chờ. Đồng hồ sở hữu thiết kế cổ điển với nhiều t&iacute;nh năng theo d&o', '1', 1, '2023-05-01 01:16:15', '2023-06-14 21:17:01'),
(31, 22, 'Xiaomi Mi Band 6', '1655216334-product-mi-band-6.jpg', 949000, '100 gr', 'Xiaomi', 'Cách đây một năm, vòng đeo tay thông minh của Xiaomi đã được giới thiệu sau nhiều năm phát triển mang tên Mi Band 5. Không thể để cho thị trường này hạ nhiệt, Xiaomi lại tiếp tục cho ra mắt thế hệ tiếp theo mang tên Mi Band 6.', '<h2>Đ&aacute;nh gi&aacute; Xiaomi Mi Band 6 &ndash; Bản n&acirc;ng cấp ho&agrave;n hảo hơn Mi Band 5</h2>\r\n\r\n<p>C&aacute;ch đ&acirc;y một năm, v&ograve;ng đeo tay th&ocirc;ng minh của Xiaomi đ&atilde; được giới thiệu sau nhiều năm ph&aacute;t triển mang t', '1', 1, '2023-05-01 01:16:15', '2023-06-14 21:18:54'),
(32, 20, 'Apple Magsafe MJWY3', '1655216708-product-pin.jpg', 2290000, '300 gr', 'APPLE', 'Apple vừa cho ra mắt pin dự phòng Apple MagSafe dành cho iPhone 12 series trở lên. Đây được xem là bộ pin mở rộng thông qua giao tiếp MagSafe được tích hợp trên dòng iPhone 12, và là vật cứu cánh dành cho iPhone 12 mini với dung lượng thấp', '<h2><strong>Pin dự ph&ograve;ng Apple MagSafe - Pin sạc kh&ocirc;ng d&acirc;y đến từ Apple</strong></h2>\r\n\r\n<p>Apple vừa cho ra mắt&nbsp;<strong>pin dự ph&ograve;ng Apple MagSafe</strong>&nbsp;d&agrave;nh cho iPhone 12 series trở l&ecirc;n. Đ&acirc;y được', '1', 1, '2023-05-01 01:16:15', '2023-06-14 21:25:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `component_img` varchar(255) NOT NULL,
  `title_component` varchar(255) NOT NULL,
  `title_detail` varchar(255) NOT NULL,
  `store_img` varchar(255) NOT NULL,
  `status` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `avatar`, `position`, `component_img`, `title_component`, `title_detail`, `store_img`, `status`, `created_at`, `updated_at`) VALUES
(21, '1654850098-banner-4.jpg', 2, '1654850098-banner-phu-2.jpeg', 'Samsung Galaxy S22 Ultra', 'Samsung Galaxy S22 Ultra 5G 512 GB là một \"siêu phẩm\" với bút S Pen nhanh hơn được tích hợp sẵn, nhiều cải tiến về camera, màn hình sáng hơn và sạc 45 W nhanh hơn.', '1654850098-banner-phu-2.jpeg', 1, '2023-05-01 01:16:15', '2023-05-01 08:16:15'),
(23, '1654850323-banner-1.png', 1, '1654850323-banner-phu-4.jpg', 'Apple Watch', 'Apple Watch S7 LTE 41 mm viền nhôm dây silicone có thiết kế được nâng cấp hơn so với phiên bản tiền nhiệm. Sở hữu vẻ ngoài sang trọng và hiện đại, Apple Watch S7 được thiết kế các góc bo tròn mềm mại với mặt đồng hồ được vác cong tạo cảm giác liền mạch hơ', '1654850323-banner-phu-4.jpg', 1, '2023-05-01 01:16:15', '2023-05-01 08:16:15'),
(25, '1654850568-banner-3.png', 5, '1654850568-banner-phu-1.jpg', 'iPhone 13 Pro', 'iPhone 13 Pro năm nay có thể sẽ không có nhiều sự thay đổi về thiết kế, khi máy vẫn sở hữu kiểu dáng tương tự như iPhone 12 Pro với các cạnh viền vuông vắn và hai mặt kính cường lực cao cấp nhưng được nâng cấp mạnh mẽ về khả năng chụp ảnh.', '1654850568-banner-phu-1.jpg', 1, '2023-05-01 01:16:15', '2023-05-01 08:16:15'),
(26, '1654850675-banner-6.jpg', 4, '1654850675-banner-phu-3.jpg', 'Tai nghe bluetooth Samsung ITFIT A08C', 'Tai nghe bluetooth Samsung ITFIT A08C có thiết kế nhỏ gọn, âm thanh mạnh mẽ cùng thời lượng pin dài cho trải nghiệm tốt vượt bậc. Tai nghe thích hợp với nhiều đối tượng người dùng, đặc biệt là người dùng trẻ.', '1654850675-banner-phu-3.jpg', 1, '2023-05-01 01:16:15', '2023-05-01 08:16:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(4, 'admin', '12345678', '2023-05-01 01:16:15', '2023-06-17 14:46:57'),
(5, 'nguyenhoangminh', '12345678', '2023-05-01 01:16:15', '2023-06-17 14:46:50'),
(6, 'thao', '12345678', '2023-05-01 01:16:15', '2023-06-17 14:47:04'),
(8, 'nhan', '25d55ad283aa400af464c76d713c07ad', '2023-05-01 01:16:15', '2023-06-17 14:47:10');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `introduces`
--
ALTER TABLE `introduces`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `introduces`
--
ALTER TABLE `introduces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `maps`
--
ALTER TABLE `maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
