-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 09, 2024 lúc 05:29 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webshop_giaythethaonam`
--
CREATE DATABASE IF NOT EXISTS `webshop_giaythethaonam` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `webshop_giaythethaonam`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `amount_price`
--

DROP TABLE IF EXISTS `amount_price`;
CREATE TABLE IF NOT EXISTS `amount_price` (
  `amount_price_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) DEFAULT NULL,
  `price` decimal(15,0) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`amount_price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `amount_price`
--

INSERT INTO `amount_price` (`amount_price_id`, `amount`, `price`, `product_id`) VALUES
(30, 75, '12500', 94),
(32, 51, '123123', 96),
(44, 77, '32000', 75),
(46, 22, '58000', 73),
(48, 101, '78000', 83),
(49, 54, '120000', 82),
(57, 0, '0', 120),
(60, 87, '91000', 79),
(65, 220, '46000', 74),
(66, 20, '150000', 122),
(67, 101, '72500', 80),
(69, 46, '358000', 87),
(72, 27, '140000', 88),
(74, 53, '78000', 81),
(76, 92, '150000', 77);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_image`
--

DROP TABLE IF EXISTS `banner_image`;
CREATE TABLE IF NOT EXISTS `banner_image` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `title` varchar(64) DEFAULT NULL,
  `sub_title` varchar(64) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner_image`
--

INSERT INTO `banner_image` (`banner_id`, `link`, `image`, `sort_order`, `title`, `sub_title`, `description`, `price`, `status`) VALUES
(2, '/product-info.php?product_id=63', 'catalog/33fcb6f95ed58077c223e64fa7ccacb8.jpg', 1, 'Converse', '', '<p><br></p>', '21000000.0000', 0),
(3, '/product-info.php?product_id=69', 'catalog/89774762aa8c9e6bd2cc0beff4c90f97.jpg', 3, 'Converse', 'Sieu pham cua Apple', '<p><br></p>', '0.0000', 1),
(4, '', 'catalog/cd1c50b69ec9e5db0cb54e3a4a2aac74.jpg', 1, 'Giày Adidas', 'Giày Vans Authentic', '<p><br></p>', '16000000.0000', 0),
(5, '/product-info.php?product_id=63', 'catalog/9e9900bde02400a5cc716a785bb6d9cc.jpg', 1, 'GIÀY PUMA COURT POINT VULC V2 NAM - TRẮNG ĐEN', 'GIÀY PUMA COURT POINT VULC V2 NAM - TRẮNG ĐEN', '<p><br></p>', '0.0000', 1),
(6, 'http://www.acer.com', 'catalog/ab64bbbe76d21a016d1b104dc23454fb.png', 5, 'Asics', '', '<p><br></p>', '0.0000', 1),
(7, 'http://www.asus.com', 'catalog/Shoes/Vans/Giày Vans Authentic/gia-giay-vans-chinh-hang-4-jpg-1599623295-09092020104815.jpg', 6, 'Giày Vans', '', '<p><br></p>', '0.0000', 1),
(8, 'http://www.canon.com', 'catalog/Shoes/Lacoste/GIÀY LACOSTE POWERCOURT NAM - ĐEN/giay-lacoste-powercourt-nam-den-02.jpg', 7, 'Lascote', '', '<p><br></p>', '0.0000', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `name`, `description`, `featured`) VALUES
(20, 'catalog/products/accessories/0f5706a5c049a15d6f8eeba461802109.jpg', 71, 1, 0, 10, 1, '2009-01-05 21:49:43', '2024-02-22 16:46:21', 'Loại Khác ...', '<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Máy tính để bàn cung cấp nhiều sức mạnh và tính linh hoạt hơn những gì bạn có thể nhận được từ máy tính xách tay và có nhiều thiết kế hơn bao giờ hết để bạn lựa chọn. </font><font style=\"vertical-align: inherit;\">Dưới đây là lời khuyên mua hàng của chúng tôi, cùng với danh sách các mô hình tốt nhất mà chúng tôi đã thử nghiệm.\r\n            </font></font></p><p><span></span></p><p style=\"\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Tại sao bạn muốn mua một máy tính để bàn hoặc máy Mac vào năm 2016? </font><font style=\"vertical-align: inherit;\">Nói một cách đơn giản, có những nhu cầu về máy tính mà các thiết bị di động như máy tính xách tay và máy tính bảng không thể đáp ứng tốt như máy tính để bàn. </font><font style=\"vertical-align: inherit;\">Dưới đây là những điều cần cân nhắc khi quyết định chọn chiếc máy tính để bàn tiếp theo của bạn.</font></font></p>\r\n\r\n<p style=\"\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Đó là Giới thiệu về CPU và bộ xử lý đồ họa cấp Power</font></font></b><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> \r\n Desktop chỉ đơn giản là mạnh hơn so với các đối tác di động với cùng mức tiền. </font><font style=\"vertical-align: inherit;\">Chúng cung cấp cho bạn sức mạnh để hoàn thành bất kỳ nhiệm vụ nào bạn đang làm trong thời gian ngắn hơn. </font><font style=\"vertical-align: inherit;\">Nhìn chung, linh kiện máy tính để bàn ít tốn kém hơn, vì vậy thay vì mua một máy tính xách tay 500 đô la với bộ vi xử lý Intel Atom có ​​năng lực, bạn có thể mua một máy tính để bàn 500 đô la với một CPU máy tính để bàn Intel Core i5 mạnh mẽ trong đó.</font></font></p><p></p>', 0),
(24, 'catalog/manufacturers/0d52016c7ec491849ffb7dd6213124e4.jpg', 82, 1, 0, 3, 1, '2009-01-20 02:36:26', '2024-02-16 21:56:47', 'Vans', 'Vans là một thương hiệu sản xuất giày, thời trang và phụ kiện nổi tiếng của Mỹ Công ty được thành lập năm 1966 bởi Paul và Jim Van Doren cùng đối tác là Gordon Lee và Serge Delia. Thương hiệu nổi tiếng toàn cầu và được xem là biểu tượng gắn liền với phong cách trượt ván đường phố. Ban đầu là một doanh nghiệp sản xuất giày và bán trực tiếp cho công chúng. Cái tên Vans đã sống qua gần 1 thế kỷ và vượt xa hơn trên toàn thế giới. Cho đến nay, Vans đã vươn mình thành thương hiệu được săn đón hàng đầu.', 1),
(26, 'catalog/manufacturers/c3405549c988a8753af89a0bd990671d.png', 20, 0, 0, 3, 1, '2009-01-31 01:55:14', '2022-08-20 14:06:59', 'Christian Louboutin', '<p>Vans là một thương hiệu sản xuất giày, thời trang và phụ kiện nổi tiếng của Mỹ Công ty được thành lập năm 1966 bởi Paul và Jim Van Doren cùng đối tác là Gordon Lee và Serge Delia. Thương hiệu nổi tiếng toàn cầu và được xem là biểu tượng gắn liền với phong cách trượt ván đường phố. Ban đầu là một doanh nghiệp sản xuất giày và bán trực tiếp cho công chúng. Cái tên Vans đã sống qua gần 1 thế kỷ và vượt xa hơn trên toàn thế giới. Cho đến nay, Vans đã vươn mình thành thương hiệu được săn đón hàng đầu.<br></p>', 0),
(27, 'catalog/manufacturers/7644beca58dd3dabf36696a4931c18bf.png', 20, 0, 0, 1, 1, '2009-01-31 01:55:34', '2022-08-19 21:20:26', 'Valentino', '<p>https://en.wikipedia.org/wiki/2G</p><p>https://bkaii.com.vn/tin-tuc/306-su-khac-biet-giua-cac-loai-mang-di-dong-gsm-3g-4g-5g</p><p><br></p><p>Trước tiên ta cùng tìm hiểu về mạng 2G:</p><p><br></p><p>Đây chính là thế hệ mạng di động thứ 2 với tên gọi đầy đủ là hệ thống thông tin di động toàn cầu. Mạng 2G có tên tiếng anh là Global System for Mobile Communications hay còn gọi là GSM. Mạng 2G có khả năng phủ sóng rộng khắp, làm cho những chiếc điện thoại có thể được sử dụng ở nhiều nơi trên thế giới. GSM gồm nhiều các trạm thu phát sóng để những điện thoại di động có thể kết nối mạng qua việc tìm kiếm các trạm thu phát gần nhất.</p><p><br></p><p>Mạng 2G chia làm 2 nhánh chính: nền TDMA và CDMA và nhiều dạng kết nối tùy theo yêu cầu sử dụng. Các chuẩn thương mại chính: D-AMPS, GSM/GPRS/EDGE, cdmaOne.</p><p><br></p><p>Khi mạng 2G xuất hiện, chất lượng cuốc gọi được cải thiện đáng kể, tín hiệu và tốc độ cũng tốt hơn rất nhiều so với thế hệ trước đó. Thời gian và chi phí được tiết kiệm khi mã hóa dữ liệu theo dạng kĩ thuật số. Những thiết bị được thiết kế nhỏ gọn và nhẹ hơn, ngoài ra chúng còn có thể thực hiện tin nhắn dạng SMS.</p><p><br></p><p>Những modem truyền thông trong công nghiệp như F2103 cũng sử dụng công nghệ mạng 2G này để thực hiện truyền tải dữ liệu. Nói chung mạng 2G có những tác động khá lớn tới ngành thông tin liên lạc và truyền tải dữ liệu.</p>', 0),
(28, 'catalog/products/accessories/4fc562a640593ac58226a817f88ca25d.jpg', 69, 0, 0, 1, 1, '2009-02-02 13:11:12', '2022-08-19 21:13:30', 'Lót giày', '<p><br></p>', 0),
(29, 'catalog/products/accessories/8429e5ac8d7611e6cf9817eda061fd98.jpg', 69, 0, 0, 1, 1, '2009-02-02 13:11:37', '2022-10-02 21:37:18', 'Chai tẩy rửa', '<p><span style=\"color: rgb(80, 80, 80); font-family: Arial, Helvetica, sans-serif; font-size: 15px; text-align: justify;\">Để đôi giày luôn trắng sáng, sạch sẽ giúp bạn tự tin bước xuống phố, nước vệ sinh giày là sản phẩm hữu hiệu dành cho bạn.</span></p><p style=\"box-sizing: inherit; color: rgb(80, 80, 80); font-family: Arial, Helvetica, sans-serif; font-size: 15px; text-align: justify;\"><span style=\"box-sizing: inherit;\">Một số lợi ích khi sử dụng chất tẩy trắng giày mà ít người biết, có thể kể đến như:</span></p><ul style=\"box-sizing: inherit; color: rgb(80, 80, 80); font-family: Arial, Helvetica, sans-serif; font-size: 15px; text-align: justify;\"><li aria-level=\"1\" style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit;\">Giúp đôi giày của bạn luôn sạch sẽ, bền đẹp, khả năng chống bám bụi cực tốt.</span></li><li aria-level=\"1\" style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit;\">Thời gian vệ sinh giày nhanh gọn hơn so với các phương pháp truyền thống.</span></li><li aria-level=\"1\" style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit;\">Phù hợp với nhiều kiểu giày khác nhau, giữ được dáng giày, không làm ảnh hưởng đến cấu trúc giày, tăng tuổi thọ cho sản phẩm.</span></li><li aria-level=\"1\" style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit;\">Khả năng tẩy sạch hiệu quả, có thể xử lý những vết bẩn “cứng đầu” bám trên giày.</span></li><li aria-level=\"1\" style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit;\">Thao tác làm sạch đơn giản, nhanh gọn, chỉ cần đọc hướng dẫn sử dụng có thể thực hiện được dễ dàng.</span></li><li aria-level=\"1\" style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit;\">Chất tẩy trắng có mùi hương tự nhiên, không nồng, hắc, không gây bết dính và đặc biệt đảm bảo sức khỏe cho người dùng, an toàn với da tay.</span></li><li aria-level=\"1\" style=\"box-sizing: inherit;\"><span style=\"box-sizing: inherit;\">Dễ dàng tìm mua sản phẩm tại các cửa hàng giày dép, các trung tâm thương mại, cửa hàng tạp hóa,… với mức giá phải chăng.</span></li></ul><p><br></p>', 0),
(30, 'catalog/products/accessories/bd44132b70b9f9abf406179c5e2fd87c.jpg', 69, 0, 0, 1, 1, '2009-02-02 13:11:59', '2022-08-19 21:14:26', 'Hộp đựng giày mica', '<p><br></p>', 0),
(46, 'catalog/products/accessories/2f9613d5d690b297f626ff38dca85361.jpg', 69, 0, 0, 0, 1, '2010-09-24 18:29:31', '2022-10-02 21:15:37', 'Dây giày', '<p><span style=\"-webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; font-weight: bolder; color: rgb(104, 104, 104); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; font-size: 16px;\">Dây giày</span><span style=\"color: rgb(104, 104, 104); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; font-size: 16px;\">&nbsp;chắc chắn là một phần phụ kiện không thể thiếu với mỗi sneakerhead, không chỉ giúp chủ nhân của đôi sneaker hoàn thiện về mặt thẩm mỹ. Bên cạnh đó, dây giày cũng là cách để những người yêu giày thể hiện phong cách của mình.</span><br></p>', 0),
(69, 'catalog/products/accessories/bd44132b70b9f9abf406179c5e2fd87c.jpg', 0, 1, 0, 4, 1, '2015-06-14 04:59:18', '2022-08-25 09:23:28', 'Phụ Kiện', '<p>Our products have some advantages such as durability and reliability. </p>', 0),
(70, 'catalog/manufacturers/229b3dd4572ccce777ba9ca6eb209e99.png', 0, 1, 0, 1, 1, '2016-02-23 13:58:14', '2022-10-07 03:04:56', 'Balenciaga', '<p><span style=\"color: rgb(0, 0, 0); font-family: \" elle=\"\" gabor=\"\" std\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Thương hiệu Balenciaga</span><span style=\"color: rgb(0, 0, 0); font-family: \" elle=\"\" gabor=\"\" std\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">&nbsp;được thành lập bởi Cristobal&nbsp;Balenciaga. Trong giai đoạn đầu mới thành lập,&nbsp;Balenciaga được giới quý tộc và hoàng gia Tây Ban Nha ưa chuộng bởi những mẫu thiết kế sang trọng, quý phái. Tuy nhiên, vào giai đoạn nội chiến Tây Ban Nha, hãng buộc phải tạm ngưng hoạt động và chuyển đến Paris, Pháp. Năm 1937, bộ sưu tập của hãng trình diễn tại đại lộ Geogre V đã giúp tên tuổi của hãng được khẳng định.&nbsp;Bộ sưu tập mang ảnh hưởng của thời kỳ Phục hưng Tây Ban Nha với áo choàng Infanta lấy cảm hứng từ trang phục công chúa Tây Ban Nha. Năm 1938, Balenciaga thiết kế váy dành riêng cho nữ công tước xứ Westminster. Báo chí không ngừng ca ngợi tính cách mạng trong những thiết kế của Balenciaga khi ông không ngừng biến tấu với vòng eo lúc nâng lên khi thả xuống, duyên dáng và tự do, tay áo khi phồng khi cúp và quyến rũ với đăng ten. Năm 1944, Balenciaga tạo nên cơn sốt khắp châu Âu khi tung ra thiết kế tay áo Kimono. Năm 1955, thương hiệu ra mắt làng thời trang thế giới chiếc váy Tunic mà sau này được phát triển thành chiếc áo dài thắt ngang eo vào năm 1957. Những tác phẩm thời trang của Balenciaga được cho là kiệt tác của ngành thời trang haute couture, avant garde ở thập niên 50, 60.</span><br></p>', 1),
(71, 'catalog/manufacturers/05d16c0b32851d349193c2b9dcf8b5ae.jpg', 83, 1, 0, 0, 1, '2016-02-23 13:58:39', '2024-02-16 22:04:08', 'Nike', '<p>Nike là nhà cung cấp toàn cầu về giày, quần áo và dụng cụ thể thao số một thế giới. Được thành lập vào ngày 25 tháng 1 năm 1964 với tên Blue Ribbon Sports bởi Bill Bowerman và Phil Knight, sau đó chính thức có tên gọi là Nike vào ngày 30 tháng 5 năm 1971<br></p>', 1),
(72, 'catalog/manufacturers/bad8028cc57da7c4f867effeae62281a.png', 0, 1, 0, 2, 1, '2016-02-23 13:59:01', '2022-08-20 14:06:29', 'Adidas', '<p>Adidas là một công ty đa quốc gia đến từ Đức, chuyên sản xuất giày dép, quần áo và phụ kiện. Tiền thân của công ty là Gebruder Dassler Schuhfabrik, được thành lập vào năm 1924 bởi anh em nhà Dassler là Adi Dassler và Rudolf.</p><p>Ban đầu, thương hiệu đã đạt được thành công và lợi nhuận lớn. Tuy nhiên, sau Thế chiến thứ hai, do sự khác biệt, Rudolf tách ra để thành lập Công ty Ruda, sau đó được đổi tên thành Puma. Đồng thời, Adi Dassler tiếp tục điều hành công ty cũ, đặt tên là Adidas từ năm 1949.</p>', 1),
(73, 'catalog/manufacturers/e1e26b28d13abd9e3205a0590334e6b5.png', 20, 0, 0, 100, 1, '2016-02-23 14:12:20', '2022-08-19 21:29:18', 'Charles & Keith', '<p><br></p>', 0),
(74, 'catalog/products/accessories/1f1d5db09c3196e090a04c265e61eab8.jpeg', 69, 0, 0, 0, 1, '2017-02-17 15:06:36', '2022-08-19 21:25:43', 'Xịt khử mùi', '<p>We always stay in touch with the latest fashion tendencies and hi-tech achievements. </p>', 0),
(75, 'catalog/manufacturers/12aa9189061ad1f9650e56a1902e2a74.jpg', 20, 0, 0, 2, 1, '2021-04-20 21:49:29', '2022-08-19 21:21:27', 'Alexander McQueen', '<p>https://en.wikipedia.org/wiki/3G</p><p>https://bkaii.com.vn/tin-tuc/306-su-khac-biet-giua-cac-loai-mang-di-dong-gsm-3g-4g-5g<br></p><p>Mạng 3G</p><p><br></p><p>Thế hệ thứ 3 của chuẩn công nghệ điện thoại di động chính là mạng 3G Third-generation technology, cho phép truyền cả dữ liệu thoại như nghe gọi, nhắn tin và dữ liệu ngoài thoại như gửi mail, tải dữ liệu, hình ảnh. Nhờ có 3G ta có thể truy cập Internet cho cả thuê bao cố định hay di chuyển ở các tốc độ khác nhau. Đa số các smart phone hiện nay đều hỗ trợ công nghệ 3G. Hiện nay công nghệ 3G được xây dựng với 4 chuẩn chính: W-CDMA, CDMA2000, TD-CDMA, TD-SCDMA.</p><p><br></p><p>Mạng 3G cải thiện chất lượng cuộc gọi, tín hiệu, tốc độ so với 2G. Ta có thể truy cập Internet tốc độ cao ngay khi đang di chuyển, truy cập thế giới nội dung đa phương tiện: nhạc, phim, hình ảnh chất lượng cao. Người dùng có thể trò chuyện mọi nơi với chi phí rẻ hơn rất nhiều qua các ứng dụng hỗ trợ như: zalo, Viber, Line,…</p>', 0),
(76, 'catalog/manufacturers/37b63c8ae4a8ea460f5a886e2df7755a.jpg', 20, 1, 0, 4, 1, '2021-04-20 21:52:45', '2022-10-07 03:01:45', 'Fila', '<p>https://en.wikipedia.org/wiki/5G</p><p><br></p><p>Mạng 5G</p><p>Giống như những gì chúng ta hình dung, 5G nhanh hơn 4G. Hiện tại, mạng 5G mới được lên kế hoạch hoạt động trong dải tần số cao của băng tần không dây – nó nằm giữa 30 GHz và 300 GHz, hay còn được gọi là băng tần bước sóng milimet. Đối với các thiết bị di động, 5G sẽ giúp sửa chữa rất nhiều vấn đề của 4G và các công nghệ không dây hiện tại. Nó sẽ được thiết kế để hỗ trợ đồng thời nhiều người dùng và thiết bị hơn (theo thông số kỹ thuật ITU mỗi cell 5G sẽ hỗ trợ cho 1 triệu thiết bị trên diện tích 1 km2), với tốc độ cao hơn cả 4G. Việc tốc độ dữ liệu của bạn bị chậm đi khi đang ở một sự kiện đông người sẽ chỉ còn là quá khứ.</p><p><br></p><p>Tuy vậy 5G vẫn còn là một khái niệm khá trìu tượng với nước ta. Để 5G có thể trở nên phổ biến phát mất nhiều thời gian nữa.</p>', 1),
(77, 'catalog/manufacturers/2643fb2d4494b15f2407621bb66b370e.png', 71, 1, 0, 0, 1, '2022-08-19 13:23:55', '2024-02-16 22:06:49', 'Converse', '<p>Converse là thương hiệu ra đời từ năm 1908 tại Mỹ, nổi tiếng với 4 dòng sản phẩm kinh điển: Chuck Taylor All Star, Star Chevron, Jack Purcell và One Star. Với thiết kế năng động, khỏe khoắn kết hợp với nhiều loại chất liệu đa dạng đã giúp cho Converse ghi điểm với giới trẻ trên toàn thế giới. Ngoài các thiết kế về giày, Converse còn sản xuất các sản phẩm thời trang như đồng hồ, áo thun, đồ Jean, túi xách,... được nhiều tín đồ thời trang tin dùng dựa vào các thiết kế tinh tế khó lẫn vào bất kỳ thương hiêu nào trên thị trường.<br></p>', 1),
(78, 'catalog/manufacturers/21c9a21e9e907c18e8556b09f501af4a.png', 0, 1, 0, 0, 1, '2022-08-19 13:26:54', '2022-10-07 03:03:02', 'New balance', '<p>New Balance Athletic Shoe, Inc (NB), còn được biết với tên New Balance, là một công ty Mỹ sản xuất giày có trụ sở tại Brighton khu phố của Boston, Massachusetts. Công ty được thành lập vào năm 1906 với tên \"New Balance Arch Support Company\" và là một trong những nhà sản xuất giày dép thể thao lớn của thế giới.<br></p>', 1),
(79, 'catalog/manufacturers/7a67baea4058bb0aacc73b77fc53835f.png', 0, 0, 0, 0, 1, '2022-08-19 13:30:02', '2022-10-07 03:05:33', 'Reebok', '<p>Reebok tiền thân là một nhánh con của công ty mẹ J.W.Foster &amp; Sons được thành lập năm 1895 ở Anh. Ra đời với một niềm khát khao của một ông bố muốn làm ra đôi giày chạy bộ riêng để các con trai có thể sử dụng khi thi đấu . Chỉ đến năm 1985 , công ty mới được đổi tên thành Reebok và được sử dụng cho đến tận bây giờ.<br></p>', 1),
(80, 'catalog/manufacturers/4f9da051c7a5fe0ad70e42f5968c7cc0.jpg', 0, 1, 0, 0, 1, '2022-08-19 13:30:20', '2022-08-20 14:01:24', 'Puma', '<p>Puma SE (thương hiệu chính thức là PUMA) là một công ty đa quốc gia lớn của Đức chuyên sản xuất giày và các dụng cụ thể thao khác có trụ sở tại Herzogenaurach, Bavaria, Đức. Công ty được thành lập năm 1924 bởi Adolf và Rudolf Dassler với tên gọi ban đầu Gebrüder Dassler Schuhfabrik<br></p>', 1),
(81, 'catalog/manufacturers/33c6bc10b4a54c0db7272a63c99d6bc9.png', 0, 1, 0, 0, 1, '2022-08-19 13:30:40', '2022-08-20 14:01:52', 'Asics', '<p>Tiền thân của Asics là Onitsuka Tiger, được thành lập vào năm 1949 tại Kobe, Nhật Bản bởi cựu quân nhân Kihachiro Onitsuka. Trong những năm đầu kinh doanh, Onitsuka tập trung vào thiết kế và sản xuất giày bóng rổ và giày bóng đá cho thị trường Nhật Bản<br></p>', 1),
(82, 'catalog/manufacturers/7cc7b77b8f284d1db30bbf216460c413.png', 0, 1, 0, 0, 1, '2022-08-19 13:30:57', '2022-10-07 03:05:50', 'Supreme', '<p><b style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Supreme</b><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;là một thương hiệu thời trang của Mỹ khởi nguồn từ quần áo và ván trượt. Thương hiệu này được thành lập tại thành phố&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/New_York_(ti%E1%BB%83u_bang)\" title=\"New York (tiểu bang)\" style=\"color: rgb(6, 69, 173); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">New York</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;vào tháng 4 năm 1994. Sản phẩm chủ yếu của họ đa phần phục vụ cho giới trẻ với văn hóa skateboarding,&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/Hip_hop\" title=\"Hip hop\" style=\"color: rgb(6, 69, 173); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">hip hop</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;hoặc&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/Rock\" title=\"Rock\" style=\"color: rgb(6, 69, 173); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">rock</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. Ngoài sản xuất các loại quần áo và phụ kiện thời trang thì hãng này ban đầu còn nổi tiếng nhờ sản xuất ván trượt. Hiện nay các dòng sản phẩm của Supreme được bán rộng rãi trên toàn cầu.</span><br></p>', 1),
(83, 'catalog/Shoes/Converse/Giày Converse Run Star Hike Twisted Classic Foundational Canvas/5f5517ad49fbc070c2a72d8f_2b3761_b2165e6851b6438786984b13032eeed0_mv2_d_1701_1701_s_2.png', 20, 1, 0, 0, 1, '2022-08-20 14:12:20', '2022-08-20 14:12:20', 'Lacoste', '<p><b style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Lacoste S.A.</b><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;is a French company, founded in 1933 by&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Tennis\" title=\"Tennis\" style=\"color: rgb(6, 69, 173); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">tennis</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;player&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Ren%C3%A9_Lacoste\" title=\"René Lacoste\" style=\"color: rgb(6, 69, 173); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">René Lacoste</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, and entrepreneur André Gillier. It sells&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Clothing\" title=\"Clothing\" style=\"color: rgb(6, 69, 173); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">clothing</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Footwear\" title=\"Footwear\" style=\"color: rgb(6, 69, 173); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">footwear</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Sportswear_(fashion)\" title=\"Sportswear (fashion)\" style=\"color: rgb(6, 69, 173); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">sportswear</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Glasses\" title=\"Glasses\" style=\"color: rgb(6, 69, 173); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">eyewear</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Leather\" title=\"Leather\" style=\"color: rgb(6, 69, 173); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">leather goods</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Perfume\" title=\"Perfume\" style=\"color: rgb(6, 69, 173); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">perfume</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">,&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Towels\" class=\"mw-redirect\" title=\"Towels\" style=\"color: rgb(6, 69, 173); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">towels</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;and&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Watches\" class=\"mw-redirect\" title=\"Watches\" style=\"color: rgb(6, 69, 173); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">watches</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. The company can be recognised by its green alligator logo.</span><sup id=\"cite_ref-3\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\"><a href=\"https://en.wikipedia.org/wiki/Lacoste#cite_note-3\" style=\"color: rgb(6, 69, 173); background-image: none;\">[3]</a></sup><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;René Lacoste, the company\'s founder, was first given the nickname \"the Alligator\" by the American press after he bet his team captain an alligator-skin suitcase that he would win his match.</span><sup id=\"cite_ref-TechFeatured_4-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\"><a href=\"https://en.wikipedia.org/wiki/Lacoste#cite_note-TechFeatured-4\" style=\"color: rgb(6, 69, 173); background-image: none;\">[4]</a></sup><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;He was later redubbed \"the Crocodile\" by French fans because of his tenacity on the&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Tennis\" title=\"Tennis\" style=\"color: rgb(6, 69, 173); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">tennis</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;court.</span><sup id=\"cite_ref-tennishof_5-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\"><a href=\"https://en.wikipedia.org/wiki/Lacoste#cite_note-tennishof-5\" style=\"color: rgb(6, 69, 173); background-image: none;\">[5]</a></sup><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;In November 2012, Lacoste was bought outright by Swiss family-held group&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Maus_Fr%C3%A8res\" title=\"Maus Frères\" style=\"color: rgb(6, 69, 173); background-image: none; background-color: rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">Maus Frères</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">.</span><sup id=\"cite_ref-6\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\"><a href=\"https://en.wikipedia.org/wiki/Lacoste#cite_note-6\" style=\"color: rgb(6, 69, 173); background-image: none;\">[6]</a></sup><br></p>', 1),
(84, 'catalog/logos/cart.png', 69, 1, 0, 0, 1, '2024-02-16 22:15:20', '2024-02-17 15:51:30', 'test 1 ', '<p><br></p>', 1),
(85, 'catalog/logos/Apple_logo.png', 84, 0, 0, 0, 1, '2024-02-16 22:17:50', '2024-02-16 22:17:50', 'test 2', '<p><br></p>', 0),
(86, '', 85, 0, 0, 0, 1, '2024-02-16 22:20:06', '2024-02-16 22:20:06', 'test 3', '<p><br></p>', 0),
(87, '', 69, 0, 0, 0, 1, '2024-02-17 15:16:05', '2024-02-17 15:16:05', 'a1', '<p><br></p>', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_path`
--

DROP TABLE IF EXISTS `category_path`;
CREATE TABLE IF NOT EXISTS `category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category_path`
--

INSERT INTO `category_path` (`category_id`, `path_id`, `level`) VALUES
(20, 20, 3),
(20, 71, 2),
(20, 83, 1),
(24, 24, 1),
(24, 82, 0),
(26, 20, 3),
(26, 26, 4),
(26, 71, 2),
(26, 83, 1),
(27, 20, 3),
(27, 27, 4),
(27, 71, 2),
(27, 83, 1),
(28, 28, 1),
(28, 69, 0),
(29, 29, 1),
(29, 69, 0),
(30, 30, 1),
(30, 69, 0),
(46, 46, 1),
(46, 69, 0),
(69, 69, 0),
(70, 70, 0),
(71, 20, 3),
(71, 71, 5),
(71, 83, 4),
(72, 72, 0),
(73, 20, 3),
(73, 71, 2),
(73, 73, 4),
(73, 83, 1),
(74, 69, 0),
(74, 74, 1),
(75, 20, 3),
(75, 71, 2),
(75, 75, 4),
(75, 83, 1),
(76, 20, 3),
(76, 71, 2),
(76, 76, 4),
(76, 83, 1),
(77, 20, 3),
(77, 71, 5),
(77, 77, 6),
(77, 83, 4),
(78, 78, 0),
(79, 79, 0),
(80, 80, 0),
(81, 81, 0),
(82, 82, 0),
(83, 20, 3),
(83, 71, 2),
(83, 83, 4),
(84, 69, 0),
(84, 84, 1),
(85, 69, 0),
(85, 84, 1),
(85, 85, 2),
(86, 69, 0),
(86, 84, 1),
(86, 85, 2),
(86, 86, 3),
(87, 69, 0),
(87, 87, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `website` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `subject`, `message`, `date_added`, `date_modified`, `phone`, `date`, `address`, `website`) VALUES
(9, 'Lê Minh Họa', 'hoa@gmail.com', 'V/v chính sách khách hàng', 'Tôi có một vài điểm không đồng thuận về chính sách khách hàng.\r\nTôi có một vài điểm không đồng thuận về chính sách khách hàng.\r\nTôi có một vài điểm không đồng thuận về chính sách khách hàng.', '2020-07-05 11:45:21', '2020-07-11 18:11:22', NULL, NULL, NULL, NULL),
(10, 'Ví Văn Dụ', 'vidu@gmail.com', 'Khiếu nại về chất lượng sản phẩm', 'Tôi cực lực lên án cách bán hàng của các vị\r\nTôi cực lực lên án cách bán hàng của các vị\r\nTôi cực lực lên án cách bán hàng của các vị', '2020-07-11 18:17:31', '2020-07-11 18:34:18', '+(84)-0912247115', '2020-07-13 09:35:00', NULL, NULL),
(11, 'Khách Văn Hàng', 'hang@gmail.com', 'Khiếu nại về chất lượng sản phẩm', 'Tôi cực lực lên án\r\nTôi cực lực lên án\r\nTôi cực lực lên án\r\nTôi cực lực lên án', '2020-07-11 22:12:42', '2020-07-14 14:43:59', '0915147115', '2020-07-15 12:15:00', '285 Đội Cấn. Hà Nội', 'http://hang.org'),
(12, 'Bảo Phùng', 'bao123@gmail.com', 'Ý kiến cá nhân', 'Nhân viên giao hàng rất cáu gắt', '2023-01-11 05:00:03', '2023-01-11 05:00:03', '0123421235', '2003-01-01 04:59:00', '', ''),
(13, 'Tạ Tuấn Anh', 'tuananhgymmer@gmail.com', 'Ý kiến cá nhân', 'Đồ giao rất chậm', '2023-01-11 05:01:25', '2023-01-11 05:01:25', '0987512463', '2002-02-02 05:00:00', '', ''),
(14, 'Hà Văn Bình', 'binhha123@yahoo.com', 'Khiếu Nại', 'Nhân viên giao hàng không có tâm', '2023-01-11 05:02:50', '2023-01-11 05:02:50', '054789562', '2003-03-03 05:02:00', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `address` varchar(128) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `fullname`, `email`, `telephone`, `address`, `password`, `status`, `date_added`) VALUES
(1, 'Bình', 'binh@fpt.vn', '0979999999', '285 Doi Can, Ba Dinh, HaNoi', '$2y$10$T.kuGeuZQRLuWraL3zclZuHl67q8InDwn4tmzFJ/Tn4lCb2OqaK5G', 1, '2015-07-10 13:37:34'),
(3, 'Quảng', 'quang@bkav.com', '0915686868', '69 Quan Hoa Cầu Giấy Hà Nội', '$2y$10$yeJkGSXTPLQoBX6QqjPlteI9qE496Qkl0z7jsQK0PJUa/pf9kOtua', 1, '2016-03-02 10:55:52'),
(4, 'Đức', 'demo@project.com', '0968686868', 'Playku Gialai2', '$2y$10$P1kJFjMxDqMP0jRhkkXVPuDv8hGLEDLGxmLyaX39.QObjsl0usu9.', 1, '2016-03-06 23:14:33'),
(5, 'Linh', 'linh@gmail.com', '0915147115', 'Hanoi 2', '$2y$10$KcH17v0lydo.ak/7.fEOdO3kPAE1nlZubuhlM3ygN9WBdYRjJ2TAS', 1, '2020-07-03 15:20:20'),
(6, 'Tạ Tuấn Anh', '01689674504zx@gmail.com', '09123456785', '09123456785', '$2y$10$EPoRlvVVmm3kVv7ADaE.NuH6UypOqwYTehO7terPLYhTklFJ5jcT6', 1, '2022-08-18 14:20:57'),
(7, 'Jin', 'jin1234@gmail.com', '0587762066', 'Bồng Mạc - Mê Linh', '$2y$10$kWufIMlh8P0VajPXkuWna.A8N/0ICRnltxmnN6v1PBXpZsI0F6dt.', 1, '2022-10-15 13:34:58'),
(8, 'Kim Vân Anh', 'kimanh@gmail.com', '0999356485', 'Hà Nam', '$2y$10$uHGv73UxXw8Er.TuQEt./OjlleHJl.TtNrZZC2FaRuHCLmby7rgP2', 1, '2022-11-27 21:20:32'),
(9, 'Hà Văn Bình', 'binhhaYiGi@gmail.com', '0548762100', 'Nam Đinh', '$2y$10$5ltS/wRA3JD7KArQSMLLo.yWNZhLCffLtd8E1v11QEmSJ06B8uwDi', 1, '2023-01-11 04:55:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE IF NOT EXISTS `manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`, `featured`) VALUES
(5, 'Christian Louboutin', 'catalog/manufacturers/c3405549c988a8753af89a0bd990671d.png', 0, 1),
(6, 'Bita’s', 'catalog/manufacturers/palm_logo.jpg', 0, 0),
(7, 'Alexander McQueen', 'catalog/manufacturers/12aa9189061ad1f9650e56a1902e2a74.jpg', 0, 1),
(8, 'Vans', 'catalog/manufacturers/0d52016c7ec491849ffb7dd6213124e4.jpg', 0, 1),
(9, 'New balance', 'catalog/manufacturers/21c9a21e9e907c18e8556b09f501af4a.png', 0, 1),
(11, 'VINDS Shoes', '', 0, 0),
(13, 'Charles & Keith', 'catalog/manufacturers/e1e26b28d13abd9e3205a0590334e6b5.png', 0, 1),
(14, 'Balenciaga', 'catalog/manufacturers/229b3dd4572ccce777ba9ca6eb209e99.png', 0, 1),
(15, 'NIke', 'catalog/manufacturers/05d16c0b32851d349193c2b9dcf8b5ae.jpg', 0, 1),
(16, 'Converse', 'catalog/manufacturers/2643fb2d4494b15f2407621bb66b370e.png', 0, 1),
(17, 'Reebok', 'catalog/manufacturers/7a67baea4058bb0aacc73b77fc53835f.png', 0, 1),
(18, 'Biti’s', '', 0, 0),
(22, 'Giày Thượng Đình', '', 0, 0),
(23, 'Adidas', 'catalog/manufacturers/bad8028cc57da7c4f867effeae62281a.png', 0, 1),
(24, 'Fila', 'catalog/manufacturers/37b63c8ae4a8ea460f5a886e2df7755a.jpg', 0, 1),
(28, 'Kim Thành', '', 0, 0),
(29, 'MLB', '', 0, 0),
(30, 'Mizuno', '', 0, 0),
(31, 'Puma', 'catalog/manufacturers/4f9da051c7a5fe0ad70e42f5968c7cc0.jpg', 0, 1),
(32, 'Asics', 'catalog/manufacturers/33c6bc10b4a54c0db7272a63c99d6bc9.png', 0, 1),
(34, 'Common Projects', 'catalog/manufacturers/Vertu_7d69a_450x450.png', 0, 0),
(35, 'Valentino', 'catalog/manufacturers/7644beca58dd3dabf36696a4931c18bf.png', 0, 1),
(36, 'Vina Giầy', 'catalog/manufacturers/mobiado-logo.png', 0, 0),
(37, 'Supreme', 'catalog/manufacturers/7cc7b77b8f284d1db30bbf216460c413.png', 0, 1),
(46, 'Lacoste', 'catalog/Shoes/Converse/Giày Converse Run Star Hike Twisted Classic Foundational Canvas/5f5517ad49fbc070c2a72d8f_2b3761_b2165e6851b6438786984b13032eeed0_mv2_d_1701_1701_s_2.png', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fullname` varchar(32) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `email`, `telephone`, `fullname`, `address`, `comment`, `total`, `date_added`) VALUES
(23, 4, 'minhhoahuuvu@gmail.com', '043668866', 'Đức', '285 Doi Can', '', '601.0000', '2015-05-11 22:52:08'),
(25, 4, 'minhhoa2@gmail.com', '0968222222', 'Đức', 'Ngõ 285 Đội Cấn 1', '', '12020000.0000', '2015-06-16 04:16:17'),
(26, 4, 'minhhoa3@gmail.com', '0968333333', 'Đức', 'hà nội 3', '', '4020000.0000', '2015-06-16 04:24:58'),
(27, 4, 'minhhoa4@gmail.com', '0968444444', 'Đức', 'Ngõ 285 Đội Cấn 4', '', '16020000.0000', '2015-06-16 09:36:03'),
(28, 4, 'minhhoa5@gmail.com', '0968555555', 'Đức', 'Palo Alto CA 5', 'Some comment 5, Some comment 5, Some comment 5, Some comment 5\r\nSome comment 5, Some comment 5, Some comment 5, Some comment 5\r\nSome comment 5, Some comment 5, Some comment 5, Some comment 5', '16020000.0000', '2015-06-17 08:14:16'),
(29, 4, 'minhhoa6@gmail.com', '0968 666 666', 'Đức', 'Palo Alto CA 6', 'Some comment on order 6, Some comment on order 6, Some comment on order 6\r\nSome comment on order 6, Some comment on order 6, Some comment on order 6\r\nSome comment on order 6, Some comment on order 6, Some comment on order 6', '12020000.0000', '2015-06-17 09:17:52'),
(30, 4, 'minhhoa7@gmail.com', '0968777777', 'Đức', 'Address 7', 'Some comment on orrder 7 Some comment on orrder 7 Some comment on orrder 7\r\nSome comment on orrder 7 Some comment on orrder 7 Some comment on orrder 7\r\nSome comment on orrder 7 Some comment on orrder 7 Some comment on orrder 7', '14020000.0000', '2015-07-01 05:44:03'),
(31, 4, 'minhhoa8@gmail.com', '0968888888', 'Đức', '285 Doi Can Hanoi', 'I like these products', '6020000.0000', '2015-07-09 09:09:08'),
(32, 4, 'minhhoa9@gmail.com', '0968999999', 'Đức', '285 Doi Can 9', 'Fuck it offf', '14020000.0000', '2015-07-09 09:10:55'),
(33, 4, 'minhhoa10@gmail.com', '0968101010', 'Đức', '258 Doi Can 10', '', '4020000.0000', '2015-07-09 09:14:08'),
(34, 4, 'minhhoa10@gmail.com', '0968101010', 'Đức', '258 Doi Can 10', '', '4020000.0000', '2015-07-09 09:15:17'),
(35, 4, 'minhhoa12@gmail.com', '0968111111', 'Đức', '285 Doi Can', 'Don hang nay mang so bao danh 11', '34020000.0000', '2015-07-09 13:33:00'),
(36, 4, 'minhhoa13@gmail.com', '09681313133', 'Đức', '285 Doi Can 13', 'Fuck offf 13', '4020000.0000', '2015-07-09 13:41:13'),
(37, 1, 'minhhoa@gmail.com', '0968802828', 'minhhoa', '285 Doi Can, Ba Dinh, HaNoi', '', '12020000.0000', '2015-07-11 10:02:33'),
(38, 1, 'minhhoa@gmail.com', '0968802828', 'minhhoa', '285 Doi Can, Ba Dinh, HaNoi', '', '16020000.0000', '2015-07-11 10:02:56'),
(39, 1, 'minhhoa@gmail.com', '0968802828', 'minhhoa', '285 Doi Can, Ba Dinh, HaNoi', 'Some test comment from minhhoa', '6020000.0000', '2015-07-11 11:06:09'),
(40, 4, 'demo@project.com', '0968686868', 'Đức', 'Playku Gialai2', 'Đây là những sản phẩm công nghệ đắt tiền tôi yêu thích, quý công ty vui lòng vận chuyển cẩn thận và phải trực tiếp đến tay tôi.', '82720000.0000', '2016-12-30 09:29:24'),
(41, 0, 'tham@gmail.com', '09688028282', 'Thám', '285 Đội Cấn', 'Đây chỉ là một màn test', '13360000.0000', '2017-04-03 15:57:06'),
(42, 4, 'demo@project.com', '0968686868', 'Đức', 'Playku Gialai2', 'Hello 20170405', '10100000.0000', '2017-04-05 09:41:29'),
(43, 0, 'thang123@gmail.com', '0587762061', 'Nguyễn Anh Thắng', 'Hà Nội-Mê Linh', 'hàng xịn ', '3000000.0000', '2022-10-05 13:19:51'),
(44, 0, 'thang123@gmail.com', '0587762061', 'Nguyễn Anh Thắng', 'Hà Nội', 'giao hàng nhanh', '2397000.0000', '2022-10-06 03:29:15'),
(45, 0, 'thang123@gmail.com', '0587762061', 'Nguyễn Anh Thắng', 'Bồng Mạc - Mê Linh - Hà Nội', '', '116000.0000', '2022-10-06 03:31:43'),
(46, 0, 'thang123@gmail.com', '0587762061', 'Nguyễn Anh Thắng', 'Bồng Mạc - Mê Linh - Hà Nội', '', '1300000.0000', '2022-10-06 04:21:40'),
(47, 0, 'thang123@gmail.com', '0587762061', 'Nguyễn Anh Thắng', 'Bồng Mạc - Mê Linh', '', '1305000.0000', '2022-10-06 11:27:35'),
(48, 0, 'thang123@gmail.com', '0587762061', 'Nguyễn Anh Thắng', 'Bồng Mạc - Mê Linh - Hà Nội', '', '2625000.0000', '2022-10-06 11:46:06'),
(49, 0, 'thang12345@gmail.com', '0587762061', 'Nguyễn Anh Thắng', 'Bồng Mạc - Mê Linh', '', '12054000.0000', '2022-10-06 12:23:41'),
(50, 0, 'thang123@gmail.com', '0587762061', 'Nguyễn Anh Thắng', 'Bồng Mạc - Mê Linh - Hà Nội', '', '1820000.0000', '2022-10-06 12:28:26'),
(51, 0, 'thang12345@gmail.com', '0587762061', 'Nguyễn Anh Thắng', 'Bồng Mạc - Mê Linh', '', '5087600.0000', '2022-10-06 12:33:56'),
(52, 0, 'thang12345@gmail.com', '0587762061', 'Nguyễn Anh Thắng', 'Hà Nội-Mê Linh', '', '1337850.0000', '2022-10-06 12:38:05'),
(53, 0, 'thang123@gmail.com', '0587762061', 'Nguyễn Anh Thắng', 'Hà Nội', 'hàng ko tốt', '1602000.0000', '2022-10-10 14:04:36'),
(54, 0, 'lan@gmail.com', '0988575620', 'KIều Lan', 'Hà Nam', 'Gửi nhanh cho chị nhé', '9850000.0000', '2022-10-12 09:36:09'),
(55, 7, 'jin1234@gmail.com', '0587762066', 'Jin', 'Bồng Mạc - Mê Linh', '', '3275000.0000', '2022-10-15 13:57:32'),
(56, 7, 'jin1234@gmail.com', '0587762066', 'Jin', 'Bồng Mạc - Mê Linh', '', '2920000.0000', '2022-10-15 14:35:20'),
(57, 0, 'lam78@gmail.com', '0889751237', 'lâm phạm', 'hà tây - hà nội', 'chuyển hàng nhanh cho mình nhé', '3638225.0000', '2022-10-16 14:55:38'),
(58, 0, 'maithi@gmail.com', '0336678944', 'Mai Thi', 'Hà Nội-Mê Linh', 'Giày chị mua bên em lâu rồi vẫn thấy rất bền nên chị mua thêm lọ tẩy rửa cho đôi giày luôn mới', '741000.0000', '2022-11-13 11:07:57'),
(59, 0, 'jin1234@gmail.com', '0587762066', 'KIều Lan', 'Bồng Mạc - Mê Linh - Hà Nội', 'giao nhanh nhé', '9111375.0000', '2022-11-17 03:38:08'),
(60, 8, 'kimanh@gmail.com', '0999356485', 'Kim Vân Anh', 'Hà Nam', '', '8872500.0000', '2022-11-27 21:21:49'),
(61, 0, 'thang123@gmail.com', '0587762061', 'Nguyễn Anh Thắng', 'Bồng Mạc - Mê Linh - Hà Nội', 'Mình mua cho bạn bè', '7000000.0000', '2023-01-11 03:51:40'),
(62, 0, 'thang123@gmail.com', '0587762066', 'Nguyễn Anh Thắng', 'Bồng Mạc - Mê Linh - Hà Nội', 'Giao hàng nhanh cho mình nhé', '801000.0000', '2023-01-11 04:26:40'),
(63, 0, 'thang123@gmail.com', '0587762061', 'Nguyễn Anh Thắng', 'Hà Nội-Mê Linh', 'oki bạn', '1350000.0000', '2023-01-12 15:12:07'),
(64, 0, 'thang123@gmail.com', '0587762061', 'Nguyễn Anh Thắng', 'Hà Nội-Mê Linh', 'nothing', '1604750.0000', '2023-01-12 15:54:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `fk_order_details_to_order` (`order_id`),
  KEY `fk_order_details_to_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`) VALUES
(23, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000'),
(23, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000'),
(25, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(25, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(26, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(26, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(27, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(27, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(27, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(27, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(28, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(28, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(28, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(28, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(29, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(29, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(30, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(30, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(30, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(31, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(31, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(31, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(32, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(32, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(32, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(34, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(34, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(35, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(35, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(35, 43, 'MacBook', 'Product 16', 3, '10000000.0000', '30000000.0000'),
(36, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(36, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(37, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(37, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(38, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(38, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(38, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(38, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(39, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(39, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(39, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(40, 30, 'Pixel C', 'Product 3', 2, '11340000.0000', '22680000.0000'),
(40, 40, 'iPhone 3gs', '3GS', 2, '2020000.0000', '4040000.0000'),
(40, 41, 'iMac', 'iMac MK142ZP/A', 1, '26000000.0000', '26000000.0000'),
(40, 43, 'MacBook', 'Mac Old', 3, '10000000.0000', '30000000.0000'),
(41, 30, 'Pixel C', 'Product 3', 1, '11340000.0000', '11340000.0000'),
(41, 40, 'iPhone 3gs', '3GS', 1, '2020000.0000', '2020000.0000'),
(42, 40, 'iPhone 3gs', '3GS', 5, '2020000.0000', '10100000.0000'),
(43, 34, 'GIÀY THỂ THAO ASICS SKY COURT DÀNH CHO NAM GIỚI - MÀU TRẮNG', '', 2, '1500000.0000', '3000000.0000'),
(44, 30, 'GIÀY THỂ THAO LACOSTE MISANO STRAP 120 CHO NAM - BẢN MÀU TRẮNG CÓ HỌA TIẾT', 'Product 3', 3, '730000.0000', '2190000.0000'),
(44, 74, 'Dây Giày Thể Thao Bằng Len Kiểu Dáng Dẹt Màu Xanh Đậm - Bản V2', '', 5, '41400.0000', '207000.0000'),
(45, 73, 'Dây Giày Thể Thao Kiểu Dáng Dẹt MWC- 9006 ( Chất Liệu Len Màu Trắng)', '', 2, '58000.0000', '116000.0000'),
(46, 30, 'GIÀY THỂ THAO LACOSTE MISANO STRAP 120 CHO NAM - BẢN MÀU TRẮNG CÓ HỌA TIẾT', 'Product 3', 2, '650000.0000', '1300000.0000'),
(47, 32, 'Giày ADIDAS DURAMO SL 2.0 NAM - ĐEN CAM', '', 2, '652500.0000', '1305000.0000'),
(48, 69, 'GIÀY ASICS GLIDERIDE 2 Cho Nam - Màu Xanh (Bản Giới Hạn)', '', 3, '875000.0000', '2625000.0000'),
(49, 71, 'Giày Vans Authentic Cổ Thấp Đế Dẻo - Bản Màu Đen Đế Trắng & Viền May Chỉ Trắng', '', 7, '1722000.0000', '12054000.0000'),
(50, 31, 'GIÀY THỂ THAO PUMA SMASH CAT L CỔ THẤP ĐẾ MỎNG & MỀM - BẢN FULL MÀU TRẮNG', 'SMASH CAT L', 4, '455000.0000', '1820000.0000'),
(51, 90, 'Giày Đá Bóng Sân Cỏ Nhân Tạo NIKE TIEMPO LEGEND 9 ACADEMY TF Cổ Thấp Đế Mỏng & Dẻo - Bản Full Trắng Sữa & Sọc Đỏ Cam', '', 7, '726800.0000', '5087600.0000'),
(52, 43, 'GIÀY THỂ THAO NIKE AIR ZOOM PEGASUS 39 CỔ THẤP MÀU ĐEN ĐẾ TRẮNG (DÀY)', '', 3, '445950.0000', '1337850.0000'),
(53, 32, 'Giày ADIDAS DURAMO SL 2.0 NAM - ĐEN CAM', '', 2, '801000.0000', '1602000.0000'),
(54, 46, 'GIÀY PUMA RALPH SAMPSON L.O CỔ THẤP ĐẾ DÀY & CỨNG - MÀU TRẮNG - SỌC ĐỎ CAM', 'RALPH SAMPSON LO', 10, '685000.0000', '6850000.0000'),
(54, 47, 'GIÀY NEW BALANCE VIAZA CỔ THẤP ĐẾ CỨNG - BẢN MÀU ĐEN PHA XANH TÍM (ĐẾ TRẮNG)', 'NEW BALANCE VIAZA', 6, '500000.0000', '3000000.0000'),
(55, 30, 'GIÀY THỂ THAO LACOSTE MISANO STRAP 120 CHO NAM - BẢN MÀU TRẮNG CÓ HỌA TIẾT', 'Product 3', 5, '655000.0000', '3275000.0000'),
(56, 30, 'GIÀY THỂ THAO LACOSTE MISANO STRAP 120 CHO NAM - BẢN MÀU TRẮNG CÓ HỌA TIẾT', 'Product 3', 4, '730000.0000', '2920000.0000'),
(57, 36, 'Giày Converse Chuck Taylor All Star Classic Low Top White Cổ Thấp - Màu Trắng Viền Đỏ', 'Chuck Taylor All Star', 1, '898225.0000', '898225.0000'),
(57, 46, 'GIÀY PUMA RALPH SAMPSON L.O CỔ THẤP ĐẾ DÀY & CỨNG - MÀU TRẮNG - SỌC ĐỎ CAM', 'RALPH SAMPSON LO', 4, '685000.0000', '2740000.0000'),
(58, 81, 'Lọ Tẩy Rửa Giày Thể Thao Cho Nam FOAM-TXT Tặng Kèm Thêm Bàn Chảy Chuyên Dụng Để Kị Giày', '', 10, '74100.0000', '741000.0000'),
(59, 28, 'GIÀY THỂ THAO CHO GENZ NIKE RENEW RIDE 3 CỔ THẤP ĐẾ CỨNG & CAO - BẢN MÀU ĐEN XANH, ĐẾ TRẮNG & VIỀN XANH LÁ CÂY', '', 13, '700875.0000', '9111375.0000'),
(60, 28, 'GIÀY THỂ THAO CHO GENZ NIKE RENEW RIDE 3 CỔ THẤP ĐẾ CỨNG & CAO - BẢN MÀU ĐEN XANH, ĐẾ TRẮNG & VIỀN XANH LÁ CÂY', '', 13, '682500.0000', '8872500.0000'),
(61, 71, 'Giày Vans Authentic Cổ Thấp Đế Dẻo - Bản Màu Đen Đế Trắng & Viền May Chỉ Trắng', '', 4, '1750000.0000', '7000000.0000'),
(62, 33, 'GIÀY NEW BALANCE 373 CỔ THẤP ĐẾ MỎNG VIỀN TRẮNG - MÀU XANH NAVY', ' NEW BALANCE 373', 3, '102000.0000', '306000.0000'),
(62, 47, 'GIÀY NEW BALANCE VIAZA CỔ THẤP ĐẾ CỨNG - BẢN MÀU ĐEN PHA XANH TÍM (ĐẾ TRẮNG)', 'NEW BALANCE VIAZA', 1, '495000.0000', '495000.0000'),
(63, 28, 'GIÀY THỂ THAO CHO GENZ NIKE RENEW RIDE 3 CỔ THẤP ĐẾ CỨNG & CAO - BẢN MÀU ĐEN XANH, ĐẾ TRẮNG & VIỀN XANH LÁ CÂY', '', 2, '675000.0000', '1350000.0000'),
(64, 32, 'Giày ADIDAS DURAMO SL 2.0 NAM - ĐEN CAM', '', 2, '749250.0000', '1498500.0000'),
(64, 33, 'GIÀY NEW BALANCE 373 CỔ THẤP ĐẾ MỎNG VIỀN TRẮNG - MÀU XANH NAVY', ' NEW BALANCE 373', 1, '106250.0000', '106250.0000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `description` text DEFAULT NULL,
  `tag` text DEFAULT NULL,
  `best_seller` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `sale` int(11) NOT NULL,
  `new` tinyint(1) NOT NULL,
  `size_or_nosize` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_product_to_manufacturer` (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `model`, `image`, `manufacturer_id`, `sort_order`, `status`, `date_added`, `date_modified`, `name`, `color`, `description`, `tag`, `best_seller`, `featured`, `sale`, `new`, `size_or_nosize`) VALUES
(28, '', 'catalog/products/Nike/ae32798bdce5ddfaf622e1fb146560a9.jpg', 15, 0, 1, '2009-02-03 16:06:50', '2023-01-12 14:45:59', 'GIÀY THỂ THAO CHO GENZ NIKE RENEW RIDE 3 CỔ THẤP ĐẾ CỨNG & CAO - BẢN MÀU ĐEN XANH, ĐẾ TRẮNG & VIỀN XANH LÁ CÂY', '#000000', '<p>Giày Nike Renew Ride 3 được nâng cấp khá nhiều từ phiên bản Nike Renew Ride 2 với thiết kế đẹp, hiện đại hơn. Ngoài ra phần Upper và bộ đế Renew với nhiều cải tiến mới giúp đôi giày cực kỳ êm ái.<br></p><ul>\r\n</ul>\r\n', '', 1, 1, 25, 0, 1),
(29, '', 'catalog/Shoes/Lacoste/GIÀY LACOSTE L004 722 NAM - TRẮNG XANH/giay-lacoste-l004-722-nam-trang-xanh-01.jpg', 46, 0, 1, '2009-02-03 16:42:17', '2022-09-25 09:56:02', 'GIÀY THỂ THAO LACOSTE L004 722 CHO NAM GIỚI -  MÀU TRẮNG ', '', 'Giày Lacoste L004 722 là mẫu giày mới nhất của Lacoste trong năm 2022. Lacoste L004 722 có thiết kế cổ điển truyền thống của Lacoste nhưng lại có hơi hướng hiện đại rất hấp dẫn', '', 0, 0, 10, 1, 1),
(30, 'Product 3', 'catalog/Shoes/Lacoste/GIÀY LACOSTE MISANO STRAP 120 NAM - TRẮNG/giay-lacoste-misano-strap-120-nam-trang-01.jpg', 46, 0, 1, '2009-02-03 16:59:00', '2022-10-06 11:18:44', 'GIÀY THỂ THAO LACOSTE MISANO STRAP 120 CHO NAM - BẢN MÀU TRẮNG CÓ HỌA TIẾT', '', 'Giày Lacoste Misano Strap 120 được thiết kế với phong cách cổ điển sang trọng đặc trưng của thương hiệu Lacoste. Thay vì dây buộc thì Lacoste Misano Strap 120 sử dụng quai dán rất đẹp và độc đáo.&nbsp;', '', 1, 1, 0, 0, 1),
(31, 'SMASH CAT L', 'catalog/Shoes/Puma/GIÀY PUMA SMASH CAT L NAM - TRẮNG NAVY/giay-puma-smash-cat-l-nam-trang-navy-02.jpg', 31, 0, 1, '2009-02-03 17:00:10', '2022-10-06 22:04:41', 'GIÀY THỂ THAO PUMA SMASH CAT L CỔ THẤP ĐẾ MỎNG & MỀM - BẢN FULL MÀU TRẮNG', '', 'Giày Puma Smash Cat L mẫu giày có thiết kế đơn giản mà đẹp mắt. Logo hình con báo đặc trưng của Puma được thêu tỉ mỉ trên thân giày tạo nét nổi bật khó cưỡng lại.', '', 1, 0, 0, 0, 1),
(32, '', 'catalog/products/Adidas/12305ff594dd06d700d78823357a14c2.jpg', 23, 0, 1, '2009-02-03 17:07:26', '2023-01-10 23:09:25', 'Giày ADIDAS DURAMO SL 2.0 NAM - ĐEN CAM', '#565252', '<h5>Giày adidas Duramo SL 2.0 là phiên bản nâng cấp của mẫu adidas Duramo SL được rất nhiều người yêu thích.Với công nghệ đế LightMotion giúp bạn luôn di chuyển thật thoải mái để nâng cao sức khỏe.</h5><h5>Với adidas Duramo SL 2.0 bạn có thể sử dụng trong mọi hoạt động hàng ngày từ chạy bộ, tập gym, đi chơi, đi làm đều rất tiện lợi. Đặc biệt với mức giá vô cùng hợp lý, đây là mẫu giày adidas cực HOT trong năm nay.</h5><div><br></div>', '', 1, 1, 10, 1, 1),
(33, ' NEW BALANCE 373', 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE 373 NAM - XANH NAVY/giay-new-balance-373-nam-xanh-navy-01.jpg', 9, 0, 1, '2009-02-03 17:08:31', '2023-01-11 04:18:57', 'GIÀY NEW BALANCE 373 CỔ THẤP ĐẾ MỎNG VIỀN TRẮNG - MÀU XANH NAVY', '#4a4653', '<p>New Balance Athletic Shoe, Inc (NB), còn được biết với tên New Balance, là một công ty Mỹ sản xuất giày có trụ sở tại Brighton khu phố của Boston, Massachusetts. Công ty được thành lập vào năm 1906 với tên \"New Balance Arch Support Company\" và là một trong những nhà sản xuất giày dép thể thao lớn của thế giới.<br></p>', '', 1, 1, 15, 1, 1),
(34, '', 'catalog/Shoes/Asics/GIÀY ASICS SKY COURT NAM - TRẮNG ĐỎ/giay-asics-sky-court-nam-trang-do-03.jpg', 32, 0, 1, '2009-02-03 18:07:54', '2022-09-24 23:36:16', 'GIÀY THỂ THAO ASICS SKY COURT DÀNH CHO NAM GIỚI - MÀU TRẮNG', '', '<h5>Giày Puma Ralph Samspon Lo là một trong mẫu giày Classic huyền thoại của Puma. Được làm bằng da mềm mại, cao cấp, sang trọng, đế giày cực kỳ bền đẹp. Đây là một mẫu giày tuyệt vời dành để đi học, đi làm, đi chơi...</h5>', '', 1, 0, 0, 1, 1),
(36, 'Chuck Taylor All Star', 'catalog/Shoes/Converse/Giày Converse Chuck Taylor All Star Classic Low Top White/0de626d33b2ba9bb3e687425c51a1cc0.jpg', 16, 0, 1, '2009-02-03 18:09:19', '2022-09-25 09:45:08', 'Giày Converse Chuck Taylor All Star Classic Low Top White Cổ Thấp - Màu Trắng Viền Đỏ', '', '<div><span style=\"font-weight: 700;\">Giày Converse Chuck Taylor All Star Classic Low Top White với thiết kế trẻ trung và năng động, kết hợp với chất liệu bền đẹp, mềm mại, mang lại cảm giác êm ái trên từng bước chân, giúp người mang tự tin thể hiện phong cách cá nhân. Converse sử dụng chất liệu vải canvas dày dặn, bền đẹp may sản phẩm, đường chỉ may tinh tế, tỉ mỉ. Lót giày êm, hỗ trợ di chuyển, thoải mái khi mang. Đế giày có rãnh chống trơn trượt đảm bảo sự an toàn tuyệt đối cho bạn trong suốt quá trình di chuyển.&nbsp;</span></div><div><br></div>', '', 1, 1, 5, 0, 1),
(40, '3GS', 'catalog/Shoes/Adidas/GIÀY ADIDAS GLX 5M NAM - TRẮNG/giay-adidas-glx-5-nam-trang-01.jpg', 23, 0, 1, '2009-02-03 21:07:12', '2022-09-23 12:52:00', 'GIÀY ADIDAS GLX 5M NAM - TRẮNG', '', '<p class=\"intro\">\r\n	Giày adidas GLX 5M có thiết kế thể thao đẹp mắt, đây là mẫu giày có thể sử dụng trong mọi hoạt động hàng ngày.</p><p class=\"intro\"><br></p>\r\n', '', 1, 1, 30, 1, 1),
(41, 'Ultra Vip Luxary', 'catalog/products/Adidas/dcddf9d1b8e86e2a042b630e66cc9fee.jpg', 23, 0, 1, '2009-02-03 21:07:26', '2023-01-12 12:41:08', 'GIÀY ADIDAS GALAXY 6 NAM - ĐEN TRẮNG', '#080808', '<h2 class=\"hero-headline\">Adidas là một công ty đa quốc gia đến từ Đức, chuyên sản xuất giày dép, quần áo và phụ kiện. Tiền thân của công ty là Gebruder Dassler Schuhfabrik, được thành lập vào năm 1924 bởi anh em nhà Dassler là Adi Dassler và Rudolf.</h2><h2 class=\"hero-headline\">Ban đầu, thương hiệu đã đạt được thành công và lợi nhuận lớn. Tuy nhiên, sau Thế chiến thứ hai, do sự khác biệt, Rudolf tách ra để thành lập Công ty Ruda, sau đó được đổi tên thành Puma. Đồng thời, Adi Dassler tiếp tục điều hành công ty cũ, đặt tên là Adidas từ năm 1949.</h2><h2 class=\"hero-headline\">Adidas là một công ty đa quốc gia đến từ Đức, chuyên sản xuất giày dép, quần áo và phụ kiện. Tiền thân của công ty là Gebruder Dassler Schuhfabrik, được thành lập vào năm 1924 bởi anh em nhà Dassler là Adi Dassler và Rudolf.</h2><h2 class=\"hero-headline\">Ban đầu, thương hiệu đã đạt được thành công và lợi nhuận lớn. Tuy nhiên, sau Thế chiến thứ hai, do sự khác biệt, Rudolf tách ra để thành lập Công ty Ruda, sau đó được đổi tên thành Puma. Đồng thời, Adi Dassler tiếp tục điều hành công ty cũ, đặt tên là Adidas từ năm 1949.Adidas là một công ty đa quốc gia đến từ Đức, chuyên sản xuất giày dép, quần áo và phụ kiện. Tiền thân của công ty là Gebruder Dassler Schuhfabrik, được thành lập vào năm 1924 bởi anh em nhà Dassler là Adi Dassler và Rudolf.</h2><h2 class=\"hero-headline\">Ban đầu, thương hiệu đã đạt được thành công và lợi nhuận lớn. Tuy nhiên, sau Thế chiến thứ hai, do sự khác biệt, Rudolf tách ra để thành lập Công ty Ruda, sau đó được đổi tên thành Puma. Đồng thời, Adi Dassler tiếp tục điều hành công ty cũ, đặt tên là Adidas từ năm 1949.Giày adidas Galaxy 6&nbsp; có thiết kế thể thao đẹp mắt, đây là mẫu giày có thể sử dụng trong mọi hoạt động hàng ngày. adidas Galaxy 6 có nhiều cải tiến so với adidas Galaxy 5 giúp đôi giày ngày càng hoàn hảo.</h2><h2 class=\"hero-headline\">Công nghệ đế CloudFoam của Adidas chưa bao giờ làm Fan hâm mộ của họ thất vọng. Với cảm giác trải nghiệm giống như đi trên \'\'Mây\'\' đấy là những gì được người dùng chia sẻ lại. Form dáng thiết kế trẻ trung, khỏe khoắn nên đây sẽ là mẫu giày không thể thiếu cho những hoạt động vui chơi, thể thao. Ngoài ra, adidas Galaxy 6 sử dụng hơn 505 vật liệu tái chế thân thiện với môi trường.</h2><div><br></div>', '', 1, 0, 12, 1, 1),
(43, '', 'catalog/products/Nike/0d6b55df4a62052094022c323db559ae.jpg', 5, 0, 1, '2009-02-03 21:07:49', '2023-01-12 14:48:00', 'GIÀY THỂ THAO NIKE AIR ZOOM PEGASUS 39 CỔ THẤP MÀU ĐEN ĐẾ TRẮNG (DÀY)', '#1d1b1b', '<h5>Giày Nike Air Zoom Pegasus 39 là mẫu giày thể thao phiên bản thứ 39 của dòng giày huyền thoại Nike Pegasus nổi tiếng. Với những cải tiến vượt trội đặc biệt với việc gấp 2 lần lớp đệm Air Zoom so với phiên bản trước, Nike Air Zoom Pegasus 39 xứng đáng là siêu phẩm được săn đón nhất năm 2022.</h5>', '', 0, 1, 10, 1, 1),
(46, 'RALPH SAMPSON LO', 'catalog/Shoes/Puma/GIÀY PUMA RALPH SAMPSON LO NAM - TRẮNG ĐỎ/giay-puma-palph-sampson-lo-nam-trang-do-02.jpg', 31, 0, 1, '2009-02-03 21:08:29', '2022-09-25 17:08:09', 'GIÀY PUMA RALPH SAMPSON L.O CỔ THẤP ĐẾ DÀY & CỨNG - MÀU TRẮNG - SỌC ĐỎ CAM', '', 'Giày Puma Ralph Samspon Lo là một trong mẫu giày Classic huyền thoại của Puma. Được làm bằng da mềm mại, cao cấp, sang trọng, đế giày cực kỳ bền đẹp. Đây là một mẫu giày tuyệt vời dành để đi học, đi làm, đi chơi...', '', 1, 1, 0, 0, 1),
(47, 'NEW BALANCE VIAZA', 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE VIAZA NAM - XANH LAM/giay-new-balance-viaza-nam-xanh-lam-01.jpg', 9, 0, 1, '2009-02-03 21:08:40', '2023-01-12 14:43:48', 'GIÀY NEW BALANCE VIAZA CỔ THẤP ĐẾ CỨNG - BẢN MÀU ĐEN PHA XANH TÍM (ĐẾ TRẮNG)', '#3a6bdf', '<p></p><p>Giày New Balance Viaza mẫu giày thể thao được thiết kế rất đẹp, với công nghệ đế FRESH FOAM độc quyền của New Balance giúp cho đôi giày trở lên cực kỳ êm và nhẹ nhàng khi di chuyển.<br></p>', '', 1, 1, 0, 1, 1),
(48, 'Canvas', 'catalog/Shoes/Converse/Giày Converse Run Star Hike Twisted Classic Foundational Canvas/4d99b688409371b25ca789d07f6a30fc.jpg', 16, 0, 1, '2009-02-08 17:21:51', '2023-01-12 14:43:01', 'Giày Converse Run Star Hike Twisted Classic Foundational Canvas Cổ Thấp - Màu Đen Đế Trắng & Cứng', '#171616', '<div>Run Star Hike - cú bứt phá ngoạn mục của Converse</div><div>Ra mắt đầu 2020, BST cực chất của Converse mang tên Converse Twisted Classic có lẽ đã tạo được tiếng vang cực lớn đối với những tín đồ yêu sneaker trên toàn thế giới. Thoát khỏi bóng dáng của những đôi Converse thân thuộc, lần này nhà thiết kế của Converse chịu chơi hơn rất nhiều khi đã biến tấu những sản phẩm của mình trở nên “không đụng hàng” với bất cứ dòng sản phẩm nào trước đó từng ra mắt.</div><div><br></div>', '', 1, 0, 0, 0, 1),
(49, '', 'catalog/Shoes/Puma/GIÀY PUMA COURT POINT VULC V2 NAM - TRẮNG ĐEN/giay-puma-court-point-vulc-v2-nam-trang-den-02.jpg', 31, 1, 1, '2011-04-26 08:57:34', '2022-09-25 17:02:01', 'GIÀY PUMA COURT POINT VULC V2 (BẢN MỚI) CỔ THẤP ĐẾ MỎNG CỨNG - BẢN MÀU TRẮNG & VIỀN ĐEN', '', '<p>Giày Puma Court Point Vulc V2 mẫu giày có thiết kế cổ điển mà tinh tế. Chất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tính nhất. Bạn sẽ luôn yên tâm rằng nó không bao giờ bị lỗi mốt.<br></p>\r\n', '', 1, 1, 0, 1, 1),
(60, 'NEW BALANCE M411 ', 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE M411 NAM - ĐEN TRẮNG/giay-new-balance-m411-nam-xanh-den-trang-01.jpg', 9, 0, 1, '2015-06-22 06:46:02', '2023-01-12 14:47:08', 'GIÀY THỂ THAO NEW BALANCE M411 CỔ THẤP ĐẾ DÀY - MÀU XÁM KHÓI', '#201e1e', '<p>Giày New Balance M411 mẫu giày thể thao được thiết kế đơn giản nhưng rất đẹp, chất liệu cực nhẹ và êm giúp bạn di chuyển cả ngày mà không mỏi mệt. Ngoài ra New Balance M411 có mức giá cực kỳ hợp lý rất đáng để bạn lựa chọn.<br></p><p><br></p>', '', 1, 0, 0, 0, 1),
(63, '', 'catalog/Shoes/Asics/GIÀY ASICS DYNABLAST NAM - XÁM/giay-asics-dynablast-nam-xam-03-550x550.png', 32, 1, 1, '2016-02-23 14:33:11', '2023-01-12 14:45:21', 'Giày Thể Thao ASICS DYNABLAST Nam - Màu Xám', '#d7d6d6', 'Giày Asics Dynablast một mẫu giày thể thao có thiết kế đẹp, cùng với đó là ngập tràn những công nghệ đỉnh cao của Asics hãng giày nổi tiếng nhất Nhật Bản. Asics Dynablast là lựa chọn tuyệt vời của các ai yêu thích chạy bộ.&nbsp;', '...', 1, 0, 10, 0, 1),
(64, 'Revenge Plus', 'catalog/Shoes/Reebok/Giày Reebok Club C Revenge Plus Màu Trắng/giay-reebok-club-c-revenge-plus-mau-trang-5f72dda28e89d-29092020140922.jpg', 17, 1, 1, '2016-02-23 14:50:04', '2022-09-25 21:27:10', 'Giày Thể Thao Thế Hệ Mới Cho GenZ -- Reebok Club C Revenge Plus -- Cổ Thấp Đế Dày & Dẻo - Bản Vàng Nhạt Đế Trắng & Sọc Vàng Kim', '', '<p>Giày Reebok Club C Revenge Plus Màu Trắng</p><p>là mẫu giày chạy bộ với kiểu dáng trẻ trung, năng động nó sẽ cho bạn trở nên nổi bật và cuốn hút hơn.</p><div><br></div><br>\r\n                <section><br></section>', '...', 0, 0, 0, 0, 1),
(65, '', 'catalog/Shoes/Lacoste/GIÀY LACOSTE POWERCOURT NAM - ĐEN/giay-lacoste-powercourt-nam-den-01.jpg', 46, 1, 1, '2016-02-23 15:12:12', '2023-01-12 14:46:31', 'GIÀY THỂ THAO LACOSTE POWERCOURT ĐẾ CỨNG CỔ THẤP - BẢN MÀU ĐEN ĐẾ TRẮNG  ', '#050505', '<div class=\"wrap inner-x left\">\r\n<div class=\"title active black m-black\">Giày Lacoste PowerCourt được thiết kế với phong cách cổ điển sang trọng đặc trưng của thương hiệu Lacoste. Giày có upper bằng da cao cấp, có độ bền độ bóng cao, không nhăn, không thấm nước.&nbsp;<br></div><div class=\"desc active black m-black\"><div class=\"wrap inner-x right\"><div class=\"desc active black m-black\"><div class=\"wrap inner-x left\"><div class=\"desc active black m-black\"><div class=\"wrap inner-x right\">\r\n</div></div>\r\n</div></div>\r\n</div></div>\r\n</div>', '...', 0, 0, 0, 1, 1),
(66, 'Dynamica Hld', 'catalog/Shoes/Reebok/Giày Thể Thao Reebok Zig Dynamica Hld Running Shoe FY7064 Màu Trắng Xám/giay-the-thao-reebok-zig-dynamica-hld-running-shoe-fy7064-mau-trang-xam-61985b5b12325-20112021092011.jpg', 17, 1, 1, '2016-02-23 15:25:42', '2023-01-12 14:49:08', 'Giày Thể Thao Reebok Zig Dynamica Hld Running Shoe FY7064 Cổ Thấp Màu Trắng Xám', '#b3adad', '<h3 class=\"content-block-enhanced-caption__headline\">\r\n Microsoft Lumia 950</h3>\r\n <p>\r\n High-end features, premium design, and the best Windows 10 experience –\r\n get the phone that works like your PC and turn an ordinary moment into \r\nyour biggest accomplishment</p><div class=\"content-block-enhanced-caption\">\r\n <div class=\"content-block-enhanced-caption-content-wrapper half-wrapper\">\r\n <h3 class=\"content-block-enhanced-caption__headline\">Powered by Windows 10</h3>\r\n <p>\r\n Discover the benefits of one Windows experience. Office documents and \r\nphotos are in sync across devices and your favorite apps, music, and \r\nvideos are in one place with the brand new Windows Store. And with \r\nCortana for Windows 10, you can use your PC to set a location-based \r\nreminder that will arrive just in time on your Lumia.<sup>1</sup></p><h3 class=\"content-block-enhanced-caption__headline\">Built to do great things</h3>\r\n <p>\r\n Unleash the potential of your digital life with a stunning Quad HD \r\ndisplay. Run the most demanding apps without missing a beat and power up\r\n quickly with USB-C Fast Charging. With a super-fast processor, a large \r\ncapacity battery, and wireless charging, the Lumia 950 has the power and\r\n performance that you\'d expect from a premium smartphone.</p><p>\r\n \r\n </p><h3 class=\"content-block-enhanced-caption__headline\">Windows Continuum</h3>\r\n <p>\r\n Connect your Lumia 950 to a Microsoft Display Dock and use it with an \r\nexternal monitor, a keyboard, and a mouse. Office apps and Outlook scale\r\n up to create a big screen-optimized work environment that makes you \r\nmore productive. It’s a PC-like experience that’s powered by your phone.<sup>3</sup></p>\r\n </div>\r\n </div>', '...', 0, 0, 12, 1, 1),
(67, '', 'catalog/products/Nike/94cfce00f30e159ad349e4c433c5b1da.jpg', 15, 1, 1, '2016-02-23 16:29:43', '2023-01-12 14:48:31', 'GIÀY THỂ THAO NIKE DOWNSHIFTER 12 CỔ THẤP ĐẾ CỨNG - FULL MÀU ĐEN DÀNH CHO NAM GIỚI THÍCH CHẠY MARATONG', '#1a1919', '<p>Nike là nhà cung cấp toàn cầu về giày, quần áo và dụng cụ thể thao số một thế giới. Được thành lập vào ngày 25 tháng 1 năm 1964 với tên Blue Ribbon Sports bởi Bill Bowerman và Phil Knight, sau đó chính thức có tên gọi là Nike vào ngày 30 tháng 5 năm 1971.Giày Nike DownShifter 12 có thiết kế vô cùng đẹp và hiện đại. Kiểu dáng cũng như công nghệ được cải tiến vượt bậc so với Nike.<br></p><div><br></div>', '...', 1, 1, 10, 0, 1),
(68, '', 'catalog/Shoes/Converse/Giày Converse Chuck Taylor All Star 1970s Hi Top Black/13882398fe37aae37257108124fb0794.jpg', 16, 1, 1, '2016-02-23 16:44:19', '2023-01-12 14:42:32', 'Giày Converse Chuck Taylor All Star 1970s Hi Top Black Cổ Cao - Màu Đen Đế Trắng', '#212121', '<p>Giày Converse Chuck Taylor All Star 1970s Hi Top Black<br></p><p>được thiết kế từ chất liệu vải canvas nhẹ, dày dặn, cứng form hơn. Là dòng giày tiêu biểu và đặc trưng cho phong cách cổ điển của Converse. Lớp lót dày tạo cảm giác êm ái khi vận động, vải dày dặn, cứng form hơn. Phần đế màu trắng ngà vintage được phủ 1 lớp bóng bên ngoài là điểm nhấn riêng cho dòng 1970s, dễ vệ sinh hơn. Dây giày dày hơn, cùng màu với phần đế, tem gót đen 1st-tring - đặc trưng riêng của dòng 1970s. Giày Converse Chuck 1970s là biểu tượng của văn hóa thể thao và các loại hình nghệ thuật đường phố kiểu Mỹ, truyền cảm hứng và sức sáng tạo mạnh mẽ đến giới trẻ trên toàn thế giới.&nbsp;</p>', '...', 0, 0, 0, 1, 1),
(69, '', 'catalog/Shoes/Asics/GIÀY ASICS GLIDERIDE 2 NAM - XANH/giay-asics-glideride-2-nam-xanh-03.jpg', 32, 1, 1, '2016-11-22 18:07:40', '2023-01-12 14:41:54', 'GIÀY ASICS GLIDERIDE 2 Cho Nam - Màu Xanh (Bản Giới Hạn)', '#404254', 'Giày Asics GlideRide 2 là siêu phẩm chạy bộ tốt của Asics, tập trung vào việc tiết kiệm năng lượng tối đa cho người sử dụng. Ngoài ra, Asics GlideRide 2 sử dụng những công nghệ tiên tiến nhất&nbsp; và có thiết kế rất đẹp có thể sử dụng đi lại hàng ngày.', '...', 0, 1, 0, 0, 1),
(70, '', 'catalog/Shoes/Reebok/Giày Thể Thao Tenis Reebok Energylux 3.0 GY0154 Màu Đen/giay-the-thao-reebok-energylux-3-0-gy0151-mau-den-size-42-6268a7e392963-27042022091811.jpg', 17, 1, 1, '2022-08-20 14:40:11', '2023-01-12 14:50:17', 'Giày Thể Thao Tenis Reebok Energylux 3.0 GY0154 Cổ Thấp Đế Dày & Cứng - Bản Full Màu Đen', '#0d0c0c', '<p>Giày Thể Thao Tenis Reebok Energylux 3.0 GY0154 Màu Đen là một trong những sản phẩm bán chạy&nbsp; của thương hiệu&nbsp; Reebok bởi thiết kế đơn giản, tiện dụng, kiểu dáng trẻ trung , dễ phối với nhiều trang phục khác nhau.<br></p>', '...', 0, 1, 7, 1, 1),
(71, '', 'catalog/Shoes/Vans/Giày Vans Authentic/04dc5542ccecee08883f86437f83461f.jpg', 8, 1, 1, '2022-08-20 14:43:44', '2023-01-12 14:49:40', 'Giày Vans Authentic Cổ Thấp Đế Dẻo - Bản Màu Đen Đế Trắng & Viền May Chỉ Trắng', '#171616', '<p>Giày Vans Authentic<br></p><p>&nbsp;được may từ chất liệu cao cấp nâng niu từng bước chân của bạn. Kiểu dáng giày năng động với thiết kế cổ thấp, thắt dây khỏe khoắn, màu sắc trẻ trung hợp thời trang. Đế cao su chắc chắn có khả năng ma sát tốt, chống trơn trượt, có thể di chuyển trên nhiều địa hình. Ngoài ra bạn có thể dễ dàng kết hợp giày Vans với nhiều phụ kiện và trang phục khác nhau để tạo nên một set đồ đẹp, thích hợp mang trong nhiều môi trường khác nhau như đi học, đi chơi, đi làm hay vận động ngoài trời...</p>', '...', 1, 1, 0, 1, 1),
(73, '', 'catalog/2477f63b9a53dc7ae5d4294a1bde3ad3.jpg', 16, 1, 1, '2022-09-01 22:47:53', '2022-10-02 21:12:23', 'Dây Giày Thể Thao Kiểu Dáng Dẹt MWC- 9006 ( Chất Liệu Len Màu Trắng)', '', '<p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><em>DÂY GIÀY TRẮNG NGÀ DẸT HAI LỚP&nbsp;</em></p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Dây giày&nbsp;&nbsp;có kích cỡ dài 1m2, có bề rộng 8mm</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Sản phẩm được dệt từ chất liệu cotton</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><em>Dây giày galaxy</em>&nbsp;không bị bai gião khi kéo căng</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><em>Dây giày galaxy</em>&nbsp;&nbsp;không bị phai mầu khi ngâm vào nước trong thời gian dài</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Dây giày thể thao nhiều mầu được dùng cho các loại giày thể thao, giày bata, giày sneaker, giày nam buộc dây, giày nữ buộc dây, ngoài ra sản phẩm còn được dùng làm&nbsp;<em>dây luồn quần áo&nbsp;</em>như: áo hoodie, quần áo có luồn dây</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">LƯU Ý: Sản phẩm có chiều dài 1m2 là dùng chung cho cả giày nam, giày nữ ngoài ra có 1 số dòng giày dặc biệt có lỗ xỏ dây ít khách hàng nên đặt thêm tips kim loại (bịt đầu dây giày). Hướng dẫn tự cắt và bấm ngắn dây có trên youtube, các bạn search: \"hướng dẫn tự cắt ngắn dây giày\"</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Giá sản phẩm trên shop đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....</p>', '...', 1, 0, 0, 0, 0),
(74, '', 'catalog/780f0cf12763a98ceea21557c7b7a551.jpg', 15, 1, 1, '2022-09-01 23:03:21', '2023-01-11 02:45:24', 'Dây Giày Thể Thao Bằng Len Kiểu Dáng Dẹt Màu Xanh Đậm - Bản V2', '#3b684b', '<p><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\">Dây kiểu dẹt cơ bản có thể thay thế cho dây giày thể thao, dây giày conversee (cổ thấp/ cao), dây giày Adidas, dây giày Ultra boost, dây giày Vans, dây giày rick owen, dây giày mcqueen, dây giày sneaker,...</span><br style=\"font-family: Roboto, sans-serif; color: rgb(63, 75, 83); font-size: 14px;\"><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\">Thông tin sản phẩm</span><br style=\"font-family: Roboto, sans-serif; color: rgb(63, 75, 83); font-size: 14px;\"><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\">- Tên sản phẩm: Dây giày dẹt, dẹt bọng, tròn</span><br style=\"font-family: Roboto, sans-serif; color: rgb(63, 75, 83); font-size: 14px;\"><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\">- Kích thước: 130cm/ 90cm</span><br style=\"font-family: Roboto, sans-serif; color: rgb(63, 75, 83); font-size: 14px;\"><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\">- Chiều rộng: 0.8cm/ 0.6cm</span><br style=\"font-family: Roboto, sans-serif; color: rgb(63, 75, 83); font-size: 14px;\"><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\">- Chất liệu: sợi polyester (mịn), cotton.</span><br style=\"font-family: Roboto, sans-serif; color: rgb(63, 75, 83); font-size: 14px;\"><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\">- Bền đẹp, không phai màu</span><br style=\"font-family: Roboto, sans-serif; color: rgb(63, 75, 83); font-size: 14px;\"><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\">- Màu sắc: đa dạng màu</span><br style=\"font-family: Roboto, sans-serif; color: rgb(63, 75, 83); font-size: 14px;\"><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\">Phối màu dây theo phong cách riêng.</span><br style=\"font-family: Roboto, sans-serif; color: rgb(63, 75, 83); font-size: 14px;\"><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\">Đóng gói: 1 đôi dây giày (2 sợi)</span><br style=\"font-family: Roboto, sans-serif; color: rgb(63, 75, 83); font-size: 14px;\"><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\">Dây buộc giày là phụ kiện giày lý tưởng để các bạn mix đôi giày của mình thêm cá tính và năng động</span><br style=\"font-family: Roboto, sans-serif; color: rgb(63, 75, 83); font-size: 14px;\"><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\">Không phải tất cả các dây buộc đều giống nhau! Chúng tôi bán dây buộc chất lượng cao với kiểu dệt cao cấp giúp đôi giày yêu thích của bạn trông đẹp hơn một chút</span></p><ul style=\"font-family: Roboto, sans-serif; padding-left: 2rem; margin-top: 1em; margin-bottom: 1em; color: rgb(63, 75, 83); font-size: 14px;\"><li style=\"font-family: inherit;\">Cam kết chất lượng</li></ul><p><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\">Được xem hàng trước khi nhận</span><br style=\"font-family: Roboto, sans-serif; color: rgb(63, 75, 83); font-size: 14px;\"><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\">Hình ảnh sản phẩm là ảnh thực được chụp bằng thiết bị Iphone 8Plus,</span><br style=\"font-family: Roboto, sans-serif; color: rgb(63, 75, 83); font-size: 14px;\"><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\">vì vậy, màu sắc có thể chênh lệch khác nhau dựa vào cường độ ánh sáng màn hình, nhưng màu sản phẩm là màu của dây chính hãng ạ.</span><span style=\"color: rgb(63, 75, 83); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>', '...', 0, 0, 10, 1, 0),
(75, '', 'catalog/e4d011e1f8e6a09c2b5e5357e2494d8a.jpg', 23, 1, 1, '2022-09-01 23:56:47', '2022-10-02 20:59:42', 'Dây Giày Bằng Cotton Phản Quang Reflective Cao Cấp', '', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Quên ngay những sợi dây giày mỏng dẹp và thiếu cá tính,thiếu năng động dây giày phản quang  Reflective sẽ mang đến một diện mạo mới cho đôi giày thể thao sneaker yêu quý của bạn. \r\nĐôi giày của bạn sẽ trở nên lung linh hơn trong đêm tối, giúp bạn nổi bật hơn trong các sự kiện màu sắc.\r\nPhản quang nổi bật trong đêm tối\r\nPhản quang nổi bật dưới ánh đèn trong đêm\r\nThông số kỹ thuật\r\nChất liệu: dây dù cao cấp, cấu tạo hai lớp\r\nKiểu dáng : Tròn\r\nKích thước: 100cm \r\nMàu sắc : Đen , Xám\r\nBộ Sản Phẩm : 1 Đôi\r\nPhản quang nổi bật trong đêm tối\r\nMàu sắc đa dạng, thời trang cá tính\r\nPhù hợp với tất cả các loại giày thời trang, thể thao</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Dây giày phản quang siêu đẹp, màu phối cực thời trang và năng động.\r\nQuá tuyệt vời để  cho các bạn yêu thỏa sức sáng tạo những kiểu buộc dây giày độc đáo thể hiện cá tính rất riêng của chính mình ^^\r\nĐôi giày của bạn sẽ trở lên tươi mới, xinh đẹp hơn muôn phần nhờ đôi dây giày phản quang này của mun ^^.\r\nCòn chần chờ gì nữa, mà không rinh ngay một ( vài) đôi về để mỗi ngày một màu sắc tươi mới nào ^^.\r\nBạn yêu có nhu cầu mua sỉ hãy chat ngay với shop để được shop và hỗ trợ thật nhanh nhé ^∆^</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\"><br></span><br></p>', '...', 0, 0, 5, 1, 0),
(76, '', 'catalog/228dff3dd92e61c73ed673db55c3c529.jpg', 23, 1, 1, '2022-09-02 10:40:10', '2023-01-12 14:53:46', 'Tấm Lót Giày Thể Thao Phiên Bản Mới Cho GenZ Siêu Thoáng Cho Chân Ra Mồ Hôi Nhiều', '#2329d1', '<h3 style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 18px; line-height: 22px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); text-align: justify;\">Active + Insole không phải là đế thông thường của bạn. Thay vào đó, nó có công nghệ tiên tiến giúp bạn di chuyển một cách êm ái.<strong>&nbsp;Một thiết bị từ tính được gắn vào trong mỗi đế giúp tăng cường lưu thông máu</strong>. Thiết bị tuyệt vời này phát ra một “đám mây giao thoa từ tính” giúp các thành mạch máu cứng vững, tăng cường lưu thông máu và giảm đau nhức. Nó mang lại sự thoải mái, bảo vệ toàn diện và dễ dàng cơ động khi bạn chơi thể thao hay hoạt đồng hàng ngày.&nbsp;</h3>', '...', 1, 1, 0, 1, 1),
(77, '', 'catalog/4105e3a15583ccf7cf939f5030b31e69.png', 23, 0, 1, '2022-09-02 10:42:20', '2024-02-16 22:03:24', 'Bình Xịt Khử Mùi Giày Thể Thao Cho Nam EYKOSI', '#14e15c', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Bình xịt lưu hương chống thối chân mùi giày EYKOSI, kháng khuẩn, công nghệ Bạc ion, t</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">ạo hương thơm mát, khử mùi, ngăn mùi hôi cho giày dép và các đồ vật, x</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">ịt khử mùi mau khô, thoáng mát khi đeo</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">✔✔ Thông tin sản phẩm\r\n- Hết mưa lại nắng, vào ngày nắng nóng cơ thể sẽ tiết nhiều mồ hôi mang giày lâu sẽ gặp tình trạng hôi, bóc mùi khó chịu \r\n- Dung tích: 225ml\r\n- Cho bạn và cả người xung quanh. Ngày mưa thời tiết ẩm ướt tạo điều vi khuẩn sinh sôi nảy nở trên giày. Nhưng đừng lo, từ giờ đã có chai xịt khử mùi EYKOSI, giải pháp khử mùi, diệt khuẩn cho giày.\r\n- Sử dụng công nghệ phân tử Bạc ( Ag+) có tác dụng ức chế, giảm khả năng phát triển của vi khuẩn và nấm cùng các thành phần tự nhiên giúp cho đôi bàn chân luôn sạch sẽ thơm tho.\r\n- Tạo hương thơm mát, khử mùi, ngăn mùi hôi cho giày dép và các đồ vật...\r\n- Bình xịt lưu hương với công nghệ Bạc ion Ag+ giúp chống thối chân, khử mùi giày, kháng khuẩn, chống nấm mốc,..\r\n- Xịt khử mùi mau khô, thoáng mát khi đeo\r\n- Sản phẩm với các thành phần đã được kiểm nghiệm - chứng nhận đảm an toàn cho da.\r\n✔✔ Hướng dẫn sử dụng\r\n- Giày ở trạng thái khô ráo, sử dụng bình xịt vào bên trong và ngoài giày.\r\n- Tính chất của dung dịch khử mùi là dung môi nhanh khô (trong 10 giây)\r\n-  Lắc đều trước khi xịt\r\n- Xịt đều lên đồ cần xịt rồi để khô trước khi sử dụng\r\n- Khi xịt dung môi xong để giày ở nơi thoáng mát khoảng 5-10 phút, sau đó có thể mang bảo quản trong hộp, tủ hoặc sử dụng ngay\r\n- Ngăn đề phòng nấm bàn chân, chống nấm mốc lúc bảo quản giày.\r\n????CHÍNH SÁCH ĐỔI HÀNG:\r\n➕ Để đảm bảo quyền lợi cho người tiêu dùng, shop khuyến khích quý khách hàng phải quay video và kiểm tra kỹ tình trạng sản phẩm trong quá trình mở hộp. Ngoài ra quý khách cần kiểm tra sản phẩm có bể, trầy xước do tác động bên ngoài, màu sắc, số lượng, có đúng chủng loại, thông số kỹ thuật hay không. Nếu sản phẩm không đúng như thông tin mua hàng, ảnh hưởng bởi quá trình vận chuyển, quý khách vui lòng thông báo ngay cho shop để shop hỗ trợ hoàn hàng và trả tiền.\r\n⚠️ CAM KẾT CHẤT LƯỢNG SẢN PHẨM ĐÚNG NHƯ MÔ TẢ\r\n⚠️ ĐỔI TRẢ MIỄN PHÍ NẾU DO LỖI CỦA SHOP</span></p>', '...', 1, 1, 15, 1, 0),
(78, '', 'catalog/83a8cc3ff2ab4472e1d570b16269ec7e.jpg', 7, 1, 0, '2022-09-02 10:43:34', '2023-01-12 12:40:35', 'bình xịt khử mùi XIAOMI', '#ffffff', '<p><br></p>', '...', 0, 0, 0, 0, 1),
(79, '', 'catalog/943a94aad2d6a5a6b6f559622e3eb97f.jpg', 18, 1, 1, '2022-09-02 10:45:41', '2023-01-10 16:19:37', 'Bình Xịt Khử Mùi Giày Thể Thao Cho Nam FANDY', '#ff0000', '<p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">- Với dung dịch làm sạch&nbsp; thì không thể không nhắc đến dung dịch là sạch vết bẩn một trong những sản phẩm giặt khô có mức độ làm sạch cao nhờ công nghệ clean ball + , các hạt nano siêu nhỏ len lỏi sâu trong bề mặt giày đánh bay vết bẩn từ bên trong &nbsp;và đem đến cho bạn một đôi giày với một tuổi thọ giày cao sử dụng nâng cao chất lượng giày</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">- Mách nhỏ nhé bộ vệ sinh giày thể thao&nbsp; không chỉ làm sạch cho giày đâu mà còn cho cả những chiếc túi xách da , vali , bề mặt nội thất trong nhà của các bạn nữa đó</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Bước 1: Đến ngay cơ sở fandy gần nhất của bạn và pick up ngay bộ vệ sinh giày sịn sò.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Bước 2&nbsp;: Tháo dây giày ra và sau đó tháo lót đế giày. Đặt chúng sang 1 bên để làm sạch sau cùng.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Tháo dây giày để làm sạch&nbsp;</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Bước 3&nbsp;: Phủ một lượng bọt nhất định trải đều các bề mặt càng làm sạch.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Bước 4&nbsp;: Sử dụng bàn chải , đánh cho bọt tan đồng thời chú ý đến các vết bẩn cần làm sạch trên giày.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Bước 5&nbsp;: Sử dụng khăn Nontwist Fandy được sản xuất từ 100% sợi bông cotton lau phần bọt vệ sinh dư sau đó bạn có thể clean tiếp đến phần đế và dây giày.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" text-align:=\"\" start;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Đặc điểm nổi bât : \r\n- Dù đã vệ sinh giày sạch sẽ bạn cũng không thể tránh khỏi việc giày có mùi khó chịu như mùi da, mùi ẩm mốc, mùi vớ … đặc biệt với thời tiết mưa gió thất thường, giày sẽ mang mùi hôi khó chịu. Đồng thời, sau một thời gian dài sử dụng, mùi hôi từ những đôi giày cũng tỏa ra làm chúng ta không tự tin khi diện chúng đi ra ngoài. Vậy làm sao để có thể khử mùi hôi giày và giữ chúng luôn được thơm tho? Với công nghệ nano bạc cùng hạt lưu hương độc đáo lọ Xịt giày khử mùi với mùi thơm dịu nhẹ sẽ giúp bạn xóa tan đi nỗi lo hôi giày.\r\n- Dễ dàng xịt giày bằng cách xịt ngược\r\n- Hiệu quả tức thì\r\n- Hiệu quả Khử mùi 99%, Diệt khuẩn 99%\r\n- An toàn , không gây tổn thương hay kích ứng với da\r\n- Công nghệ nano bạc ức chế vi khuẩn gây mùi hiệu quả , nhất là dạng xịt trực tiếp vào bề mặt chứa vi khuẩn gây mùi</span><br></p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></p>', '...', 0, 0, 0, 1, 0),
(80, '', 'catalog/18620eb7f1b1629cd15fd1869c859abd.jpg', 7, 1, 1, '2022-09-02 10:49:40', '2023-01-12 12:42:24', 'Bình Xịt Khử Mùi Giày Thể Thao Nam ANGELUS', '#f5f5f5', '<p><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: \" helvatica=\"\" font\",=\"\" arial,=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" color:=\"\" rgb(15,=\"\" 15,=\"\" 15);=\"\" text-align:=\"\" justify;\"=\"\">Angelus</span><span style=\"color: rgb(15, 15, 15); font-family: \" helvatica=\"\" font\",=\"\" arial,=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;là bình xịt khử mùi cao cấp đến từ thương hiệu Angelus (USA). Thiết kế dạng bình xịt tiện dụng, không mùi, sử dụng để khử đi các mùi hôi từ giày, quần áo, mũ, túi xách, các vật dụng nội thất bằng da hoặc da lộn.</span></p><p><span style=\"color: rgb(15, 15, 15); font-family: \" helvatica=\"\" font\",=\"\" arial,=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" text-align:=\"\" justify;\"=\"\"><br></span></p><p><span style=\"color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Mùi khó chịu từ giày là vấn đề không của riêng ai và hệ quả này tích tụ từ việc chúng ta chưa có những biện pháp vệ sinh giày tốt.&nbsp;</span><span style=\"text-align: justify;\"><span style=\"color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">Bình Xịt Khử Mùi Giày Thể Thao Nam ANGELUS&nbsp;là sản phẩm xịt thơm giày cao cấp được phân phối độc quyền chính hãng bởi&nbsp;</span></span><span style=\"color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">ANGELUS</span><span style=\"text-align: justify;\"><span style=\"color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">&nbsp;với thành phần chính là những hợp chất lành tính, phù hợp với mọi loại da mà không kích ứng khi mang giày.</span></span></p><p><span style=\"color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Với những thành phần tự nhiên như PEG-40 Hydrogenated Castor Oil có chức năng như một chất làm mềm. Nó có tác dụng làm mềm và làm dịu da chân khi dùng. Trong quá trình sử dụng, chất này sẽ bao phủ tạo thành một lớp màng bảo vệ trên bề mặt da, giúp ngăn chặn sự bay hơi nước (tiết mồ hôi gây hôi chân khi đi giày).</span></p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Bê cạnh đó, Fragrance (Hương thơm tổng hợp) là thành phần đặc biệt trong ANGELUS.&nbsp;Nó là công thức cấu tạo nên các loại dầu thơm, nước hoa, khiến cho mùi hương trở nên đặc trưng và có thể lưu giữ trên cơ thể (trên chân) và giày được lâu hơn.Nguồn gốc của thành phần này từ các thành phần tự nhiên, lành tính, phần lớn là chiết xuất từ các loại hoa hoặc tinh dầu tự nhiên.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Đặc biệt,&nbsp;dung dịch chứa các đặc tính Octenidine HCl có tác dụng khử mùi hôi bằng cách diệt vi khuẩn gây nhiễm vi khuẩn trên bề mặt da tại vị trí của chân.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">ĐẶC ĐIỂM NỔI BẬT:</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">- Giữ cho giày luôn vệ sinh, thoáng mát ngăn ngừa sinh sôi vi khuẩn tạo mùi.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">- Kháng nấm mốc, bảo vệ chân khỏi các bệnh da liễu do nấm mốc sinh sôi khi giày không được vệ sinh định kỳ.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">- Giúp chân luôn khô thoáng trong thời gian dài, ngăn ngừa tiết mồ hôi vùng chân và kẽ chân.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">CÁCH DÙNG:</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">- Lắc nhẹ dung dịch cho các hoạt chất hòa trộn và đạt hiệu quả khử mùi tối ưu nhất.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">- Phun sương bề mặt bên trong của giày.&nbsp;</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">- Thích hợp cho sử dụng hàng ngày.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">- Sử dụng giày 3-5 phút sau khi phun.&nbsp;</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">KHUYẾN CÁO &amp; BẢO QUẢN:</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">- Bảo quản nơi mát, khô ráo, tránh ánh nắng trực tiếp.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">- Đóng nắp sau khi sử dụng.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">- Để xa tầm tay trẻ em.</p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></p><p style=\"margin-top: 5px; margin-bottom: 12px; line-height: 21px; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;NSX/HSD: Xem trên bao bì sản phẩm</p><p><span style=\"color: rgb(15, 15, 15); font-family: \" helvatica=\"\" font\",=\"\" arial,=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" text-align:=\"\" justify;\"=\"\"><br></span><br></p>', '...', 1, 1, 18, 0, 0),
(81, '', 'catalog/b3ce46edfd2ccc3184d88e0d8161a8eb.jpg', 32, 1, 1, '2022-09-02 10:53:21', '2023-01-12 14:52:08', 'Lọ Tẩy Rửa Giày Thể Thao Cho Nam FOAM-TXT Tặng Kèm Thêm Bàn Chảy Chuyên Dụng Để Kị Giày', '#2d2adf', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">CAM KẾT: LAU LÀ SẠCH,TRẮNG TINH NHƯ MỚI.\r\n-Giúp làm sạch đồ da , túi sạch chỉ trong vòng 1 phút, làm sạch túi,ví, giày hoặc ghế salon đang mốc, bẩn trở nên như mới (hoặc lau tất cả mọi thứ bằng da).\r\n-Giúp làm sạch đồ da nhanh chóng, nhẹ nhàng, sạch như mới trong vòng 3 phút, không lo bạc màu, hư hỏng, làm sạch vết bẩn, đánh bóng những sản phẩm làm bằng da, mà không gây hư hại bề mặt, đặc biệt là các loại giày dép, túi xách đắt tiền…\r\n– chỉ cần lắc đều và đánh trên bề mặt da bằng đầu tích hợp bông lau kèm chổi làm sạch là như mới luôn nhé …\r\n– Sản phẩm ở dạng nước, dễ dàng sử dụng , dễ lau chùi trên mọi loại da túi, giày dép, ghế da .\r\n\r\nHướng dẫn sử dụng chai Nước Vệ Sinh Giày:\r\n– Đối với những đôi giày vải:\r\n+ Bước 1: Dùng một chiếc bản chải giày sạch và khô chải sạch vết bẩn trên giày.\r\n+ Bước 2: Dùng bản chải mềm thấm nước vệ sinh giày rồi chà sát lên vết bẩn.\r\n+ Bước 3: Để giày nơi khô thoáng cho giày khô là xong.\r\n\r\n Đối với giày cao su:\r\n+ Bước 1: Dùng một miếng vải ẩm quấn quanh đầu ngón tay rồi lau đi bụi bẩn.\r\n+ Bước 2: Cho xà phòng lên miếng vải và lau sạch lại bề mặt.\r\n+ Bước 3: Dùng bàn chải cứng chà giày thật kỹ, rồi rửa sạch dưới vòi nước.\r\n Đối với giày da lộn:\r\n+ Bước 1: Dùng bàn chải làm sạch da lộn để chải đi những bụi bẩn, nên chải theo một hướng để đạt hiệu quả tốt nhất, nếu vết bẩn quá cứng thì bạn có thể sử dụng dao để loại bỏ nếu không chải sạch được.\r\n+ Bước 2: Dùng chất bảo vệ da lộn để xịt lên đôi giày. Lưu ý không được sử dụng nước để tẩy rửa và làm sạch.\r\n \r\nĐối với giày da màu trắng:\r\n+ Bước 1: Dùng vải mềm lau sạch bề mặt bị bám bẩn.\r\n+ Bước 2: Tháo dây giày và tiếp tục vệ sinh.\r\n+ Bước 3: Chuẩn bị dung dịch Nước Vệ Sinh Giày bằng cách pha nước ấm với xà phòng hay nước rửa chén hoặc với bất kì một loại xà phòng rửa tay thông thường khác.\r\n+ Bước 4: Dùng bàn chải nhẹ nhàng chải trên bề mặt và bên trong đôi giày, lưu ý là phải chà thật nhẹ nhàng vì da rất dễ bị sướt.\r\n+ Bước 5: Dùng nước ấm rửa sạch.\r\n+ Bước 6: Nhồi khăn giày vào trong đôi giày để hút nước rồi đem đi sấy. Lưu ý, thay khăn liên tục nếu chúng bị ướt.\r\n+ Bước 7: Treo đôi giày để nó khô hẳn.\r\n???? Với mong muốn mang đến cho khách hàng những hình ảnh sinh động, chân thực nhất về sản phẩm, tất cả ẢNH SẢN PHẨM đều do shop tự chụp 100%, \r\n\r\n– Thành phần: nước tinh khiết, Cilicate Flour, Glycerin… giúp tẩy trắng mà vẫn giữ an toàn cho da giày, da túi xách;\r\n– Hàng tiện dụng, dễ mang đi xa.\r\n– Sản phẩm là phụ kiện cần có cho mỗi gia đình hay dân văn phòng, dân thể thao</span><br></p>', '...', 0, 1, 5, 1, 0);
INSERT INTO `product` (`product_id`, `model`, `image`, `manufacturer_id`, `sort_order`, `status`, `date_added`, `date_modified`, `name`, `color`, `description`, `tag`, `best_seller`, `featured`, `sale`, `new`, `size_or_nosize`) VALUES
(82, '', 'catalog/22657ed5673dd9add57ee7412005abbf.jpg', 32, 1, 1, '2022-09-02 10:58:48', '2022-10-02 21:34:05', 'Chai Xịt Khử Mùi Giày ARTIFACT - Khử Mọi Mùi Khó Chịu Với Mùi Hương Dễ Chịu Dài Lâu', '', '<p><span style=\"color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">– Dung dịch tẩy trắng túi xách chuyên dụng ARTIFACT&nbsp;với công dụng tẩy trắng giày sáng bóng, tiết kiệm thời gian và rất an toàn.</span><br style=\"color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\"><span style=\"color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">– Hằng ngày bạn thường phải đi lại nhiều, tham gia nhiều hoạt động nên rất dễ khiến cho giày, túi sách da bị bẩn, để lâu sẽ ố lại rất khó sạch.</span><br style=\"color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\"><span style=\"color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">– Nhưng ARTIFACT&nbsp;sẽ xóa bay những vết bẩn, trả lại sự sáng như mới cho giày dép, túi sách. Một số chai nước tẩy trắng giày, túi thông thường sẽ hay có mùi rất hắc, các chất hóa học có thể dây ra tay và làm mòn da.</span><br style=\"color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\"><span style=\"color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">– Chai tẩy trắng ARTIFACT&nbsp;này sẽ xóa tan những bất lợi trên.</span></p><h4 style=\"color: rgb(85, 85, 85); width: 870px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em; font-family: Roboto, sans-serif; font-weight: 700;\"><span style=\"font-weight: bolder;\">Công dụng:</span></h4><p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">– Tẩy sạch mọi vết BẨN khó ưa<br>– Tích hợp đầu cọ vô cùng tiện dụng, thích cọ chỗ nào thì cọ<br>– Kích thước nhỏ, gọn, dễ dàng mang đi xa<br>– Làm sạch được tất cả các bề mặt chất liệu da ( giày da, túi xách, …), giày thể thao,… khiến mọi vật dụng trắng tinh như mới</p><h4 style=\"color: rgb(85, 85, 85); width: 870px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em; font-family: Roboto, sans-serif; font-weight: 700;\"><span style=\"font-weight: bolder;\">Ưu điểm:</span></h4><p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">– Sản phẩm chỉ áp dụng cho giày dép, túi xách chất liệu da. Vì thế nhà sản xuất đã thiết kế đầu chà mềm, tránh trầy xước cho giày túi<br>– Sản phẩm sẽ không làm ảnh hưởng tới chất liệu da và không làm hại tới sức khỏe của bạn vì nó rất an toàn</p><h4 style=\"color: rgb(85, 85, 85); width: 870px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.125em; font-family: Roboto, sans-serif; font-weight: 700;\"><span style=\"font-weight: bolder;\">Hướng dẫn sử dụng:</span></h4><p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">– Đối với những đôi giày vải:<br>+ Bước 1: Dùng một chiếc bản chải giày sạch và khô chải sạch vết bẩn trên giày.<br>+ Bước 2: Dùng bản chải mềm thấm nước tẩy rửa rồi chà sát lên vết bẩn.<br>+ Bước 3: Phun chất bảo vệ vải lên giày để bảo vệ và không làm hư vải sau khi chà sát và sử dụng chất tẩy rửa.</p><p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\">– Đối với giày cao su:</span></p><p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">+ Bước 1: Dùng một miếng vải ẩm quấn quanh đầu ngón tay rồi lau đi bụi bẩn.<br>+ Bước 2: Cho xà phòng lên miếng vải và lau sạch lại bề mặt.<br>+ Bước 3: Dùng bàn chải cứng chà giày thật kỹ, rồi rửa sạch dưới vòi nước.</p><p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\">– Đối với giày da lộn:</span></p><p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">+ Bước 1: Dùng bàn chải làm sạch da lộn để chải đi những bụi bẩn, nên chải theo một hướng để đạt hiệu quả tốt nhất, nếu vết bẩn quá cứng thì bạn có thể sử dụng dao để loại bỏ nếu không chải sạch được.<br>+ Bước 2: Dùng chất bảo vệ da lộn để xịt lên đôi giày. Lưu ý không được sử dụng nước để tẩy rửa và làm sạch.</p><p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\">– Đối với giày da màu trắng:</span></p><p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: medium;\">+ Bước 1: Dùng vải mềm lau sạch bề mặt bị bám bẩn.<br>+ Bước 2: Tháo dây giày và tiếp tục vệ sinh.<br>+ Bước 3: Chuẩn bị dung dịch để rửa bằng cách pha nước ấm với xà phòng hay nước rửa chén hoặc với bất kì một loại xà phòng rửa tay thông thường khác.<br>+ Bước 4: Dùng bàn chải nhẹ nhàng chải trên bề mặt và bên trong đôi giày, lưu ý là phải chà thật nhẹ nhàng vì da rất dễ bị sướt.<br>+ Bước 5: Dùng nước ấm rửa sạch.<br>+ Bước 6: Nhồi khăn giày vào trong đôi giày để hút nước rồi đem đi sấy. Lưu ý, thay khăn liên tục nếu chúng bị ướt.<br>+ Bước 7: Treo đôi giày để nó khô hẳn.</p>', '...', 0, 0, 7, 1, 0),
(83, '', 'catalog/92196ef4b26fcf3f525deee05a3cb542.jpg', 32, 1, 1, '2022-09-02 11:02:13', '2022-10-02 21:29:01', 'Lọ Xịt Giày Thể Thao PLAC CREAM - Hương Thơm Kéo Dài Trong 72h & Khử Khuẩn Giúp Bàn Chân Luôn Sạch Sẽ', '', '<p><span style=\"color: rgb(80, 80, 80); font-family: Arial, Helvetica, sans-serif; font-size: 15px; text-align: justify;\">Để đôi giày luôn trắng sáng, sạch sẽ giúp bạn tự tin bước xuống phố, nước vệ sinh giày là sản phẩm hữu hiệu dành cho bạn.</span></p><ul style=\"padding-left: 2rem; margin-bottom: 1rem; padding-inline-start: 0px; color: rgb(1, 46, 66); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15px; text-align: justify;\"><li style=\"list-style-type: none;\">Chai tẩy trắng giày cao cấp PLAC CREAM nước tẩy trắng vệ sinh giày dep túi sách lọ nước tẩy giày siêu sạch PLAC chai tẩy giầy đa năng có đầu chùi<br></li><li style=\"list-style-type: none;\">Thông tin sản phẩm chai xịt tẩy trắng giày dép túi xách<br></li><li style=\"list-style-type: none;\">– Kích thước chai: 13x5x4cm;<br></li><li style=\"list-style-type: none;\">– Thành phần: nước tinh khiết, Cilicate Flour, Glycerin… giúp tẩy trắng mà vẫn giữ an toàn cho da giày, da túi xách;<br></li><li style=\"list-style-type: none;\">– Hàng tiện dụng, dễ mang đi xa.<br></li><li style=\"list-style-type: none;\">– Sản phẩm là phụ kiện cần có cho mỗi gia đình hay dân văn phòng, dân thể thao.<br></li><li style=\"list-style-type: none;\">Chai tẩy trắng giày dép túi xách mang đến cho bạn giải pháp đánh sạch vết bẩn , làm trắng lại đai giày hay chiếc túi xách sang trọng của bạn . Giờ đây với những vật dụng trắng tinh , bạn hoàn toàn tự tin đẻ phối những chiếc giày , dép , túi xách với những bộ đồ mình đang mặc.<br><br>– Đối với giày da màu trắng: </li><li style=\"list-style-type: none;\">+ Bước 1: Dùng vải mềm lau sạch bề mặt bị bám bẩn. </li><li style=\"list-style-type: none;\">+ Bước 2: Tháo dây giày và tiếp tục vệ sinh. </li><li style=\"list-style-type: none;\">+ Bước 3: Chuẩn bị dung dịch để rửa bằng cách pha nước ấm với xà phòng hay nước rửa chén hoặc với bất kì một loại xà phòng rửa tay thông thường khác. </li><li style=\"list-style-type: none;\">+ Bước 4: Dùng bàn chải nhẹ nhàng chải trên bề mặt và bên trong đôi giày, lưu ý là phải chà thật nhẹ nhàng vì da rất dễ bị sướt. </li><li style=\"list-style-type: none;\">+ Bước 5: Dùng nước ấm rửa sạch. </li><li style=\"list-style-type: none;\">+ Bước 6: Nhồi khăn giày vào trong đôi giày để hút nước rồi đem đi sấy. Lưu ý, thay khăn liên tục nếu chúng bị ướt. </li><li style=\"list-style-type: none;\">+ Bước 7: Treo đôi giày để nó khô hẳn.</li><li style=\"list-style-type: none;\"><br>Hướng dẫn sử dụng chai xịt tẩy trắng Plac :</li><li style=\"list-style-type: none;\"> – Đối với những đôi giày vải: </li><li style=\"list-style-type: none;\">+ Bước 1: Dùng một chiếc bản chải giày sạch và khô chải sạch vết bẩn trên giày. </li><li style=\"list-style-type: none;\">+ Bước 2: Dùng bản chải mềm thấm nước tẩy rửa rồi chà sát lên vết bẩn. </li><li style=\"list-style-type: none;\">+ Bước 3: Phun chất bảo vệ vải lên giày để bảo vệ và không làm hư vải sau khi chà sát và sử dụng chất tẩy rửa.</li><li style=\"list-style-type: none;\"><br>– Đối với giày cao su: </li><li style=\"list-style-type: none;\">+ Bước 1: Dùng một miếng vải ẩm quấn quanh đầu ngón tay rồi lau đi bụi bẩn. </li><li style=\"list-style-type: none;\">+ Bước 2: Cho xà phòng lên miếng vải và lau sạch lại bề mặt. </li><li style=\"list-style-type: none;\">+ Bước 3: Dùng bàn chải cứng chà giày thật kỹ, rồi rửa sạch dưới vòi nước.</li><li style=\"list-style-type: none;\"><br></li><li style=\"list-style-type: none;\"> </li><li style=\"list-style-type: none;\">– Đối với giày da lộn: </li><li style=\"list-style-type: none;\">+ Bước 1: Dùng bàn chải làm sạch da lộn để chải đi những bụi bẩn, nên chải theo một hướng để đạt hiệu quả tốt nhất, nếu vết bẩn quá cứng thì bạn có thể sử dụng dao để loại bỏ nếu không chải sạch được. </li><li style=\"list-style-type: none;\">+ Bước 2: Dùng chất bảo vệ da lộn để xịt lên đôi giày. Lưu ý không được sử dụng nước để tẩy rửa và làm sạch.</li></ul>', '...', 0, 1, 0, 1, 0),
(84, '', 'catalog/dea4c9091b7473ebcfb537a9d0ca99df.jpg', 15, 1, 1, '2022-09-02 11:07:30', '2023-01-12 14:52:45', 'Tấm Lót Giày LGEC03 - Bản Xanh Lam - Có Thể Tháo Rời Và Lắp Ráp Đế', '#30a7cf', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Lót Giày Thể Thao Giúp Êm Chân Siêu Nhẹ Giảm Sóc, Khử Mùi, Thoáng Khí\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">CAM KẾT CHẤT LƯỢNG SẢN PHẨM ĐÚNG NHƯ MÔ TẢ\r\nĐỔI TRẢ MIỄN PHÍ NẾU DO LỖI CỦA SHOP\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">\r\n✔✔ Thông tin sản phẩm:</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">\r\n- Chất liệu: EVA\r\n- Màu sắc: Màu Xanh lam\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">- Size SỬ DỤNG CHO NAM VÀ NỮ\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">- Trọng lượng siêu nhẹ: 50g (cực kì phù hợp với các môn vận động thể thao mạnh và lâu dài)\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">- Sản phẩm dùng cho nhiều đối tượng khác nhau, sản phẩm được lắp vào cho các loại giày da, giày sneaker thể thao đá bóng,cầu lông, … giày tây công sở nam nữ, giày mọi, giày boot, giày thời trang, …\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Sản phẩm bao gồm: một cặp lót giày gồm 2 miếng = dùng cho một đôi giày\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">\r\n✔✔ Tác dụng và tính năng\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">- Giữ cho bàn chân không bị ẩm, ướt\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">- Giảm mùi hôi chân\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">- Massage lòng bàn chân cho những người đi lại nhiều, đứng lâu, …\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">- Độ đàn hồi cao hấp thụ sốc \r\n- Thấm hút mồ hôi và thoáng khí\r\n- Lót giày siêu êm và siêu nhẹ\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">- Dùng để thay thế lót giày đã cũ của bạn\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">\r\n✔✔Hướng dẫn sử dụng </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">\r\n- B1: Tháo ra miếng lót cũ\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">- B2: Dùng bàn chải vệ sinh bụi bẩn bên trong lòng giày, và thành trong giày\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">- B3: Sử dụng kéo cắt lót giày theo chỉ dẫn ở mặt sau của tấm lót hoặc cắt theo miếng lót cũ của bạn trước đây\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Chúc bạn có một trải nghiệm tuyệt vời trên sản phẩm lót giày thể thao này!</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">\r\n\r\n???? CHÍNH SÁCH ĐỔI HÀNG:\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">➕ Để đảm bảo quyền lợi cho người tiêu dùng, shop khuyến khích quý khách hàng phải quay video và kiểm tra kỹ tình trạng sản phẩm trong quá trình mở hộp. Ngoài ra quý khách cần kiểm tra sản phẩm có bể, trầy xước do tác động bên ngoài, màu sắc, số lượng, có đúng chủng loại, thông số kỹ thuật hay không. Nếu sản phẩm không đúng như thông tin mua hàng, ảnh hưởng bởi quá trình vận chuyển, quý khách vui lòng thông báo ngay cho shop để shop hỗ trợ hoàn hàng và trả.</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">\r\n---------------------------------------\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Năm sản xuất: 2021</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">\r\nSản xuất tại: Trung Quốc\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Tên và địa chỉ của tổ chức/cá nhân chịu trách nhiệm về sản phẩm\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">  - CÔNG TY TNHH XUẤT NHẬP KHẨU VÀ VẬN TẢI POSEIDON LOGISTIC  \r\n  - Số 14 ngách 75 ngõ 167 đường Quang Tiến, Phường Đại Mỗ, Quận Nam Từ Liêm, Thành phố Hà Nội, Việt Nam</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">---------------------------------------\r\n</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">#lotgiaythethaocaocap #lotgiay #giaythethao #lotkhumui #lotgiaythethao #lotgiayemchan #lotgiaykhumui #lotgiaythoangkhi #m2store</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\"><br></span><br></p>', '...', 0, 1, 5, 1, 1),
(85, '', 'catalog/42159eede82ad3d8d21ee38589d9d423.jpg', 32, 1, 1, '2022-09-02 11:10:58', '2023-01-12 14:54:19', 'Tấm Lót Đế Giày Chuyên Nghiệp Cho Vận Động Viên Giảm Đau Chân & Thông Thoáng Giảm Mồ Hôi Chân ', '#131010', '<h2 style=\"margin: 0px 0px 17px; padding: 0px; font-size: 16px; font-weight: 700; line-height: 29px; color: rgb(255, 255, 255); font-family: Roboto, -apple-system, BlinkMacSystemFont, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" white-space:=\"\" break-spaces;\"=\"\"><span style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\">Lót đế&nbsp; thể thao cao cấp chống sốc được làm từ chất liệu&nbsp;cao su eva cao cấp có độ bền cao và tính kháng va đập. Kết hợp bọc silicon nguyên chất ở phần gót chân và phần bàn chân trước nhằm tăng thêm độ êm ái và ma sát, chống trơn trượt.</span><br style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\"><span style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\">Mặt trên là lớp nhung mỏng êm ái, thấm hút mồ hôi</span><br style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\"><span style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\">Mặt dưới miếng lót giày có gắn một lớp gel ở phần gót chân có tác dụng đệm gót đồng thời tăng ma sát, chống trơn trượt.</span><br style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\"><span style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\">Lót đế giày đa năng silicon êm chân có các lỗ thoáng khí, giúp đôi chân thoáng mát, kết hợp với mùi thơm nhẹ nhàng giúp khử mùi hiệu quả.</span><br style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\"><span style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\">Lót giày thể thao tăng sức mạnh, sức bền, năng lượng cho đôi chân khi tham gia các hoạt động thể thao, chạy bộ, di chuyển nhiều.</span><br style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\"><span style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\">Giảm mạnh tình trạng đau nhức xương gót chân, đau gan bàn chân, đầu gối và cột sống.</span><br style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\"><span style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\">Lót đế giày đa năng silicon êm chân, thoáng khí, lót giày thể thao cao cấp chống sốc sử dụng&nbsp;được cho cả giầy nam và nữ phù hợp các loại size giầy</span><br style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\"><span style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\">PHÙ HỢP CHƠI: Bóng rổ, Cầu lông, Chạy bộ, xe đạp…các môn thể thao khác “Silicon giảm chấn, êm chân, khử mùi”</span><br style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\"><span style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\">Chức năng:&nbsp;Mềm mại, giảm chấn, chống trơn trượt, khử mùi</span><br style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\"><span style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\">Sản phẩm có độ bền cao và tính kháng va đập.</span><br style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\"><span style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\">Khử mùi hôi hiệu quả.</span><br style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\"><span style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\">Dùng để thay thế cho các miếng lót giày thể thao gin, dùng được cho các kích cỡ chân và mọi loại giày.</span></h2><h2 style=\"margin: 0px 0px 17px; padding: 0px; font-size: 16px; font-weight: 700; line-height: 29px; color: rgb(255, 255, 255); font-family: Roboto, -apple-system, BlinkMacSystemFont, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;=\"\" white-space:=\"\" break-spaces;\"=\"\"><p style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\">Thông tin sản phẩm :<br>Tên sản phẩm :&nbsp;Lót đế giày đa năng silicon êm chân, thoáng khí, lót giày thể thao cao cấp chống sốc, tiện dụng - mã LG07<br>Màu sắc : mặt đé màu đen + mặt dưới màu cam<br>Kích thước : có nhiều size để bạn lựa chọn</p><p style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\">Giá sản phẩm trên shop đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....</p><p style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\">Bàn chân là cơ quan quan trọng của con người, chăm sóc cho đôi chân là việc quan trọng nên làm.<br>Việc đi bộ mỗi ngày hoặc tập thể dục cần nhiều thao tác và lực ở bàn chân, do đó một đôi lót đế giày êm chân, chống sốc là phụ kiện không thể thiếu cho mỗi đôi giày của chúng ta.<br>Lót đế giày đa năng silicon êm chân, thoáng khí, lót giày thể thao cao cấp chống sốc,mã LG07 hiện đang là một trong những sản phẩm được ưa chuộng bởi sự đa năng, tiện dụng mà đôi lót giày này mang đến.</p><p style=\"color: rgb(1, 45, 65); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 14px;=\"\" font-weight:=\"\" 400;=\"\" text-align:=\"\" justify;=\"\" white-space:=\"\" normal;\"=\"\"><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" text-align:=\"\" start;=\"\" white-space:=\"\" pre-wrap;\"=\"\"> Đặc điểm: \r\n --Cường độ cao\r\n - Chống mài mòn\r\n \r\n Do điều kiện ánh sáng và chế độ cài đặt màn hình nên màu sắc thực tế của sản phẩm sẽ có đôi chút khác biệt với hình chụp, vui lòng thông cảm.\r\n \r\n Xin vui lòng cho chúng tôi biết ngay khi bạn có bất kỳ vấn đề, chúng tôi sẽ cung cấp cho bạn dịch vụ tốt nhất và giải quyết vấn đề sớm nhất có thể. Cảm ơn bạn rất nhiều.</span><br></p><br></h2>', '...', 1, 1, 5, 0, 1),
(86, '', 'catalog/9fb8fc0bd7f42af9ae480bbedba62205.jpg', 32, 1, 1, '2022-09-04 09:12:32', '2023-01-12 14:53:16', 'Tấm Lót Giày SILICON MASSAGE Cao Cấp - Mặt Đế Màu Đen - Mặt Sau Xốp Mềm', '#1d1b1b', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Mang lại cảm giác êm ái còn thiếu cho đôi giày của bạn\r\nMiếng lót SILICON MASSAGE với cảm giác êm ái hỗ trợ đắc lực cho mỗi bước chân của bạn\r\nMiếng lót giày thân thiện với môi trường hơn và hỗ trợ ngăn ngừa các loại vi trùng có hại.\r\n\r\nGiúp ích nhiều cho những đôi chân không được thoải mái, giúp cho cả việc tập thể dục nặng và đi bộ hay leo núi.\r\nCảm giác êm ái bất ngờ của đế cao su thiên nhiên\r\nGiúp giảm mệt mỏi cho bàn chân kể cả khi hoạt động trong thời gian dài.\r\n\r\nCông ty của chung tôi đã cung cấp sản phẩm cho các thương hiệu giày chủ yếu ở Hàn Quốc trong suốt 30 năm và sở hữu nhiều bí quyết cũng như năng lực kỹ thuật.\r\n\r\nChúng tôi đã sản xuất sản phẩm trong hơn 30 năm và có một lòng tự hào lớn lao.\r\n\r\nNền tảng sản phẩm của chúng tôi chính là sản phẩm được thiết kế để có thể sử dụng cho cả giày kiểu và giày sneaker\r\nKhi sử dụng cho giày thể thao thì sẽ mang lại cảm giác mỏng nhẹ\r\nChúng tôi Xin được giới thiệu loại miếng lót giày này đến bạn ^.^\r\n\r\nMẹo về sản phẩm\r\n0141 nâng cao tối đa phần gót và giúp gót được thoải mái hơn\r\n0142 Nâng tối đa phần vòm giữa chân để hỗ trợ phần giữa chân thường có cảm giác không thoải mái\r\n0145 Kích thước tổng thể lớn hơn những sản phẩm bên trên và được thêm phần dập nổi ở phía sau giúp gia tăng trợ lực.\r\nMiếng lót giày được thiết kế dày dặn có thể cảm nhận được cảm giác êm dịu vượt trội hẳn những sản phẩm trên.</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Thời gian giao hàng dự kiến cho sản phẩm này là từ 7-9 ngày</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">\r\n\r\n1. Vui lòng cho phép sai số một chút về số đo do cách đo lường thủ công.\r\n\r\n2. Hình ảnh có thể không phản ánh màu sắc thực tế của sản phẩm vì ánh sáng, màn hình và các yếu tố khác. Cảm ơn bạn!\r\n\r\n3. Chúng tôi đang chuẩn bị các mô tả chi tiết hơn. :)\r\n\r\n4. Chúng tôi vận chuyển từ Hàn Quốc.\r\n\r\n5. Xin đừng quên để lại đánh giá và nhận xét!</span><br></p>', '...', 0, 1, 0, 1, 1),
(87, '', 'catalog/292797e440e2d0017c5ec39e2ac5fd26.jpg', 32, 1, 1, '2022-09-04 09:22:15', '2023-01-12 14:50:59', 'Hộp Đựng Giày NICA Cao Cấp - 5 Tầng - Mỗi Tầng 2 Ngăn - Bản Trong Suốt', '#1a1919', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Hộp đựng giày có ngăn kéo màu trắng, thời trang, nhiều lưới, hộp trong suốt, tiện lợi hơn khi tìm đồ, đựng giày gọn gàng, không gian đôi, nhà riêng tiện lợi hơn.</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\"><br></span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">HỘP ĐỰNG GIÀY MICA CỨNG TRONG SUỐT 20CM [BIG SIZE] - Nắp Trong Như Kính - Có Nam Châm - với giá tốt chất lượng thì khỏi lo bán hàng gần 4 năm trên Shop nên hiểu được nhu cầu của khách. BẢO ĐẢM nhận hàng chất lượng tốt, độ bền cao... vừa giày Jordan, Balen, Yz, Phophere ạ.\r\n\r\n*** Bạn là một người yêu giày hay chỉ muốn bảo vệ chúng tránh bụi bẩn làm mấy giá trị đôi giày hay những chú chuột đáng ghét.\r\n\r\nHoặc chỉ cần kéo ngăn kéo giày ra thì đôi giày của mình trắng sạch không một vết bụi, thích quá phải không nè\r\n^^ Vậy một hộp đựng giầy bằng nhựa mica trong suốt sẽ giúp bạn giải quyết ngay vấn đề đó.\r\n\r\nHãy thử tính xem chỉ với 145K cho một đôi giày bạc triệu thì giống như bạn uống cafe mỗi sáng thôi nè.\r\nMà bé cưng Sneaker hay đôi giày thể thao, đôi guốc của bạn được bảo vệ phải ko nè.\r\n\r\n- CHẤT LIỆU hộp đựng giày dép mica cứng trong suốt 20CM - BLUE DEER:\r\n* 100% NHỰA CỨNG NGUYÊN CHẤT đạt chuẩn độ bền cao 1 hộp chịu nặng 50KG\r\n\r\n- Kích Thước HỘP ĐỰNG GIÀY DÉP MICA CỨNG TRONG SUỐT 20CM:\r\n*** DÀI 38 - RỘNG 26 - CAO GẦN 20CM\r\n- Nắp Trong Như Kính - Có Nam Châm -\r\n\r\n*** Bạn là một người yêu giày hay chỉ muốn bảo vệ chúng tránh bụi bẩn làm mấy giá trị đôi giày hay những chú chuột đáng ghét.\r\nHoặc chỉ cần kéo ngăn kéo giày ra thì đôi giày của mình trắng sạch không một vết bụi, thích quá phải không nè.\r\n\r\n^^ Vậy một hộp đựng giầy bằng nhựa mica trong suốt sẽ giúp bạn giải quyết ngay vấn đề đó.\r\nHãy thử tính xem chỉ với 185K cho một đôi giày bạc triệu thì giống như bạn uống Cafe mỗi sáng thôi nè.\r\nMà bé cưng Sneaker hay đôi giày thể thao, đôi guốc của bạn được bảo vệ phải ko nè\r\n\r\n- CHÍNH SÁCH MUA HÀNG của BLUE DEER:\r\n* BẢO HÀNH 1 ĐỔI 1 NẾU SẢN PHẨM BỂ VỠ hoặc Lỗi sản xuất ( nhớ quay video lúc bốc hàng để bảo vệ quyền lợi của mình và hỗ trợ BLUE DEER giải quyết nhanh)\r\n* TẶNG KÈM TÚI HÚT ẨM theo số lượng.\r\n* GIAO HÀNG GIẢM 30K SHIP cho đơn áp mã giảm của Shopee.\r\n\r\n • Tham khảo nhiều hộp đựng giày &amp; những sản phẩm về giày và thời trang độc chất tại Shop\r\n\r\nXem nhiều Combo giảm giá box đựng giày tại Blue Deer trong mục sản phẩm hoặc bấm theo dõi để cập nhật khuyến mãi. \r\n#hop_dung_giay #hop_dung_giay_trong_suot #hop_bao_ve_giay #hop_dung_giay_trong_suot_tphcm #hop_dung_giay_trong_suot_gia_re #hộp_đựng_giày_trong_suốt_tiện_ích #hop_giay_mica_18CM #hộp_đựng_giày_bằng_mica_trong_suốt #hop_dung_giay_bang_mica_trong_suot #combo_5_hộp_nhựa_đựng_giày_trong_suốt #hộp_đựng_giày_trong_suốt_tphcm_facebook #hop_dung_giay_trong_suot_tphcm_facebook #mua_hop_dung_giay #hop_dung_giay_mua_o_dau_tot #hộp_đựng_giày_nhựa #hộp_đựng_giày_nhựa_trong_suot #box_trong_suot #hộp_nhựa_đựng_giày</span><br></p>', '...', 1, 1, 0, 1, 0);
INSERT INTO `product` (`product_id`, `model`, `image`, `manufacturer_id`, `sort_order`, `status`, `date_added`, `date_modified`, `name`, `color`, `description`, `tag`, `best_seller`, `featured`, `sale`, `new`, `size_or_nosize`) VALUES
(88, '', 'catalog/21fe5b8e1a673a4bb248b2001e3986b0.jpg', 32, 1, 1, '2022-09-04 09:31:33', '2023-01-12 14:51:30', 'Hộp Đựng Giày NICA Cao Cấp 2022 - Màu Tím Đen & Mặt Kính Trong Suốt', '#1a1a1a', '<p><span style=\"color: rgb(98, 98, 98); font-family: \" libre=\"\" baskerville\",=\"\" arial,=\"\" tahoma,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" text-align:=\"\" center;\"=\"\">Bạn là một người yêu giày hay chỉ muốn bảo vệ chúng tránh bụi bẩn hay những chú chuột đáng ghét.</span><br style=\"color: rgb(98, 98, 98); font-family: \" libre=\"\" baskerville\",=\"\" arial,=\"\" tahoma,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" text-align:=\"\" center;\"=\"\"><span style=\"color: rgb(98, 98, 98); font-family: \" libre=\"\" baskerville\",=\"\" arial,=\"\" tahoma,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" text-align:=\"\" center;\"=\"\">Hoặc chỉ cần kéo ngăn kéo giày ra thì đôi giày của mình trắng sạch không một vết bụi, thích quá phải không nè ^^</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: \" libre=\"\" baskerville\",=\"\" arial,=\"\" tahoma,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" text-align:=\"\" center;\"=\"\">Vậy một hộp đựng giầy bằng nhựa mica trong suốt sẽ giúp bạn giải quyết ngay vấn đề đó.</span><br style=\"color: rgb(98, 98, 98); font-family: \" libre=\"\" baskerville\",=\"\" arial,=\"\" tahoma,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" text-align:=\"\" center;\"=\"\"><span style=\"color: rgb(98, 98, 98); font-family: \" libre=\"\" baskerville\",=\"\" arial,=\"\" tahoma,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" text-align:=\"\" center;\"=\"\">Hãy thử tính xem chỉ với giá tiền rẻ bằng 2 bát bún bò cho một đôi giày bạc triệu thì giống như bạn uống cafe mỗi sáng thôi nè. Mà bé cưng Sneaker hay đôi giày thể thao, đôi guốc của bạn được bảo vệ phải ko nè</span><br style=\"color: rgb(98, 98, 98); font-family: \" libre=\"\" baskerville\",=\"\" arial,=\"\" tahoma,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" text-align:=\"\" center;\"=\"\"><span style=\"color: rgb(98, 98, 98); font-family: \" libre=\"\" baskerville\",=\"\" arial,=\"\" tahoma,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" text-align:=\"\" center;\"=\"\">Chịu dựng của 6 hộp bình nước 20 lít, hàng đẹp mắt cứng cáp. thiết kế phù hợp tất cả loại giày đép.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: \" libre=\"\" baskerville\",=\"\" arial,=\"\" tahoma,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" text-align:=\"\" center;\"=\"\"><br></span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\">????ĐẶC ĐIỂM NỔI BẬT</span><br style=\"color: rgba(0, 0, 0, 0.8); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\"><span style=\"color: rgba(0, 0, 0, 0.8); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\">✅Được làm từ chất liệu nhựa mềm trong suốt chất lượng cao</span><br style=\"color: rgba(0, 0, 0, 0.8); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\"><span style=\"color: rgba(0, 0, 0, 0.8); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\">✅Độ chịu lực tốt khi có va chạm mạnh vì thế sản phẩm rất bền bỉ và có tuổi thọ cao</span><br style=\"color: rgba(0, 0, 0, 0.8); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\"><span style=\"color: rgba(0, 0, 0, 0.8); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\">✅Vì có độ trong suốt nên hộp đựng giày giúp bạn dễ dàng tìm kiếm đôi giày mình muốn tìm ngay lập tức khi cần</span><br style=\"color: rgba(0, 0, 0, 0.8); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\"><span style=\"color: rgba(0, 0, 0, 0.8); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\">✅Bảo quản các đôi giày dép của bạn được an toàn và hiệu quả nhất có thể</span><br style=\"color: rgba(0, 0, 0, 0.8); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\"><span style=\"color: rgba(0, 0, 0, 0.8); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\">✔️ Hộp nhựa đa năng tích hợp nhiều tính năng: đựng sách vở, đựng phụ kiện, giày dép, mỹ phẩm ... vô cùng tiện lợi</span><br style=\"color: rgba(0, 0, 0, 0.8); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\"><span style=\"color: rgba(0, 0, 0, 0.8); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\">♻️ Chất liệu nhựa mica an toàn, không độc hại, lại rất nhẹ nên dễ dàng di chuyển, lắp ghép</span><br style=\"color: rgba(0, 0, 0, 0.8); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\"><span style=\"color: rgba(0, 0, 0, 0.8); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\">♻️ Sử dụng hộp đựng giúp nhà bạn ngăn nắp và gọn gàng hơn, thay thế các loại kệ, giá lớn cồng kềnh (y)</span><span style=\"color: rgb(98, 98, 98); font-family: \" libre=\"\" baskerville\",=\"\" arial,=\"\" tahoma,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" text-align:=\"\" center;\"=\"\"><br></span></p><p><span style=\"color: rgb(107, 114, 128); font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" medium;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Hộp đựng giày bằng nhựa trong suốt giúp bạn bảo quản giày dép hiệu quả, sắp xếp không gian nhà cửa gọn gàng hơn và có giá thành rất rẻ. Bạn sẽ không phải lo giày dép bị chó mèo gặm hay bị đóng bụi nữa. Ngoài ra, nếu bạn không có kệ để giày, bạn có thể chồng các hộp lên thành 1 chồng cao để tiết kiệm không gian nhà cửa.\r\n\r\nSản phẩm này của Shop còn có thể dùng làm hộp đựng đồ đa năng, đựng sách, văn phòng phẩm, mỹ phẩm, v.v…\r\n\r\nKích cỡ hộp đựng giày khi lắp ráp xong là 28x18x9.7cm. Đối với giày đế bằng, hộp có thể đựng các loại giày size tối đa 41-42 (tùy loại). Đối với giày cao gót, hộp có thể đựng được các loại giày cao có gót cao tối đa 10cm.\r\n\r\nHộp đựng giày trong suốt bằng nhựa\r\n\r\nHộp chưa được xếp khi bạn vừa mua để sản phẩm có phí vận chuyển toàn quốc rẻ nhất. Khi mua về bạn có thể xếp thành hộp chỉ trong 3 bước đơn giản. Khi không cần dùng nữa, bạn lại có thể bung ra để cất đi thật gọn.\r\n\r\nHộp đựng giày được Shop cung cấp với giá cực rẻ:</span><br></p>', '...', 1, 1, 12, 0, 0),
(89, '', 'catalog/Shoes/Nike Tiempo Legend 9 Academy TF Xám Tím/73729e915a2579e946b4a1e86273b441.jpg', 23, 1, 0, '2022-09-14 23:40:22', '2022-09-25 09:51:08', 'Giày kiên cường', '', '<p><br></p>', '...', 0, 1, 0, 0, 1),
(90, '', 'catalog/Shoes/Puma/GIÀY PUMA RALPH SAMPSON LO NAM - TRẮNG ĐỎ/giay-puma-palph-sampson-lo-nam-trang-do-01.jpg', 15, 1, 1, '2022-09-18 21:57:44', '2022-09-25 21:44:14', 'Giày Đá Bóng Sân Cỏ Nhân Tạo NIKE TIEMPO LEGEND 9 ACADEMY TF Cổ Thấp Đế Mỏng & Dẻo - Bản Full Trắng Sữa & Sọc Đỏ Cam', '', '<h2 style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.4; font-size: 2em; color: rgb(28, 28, 28); letter-spacing: 0.01em;\" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\";\"=\"\"><p class=\"MsoNormal\" style=\"font-weight: bold;\"><b><span style=\"font-size:18.0pt;line-height:115%;\r\nfont-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">NIKE TIEMPO LEGEND 9 ACADEMY TF-GIÀY ĐÁ\r\nBÓNG SÂN CỎ NHÂN TẠO<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" \"serif\";\"=\"\">Tháng 7 năm 2021 vừa qua, Nike đã cho ra mắt các\r\ndòng sản phẩm Nike Tiempo Legend 9 cực kỳ đẹp mắt. Được mệnh danh là dòng giày\r\nđá bóng đá nhẹ nhất trong dòng Tiempo, Legend 9 có những thay đổi về mặt thiết\r\nkế lẫn công nghệ nhằm giúp người chơi có thể phát huy hết khả năng khi chơi\r\nbóng</span><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" \"serif\";\"=\"\">.<span style=\"font-weight: bold;\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"font-weight: bold;\"><b><span style=\"font-size:14.0pt;line-height:115%;\r\nfont-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">THÔNG SỐ KỸ THUẬT CỦA NIKE TIEMPO LEGEND\r\n9 ACADEMY TF<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 18pt;\"><span style=\"font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" \"serif\";\"=\"\">Đế Giày: TF dành cho\r\nsân cỏ nhân tạo.</span><span lang=\"VI\" style=\"font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" \"serif\";\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 18pt;\"><span style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Có dây giày.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 18pt;\"><span style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Upper được làm từ da B\r\ncao cấp, cực kì mềm và dày hơn so với những mẫu giày Tiempo trước đó mang lại cảm\r\ngiác bóng tốt hơn cho người chơi.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 18pt;\"><span style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Bề mặt giày là các cấu\r\ntrúc hình chấm bi nổi lên ở những vùng tiếp xúc bóng nhiều, giúp xử lý bóng và\r\ntạo lực đẩy cho trái bóng tốt hơn.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 18pt;\"><span style=\"font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" \"serif\";\"=\"\">Phần lưỡi gà rời được\r\nlàm từ da thoáng khí, hỗ trợ làm thoáng bên trong đôi giày. Dễ dàng xỏ vào\r\nchân.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left: 18pt;\"><b style=\"font-weight: bold;\"><span style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Nike Tiempo Legend 9\r\nAcademy TF Recharge - Grey Fog/Volt/Sapphire</span></b><span style=\"font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" \"serif\";\"=\"\"><span style=\"font-weight: bold;\">&nbsp;</span>là phiên bản\r\ngiày&nbsp;chuyên cho sân cỏ nhân tạo 5-7 người.&nbsp;Phiên bản&nbsp;<a href=\"https://neymarsport.com/collections/nike-tiempo\" style=\"\">Tiempo Legend 9</a>&nbsp;sở\r\nhữu những gam màu tương tự như những người anh em còn lại trong đội hình\r\nRecharge với gam màu chủ đạo là xám “Grey Fog”, các chi tiết điểm nhấn màu xanh\r\nVolt ở logo Swoosh và màu xanh ngọc \"Sapphire\" phủ ở gót giày.&nbsp;Nếu\r\nbạn đang tìm kiếm một mẫu giày bóng đá sân cỏ nhân tạo&nbsp;toàn diện từ thiết\r\nkế cho tới các chức năng thì&nbsp;Nike Tiempo Legend 9&nbsp;chính là mẫu\r\ngiày dành cho bạn.</span></p><p class=\"MsoNormal\" style=\"margin-left: 18pt;\"><br></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" \"serif\";\"=\"\"><span style=\"font-weight: bold;\">Về công nghệ cuả phiên bản&nbsp;Nike Tiempo\r\nLegend 9 Academy:</span><br>\r\nSản phẩm Nike Tiempo Legend 9 được các cầu thủ nổi tiếng đại diện gồm có Piqué,\r\nVan Dijk và Thiago Silva.....<br>\r\nLưỡi gà rời của Tiempo mang lại sự thoải mái vượt bật, cũng như cho người chơi\r\ncó form chân bè lẫn chân thon dễ dàng khi xỏ giày.<br>\r\nChất liệu từ&nbsp;da bê mới&nbsp;được xử lý trở nên mềm và cảm giác hơn.được xử\r\nlý trở nên mềm và cảm giác hơn.<br>\r\nKhuôn đế đệm đàn hồi Control được tối ưu&nbsp;hỗ trợ&nbsp;cho người\r\nchơi&nbsp;di chuyển linh hoạt tăng khả năng&nbsp;bức tốc và sự êm ái.<br>\r\nNhững điểm Foam-Pod mới được tích hợp ở phần đầu giày và lòng trong gia tăng khả\r\nnăng cảm giác bóng cho người chơi.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" \"serif\";=\"\" font-weight:=\"\" bold;\"=\"\">Những cầu thủ nổi tiếng đại diện:</span><span style=\"font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" \"serif\";\"=\"\"><span style=\"font-weight: bold;\">&nbsp;Piqué,\r\nVan Dijk và Thiago Silva.....</span><br>\r\nBộ Sưu Tập:&nbsp;Recharge.<br>\r\nNăm sản xuất:&nbsp;2021.<br>\r\nChất liệu:&nbsp;Da bê mềm mại.<br>\r\nCông nghệ:&nbsp;Đế đệm cải tiến êm ái, cổ rời thoải mái và những điểm\r\nFoam Pod tăng cảm giác banh.<br>\r\nTrọng lượng:&nbsp;236 gram/chiếc (Size 41).<br>\r\nPhong cách:&nbsp;Kiểm soát, kỹ thuật.<br>\r\nVị trí:&nbsp;Hậu vệ, tiền vệ trung tâm.<br>\r\nForm giày:&nbsp;Tương đối thoải mái, phù hợp chân bè.<br>\r\nMặt sân:&nbsp;Cỏ nhân tạo 5-7 người.</span></p></h2>', '...', 0, 1, 20, 1, 1),
(91, '', '', 23, 1, 0, '2022-09-18 22:37:20', '2022-09-25 09:38:05', 'Giày chạy maratong', '', '<p><br></p>', '...', 0, 1, 10, 1, 1),
(92, '', '', 23, 1, 0, '2022-09-19 19:06:17', '2022-09-25 09:50:37', 'Giày Holey Green Max', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(93, '', '', 23, 1, 0, '2022-09-19 19:19:04', '2022-09-25 21:45:36', 'Giày Đá Bóng Nam ADIDAS 2022 (Xanh)', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(94, '', '', 34, 1, 0, '2022-09-19 19:20:37', '2022-09-24 22:23:55', 'Bình Xịt Khử Mùi HunMax 2022', '', '<p><br></p>', '...', 0, 1, 0, 1, 0),
(95, '', '', 32, 1, 0, '2022-09-19 19:46:23', '2022-09-24 22:43:20', 'Dây Giày Cotton Bền Xanh Lam', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(96, '', '', 7, 1, 0, '2022-09-20 02:26:56', '2022-09-24 22:44:43', 'Dây Giày Len Bông Trắng', '', '<p><br></p>', '...', 0, 1, 0, 1, 0),
(97, '', '', 23, 1, 0, '2022-09-20 02:32:51', '2022-09-25 09:38:45', 'Giày Cho Nam Chơi Bóng Rổ Bằng Cotton Xanh Lam', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(98, '', '', 32, 1, 0, '2022-09-20 02:38:37', '2022-09-25 21:27:59', 'Giày Tập Thể Hình Cho Nam Len Cotton Màu Tím Than', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(99, '', '', 14, 1, 0, '2022-09-20 02:41:21', '2022-09-29 09:45:58', 'Bình Xịt Giày Thể Thao Cho Nam Hương Dứa', '', '<p><br></p>', '...', 1, 1, 0, 1, 1),
(100, '', '', 7, 1, 0, '2022-09-20 02:47:31', '2022-09-25 22:32:25', 'Xịt Giày Hương Nước Hoa Hồng', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(101, '', '', 6, 1, 0, '2022-09-20 02:54:08', '2022-09-24 22:26:11', 'Dây Giày Bata', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(102, '', '', 14, 1, 0, '2022-09-20 03:04:52', '2022-09-25 22:07:53', 'Lọ Xịt Giày Hương Hoa Nhài', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(103, '', '', 23, 1, 0, '2022-09-20 03:05:54', '2022-09-25 22:32:42', 'Xịt Khử Mùi Giày', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(104, '', '', 13, 1, 0, '2022-09-20 09:34:39', '2022-09-25 22:08:22', 'Lọ Xịt Giày Hương Lucxi', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(105, '', '', 23, 1, 0, '2022-09-20 09:37:30', '2022-09-25 09:39:13', 'Giày Cho Vận Động Viên Điền Kinh Nam Bản 2022 Màu Đen Đỏ', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(106, '', '', 32, 1, 0, '2022-09-20 10:00:06', '2022-09-25 09:50:10', 'Giày Hộ Vệ', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(107, '', '', 13, 1, 0, '2022-09-20 10:07:19', '2022-09-25 21:29:09', 'Giày Trượt Ván Cho Nam Chất Liệu Cotton Màu Xám', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(108, '', '', 16, 1, 0, '2022-09-20 10:17:49', '2022-09-25 09:39:37', 'Giày Chơi Bóng Rổ Cho Nam Bản Mới Chuẩn Đẹp Bền Màu Tím Than', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(109, '', '', 7, 1, 0, '2022-09-20 10:24:22', '2022-09-24 22:24:18', 'Bình Xịt Khử Mùi Hương Valli', '', '<p><br></p>', '...', 1, 1, 10, 1, 1),
(110, '', '', 23, 1, 0, '2022-09-20 20:17:01', '2022-09-24 22:26:33', 'Dây Giày Cotton', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(111, '', '', 7, 1, 0, '2022-09-20 20:22:19', '2022-09-24 22:51:59', 'Dây Giày Đá Bóng', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(112, '', '', 6, 1, 0, '2022-09-20 21:04:06', '2022-09-25 22:30:52', 'tesst', '', '<p>tesst</p>', '...', 1, 0, 3, 0, 1),
(113, '', '', 23, 1, 0, '2022-09-20 21:12:14', '2022-09-25 09:51:44', 'Giày kiên cường', '', '<p>aaaa</p>', '...', 1, 1, 0, 1, 1),
(114, '', '', 23, 1, 0, '2022-09-20 21:18:32', '2022-09-24 22:52:24', 'ddddd', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(115, '', '', 23, 1, 0, '2022-09-21 00:07:32', '2022-09-25 09:52:16', 'Giày kiên cường', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(116, '', '', 7, 1, 0, '2022-09-21 00:08:29', '2022-09-25 22:23:09', 'Nguyễn Anh Thắng', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(117, '', '', 23, 1, 0, '2022-09-21 00:17:52', '2022-09-25 09:52:47', 'Giày kiên cường', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(118, '', '', 23, 1, 0, '2022-09-21 00:24:43', '2022-09-25 09:53:08', 'Giày kiên cường', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(119, '', '', 23, 1, 0, '2022-09-21 10:18:51', '2022-09-25 09:49:46', 'Giày Florentino', '', '<p><br></p>', '...', 0, 1, 50, 1, 1),
(120, '', '', 23, 1, 1, '2023-01-10 12:15:49', '2023-01-10 12:15:49', 'Nguyễn Anh Thắng', '', '<p><br></p>', '...', 0, 1, 0, 1, 0),
(121, '', '', 23, 1, 0, '2023-01-12 03:29:33', '2023-01-12 03:32:35', 'Giày Battle', '#000000', '<p>Ahihi</p>', '...', 0, 1, 0, 1, 1),
(122, '', '', 7, 1, 0, '2023-01-12 03:31:50', '2023-01-12 03:31:50', 'Lọ Xịt Atrits', '', '<p><br></p>', '...', 0, 1, 0, 1, 0),
(123, '', 'catalog/Shoes/731e71dc76289e49a94009999b04217d.jpg', 23, 1, 1, '2023-03-19 14:47:09', '2023-03-19 14:47:09', 'giày bata', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(124, '', 'catalog/Shoes/5868093d10613643ad6b1ed4baa9ea29.jpg', 7, 1, 1, '2023-03-20 01:22:32', '2023-03-20 01:22:32', 'hihihi', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(125, '', '', 23, 1, 1, '2023-03-25 01:01:08', '2023-03-25 01:01:08', 'goku', '', '<p><br></p>', '...', 0, 1, 0, 1, 1),
(126, '', '', 23, 1, 1, '2024-02-17 13:27:06', '2024-02-17 13:27:06', 'test1', '', '<p><br></p>', '...', 0, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image`
--

DROP TABLE IF EXISTS `product_image`;
CREATE TABLE IF NOT EXISTS `product_image` (
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_id`,`image`),
  KEY `product_id` (`product_id`),
  KEY `fk_product_image_to_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_image`
--

INSERT INTO `product_image` (`product_id`, `image`, `sort_order`) VALUES
(28, 'catalog/products/Nike/02e9daad1cd74077086fc75bd139ecf8.jpg', 0),
(28, 'catalog/products/Nike/43464b550172637eeb4476dad1075743.jpg', 0),
(28, 'catalog/products/Nike/a0c19d9b3da73402c64c1aa70d84b4a6.jpg', 0),
(28, 'catalog/products/Nike/ae32798bdce5ddfaf622e1fb146560a9.jpg', 0),
(28, 'catalog/products/Nike/f9a70fad44d415fa91502d419e2393fa.jpg', 0),
(29, 'catalog/Shoes/Lacoste/GIÀY LACOSTE L004 722 NAM - TRẮNG XANH/giay-lacoste-l004-722-nam-trang-xanh-01.jpg', 0),
(29, 'catalog/Shoes/Lacoste/GIÀY LACOSTE L004 722 NAM - TRẮNG XANH/giay-lacoste-l004-722-nam-trang-xanh-02.jpg', 0),
(29, 'catalog/Shoes/Lacoste/GIÀY LACOSTE L004 722 NAM - TRẮNG XANH/giay-lacoste-l004-722-nam-trang-xanh-03.jpg', 0),
(29, 'catalog/Shoes/Lacoste/GIÀY LACOSTE L004 722 NAM - TRẮNG XANH/giay-lacoste-l004-722-nam-trang-xanh-04.jpg', 0),
(29, 'catalog/Shoes/Lacoste/GIÀY LACOSTE L004 722 NAM - TRẮNG XANH/giay-lacoste-l004-722-nam-trang-xanh-05.jpg', 0),
(30, 'catalog/Shoes/Lacoste/GIÀY LACOSTE MISANO STRAP 120 NAM - TRẮNG/giay-lacoste-misano-strap-120-nam-trang-01.jpg', 0),
(30, 'catalog/Shoes/Lacoste/GIÀY LACOSTE MISANO STRAP 120 NAM - TRẮNG/giay-lacoste-misano-strap-120-nam-trang-02.jpg', 0),
(30, 'catalog/Shoes/Lacoste/GIÀY LACOSTE MISANO STRAP 120 NAM - TRẮNG/giay-lacoste-misano-strap-120-nam-trang-03.jpg', 0),
(30, 'catalog/Shoes/Lacoste/GIÀY LACOSTE MISANO STRAP 120 NAM - TRẮNG/giay-lacoste-misano-strap-120-nam-trang-04.jpg', 0),
(30, 'catalog/Shoes/Lacoste/GIÀY LACOSTE MISANO STRAP 120 NAM - TRẮNG/giay-lacoste-misano-strap-120-nam-trang-05.jpg', 0),
(31, 'catalog/Shoes/Puma/GIÀY PUMA SMASH CAT L NAM - TRẮNG NAVY/giay-puma-smash-cat-l-nam-trang-navy-01.jpg', 0),
(31, 'catalog/Shoes/Puma/GIÀY PUMA SMASH CAT L NAM - TRẮNG NAVY/giay-puma-smash-cat-l-nam-trang-navy-02.jpg', 0),
(31, 'catalog/Shoes/Puma/GIÀY PUMA SMASH CAT L NAM - TRẮNG NAVY/giay-puma-smash-cat-l-nam-trang-navy-03.jpg', 0),
(31, 'catalog/Shoes/Puma/GIÀY PUMA SMASH CAT L NAM - TRẮNG NAVY/giay-puma-smash-cat-l-nam-trang-navy-04.jpg', 0),
(31, 'catalog/Shoes/Puma/GIÀY PUMA SMASH CAT L NAM - TRẮNG NAVY/giay-puma-smash-cat-l-nam-trang-navy-05.jpg', 0),
(32, 'catalog/products/Adidas/0fa00d91cbe3780fc9ce8da563ace798.jpg', 0),
(32, 'catalog/products/Adidas/12305ff594dd06d700d78823357a14c2.jpg', 0),
(32, 'catalog/products/Adidas/56fc4cbe7e0c0fd6cfbb327027f16ae1.jpg', 0),
(32, 'catalog/products/Adidas/89651c713ca3b7dca8fb4f7f6a07cc99.jpg', 0),
(32, 'catalog/products/Adidas/f78dd9c20150e9751296f3a5011ee364.jpg', 0),
(33, 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE 373 NAM - XANH NAVY/giay-new-balance-373-nam-xanh-navy-01.jpg', 0),
(33, 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE 373 NAM - XANH NAVY/giay-new-balance-373-nam-xanh-navy-02.jpg', 0),
(33, 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE 373 NAM - XANH NAVY/giay-new-balance-373-nam-xanh-navy-03.jpg', 0),
(33, 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE 373 NAM - XANH NAVY/giay-new-balance-373-nam-xanh-navy-04.jpg', 0),
(33, 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE 373 NAM - XANH NAVY/giay-new-balance-373-nam-xanh-navy-05.jpg', 0),
(34, 'catalog/Shoes/Asics/GIÀY ASICS SKY COURT NAM - TRẮNG ĐỎ/giay-asics-sky-court-nam-trang-do-01.jpg', 0),
(34, 'catalog/Shoes/Asics/GIÀY ASICS SKY COURT NAM - TRẮNG ĐỎ/giay-asics-sky-court-nam-trang-do-02.jpg', 0),
(34, 'catalog/Shoes/Asics/GIÀY ASICS SKY COURT NAM - TRẮNG ĐỎ/giay-asics-sky-court-nam-trang-do-03.jpg', 0),
(34, 'catalog/Shoes/Asics/GIÀY ASICS SKY COURT NAM - TRẮNG ĐỎ/giay-asics-sky-court-nam-trang-do-04.jpg', 0),
(34, 'catalog/Shoes/Asics/GIÀY ASICS SKY COURT NAM - TRẮNG ĐỎ/giay-asics-sky-court-nam-trang-do-05.jpg', 0),
(36, 'catalog/Shoes/Converse/Giày Converse Chuck Taylor All Star Classic Low Top White/0de626d33b2ba9bb3e687425c51a1cc0.jpg', 0),
(36, 'catalog/Shoes/Converse/Giày Converse Chuck Taylor All Star Classic Low Top White/50-mua-tai-shop-giay-converse-chuck-taylor-all-star-low-top-optical-white-m7652c.jpeg', 0),
(36, 'catalog/Shoes/Converse/Giày Converse Chuck Taylor All Star Classic Low Top White/CV-Chuck-Taylor-All-Star-Low-Top-Optical-White-3.jpg', 0),
(36, 'catalog/Shoes/Converse/Giày Converse Chuck Taylor All Star Classic Low Top White/ea569b21bd9ff816ea016d16f7e5cc7b.jpg', 0),
(40, 'catalog/Shoes/Adidas/GIÀY ADIDAS GLX 5M NAM - TRẮNG/giay-adidas-glx-5-nam-trang-01.jpg', 0),
(40, 'catalog/Shoes/Adidas/GIÀY ADIDAS GLX 5M NAM - TRẮNG/giay-adidas-glx-5-nam-trang-02.jpg', 0),
(40, 'catalog/Shoes/Adidas/GIÀY ADIDAS GLX 5M NAM - TRẮNG/giay-adidas-glx-5-nam-trang-03.jpg', 0),
(40, 'catalog/Shoes/Adidas/GIÀY ADIDAS GLX 5M NAM - TRẮNG/giay-adidas-glx-5-nam-trang-04.jpg', 0),
(40, 'catalog/Shoes/Adidas/GIÀY ADIDAS GLX 5M NAM - TRẮNG/giay-adidas-glx-5-nam-trang-05.jpg', 0),
(41, 'catalog/products/Adidas/ae275f8b172699541bac8ac123b9666d.jpg', 0),
(41, 'catalog/products/Adidas/b5e3b8f0ea9c3ac4a0cf4830fd30765c.jpg', 0),
(41, 'catalog/products/Adidas/bb64e14ce02aa2737def4815c42fd8ee.jpg', 0),
(41, 'catalog/products/Adidas/dcddf9d1b8e86e2a042b630e66cc9fee.jpg', 0),
(41, 'catalog/products/Adidas/f2918915ed9ce1789e4fa4100678a582.jpg', 0),
(43, 'catalog/products/Nike/0d6b55df4a62052094022c323db559ae.jpg', 0),
(43, 'catalog/products/Nike/286ef7943914030cd65fd36fa99c4bd6.jpg', 0),
(43, 'catalog/products/Nike/3531be1de92cbabdad24fcdf14305861.jpg', 0),
(43, 'catalog/products/Nike/6b1e37aea9ed950fc8e05f9c1b15bcf0.jpg', 0),
(43, 'catalog/products/Nike/b2f7334026be04b000dd13fbea2f0af2.jpg', 0),
(46, 'catalog/Shoes/Puma/GIÀY PUMA RALPH SAMPSON LO NAM - TRẮNG ĐỎ/giay-puma-palph-sampson-lo-nam-trang-do-01.jpg', 0),
(46, 'catalog/Shoes/Puma/GIÀY PUMA RALPH SAMPSON LO NAM - TRẮNG ĐỎ/giay-puma-palph-sampson-lo-nam-trang-do-02.jpg', 1),
(46, 'catalog/Shoes/Puma/GIÀY PUMA RALPH SAMPSON LO NAM - TRẮNG ĐỎ/giay-puma-palph-sampson-lo-nam-trang-do-03.jpg', 2),
(46, 'catalog/Shoes/Puma/GIÀY PUMA RALPH SAMPSON LO NAM - TRẮNG ĐỎ/giay-puma-palph-sampson-lo-nam-trang-do-04.jpg', 3),
(46, 'catalog/Shoes/Puma/GIÀY PUMA RALPH SAMPSON LO NAM - TRẮNG ĐỎ/giay-puma-palph-sampson-lo-nam-trang-do-05.jpg', 4),
(47, 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE VIAZA NAM - XANH LAM/giay-new-balance-viaza-nam-xanh-lam-01.jpg', 0),
(47, 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE VIAZA NAM - XANH LAM/giay-new-balance-viaza-nam-xanh-lam-02.jpg', 0),
(47, 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE VIAZA NAM - XANH LAM/giay-new-balance-viaza-nam-xanh-lam-03.jpg', 0),
(47, 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE VIAZA NAM - XANH LAM/giay-new-balance-viaza-nam-xanh-lam-04.jpg', 0),
(48, 'catalog/Shoes/Converse/Giày Converse Run Star Hike Twisted Classic Foundational Canvas/4d99b688409371b25ca789d07f6a30fc.jpg', 0),
(48, 'catalog/Shoes/Converse/Giày Converse Run Star Hike Twisted Classic Foundational Canvas/8f158f59adac13f0b5dbe309987f130e.jpg', 0),
(48, 'catalog/Shoes/Converse/Giày Converse Run Star Hike Twisted Classic Foundational Canvas/dd6eb1039a04d9d3c24ac9707b5e3743.jpg', 0),
(48, 'catalog/Shoes/Converse/Giày Converse Run Star Hike Twisted Classic Foundational Canvas/f5fe45cac10e9f37ac636b3589d77aa2.jpg', 0),
(48, 'catalog/Shoes/Converse/Giày Converse Run Star Hike Twisted Classic Foundational Canvas/giay-converse-run-star-hike-twisted-classic-foundational-canvas-rep-11-4.jpg', 0),
(49, 'catalog/Shoes/Puma/GIÀY PUMA COURT POINT VULC V2 NAM - TRẮNG ĐEN/giay-puma-court-point-vulc-v2-nam-trang-den-01.jpg', 0),
(49, 'catalog/Shoes/Puma/GIÀY PUMA COURT POINT VULC V2 NAM - TRẮNG ĐEN/giay-puma-court-point-vulc-v2-nam-trang-den-02.jpg', 0),
(49, 'catalog/Shoes/Puma/GIÀY PUMA COURT POINT VULC V2 NAM - TRẮNG ĐEN/giay-puma-court-point-vulc-v2-nam-trang-den-03.jpg', 0),
(49, 'catalog/Shoes/Puma/GIÀY PUMA COURT POINT VULC V2 NAM - TRẮNG ĐEN/giay-puma-court-point-vulc-v2-nam-trang-den-04.jpg', 0),
(49, 'catalog/Shoes/Puma/GIÀY PUMA COURT POINT VULC V2 NAM - TRẮNG ĐEN/giay-puma-court-point-vulc-v2-nam-trang-den-05.jpg', 0),
(60, 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE M411 NAM - ĐEN TRẮNG/giay-new-balance-m411-nam-xanh-den-trang-01.jpg', 0),
(60, 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE M411 NAM - ĐEN TRẮNG/giay-new-balance-m411-nam-xanh-den-trang-02.jpg', 1),
(60, 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE M411 NAM - ĐEN TRẮNG/giay-new-balance-m411-nam-xanh-den-trang-03.jpg', 2),
(60, 'catalog/Shoes/Newbalance/GIÀY NEW BALANCE M411 NAM - ĐEN TRẮNG/giay-new-balance-m411-nam-xanh-den-trang-04.jpg', 0),
(63, 'catalog/Shoes/Asics/GIÀY ASICS DYNABLAST NAM - XÁM/giay-asics-dynablast-nam-xam-01-550x550.png', 0),
(63, 'catalog/Shoes/Asics/GIÀY ASICS DYNABLAST NAM - XÁM/giay-asics-dynablast-nam-xam-02-550x550.png', 0),
(63, 'catalog/Shoes/Asics/GIÀY ASICS DYNABLAST NAM - XÁM/giay-asics-dynablast-nam-xam-03-550x550.png', 0),
(63, 'catalog/Shoes/Asics/GIÀY ASICS DYNABLAST NAM - XÁM/giay-asics-dynablast-nam-xam-04-550x550.png', 0),
(63, 'catalog/Shoes/Asics/GIÀY ASICS DYNABLAST NAM - XÁM/giay-asics-dynablast-nam-xam-05-550x550.png', 0),
(64, 'catalog/Shoes/Reebok/Giày Reebok Club C Revenge Plus Màu Trắng/giay-reebok-club-c-revenge-plus-mau-trang-5f72dda28e89d-29092020140922.jpg', 0),
(64, 'catalog/Shoes/Reebok/Giày Reebok Club C Revenge Plus Màu Trắng/giay-reebok-club-c-revenge-plus-mau-trang-5f72dda31f930-29092020140923.jpg', 0),
(64, 'catalog/Shoes/Reebok/Giày Reebok Club C Revenge Plus Màu Trắng/giay-reebok-club-c-revenge-plus-mau-trang-5f72dda37201f-29092020140923.jpg', 0),
(64, 'catalog/Shoes/Reebok/Giày Reebok Club C Revenge Plus Màu Trắng/giay-reebok-club-c-revenge-plus-mau-trang-5f72dda424000-29092020140924.jpg', 0),
(65, 'catalog/Shoes/Lacoste/GIÀY LACOSTE POWERCOURT NAM - ĐEN/giay-lacoste-powercourt-nam-den-01.jpg', 0),
(65, 'catalog/Shoes/Lacoste/GIÀY LACOSTE POWERCOURT NAM - ĐEN/giay-lacoste-powercourt-nam-den-02.jpg', 0),
(65, 'catalog/Shoes/Lacoste/GIÀY LACOSTE POWERCOURT NAM - ĐEN/giay-lacoste-powercourt-nam-den-03.jpg', 0),
(65, 'catalog/Shoes/Lacoste/GIÀY LACOSTE POWERCOURT NAM - ĐEN/giay-lacoste-powercourt-nam-den-04.jpg', 0),
(65, 'catalog/Shoes/Lacoste/GIÀY LACOSTE POWERCOURT NAM - ĐEN/giay-lacoste-powercourt-nam-den-05.jpg', 0),
(66, 'catalog/Shoes/Reebok/Giày Thể Thao Reebok Zig Dynamica Hld Running Shoe FY7064 Màu Trắng Xám/giay-the-thao-reebok-zig-dynamica-hld-running-shoe-fy7064-mau-trang-xam-61985b5b12325-20112021092011.jpg', 0),
(66, 'catalog/Shoes/Reebok/Giày Thể Thao Reebok Zig Dynamica Hld Running Shoe FY7064 Màu Trắng Xám/giay-the-thao-reebok-zig-dynamica-hld-running-shoe-fy7064-mau-trang-xam-61985b5b1850e-20112021092011.jpg', 0),
(66, 'catalog/Shoes/Reebok/Giày Thể Thao Reebok Zig Dynamica Hld Running Shoe FY7064 Màu Trắng Xám/giay-the-thao-reebok-zig-dynamica-hld-running-shoe-fy7064-mau-trang-xam-61985b5b20497-20112021092011.jpg', 0),
(66, 'catalog/Shoes/Reebok/Giày Thể Thao Reebok Zig Dynamica Hld Running Shoe FY7064 Màu Trắng Xám/giay-the-thao-reebok-zig-dynamica-hld-running-shoe-fy7064-mau-trang-xam-61985b5b2cb76-20112021092011.jpg', 0),
(67, 'catalog/products/Nike/267d8eac32d51c6bf04f7bf25f854712.jpg', 0),
(67, 'catalog/products/Nike/94cfce00f30e159ad349e4c433c5b1da.jpg', 0),
(67, 'catalog/products/Nike/9cc2d92aa10d2f52ed69459263365bf3.jpg', 0),
(67, 'catalog/products/Nike/a46dfb3926d54b5eafd36e9804fe9043.jpg', 0),
(67, 'catalog/products/Nike/bdc88c8da9b504137d7ffd857a512315.jpg', 0),
(68, 'catalog/Shoes/Converse/Giày Converse Chuck Taylor All Star 1970s Hi Top Black/13882398fe37aae37257108124fb0794.jpg', 0),
(68, 'catalog/Shoes/Converse/Giày Converse Chuck Taylor All Star 1970s Hi Top Black/chuck-taylor-all-star-classic-hi-black-5.jpg', 0),
(68, 'catalog/Shoes/Converse/Giày Converse Chuck Taylor All Star 1970s Hi Top Black/converse-chuck-taylor-67-jpg-1603350775-22102020141255.jpg', 0),
(68, 'catalog/Shoes/Converse/Giày Converse Chuck Taylor All Star 1970s Hi Top Black/f2c8c030633b1b351cb06076ba79870a.jpg', 0),
(69, 'catalog/Shoes/Asics/GIÀY ASICS GLIDERIDE 2 NAM - XANH/giay-asics-glideride-2-nam-xanh-01.jpg', 0),
(69, 'catalog/Shoes/Asics/GIÀY ASICS GLIDERIDE 2 NAM - XANH/giay-asics-glideride-2-nam-xanh-02.jpg', 0),
(69, 'catalog/Shoes/Asics/GIÀY ASICS GLIDERIDE 2 NAM - XANH/giay-asics-glideride-2-nam-xanh-03.jpg', 0),
(69, 'catalog/Shoes/Asics/GIÀY ASICS GLIDERIDE 2 NAM - XANH/giay-asics-glideride-2-nam-xanh-04.jpg', 0),
(69, 'catalog/Shoes/Asics/GIÀY ASICS GLIDERIDE 2 NAM - XANH/giay-asics-glideride-2-nam-xanh-05.jpg', 0),
(70, 'catalog/Shoes/Reebok/Giày Thể Thao Tenis Reebok Energylux 3.0 GY0154 Màu Đen/giay-the-thao-reebok-energylux-3-0-gy0151-mau-den-size-42-6268a7e392963-27042022091811.jpg', 0),
(70, 'catalog/Shoes/Reebok/Giày Thể Thao Tenis Reebok Energylux 3.0 GY0154 Màu Đen/giay-the-thao-reebok-energylux-3-0-gy0151-mau-den-size-42-6268a7e399bca-27042022091811.jpg', 0),
(70, 'catalog/Shoes/Reebok/Giày Thể Thao Tenis Reebok Energylux 3.0 GY0154 Màu Đen/giay-the-thao-reebok-energylux-3-0-gy0151-mau-den-size-42-6268a7e3a1004-27042022091811.jpg', 0),
(70, 'catalog/Shoes/Reebok/Giày Thể Thao Tenis Reebok Energylux 3.0 GY0154 Màu Đen/giay-the-thao-reebok-energylux-3-0-gy0151-mau-den-size-42-6268a7e3a7845-27042022091811.jpg', 0),
(70, 'catalog/Shoes/Reebok/Giày Thể Thao Tenis Reebok Energylux 3.0 GY0154 Màu Đen/giay-the-thao-tenis-reebok-energylux-3-0-gy0154-mau-den-size-42-62ec78ccbe912-05082022085628.jpg', 0),
(71, 'catalog/Shoes/Vans/Giày Vans Authentic/04dc5542ccecee08883f86437f83461f.jpg', 0),
(71, 'catalog/Shoes/Vans/Giày Vans Authentic/gia-giay-vans-chinh-hang-4-jpg-1599623295-09092020104815.jpg', 0),
(71, 'catalog/Shoes/Vans/Giày Vans Authentic/giay-Vans-Classic-Authentic-Black-Ox-den-co-thap-rep-11-gia-re-ha-noi-VN000EE3BLK.jpg', 0),
(71, 'catalog/Shoes/Vans/Giày Vans Authentic/vn000ee3blk-giay-vans-authentic__3__6e28a6e780ab42cb83806c1f52b7c9b4.jpg', 0),
(73, 'catalog/6755d3c7524988a74d8f91d54f7586cb.jpg', 1),
(73, 'catalog/67cdfcb5e8774bda83fdff9bc9c3ccae.jpg', 2),
(74, 'catalog/691ab216aec7b9445353ca84681dbb96.JPEG', 2),
(74, 'catalog/98e8f75ce30090edf188aa1d1348958a.jpg', 1),
(75, 'catalog/053cee210fa59781937134daff7e1c01.jpg', 2),
(75, 'catalog/805bfc82cdbd33111f5f09be05fe8b94.jpg', 1),
(76, 'catalog/43fae74de4757b3c788aa6787f5477ef.jpg', 0),
(77, 'catalog/67d404a45a1a88d9ae6a9f7ceb411d63.jpg', 1),
(77, 'catalog/c45631577851a8fe546af503970c1d40.jpg', 2),
(81, 'catalog/089044d628017a0362a5d98652899d0a.jpg', 0),
(81, 'catalog/097c88f60627e28df36a74526e97e1af.jpg', 0),
(84, 'catalog/379e1029fbe8af30d84487bfe0930297.jpg', 0),
(85, 'catalog/228dff3dd92e61c73ed673db55c3c529.jpg', 0),
(87, 'catalog/7172fd1915c85c586fe0d2dbb7a488fd.jpg', 0),
(87, 'catalog/7a28098764af1771e2b74a67b80df718.jpg', 0),
(87, 'catalog/c2f2bd6c38e3571a71808bc7bd787b6d.jpg', 0),
(88, 'catalog/035b1b1bce415da12831227b3ece6667.jpg', 0),
(88, 'catalog/94425b11a5596aabc5be7cf406848741.jpg', 0),
(90, 'catalog/Shoes/Nike Tiempo Legend 9 Academy TF Xám Tím/0692c2ab22efdd48a1646c1283c2ae2d.jpg', 1),
(90, 'catalog/Shoes/Nike Tiempo Legend 9 Academy TF Xám Tím/3d8d08fb54916ed0f1bacab2f3db4658.jpg', 2),
(90, 'catalog/Shoes/Nike Tiempo Legend 9 Academy TF Xám Tím/9238b4067b0a3db2d481fdd150408682.jpg', 3),
(112, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_category`
--

DROP TABLE IF EXISTS `product_to_category`;
CREATE TABLE IF NOT EXISTS `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `fk_product_to_category_to_category` (`category_id`),
  KEY `fk_product_to_category_to_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_to_category`
--

INSERT INTO `product_to_category` (`product_id`, `category_id`) VALUES
(28, 71),
(29, 20),
(29, 83),
(30, 83),
(31, 80),
(32, 72),
(33, 78),
(34, 81),
(36, 77),
(40, 72),
(41, 72),
(43, 71),
(46, 80),
(47, 78),
(48, 77),
(49, 80),
(60, 78),
(63, 81),
(64, 79),
(65, 83),
(66, 79),
(67, 71),
(68, 77),
(69, 81),
(70, 79),
(71, 24),
(73, 46),
(74, 46),
(75, 46),
(76, 28),
(77, 83),
(78, 74),
(79, 74),
(80, 74),
(81, 29),
(82, 29),
(83, 29),
(84, 28),
(85, 28),
(86, 28),
(87, 30),
(88, 30),
(90, 71),
(91, 83),
(94, 74),
(95, 46),
(96, 46),
(97, 72),
(98, 81),
(99, 74),
(100, 74),
(101, 46),
(102, 74),
(103, 74),
(104, 74),
(105, 72),
(106, 81),
(107, 73),
(108, 77),
(109, 74),
(110, 46),
(111, 46),
(112, 71),
(113, 77),
(115, 78),
(116, 78),
(121, 77),
(123, 77),
(124, 77),
(125, 46),
(125, 77),
(125, 78),
(125, 80),
(125, 83),
(126, 86);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`setting_id`, `key`, `value`) VALUES
(171, 'config_name', 'Webshop Shoes G4'),
(172, 'config_owner', 'Steve Jobs'),
(173, 'config_address', '54 phố Lê Thanh Nghị - quận Hai Bà Trưng. t.p Hà Nội. Việt Nam.'),
(176, 'config_telephone', '0912247115'),
(178, 'config_image', 'catalog/logos/Apple_logo.png'),
(179, 'config_open', '08h:00'),
(180, 'config_comment', 'Cửa hành chỉ nhận thanh toán tiền mặt.'),
(194, 'config_product_count', '1'),
(195, 'config_product_limit', '15'),
(196, 'config_product_description_length', '100'),
(197, 'config_limit_admin', '21'),
(220, 'config_order_mail', '0'),
(231, 'config_logo', 'catalog/089044d628017a0362a5d98652899d0a.jpg'),
(232, 'config_icon', 'catalog/ab64bbbe76d21a016d1b104dc23454fb.png'),
(233, 'config_image_category_width', '80'),
(234, 'config_image_category_height', '80'),
(235, 'config_image_thumb_width', '228'),
(236, 'config_image_thumb_height', '228'),
(237, 'config_image_popup_width', '500'),
(238, 'config_image_popup_height', '500'),
(239, 'config_image_product_width', '228'),
(240, 'config_image_product_height', '228'),
(241, 'config_image_additional_width', '74'),
(242, 'config_image_additional_height', '74'),
(243, 'config_image_related_width', '80'),
(244, 'config_image_related_height', '80'),
(245, 'config_image_compare_width', '90'),
(246, 'config_image_compare_height', '90'),
(247, 'config_image_wishlist_width', '47'),
(248, 'config_image_wishlist_height', '47'),
(249, 'config_image_cart_width', '47'),
(250, 'config_image_cart_height', '47'),
(251, 'config_image_location_width', '268'),
(252, 'config_image_location_height', '50'),
(269, 'config_file_max_size', '300000'),
(270, 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods'),
(271, 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet'),
(272, 'config_maintenance', '0'),
(273, 'config_password', '1'),
(275, 'config_compression', '0'),
(276, 'config_error_display', '1'),
(277, 'config_error_log', '1'),
(278, 'config_error_filename', 'error.log'),
(280, 'config_email', 'stevejobs@gmail.com'),
(281, 'config_url', 'http://localhost:82/xxxxxx/'),
(282, 'products_featured_limit', '14'),
(283, 'products_best_seller_limit', '9'),
(284, 'html_google_map_embed', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.7297008861333!2d105.8469290148016!3d21.003469486012065!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad58455db2ab%3A0x9b3550bc22fd8bb!2zNTQgTMOqIFRoYW5oIE5naOG7iywgQsOhY2ggS2hvYSwgSGFpIELDoCBUcsawbmcsIEjDoCBO4buZaSwgVmlldG5hbQ!5e0!3m2!1sen!2s!4v1618929186381!5m2!1sen!2s\" style=\"border:0; width: 100%;\"  height=\"450\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(285, 'config_post_limit', '15'),
(286, 'categories_featured_limit', '9');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size_amount`
--

DROP TABLE IF EXISTS `size_amount`;
CREATE TABLE IF NOT EXISTS `size_amount` (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `priceSize` decimal(15,0) NOT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=593 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `size_amount`
--

INSERT INTO `size_amount` (`size_id`, `size`, `amount`, `product_id`, `priceSize`) VALUES
(34, '40', 55, 40, '1500000'),
(35, '39', 100, 40, '1450000'),
(36, '38', 10, 40, '1400000'),
(37, '34', 0, 40, '1350000'),
(38, '35', 70, 40, '1300000'),
(39, '36', 41, 40, '1250000'),
(40, '32', 0, 40, '1200000'),
(62, '39', 100, 34, '1500000'),
(63, '35', 120, 34, '1450000'),
(64, '40', 300, 34, '1525000'),
(65, '34', 0, 34, '1492500'),
(66, '50', 30, 91, '10000000'),
(67, '30', 100, 97, '1500000'),
(68, '32', 65, 97, '1650000'),
(75, '40', 21, 36, '950000'),
(76, '35', 120, 36, '912000'),
(78, '37', 29, 36, '940000'),
(79, '36', 177, 36, '920000'),
(80, '30', 51, 36, '900000'),
(88, '40', 100, 119, '1500000'),
(89, '42', 120, 119, '1750000'),
(90, '40', 109, 89, '500000'),
(91, '30', 2, 113, '750000'),
(92, '40', 105, 118, '1500000'),
(93, '40', 111, 29, '320000'),
(94, '39', 123, 29, '312000'),
(95, '38', 56, 29, '304000'),
(96, '37', 98, 29, '300000'),
(97, '36', 99, 29, '291000'),
(98, '35', 201, 29, '284500'),
(99, '34', 92, 29, '279500'),
(181, '29', 0, 49, '350000'),
(182, '30', 21, 49, '354000'),
(183, '31', 10, 49, '359000'),
(184, '32', 33, 49, '364000'),
(185, '33', 9, 49, '369000'),
(186, '34', 25, 49, '374000'),
(187, '35', 45, 49, '378500'),
(188, '36', 13, 49, '380000'),
(189, '40', 45, 46, '690000'),
(191, '35', 32, 46, '679000'),
(192, '34', 0, 46, '674000'),
(193, '33', 10, 46, '670000'),
(194, '32', 12, 46, '668000'),
(195, '31', 33, 46, '664000'),
(196, '30', 15, 46, '660000'),
(214, '31', 10, 64, '870000'),
(215, '32', 25, 64, '872500'),
(216, '33', 8, 64, '875000'),
(217, '34', 11, 64, '877500'),
(218, '35', 45, 64, '880000'),
(219, '36', 26, 64, '885000'),
(220, '37', 0, 64, '888000'),
(221, '38', 0, 64, '890000'),
(222, '39', 55, 64, '895000'),
(223, '40', 15, 64, '899000'),
(224, '30', 78, 98, '1200000'),
(225, '35', 100, 98, '1350000'),
(237, '35', 20, 90, '900000'),
(238, '36', 18, 90, '905000'),
(240, '38', 2, 90, '911500'),
(241, '39', 16, 90, '915000'),
(242, '40', 22, 90, '918500'),
(243, '41', 45, 90, '920000'),
(244, '42', 7, 90, '925000'),
(245, '43', 0, 90, '928500'),
(246, '44', 21, 90, '930000'),
(247, '30', 64, 90, '880000'),
(255, '250', 100, 102, '35000'),
(256, '150', 50, 104, '15000'),
(280, '40', 100, 116, '10000000'),
(291, '12', 1, 112, '750000'),
(299, '45', 255, 99, '25000'),
(300, '42', 120, 99, '20000'),
(301, '39', 300, 99, '15000'),
(336, '32', 125, 30, '662000'),
(337, '33', 77, 30, '680000'),
(338, '34', 42, 30, '715000'),
(339, '35', 0, 30, '722000'),
(341, '37', 95, 30, '739500'),
(342, '30', 21, 30, '597000'),
(368, '37', 4, 90, '908500'),
(370, '28', 15, 31, '450000'),
(371, '32', 10, 31, '459000'),
(372, '37', 0, 31, '470000'),
(373, '38', 5, 31, '475000'),
(374, '39', 0, 31, '479500'),
(375, '40', 56, 31, '482000'),
(376, '41', 11, 31, '485500'),
(377, '30', -3, 31, '450000'),
(381, '31', 60, 30, '655000'),
(382, '36', 11, 30, '730000'),
(383, '38', 201, 36, '945500'),
(384, '39', 26, 46, '685000'),
(392, '35', 75, 32, '750000'),
(394, '33', 12, 32, '740000'),
(395, '40', 200, 32, '890000'),
(408, '35', 60, 33, '136500'),
(409, '36', 55, 33, '139500'),
(410, '37', 23, 33, '143500'),
(411, '38', 0, 33, '148500'),
(412, '39', 0, 33, '151500'),
(413, '41', 0, 33, '156500'),
(414, '42', 72, 33, '160000'),
(415, '30', 12, 33, '120000'),
(419, '10', 10, 121, '120000'),
(420, '11', 11, 121, '150000'),
(421, '41', 120, 41, '450000'),
(422, '34', 500, 41, '345000'),
(423, '39', 95, 41, '445000'),
(424, '36', 0, 41, '395500'),
(425, '37', 21, 41, '400000'),
(426, '40', 100, 69, '900000'),
(427, '34', 101, 69, '785500'),
(428, '37', 0, 69, '845000'),
(429, '38', 90, 69, '855500'),
(430, '36', 0, 69, '797500'),
(431, '39', 8, 69, '800000'),
(432, '40', 100, 68, '1800000'),
(433, '39', 100, 68, '1785000'),
(434, '34', 300, 68, '1725000'),
(435, '35', 115, 68, '1740000'),
(436, '38', 177, 68, '1768000'),
(437, '36', 0, 68, '1750000'),
(438, '36', 654, 48, '2100000'),
(439, '35', 111, 48, '2085000'),
(440, '34', 321, 48, '2076000'),
(441, '37', 21, 48, '2120000'),
(442, '38', 0, 48, '2135500'),
(443, '30', 32, 48, '2025000'),
(444, '32', 95, 48, '2085000'),
(445, '42', 10, 47, '512000'),
(446, '36', 33, 47, '475500'),
(447, '35', 0, 47, '470000'),
(448, '34', 0, 47, '467500'),
(449, '33', 9, 47, '462500'),
(450, '30', 100, 47, '455000'),
(451, '40', 17, 47, '500000'),
(452, '39', 19, 47, '495000'),
(453, '30', 70, 63, '220000'),
(454, '32', 100, 63, '245000'),
(455, '35', 265, 63, '265500'),
(456, '37', 29, 63, '275000'),
(458, '38', 21, 28, '915000'),
(459, '39', 0, 28, '919500'),
(460, '40', 7, 28, '924500'),
(461, '41', 21, 28, '929500'),
(462, '43', 23, 28, '939500'),
(463, '42', 0, 28, '934500'),
(464, '37', 0, 28, '910000'),
(465, '35', 23, 65, '620000'),
(466, '36', 45, 65, '325500'),
(467, '37', 11, 65, '630000'),
(468, '38', 37, 65, '640000'),
(469, '39', 0, 65, '645000'),
(470, '40', 0, 65, '648500'),
(471, '41', 22, 65, '651000'),
(472, '42', 9, 65, '654500'),
(473, '43', 55, 65, '665000'),
(474, '33', 20, 60, '560000'),
(475, '35', 8, 60, '563500'),
(476, '37', 11, 60, '567000'),
(477, '38', 21, 60, '570000'),
(478, '39', 100, 60, '575000'),
(479, '40', 15, 60, '579500'),
(480, '41', 7, 60, '583500'),
(481, '42', 21, 60, '587000'),
(482, '29', 0, 43, '450000'),
(483, '30', 10, 43, '455000'),
(484, '32', 0, 43, '462000'),
(485, '34', 45, 43, '470000'),
(486, '35', 21, 43, '477500'),
(487, '36', 20, 43, '480000'),
(488, '37', 20, 43, '485000'),
(489, '40', 10, 43, '495500'),
(490, '33', 10, 67, '650000'),
(491, '34', 11, 67, '655000'),
(492, '36', 7, 67, '662500'),
(493, '37', 9, 67, '669500'),
(494, '39', 15, 67, '672000'),
(495, '40', 22, 67, '678000'),
(496, '41', 15, 67, '680500'),
(497, '42', 11, 67, '685500'),
(498, '36', 10, 66, '150000'),
(499, '37', 20, 66, '155000'),
(500, '38', 25, 66, '160000'),
(501, '39', 0, 66, '165000'),
(502, '40', 45, 66, '170000'),
(503, '41', 101, 66, '175000'),
(504, '42', 0, 66, '180000'),
(505, '43', 14, 66, '185000'),
(506, '39', 12, 71, '1745000'),
(507, '38', 0, 71, '1740000'),
(508, '37', 8, 71, '1736500'),
(509, '36', 10, 71, '1732500'),
(510, '35', 7, 71, '1730000'),
(511, '34', 12, 71, '1726500'),
(512, '31', 21, 71, '1720000'),
(513, '30', 15, 71, '1715000'),
(514, '28', 0, 71, '1712000'),
(515, '33', 7, 71, '1725000'),
(516, '40', 96, 71, '1750000'),
(526, '43', 21, 70, '745000'),
(527, '42', 12, 70, '742000'),
(528, '41', 9, 70, '740000'),
(529, '40', 10, 70, '738000'),
(530, '39', 54, 70, '735000'),
(531, '38', 6, 70, '732500'),
(532, '37', 11, 70, '730000'),
(533, '36', 0, 70, '728000'),
(534, '35', 0, 70, '725500'),
(544, '30', 50, 84, '40000'),
(545, '31', 70, 84, '40000'),
(546, '32', 90, 84, '40000'),
(547, '33', 10, 84, '42000'),
(548, '34', 12, 84, '45000'),
(549, '35', 78, 84, '45000'),
(550, '37', 0, 84, '48000'),
(551, '39', 21, 84, '50000'),
(552, '41', 0, 84, '53000'),
(553, '35', 100, 86, '100000'),
(554, '37', 25, 86, '112000'),
(555, '38', 32, 86, '120000'),
(556, '39', 64, 86, '125000'),
(557, '40', 15, 86, '128000'),
(558, '33', 22, 86, '97000'),
(559, '32', 0, 86, '91000'),
(560, '31', 11, 76, '50000'),
(561, '32', 25, 76, '52500'),
(562, '33', 37, 76, '55000'),
(563, '34', 15, 76, '59000'),
(564, '35', 0, 76, '62000'),
(565, '36', 33, 76, '67000'),
(566, '37', 88, 76, '70000'),
(567, '38', 5, 76, '73500'),
(568, '39', 21, 76, '76000'),
(583, '40', 10, 85, '87000'),
(584, '39', 15, 85, '84000'),
(585, '38', 26, 85, '83000'),
(586, '37', 22, 85, '81000'),
(587, '36', 12, 85, '79000'),
(588, '35', 21, 85, '76000'),
(589, '34', 75, 85, '74000'),
(590, '35', 10, 28, '900000'),
(591, '37', 498, 32, '832500'),
(592, '32', 6, 33, '125000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `due_date` datetime NOT NULL DEFAULT '2099-01-01 23:00:00',
  `phone` varchar(32) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `fullname`, `email`, `image`, `code`, `status`, `date_added`, `due_date`, `phone`, `description`, `sort_order`) VALUES
(1, 'admin', '$2y$10$Tc1osucDLoeWE9fS/aVGn.DnQM3.SkrPZKB7zhBUn1N/Hq5OBahe2', 'Nguyễn Anh Thắng', 'stevejobs@apple.com', 'catalog/31f1f49abb87eed59fd7da8c4ea3a01e.jpg', '', 1, '2015-01-29 08:07:20', '2099-01-01 23:00:00', '+(84)0912247115', '<p><span style=\"font-size: 16px;\" lang=\"IT-IT\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Đam mê tiếp thị kỹ thuật số, thức ăn ngon, động vật, thiên nhiên và cà phê. </font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Tôi đã sống ở nước ngoài nhiều năm, và chưa bao giờ ngừng tìm kiếm những món ăn ngon, đặc biệt là những gì có thể khiến tôi cảm thấy như đang ở nhà. </font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Thật không may, ngay cả trong thời đại toàn cầu hóa, một số sản phẩm nhất định không có sẵn trong các cửa hàng hoặc trên Internet. </font></font></font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n \r\n	               Foodgenuine là một dự án đầy tham vọng và đặc biệt, mục đích của chúng tôi là \"giảm bớt\" khoảng cách và mang đến cho bạn \"khoảng thời gian vui vẻ\", bất kể bạn ở đâu. </font></font></font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> \r\n	               Tôi thích pizza và mì ống, và tôi luôn có thể ăn focaccia của người Genova. </font></font></font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> \r\n	               Khẩu hiệu của tôi? </font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\"Bạn là những gì bạn ăn\".</font></font></font></font></span></p>', 0),
(4, 'tuananh', '$2y$10$YVNS4cbzO/GnfBV6IN/KYeqfRtn8mTMT46K3NqVj3BA/uwL3sZ6We', 'Tuấn anh', 'billgates@gmail.com', 'catalog/16995c682c23e50c37d71aa31c988c2a.jpg', '', 1, '2015-04-03 17:32:02', '2099-01-01 23:00:00', '', '<p><span style=\"font-size: 16px;\" lang=\"IT-IT\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Là người yêu thích công nghệ và internet, tôi đã làm việc tại Hà Lan hơn 7 năm trong lĩnh vực này. </font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">I Holland food không phải là yếu tố tự hào và niềm đam mê của tôi đối với những món ăn ngon và khó khăn trong việc tìm kiếm món ăn đó trong siêu thị và trên mạng đã đè nặng lên thời gian tôi ở nước ngoài. </font></font></font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">	               Được thúc đẩy bởi nhu cầu này, tôi bắt đầu thành lập Foodgenuine, một thương mại điện tử để bán thực phẩm và đồ uống chính hãng, tốt cho sức khỏe, tự nhiên và không công nghiệp. </font></font></font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">	               Mục tiêu của tôi cũng là mang đến cho các nhà sản xuất nhỏ cơ hội bán sản phẩm của họ trên toàn thế giới. </font></font></font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">	               Món ăn ngon và tốt cho sức khỏe mọi người; </font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\" </font></font></font></font><span style=\"font-style: italic;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Thức ăn không no bụng, thức ăn là sức khỏe</font></font></font></font></span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> \".</font></font></font></font></span></p>', 3),
(5, 'binhha', '$2y$10$.8oeLPfmjvU.Ucm5t2QqR.FGP.AsrydI/GssasQjUgfYOAYoowm2y', 'binh hà', 'zuck@facebook.com', 'catalog/d2bf4f7aee6d1b46b5744de8e69a5f59.jpg', '', 1, '2015-04-06 18:25:04', '2099-01-01 23:00:00', '', '<p><span style=\"font-size: 16px;\" lang=\"IT-IT\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Đam mê internet và công nghệ, sức khỏe và hạnh phúc, tôi thích đi du lịch và nếm thử các sản phẩm đặc trưng của các địa điểm khác nhau để tìm kiếm những sản phẩm tốt nhất và hương vị độc đáo. </font></font></font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n	               Vì vậy, tôi quyết định tham gia vào dự án Foodgenuine chăm sóc về khía cạnh CNTT.</font></font></font></font></span></p>', 2),
(7, 'PhungNgocBao', '$2y$10$FlsGBUE5vjS.aCKpy9aClOtYLPY7OILXjQdItdANgb93oaFtB.zp6', 'Bảo', 'obama@gov.com', 'catalog/10d58e6f7794d5c3fbca8495007ce006.jpg', '', 1, '2020-07-09 22:45:42', '2099-01-01 23:00:00', '', '<p><br></p>', 0);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_order_details_to_order` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `fk_order_details_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_to_manufacturer` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`);

--
-- Các ràng buộc cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `fk_product_image_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product_to_category`
--
ALTER TABLE `product_to_category`
  ADD CONSTRAINT `fk_product_to_category_to_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `fk_product_to_category_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
