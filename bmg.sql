-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2023 at 05:39 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bmg`
--

-- --------------------------------------------------------

--
-- Table structure for table `e4_analytics_code`
--

CREATE TABLE `e4_analytics_code` (
  `id` int(5) NOT NULL,
  `title_vn` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description_vn` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `region` int(2) NOT NULL DEFAULT '0',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_created` int(20) NOT NULL,
  `user_created` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` int(20) NOT NULL,
  `user_updated` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e4_analytics_code`
--

INSERT INTO `e4_analytics_code` (`id`, `title_vn`, `description_vn`, `code`, `position`, `region`, `status`, `date_created`, `user_created`, `date_updated`, `user_updated`) VALUES
(3, 'ManyChat', 'ManyChat', '<!-- ManyChat -->\r\n<script src=\"//widget.manychat.com/153987.js\" async=\"async\"></script>', 'header', 2, 'active', 1487872053, 'admin@gmail.com', 1595493737, 'admin@gmail.com'),
(11, 'Google', 'Google Analytics', '<!-- Global site tag (gtag.js) - Google Ads: 663102357 -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=AW-663102357\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  //gtag(\'config\', \'AW-663102357\');\r\n  gtag(\'config\', \'UA-159669318-1\',{ \'optimize_id\': \'GTM-PFZ9QJV\'});\r\n</script>', 'header', 1, 'active', 1594719612, 'admin@gmail.com', 1595493664, 'admin@gmail.com'),
(12, 'Facebook', 'Mã nhúng theo dõi facebook connect', '<!-- Facebook Pixel Code -->\r\n<script>\r\n  !function(f,b,e,v,n,t,s)\r\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\r\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\r\n  n.queue=[];t=b.createElement(e);t.async=!0;\r\n  t.src=v;s=b.getElementsByTagName(e)[0];\r\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\r\n  \'https://connect.facebook.net/en_US/fbevents.js\');\r\n  fbq(\'init\', \'238627553830211\');\r\n  fbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\n  src=\"https://www.facebook.com/tr?id=238627553830211&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- End Facebook Pixel Code -->', 'footer', 4, 'active', 1595493161, 'admin@gmail.com', 1595493705, 'admin@gmail.com'),
(13, 'Map', 'Nhúng bản đồ vào trang liên hệ', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.0769262300387!2d105.83011561489695!3d20.989553286019593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad7983bf139f%3A0xd715ed4e538ae441!2zQ8O0bmcgdHkgbmdoacOqbiBj4bupdSB0aOG7iyB0csaw4budbmcgVmlldEFuYWx5dGljcw!5e0!3m2!1sen!2s!4v1592551768791!5m2!1sen!2s\" height=\"720\"></iframe>', 'header', 3, 'active', 1597128379, 'admin@gmail.com', 1597129187, 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `e4_blocks`
--

CREATE TABLE `e4_blocks` (
  `id` int(11) NOT NULL,
  `bname` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bfilename` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bposition` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bpublish` int(1) NOT NULL,
  `region` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e4_blocks`
--

INSERT INTO `e4_blocks` (`id`, `bname`, `bfilename`, `bposition`, `bpublish`, `region`) VALUES
(1, 'top_care', 'block.top_care.php', 'top_care', 1, 0),
(61, 'header', 'block.header.php', 'header', 1, 2),
(69, 'head', 'block.head.php', 'head', 1, 1),
(72, 'product_featured', 'block.product_featured.php', 'product_featured', 1, 4),
(73, 'footer', 'block.footer.php', 'footer', 1, 19),
(75, 'footer_script', 'block.footer_script.php', 'footer_script', 1, 20),
(85, 'news_recent', 'block.news_recent.php', 'news_recent', 1, 11),
(86, 'news_related', 'block.news_related.php', 'news_related', 1, 14),
(95, 'product_home', 'block.product_home.php', 'product_home', 1, 5),
(96, 'sale_home', 'block.sale_home.php', 'sale_home', 1, 0),
(97, 'home_advertisement', 'block.home_advertisement.php', 'home_advertisement', 1, 0),
(98, 'home_comment', 'block.home_comment.php', 'home_comment', 1, 0),
(99, 'product_sale', 'block.product_sale.php', 'product_sale', 1, 0),
(100, 'product_left', 'block.product_left.php', 'product_left', 1, 0),
(101, 'head_traid', 'block.head_traid.php', 'head_traid', 1, 0),
(102, 'categories_traid', 'block.categories_traid.php', 'categories_traid', 1, 0),
(103, 'footer_traid', 'block.footer_traid.php', 'footer_traid', 1, 0),
(104, 'header_traid', 'block.header_traid.php', 'header_traid', 1, 0),
(105, 'login_traid', 'block.login_traid.php', 'login_traid', 1, 0),
(106, 'policy_traid', 'block.policy_traid.php', 'policy_traid', 1, 0),
(107, 'product_home_traid', 'block.product_home_traid.php', 'product_home_traid', 1, 0),
(108, 'product_container_traid', 'block.products_container_traid.php', 'product_container_traid', 1, 0),
(109, 'slider_traid', 'block.slider_traid.php', 'slider_traid', 1, 0),
(110, 'product_sale_traid', 'block.product_sale_traid.php', 'product_sale_traid', 1, 0),
(111, 'product_left_traid', 'block.product_left_traid.php', 'product_left_traid', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `e4_contacts`
--

CREATE TABLE `e4_contacts` (
  `id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `date_created` bigint(20) NOT NULL DEFAULT '0',
  `date_updated` bigint(20) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'contact'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e4_contacts`
--

INSERT INTO `e4_contacts` (`id`, `customer_id`, `name`, `phone`, `email`, `address`, `content`, `date_created`, `date_updated`, `comment`, `status`, `type`) VALUES
(9, 0, 'Giang', NULL, 'truonggiang01add@gmail.com', NULL, 'test', 1638412015, 0, NULL, 'new', 'contact'),
(10, 0, NULL, NULL, 'backprodh2001@gmail.com', NULL, NULL, 1640618660, 0, NULL, 'new', 'newsletter'),
(11, 0, NULL, NULL, 'backprodh2001@gmail.com', NULL, NULL, 1640618664, 0, NULL, 'new', 'newsletter');

-- --------------------------------------------------------

--
-- Table structure for table `e4_functions`
--

CREATE TABLE `e4_functions` (
  `id` int(10) NOT NULL,
  `function_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `function_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `module_id` int(5) NOT NULL,
  `date_created` int(20) NOT NULL,
  `user_created` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Danh sach cac function duoc dinh nghia tren he thong admin';

--
-- Dumping data for table `e4_functions`
--

INSERT INTO `e4_functions` (`id`, `function_code`, `function_name`, `module_id`, `date_created`, `user_created`, `status`) VALUES
(1, 'menu_admin_add', 'Thêm mới Menu Admin', 31, 1483898597, '1', 'active'),
(2, 'menu_admin_edit', 'Sửa Menu Admin', 31, 1483898611, '1', 'active'),
(3, 'menu_admin_delete', 'Xóa Menu Admin', 31, 1483898622, '1', 'active'),
(4, 'menu_admin_view', 'Xem danh sách Menu Admin', 31, 1483898634, '1', 'active'),
(5, 'module_add', 'Thêm mới module', 34, 1483898661, '1', 'active'),
(6, 'module_edit', 'Sửa module', 34, 1483898672, '1', 'active'),
(7, 'module_delete', 'Xóa module', 34, 1483898683, '1', 'active'),
(8, 'module_view', 'Xem danh sách module', 34, 1483898693, '1', 'active'),
(9, 'roles_view', 'Xem danh sách nhóm quyền', 46, 1483898712, '1', 'active'),
(10, 'roles_add', 'Thêm mới nhóm quyền', 46, 1483898721, '1', 'active'),
(11, 'roles_edit', 'Sửa nhóm quyền', 46, 1483898731, '1', 'active'),
(12, 'roles_delete', 'Xóa nhóm quyền', 46, 1483898740, '1', 'active'),
(13, 'roles_module_action', 'Phân quyền thao tác chức năng cho nhóm quyền', 46, 1483898754, '1', 'active'),
(14, 'roles_menu_access', 'Phần quyền thao tác menu admin cho nhóm quyền', 46, 1483898762, '1', 'active'),
(15, 'task_add', 'Thêm mới Task', 50, 1483898783, '1', 'active'),
(16, 'task_edit', 'Sửa Task', 50, 1483898790, '1', 'active'),
(17, 'task_delete', 'Xóa Task', 50, 1483898806, '1', 'active'),
(18, 'task_view', 'Xem danh sách task - modules', 50, 1483898826, '1', 'active'),
(19, 'block_add', 'Thêm mới Block', 51, 1483898844, '1', 'active'),
(20, 'block_edit', 'Sửa Block', 51, 1483898853, '1', 'active'),
(21, 'block_delete', 'Xóa Block', 51, 1483898865, '1', 'active'),
(22, 'block_view', 'Xem danh sách Block', 51, 1483898880, '1', 'active'),
(23, 'user_add', 'Thêm mới người dùng', 1, 1483898897, '1', 'active'),
(24, 'user_edit', 'Sửa người dùng', 1, 1483898905, '1', 'active'),
(25, 'user_delete', 'Xóa người dùng', 1, 1483898918, '1', 'active'),
(26, 'user_publish', 'Kích hoạt người dùng', 1, 1483898929, '1', 'active'),
(27, 'user_unpublish', 'Khóa người dùng', 1, 1483898936, '1', 'active'),
(28, 'user_view', 'Xem danh sách người dùng', 1, 1483898945, '1', 'active'),
(29, 'news_add', 'Thêm mới tin tức', 115, 1483898959, '1', 'active'),
(30, 'news_category_add', 'Thêm mới danh mục tin tức', 4, 1483898970, '1', 'active'),
(31, 'news_delete', 'Xóa tin tức', 115, 1483898979, '1', 'active'),
(32, 'news_category_delete', 'Xóa danh mục tin tức', 4, 1483898988, '1', 'active'),
(33, 'news_category_edit', 'Sửa danh mục tin tức', 4, 1483898998, '1', 'active'),
(34, 'news_category_view', 'Xem danh sách danh mục tin tức', 4, 1483899008, '1', 'active'),
(35, 'news_edit', 'Sửa tin tức', 115, 1483899021, '1', 'active'),
(36, 'news_view', 'Xem danh sách tin tức', 115, 1483899032, '1', 'active'),
(37, 'profile_edit', 'Sửa thông tin tài khoản cá nhân', 108, 1483947014, '1', 'active'),
(38, 'profile_change_pass', 'Đổi mật khẩu tài khoản cá nhân', 108, 1483947040, '1', 'active'),
(39, 'product_view', 'Xem danh sách sản phẩm', 109, 1484233794, '1', 'active'),
(40, 'product_add', 'Thêm mới sản phẩm', 109, 1484233825, '1', 'active'),
(41, 'product_edit', 'Sửa sản phẩm', 109, 1484233841, '1', 'active'),
(42, 'product_delete', 'Xóa sản phẩm', 109, 1484233855, '1', 'active'),
(43, 'product_category_add', 'Thêm mới danh mục sản phẩm', 109, 1484233880, '1', 'active'),
(44, 'product_category_edit', 'Sửa danh mục sản phẩm', 109, 1484233901, '1', 'active'),
(45, 'product_category_view', 'Xem danh sách danh mục sản phẩm', 109, 1484233920, '1', 'active'),
(46, 'product_category_delete', 'Xóa danh mục sản phẩm', 109, 1484233942, '1', 'active'),
(51, 'web_menu_add', 'Thêm mới Menu website', 107, 1484681667, '1', 'active'),
(52, 'web_menu_edit', 'Sửa Menu website', 107, 1484681695, '1', 'active'),
(53, 'web_menu_delete', 'Xóa Menu website', 107, 1484681709, '1', 'active'),
(54, 'web_menu_view', 'Xem danh sách Menu website', 107, 1484681722, '1', 'active'),
(55, 'web_home_add', 'Thêm mới nội dung', 111, 1484753712, '1', 'active'),
(56, 'web_home_edit', 'Sửa nội dung', 111, 1484753724, '1', 'active'),
(57, 'web_home_delete', 'Xóa nội dung', 111, 1484753736, '1', 'active'),
(58, 'web_home_view', 'Xem danh sách nội dung', 111, 1484753747, '1', 'active'),
(59, 'web_image_add', 'Thêm mới hình ảnh', 112, 1484761002, '1', 'active'),
(60, 'web_image_edit', 'Sửa hình ảnh', 112, 1484761013, '1', 'active'),
(61, 'web_image_delete', 'Xóa hình ảnh', 112, 1484761023, '1', 'active'),
(62, 'web_image_view', 'Xem danh sách hình ảnh', 112, 1484761035, '1', 'active'),
(63, 'web_branches_add', 'Thêm mới chi nhánh', 114, 1487872320, '1', 'active'),
(64, 'web_branches_delete', 'Xóa thông tin chi nhánh', 114, 1487872338, '1', 'active'),
(65, 'web_branches_edit', 'Sửa thông tin chi nhánh', 114, 1487872352, '1', 'active'),
(66, 'web_information_edit', 'Sửa thông tin website', 114, 1487872371, '1', 'active'),
(67, 'news_group_add', 'Thêm nhóm tin tức', 116, 1595237243, '1', 'active'),
(68, 'news_group_edit', 'Sửa nhóm tin tức', 116, 1595237261, '1', 'active'),
(69, 'news_group_delete', 'Xóa nhóm tin tức', 116, 1595237301, '1', 'active'),
(70, 'news_group_view', 'Xem danh sách nhóm tin tức', 116, 1595237323, '1', 'active'),
(71, 'news_type_edit', 'Sửa loại tin tức', 117, 1595237641, '1', 'active'),
(72, 'news_type_add', 'Thêm loại tin tức', 117, 1595237654, '1', 'active'),
(73, 'news_type_delete', 'Xóa loại tin tức', 117, 1595237673, '1', 'active'),
(74, 'news_type_view', 'Xem danh sách loại tin tức', 117, 1595237694, '1', 'active'),
(76, 'news_topic_add', 'Thêm chuyên đề', 118, 1595237950, '1', 'active'),
(77, 'news_topic_delete', 'Xóa chuyên đề', 118, 1595237962, '1', 'active'),
(78, 'news_topic_edit', 'Sửa chuyên đề', 118, 1595237975, '1', 'active'),
(79, 'news_topic_view', 'Xem danh sách chuyên đề', 118, 1595237990, '1', 'active'),
(80, 'analytics_code_add', 'Thêm mã', 119, 1595491797, '1', 'active'),
(81, 'analytics_code_edit', 'Sửa mã', 119, 1595491809, '1', 'active'),
(82, 'analytics_code_delete', 'Xóa mã', 119, 1595491824, '1', 'active'),
(83, 'analytics_code_view', 'Xem danh sách mã', 119, 1595491869, '1', 'active'),
(84, 'news_tags_add', 'Thêm Tags', 120, 1595917396, '1', 'active'),
(85, 'news_tags_delete', 'Xóa Tags', 120, 1595917413, '1', 'active'),
(86, 'news_tags_edit', 'Sửa Tags', 120, 1595917426, '1', 'active'),
(87, 'news_tags_view', 'Xem danh sách tags', 120, 1595917454, '1', 'active'),
(88, 'product_category_add', 'Thêm danh mục sản phẩm', 122, 1596719752, '1', 'active'),
(89, 'product_category_edit', 'Sửa danh mục sản phẩm', 122, 1596719916, '1', 'active'),
(90, 'product_category_delete', 'Xóa danh mục sản phẩm', 122, 1596720071, '1', 'active'),
(91, 'product_category_view', 'Xem danh mục sản phẩm', 122, 1596720093, '1', 'active'),
(92, 'product_add', 'Thêm mới sản phẩm', 123, 1596720172, '1', 'active'),
(93, 'product_delete', 'Xóa sản phẩm', 123, 1596720186, '1', 'active'),
(94, 'product_edit', 'Sửa sản phẩm', 123, 1596720198, '1', 'active'),
(95, 'product_view', 'Xem danh sách sản phẩm', 123, 1596720212, '1', 'active'),
(96, 'product_group_add', 'Thêm mới nhóm sản phẩm', 126, 1596824838, '1', 'active'),
(97, 'product_group_edit', 'Sửa nhóm sản phẩm', 126, 1596824855, '1', 'active'),
(98, 'product_group_delete', 'Xóa nhóm sản phẩm', 126, 1596824870, '1', 'active'),
(99, 'product_group_view', 'Xem danh sách nhóm sản phẩm', 126, 1596824881, '1', 'active'),
(100, 'product_type_add', 'Thêm mới phân loại sản phẩm', 127, 1596869985, '1', 'active'),
(101, 'product_type_edit', 'Sửa phân loại sản phẩm', 127, 1596870006, '1', 'active'),
(102, 'product_type_delete', 'Xóa phân loại sản phẩm', 127, 1596870022, '1', 'active'),
(103, 'product_type_view', 'Danh sách phân loại sản phẩm', 127, 1596870045, '1', 'active'),
(104, 'cart_view', 'Xem danh sách đơn hàng', 130, 1597135503, '1', 'active'),
(106, 'cart_delete', 'Xóa đơn hàng', 130, 1597135582, '1', 'active'),
(107, 'cart_edit', 'Sửa đơn hàng', 130, 1597135606, '1', 'active'),
(108, 'contact_delete', 'Xóa liên hệ', 132, 1597135899, '1', 'active'),
(109, 'contact_edit', 'Sửa liên hệ', 132, 1597135913, '1', 'active'),
(110, 'contact_view', 'Xem liên hệ', 132, 1597135927, '1', 'active'),
(111, 'contact_newsletter', 'Danh sách nhận bản tin - newsletter', 132, 1597135969, '1', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `e4_leftmenu`
--

CREATE TABLE `e4_leftmenu` (
  `id` int(5) NOT NULL,
  `parent_id` int(5) NOT NULL DEFAULT '0',
  `title_vi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `level` int(2) NOT NULL DEFAULT '0',
  `region` int(3) NOT NULL DEFAULT '0',
  `toolbar` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'deactive',
  `user_created` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_created` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e4_leftmenu`
--

INSERT INTO `e4_leftmenu` (`id`, `parent_id`, `title_vi`, `title_en`, `icon`, `link`, `status`, `level`, `region`, `toolbar`, `user_created`, `date_created`) VALUES
(2, 0, 'Quản lý hệ thống', 'System Management', 'fa fa-database', '', 'active', 1, 11, '0', '', 0),
(10, 2, 'Quản lý nhóm quyền', 'Roles Group Management', '', '?module=roles', 'active', 2, 42, '0', '', 0),
(11, 2, 'Quản lý người dùng', 'User Management', '', '?module=user', 'active', 2, 43, 'active', '', 0),
(13, 2, 'Quản lý Menu Admin', 'Menu Admin Management', '', '?module=menu_admin', 'active', 2, 41, 'active', '', 0),
(15, 95, 'Quản lý danh mục tin tức', 'News Category Management', 'fa fa-files-o', '?module=news_category', 'active', 2, 0, 'deactive', '', 0),
(25, 74, 'Quản lý Modules', 'Modules Management', '', '?module=module', 'active', 2, 52, '1', '', 0),
(33, 74, 'Quản lý Blog (Admin System)', 'Quản lý Blog (Admin System)', '', '?module=block', 'active', 2, 51, '0', '', 0),
(49, 0, 'Quản lý thông tin cấu hình', 'Quản lý thông tin cấu hình', 'fa fa-cogs', '', 'active', 1, 9, '0', '', 0),
(51, 74, 'Quản lý Tasks - Modules', 'Tasks & Modules Management', '', '?module=task', 'active', 2, 53, '0', '', 0),
(72, 0, 'Quản lý liên hệ - Newsletter', 'Contacts Management', 'fa fa-headphones', '?module=contact', 'active', 1, 1, 'deactive', '', 0),
(73, 49, 'Quản lý menu website', 'Quản lý menu website', '', '?module=web_menu', 'active', 2, 31, 'deactive', '', 0),
(74, 0, 'Dành cho người phát triển', 'Dành cho người phát triển', 'fa fa-cubes', '', 'active', 1, 10, '0', '', 0),
(87, 0, 'Tài khoản cá nhân', 'Your Profile', 'fa fa-user', '?module=profile', 'active', 1, 6, 'active', '', 1483904741),
(90, 49, 'Quản lý cấu hình trang chủ', 'Homepage Management', '', '?module=web_home', 'active', 2, 32, 'deactive', '', 1484751727),
(91, 49, 'Quản lý hình ảnh hệ thống', 'System Image Management', 'fa fa-picture-o', '?module=web_image', 'active', 2, 7, 'deactive', '', 1484761092),
(92, 49, 'Quản lý thông tin website', 'Website information management', 'fa fa-globe', '?module=web_information', 'active', 2, 4, '', '', 1487872412),
(95, 0, 'Quản lý nội dung tin tức', 'News Content Management', '', '', 'active', 1, 1, '', '', 1592553201),
(96, 95, 'Quản lý nhóm tin tức', 'News Group management', '', '?module=news_group', 'active', 2, 0, '', '', 1595237154),
(97, 95, 'Quản lý phân loại tin tức', 'News Type Management', '', '?module=news_type', 'active', 2, 0, '', '', 1595237446),
(98, 95, 'Quản lý chuyên đề tin tức', 'News Topic Management', '', '?module=news_topic', 'active', 2, 0, '', '', 1595237512),
(99, 49, 'Quản lý mã nhúng', 'Analytics code', '', '?module=analytics_code', 'active', 2, 0, '', '', 1595491947),
(100, 95, 'Quản lý thẻ - tags', 'Tags Management', 'fa fa-tags', '?module=news_tags', 'active', 2, 0, '', '', 1595917972),
(101, 0, 'Quản lý bài viết', 'Posts Management', 'fa fa-files-o', '?module=news', 'active', 1, 0, '', '', 1595919917),
(102, 106, 'Quản lý danh mục sản phẩm', 'Product categoty management', '', '?module=product_category', 'active', 2, 0, 'deactive', '1', 1596720755),
(103, 0, 'Quản lý sản phẩm', 'Product Management', '', '?module=product', 'active', 1, 0, 'deactive', '1', 1596722636),
(104, 106, 'Quản lý nhóm sản phẩm', 'Product Group Management', '', '?module=product_group', 'active', 2, 0, 'deactive', '1', 1596824928),
(105, 106, 'Quản lý phân loại sản phẩm', 'Product Type Management', '', '?module=product_type', 'active', 2, 0, 'deactive', '1', 1596870101),
(106, 0, 'Quản lý nội dung sản phẩm', 'Product Content Management', '', '', 'active', 1, 0, 'deactive', '1', 1596871407),
(107, 0, 'Quản lý đơn hàng', 'Order-Product Management', 'fa fa-shopping-cart', '?module=cart', 'active', 1, 0, 'deactive', '1', 1597135674);

-- --------------------------------------------------------

--
-- Table structure for table `e4_modules`
--

CREATE TABLE `e4_modules` (
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `folder` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e4_modules`
--

INSERT INTO `e4_modules` (`id`, `name`, `title`, `folder`, `type`, `status`) VALUES
(1, 'user', 'Quản lý người dùng hệ thống', 'mdl_user', 'admin', 'active'),
(4, 'news_category', 'Quản lý danh mục tin tức', 'mdl_news_category', 'admin', 'active'),
(31, 'menu_admin', 'Quản lý Menu admin', 'mdl_menu_admin', 'admin', 'active'),
(34, 'module', 'Quản lý modules hệ thống ( Dành cho Lập trình viên)', 'mdl_module', 'admin', 'active'),
(46, 'roles', 'Quản lý nhóm quyền', 'mdl_roles', 'admin', 'active'),
(50, 'task', 'Quản lý tasks theo module ( Dành cho Lập trình viên)', 'mdl_task', 'admin', 'active'),
(51, 'block', 'Quản lý Blocks ( Dành cho Lập trình viên)', 'mdl_block', 'admin', 'active'),
(107, 'web_menu', 'Quản lý menu website ngoài', 'mdl_web_menu', 'admin', 'active'),
(108, 'profile', 'Tài khoản cá nhân', 'mdl_profile', 'admin', 'active'),
(109, 'product', 'Quản lý sản phẩm - dịch vụ', 'mdl_product', 'admin', 'active'),
(111, 'web_home', 'Cấu hình trang chủ', 'mdl_web_home', 'admin', 'active'),
(112, 'web_image', 'Quản lý hình ảnh hệ thống', 'mdl_web_image', 'admin', 'active'),
(114, 'web_information', 'Quản lý thông tin website', 'mdl_web_information', 'admin', 'active'),
(115, 'news', 'Quản lý tin tức', 'mdl_news', 'admin', 'active'),
(116, 'news_group', 'Quản lý nhóm tin tức', 'mdl_news_group', 'admin', 'active'),
(117, 'news_type', 'Quản lý phân loại tin tức', 'mdl_news_type', 'admin', 'active'),
(118, 'news_topic', 'Quản lý chuyên đề tin tức', 'mdl_news_topic', 'admin', 'active'),
(119, 'analytics_code', 'Quản lý mã nhúng theo dõi truy cập', 'mdl_analytics_code', 'admin', 'active'),
(120, 'news_tags', 'Quản lý thẻ - tags', 'mdl_news_tags', 'admin', 'active'),
(121, 'trang-chu', 'Trang chủ', 'mdl_home', 'public', 'active'),
(122, 'product_category', 'Danh mục sản phẩm', 'mdl_product_category', 'admin', 'active'),
(123, 'product', 'Quản lý sản phẩm', 'mdl_product', 'admin', 'active'),
(124, 'san-pham', 'Sản phẩm', 'mdl_product', 'public', 'active'),
(125, 'chi-tiet', 'Chi tiết', 'mdl_detail', 'public', 'active'),
(126, 'product_group', 'Nhóm sản phẩm', 'mdl_product_group', 'admin', 'active'),
(127, 'product_type', 'Phân loại sản phẩm', 'mdl_product_type', 'admin', 'active'),
(128, 'blog', 'Blog', 'mdl_news', 'public', 'active'),
(129, 'lien-he', 'Liên hệ', 'mdl_contact', 'public', 'active'),
(130, 'cart', 'Quản lý đơn hàng', 'mdl_cart', 'admin', 'active'),
(131, 'gio-hang', 'Giỏ hàng', 'mdl_cart', 'public', 'active'),
(132, 'contact', 'Quản lý liên hệ - Newsletter', 'mdl_contact', 'admin', 'active'),
(200, 'yeu-thich', 'yêu thích', 'mdl_wishlist', 'public', 'active'),
(201, 'giao-hang', 'giao hàng', 'mdl_check_out', 'public', 'active'),
(202, 'register', 'register', 'mdl_register', 'public', 'active'),
(203, 'member', 'Thành viên', 'mdl_member', 'public', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `e4_options`
--

CREATE TABLE `e4_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e4_options`
--

INSERT INTO `e4_options` (`id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'comments_notify', '1', 'yes'),
(2, 'mailserver_url', 'smtp.gmail.com', 'yes'),
(3, 'mailserver_login', 'nhaphangtaobao.contact@gmail.com', 'yes'),
(4, 'mailserver_pass', 'Nguyenhuuthang@123', 'yes'),
(5, 'mailserver_port', '465', 'yes'),
(6, 'default_comment_status', 'open', 'yes'),
(7, 'posts_per_page', '9', 'yes'),
(8, 'image_max_size', '3', 'yes'),
(9, 'name_vi', 'MiHa Cosmetic', 'yes'),
(10, 'name_en', 'MiHa Cosmetic', 'yes'),
(11, 'slogan_vi', 'Chào mừng các bạn đến với website MiHa Cosmetic', 'yes'),
(12, 'slogan_en', 'Welcome to the MiHa Cosmetic website', 'yes'),
(13, 'address_vi', 'Hà Nội', 'yes'),
(14, 'address_en', 'Ha Noi', 'yes'),
(15, 'brief_vi', 'Sitamet, consectetur adipiscing elit, sed do eiusmod tempor incidid-unt labore edolore magna aliquapendisse ultrices gravida.', 'yes'),
(16, 'brief_en', 'Sitamet, consectetur adipiscing elit, sed do eiusmod tempor incidid-unt labore edolore magna aliquapendisse ultrices gravida.', 'yes'),
(17, 'meta_title_vi', 'Nông sản Bình Minh', 'yes'),
(18, 'meta_title_en', 'BMG Traid', 'yes'),
(19, 'meta_keyword_vi', '', 'yes'),
(20, 'meta_keyword_en', '', 'yes'),
(21, 'meta_description_vi', '', 'yes'),
(22, 'meta_description_en', '', 'yes'),
(23, 'phone', '0982269600-2', 'yes'),
(24, 'hotline', '098 226 9600', 'yes'),
(25, 'admin_email', 'MiHaCosmetic@gmail.com', 'yes'),
(2078, 'fax', '1122 6699', 'yes'),
(2079, 'max_file_size', '', 'yes'),
(2080, 'facebook', 'Facebook', 'yes'),
(2081, 'twitter', 'Twitter', 'yes'),
(2084, 'youtube', 'Youtube', 'yes'),
(2085, 'instagram', 'Instagram', 'yes'),
(2086, 'product_per_page', '9', 'yes'),
(2087, 'admin_per_page', '20', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `e4_order_list`
--

CREATE TABLE `e4_order_list` (
  `id` int(11) NOT NULL,
  `id_thanhvien` int(15) NOT NULL,
  `name` varchar(111) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(111) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tong_gia` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `date_updated` int(22) NOT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `e4_order_product`
--

CREATE TABLE `e4_order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e4_order_product`
--

INSERT INTO `e4_order_product` (`id`, `order_id`, `product_id`, `quantity`, `price`, `date_created`, `status`) VALUES
(1, 2, 11, 1, 500, 1427274943, 0),
(2, 3, 10, 3, 500, 1427275052, 0),
(3, 3, 11, 1, 500, 1427275052, 0),
(4, 4, 10, 3, 500, 1427275113, 0),
(5, 4, 11, 1, 500, 1427275113, 0),
(6, 5, 10, 3, 500, 1427275142, 0),
(7, 5, 11, 1, 500, 1427275142, 0),
(8, 6, 10, 3, 500, 1427275237, 0),
(9, 6, 11, 1, 500, 1427275237, 0),
(10, 7, 12, 2, 8000, 1427278063, 0),
(11, 7, 9, 2, 8000000, 1427278063, 0),
(12, 7, 14, 1, 5003, 1427278063, 0),
(13, 8, 10, 2, 500, 1427768259, 0),
(14, 8, 11, 1, 500, 1427768259, 0),
(15, 9, 9, 1, 8000000, 1427768396, 0),
(16, 9, 10, 1, 500, 1427768396, 0),
(17, 9, 11, 1, 500, 1427768396, 0),
(18, 10, 9, 1, 8000000, 1429686870, 0),
(19, 13, 58, 1, 0, 1429687319, 0),
(20, 15, 9, 1, 8000000, 1429758799, 0),
(21, 17, 43, 1, 0, 1429759037, 0),
(22, 18, 71, 5, 0, 1448254982, 0),
(23, 18, 72, 2, 0, 1448254982, 0),
(24, 18, 77, 4, 11, 1448254982, 0),
(25, 19, 77, 3, 11, 1448255301, 0),
(26, 19, 75, 1, 0, 1448255301, 0),
(27, 20, 75, 1, 0, 1448255342, 0),
(28, 21, 75, 4, 2100000, 1448852772, 0),
(29, 22, 200, 4, 2500000, 1449197519, 0),
(31, 35, 329, 1, 2650000, 1461038724, 0),
(32, 36, 267, 1, 0, 1461039024, 0),
(34, 38, 312, 1, 0, 1461121415, 0),
(35, 38, 311, 1, 0, 1461121415, 0),
(36, 38, 329, 1, 2650000, 1461121415, 0),
(37, 38, 263, 1, 7900000, 1461121415, 0),
(80, 67, 14, 1, 100000, 1660576140, 0);

-- --------------------------------------------------------

--
-- Table structure for table `e4_posts`
--

CREATE TABLE `e4_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_vi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `url_part` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  `post_created` bigint(20) NOT NULL,
  `user_created` bigint(20) UNSIGNED NOT NULL,
  `post_modified` bigint(20) NOT NULL,
  `user_modified` bigint(20) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visited_count` bigint(20) NOT NULL DEFAULT '0',
  `product_price` int(10) NOT NULL DEFAULT '0',
  `product_sale` int(10) NOT NULL DEFAULT '0',
  `rating` int(5) NOT NULL DEFAULT '0',
  `chinhsach_vi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chinhsach_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VAT` float NOT NULL,
  `Eco_tax` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e4_posts`
--

INSERT INTO `e4_posts` (`id`, `title_vi`, `title_en`, `brief_vi`, `brief_en`, `content_vi`, `content_en`, `post_type`, `post_status`, `comment_status`, `url_part`, `comment_count`, `post_created`, `user_created`, `post_modified`, `user_modified`, `image`, `image_thumb`, `visited_count`, `product_price`, `product_sale`, `rating`, `chinhsach_vi`, `chinhsach_en`, `VAT`, `Eco_tax`) VALUES
(21, 'Phấn Mắt Karadium 4 ô', 'Phấn Mắt Karadium 4 ô', 'Bảng phấn mắt gồm 4 màu để gọn gàng trong 4 ô vuông xinh xắn, thiết kế hộp cùng tông màu hồng bắt mắt, vẻ ngoài cực yêu', 'Bảng phấn mắt gồm 4 màu để gọn gàng trong 4 ô vuông xinh xắn, thiết kế hộp cùng tông màu hồng bắt mắt, vẻ ngoài cực yêu', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body><b>Bảng Phấn Mắt 4 Màu Karadium Bling Fit Bijou Box Shadow 7.5g</b><br />\r\n<br />\r\nBảng Phấn Mắt 4 Ô Karadium Bling Fit Bijou Box Shadow với 2 bảng màu có ton hồng và tone nâu sẽ giúp bạn có thêm sự lựa chọn để có một đôi mắt thật hoàn hảo.<br />\r\n&nbsp;\r\n<p><img alt=\"phan mat karadium 4 o bling fit bijou box shadow\" height=\"773\" src=\"https://cocoshop.vn/uploads/shops/2021_03/phan-mat-karadium-4-o-bling-fit-bijou-box-shadow.jpg\" width=\"600\" /></p>\r\n<br />\r\n<br />\r\n<strong>COCOLUX</strong>&nbsp;có sẵn 2 tone màu<br />\r\n<br />\r\nRose Quartz - tone hồng<br />\r\n&nbsp;\r\n<p><img alt=\"phan mat karadium 4 o bling fit bijou box shadow 3\" height=\"600\" src=\"https://cocoshop.vn/uploads/shops/2021_03/phan-mat-karadium-4-o-bling-fit-bijou-box-shadow-3.jpg\" width=\"600\" /></p>\r\n<br />\r\n<br />\r\nMoonstone - Tone be nâu<br />\r\n&nbsp;\r\n<p><img alt=\"phan mat karadium 4 o bling fit bijou box shadow 4\" height=\"600\" src=\"https://cocoshop.vn/uploads/shops/2021_03/phan-mat-karadium-4-o-bling-fit-bijou-box-shadow-4.jpg\" width=\"600\" /></p>\r\n<br />\r\n<br />\r\nƯu điểm Bảng Phấn Mắt Có Nhũ Karadium Bling Fit Bijou Box Shadow:<br />\r\n<br />\r\nBảng phấn mắt gồm 4 màu để gọn gàng trong 4 ô vuông xinh xắn, thiết kế hộp cùng tông màu hồng bắt mắt, vẻ ngoài cực yêu<br />\r\n&nbsp;\r\n<p><img alt=\"phan mat karadium 4 o bling fit bijou box shadow 2\" height=\"520\" src=\"https://cocoshop.vn/uploads/shops/2021_03/phan-mat-karadium-4-o-bling-fit-bijou-box-shadow-2.jpg\" width=\"600\" /></p>\r\n<br />\r\n<br />\r\nNhững hạt phấn siêu mềm mại, mịn lì và có độ bám dính cực khủng giúp lớp makeup không trôi cả ngày mà không cần dặm lại.<br />\r\n<br />\r\nPhấn mắt siêu lì&nbsp;????????&nbsp;?????&nbsp;???&nbsp;?????&nbsp;???&nbsp;??????&nbsp;chính là món \"bảo bối\" bạn không thể bỏ qua cho những make-up look xinh xắn đón chào năm mới<br />\r\n&nbsp;\r\n<p><img alt=\"phan mat karadium 4 o bling fit bijou box shadow 5\" height=\"600\" src=\"https://cocoshop.vn/uploads/shops/2021_03/phan-mat-karadium-4-o-bling-fit-bijou-box-shadow-5.jpg\" width=\"600\" /></p>\r\n<br />\r\n<br />\r\nVới thiết kế hộp cùng tone màu cực xinh xắn, dễ thương, Karadium Bling Fit nhỏ gọn, dễ dàng mang theo bên cạnh nàng những lúc cần thiết<br />\r\n<br />\r\nBảng phấn 4 ô gồm cả phấn lì và nhũ giúp chị em mình thoải mái sáng tạo màu mắt đi chơi, đi tiệc,...<br />\r\nChất phấn siêu mịn và có độ bám dính cực khủng giúp lớp makeup không trôi suốt cả ngày dài<br />\r\n&nbsp;\r\n<p><img alt=\"phan mat karadium 4 o bling fit bijou box shadow 1\" height=\"960\" src=\"https://cocoshop.vn/uploads/shops/2021_03/phan-mat-karadium-4-o-bling-fit-bijou-box-shadow-1.jpg\" width=\"600\" /></p>\r\n<br />\r\n<br />\r\nSau khi đánh&nbsp; kem lót , sử dụng cọ trang điểm phủ phấn quanh mắt theo phong cách trang điểm mong muốn.</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', 'product', 'active', 'open', 'phan-mat-karadium-4-o', 0, 1682045805, 1, 1682046519, 1, '/upload/san-pham/trangdiem1.png', '/upload/san-pham/trangdiem1.png', 0, 0, 215000, 0, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', 0, 0),
(22, 'Phấn Phủ Dạng Nén EGLIPS Barbie', 'Phấn Phủ Dạng Nén EGLIPS Barbie', 'Công thức phủ Lecithin nén chặt có độ bám dính tốt, làm giảm độ bóng dầu trên da.', 'Công thức phủ Lecithin nén chặt có độ bám dính tốt, làm giảm độ bóng dầu trên da.', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body><a href=\"https://cocoshop.vn/phan-phu/\">Phấn Phủ</a>&nbsp;Dạng Nén Eglips Bản Giới Hạn Blur Powder Pact (Limited Edition) 9g là dòng phấn phủ đến từ thương hiệu mỹ phẩm Eglips của Hàn Quốc, với công thức lecithin tăng cường độ bám dính giúp che phủ tốt các khuyết điểm, dầu thừa và lỗ chân lông. Đồng thời, sản phẩm có kết cấu hạt siêu mịn tạo lớp nền mịn màng, đều màu da cùng hương đào dịu ngọt.<br />\r\n&nbsp;\r\n<p><img alt=\"phan phu dang nen eglips barbie 1\" height=\"799\" src=\"https://cocoshop.vn/uploads/shops/2020_12/phan-phu-dang-nen-eglips-barbie-1.jpg\" width=\"600\" /></p>\r\n<br />\r\n<br />\r\n<strong>Coco Shop có sẵn tone 21 - da sáng, tone 23 - da tự nhiên</strong><br />\r\n<br />\r\nNằm trong bộ collection hot nhất năm, em này là sự kết hợp hoàn hảo giữa ?????? và thương hiệu búp bê ?????? nổi tiếng.&nbsp;<br />\r\n<br />\r\nPackaging vô cùng cute khiến nàng \"đổ gục\" từ cái nhìn đầu tiên. Logo Barbie được in nổi cực \"xịn xò\" với tông \"hường phấn\" điệu đà<br />\r\n<br />\r\nChất phấn mỏng mịn, dễ tán, apply nhiều lớp mà không hề gây khô mốc hay cakey, hạt phấn siêu nhỏ cảm giác nhẹ mặt giúp da ẩm mát cả ngày dài.<br />\r\n<br />\r\nCái tên Blur Powder Pact đã nói lên khả năng Blur (làm mờ) tuyệt vời của em ý, che phủ hoàn hảo lỗ chân lông, các vùng da không đều màu, độ kiềm dầu siêu tốt, giữ lớp makeup hoàn hảo 5-10 tiếng.</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body><a href=\"https://cocoshop.vn/phan-phu/\">Phấn Phủ</a>&nbsp;Dạng Nén Eglips Bản Giới Hạn Blur Powder Pact (Limited Edition) 9g là dòng phấn phủ đến từ thương hiệu mỹ phẩm Eglips của Hàn Quốc, với công thức lecithin tăng cường độ bám dính giúp che phủ tốt các khuyết điểm, dầu thừa và lỗ chân lông. Đồng thời, sản phẩm có kết cấu hạt siêu mịn tạo lớp nền mịn màng, đều màu da cùng hương đào dịu ngọt.<br />\r\n&nbsp;\r\n<p><img alt=\"phan phu dang nen eglips barbie 1\" height=\"799\" src=\"https://cocoshop.vn/uploads/shops/2020_12/phan-phu-dang-nen-eglips-barbie-1.jpg\" width=\"600\" /></p>\r\n<br />\r\n<br />\r\n<strong>Coco Shop có sẵn tone 21 - da sáng, tone 23 - da tự nhiên</strong><br />\r\n<br />\r\nNằm trong bộ collection hot nhất năm, em này là sự kết hợp hoàn hảo giữa ?????? và thương hiệu búp bê ?????? nổi tiếng.&nbsp;<br />\r\n<br />\r\nPackaging vô cùng cute khiến nàng \"đổ gục\" từ cái nhìn đầu tiên. Logo Barbie được in nổi cực \"xịn xò\" với tông \"hường phấn\" điệu đà<br />\r\n<br />\r\nChất phấn mỏng mịn, dễ tán, apply nhiều lớp mà không hề gây khô mốc hay cakey, hạt phấn siêu nhỏ cảm giác nhẹ mặt giúp da ẩm mát cả ngày dài.<br />\r\n<br />\r\nCái tên Blur Powder Pact đã nói lên khả năng Blur (làm mờ) tuyệt vời của em ý, che phủ hoàn hảo lỗ chân lông, các vùng da không đều màu, độ kiềm dầu siêu tốt, giữ lớp makeup hoàn hảo 5-10 tiếng.</body>\r\n</html>\r\n', 'product', 'active', 'open', 'phan-phu-dang-nen-eglips-barbie', 0, 1682046023, 1, 1682046124, 1, '/upload/san-pham/trangdiem2.jpg', '/upload/san-pham/trangdiem2.jpg', 0, 0, 175000, 0, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', 0, 0),
(23, 'Bảng Phấn Mắt Maybelline New York', 'Bảng Phấn Mắt Maybelline New York', 'Bảng Phấn Mắt Maybelline 6 Ô The City Mini Palette là bảng phấn mắt đến từ thương hiệu mỹ phẩm nổi tiếng Maybelline của Mỹ, với 6 ô màu theo nhiều tone màu thời thượng, lâu trôi bền màu từ màu nhũ tới màu lì giúp bạn dễ dàng sáng tạo ra những phong cách trang điểm thật độc đáo.', 'Bảng Phấn Mắt Maybelline 6 Ô The City Mini Palette là bảng phấn mắt đến từ thương hiệu mỹ phẩm nổi tiếng Maybelline của Mỹ, với 6 ô màu theo nhiều tone màu thời thượng, lâu trôi bền màu từ màu nhũ tới màu lì giúp bạn dễ dàng sáng tạo ra những phong cách trang điểm thật độc đáo.', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<ul>\r\n	<li>\r\n	<p>Bảng Phấn Mắt Maybelline 6 Ô The City Mini Palette là bảng phấn mắt đến từ thương hiệu mỹ phẩm nổi tiếng Maybelline của Mỹ, với 6 ô màu theo nhiều tone màu thời thượng, lâu trôi bền màu từ màu nhũ tới màu lì giúp bạn dễ dàng sáng tạo ra những phong cách trang điểm thật độc đáo.</p>\r\n	</li>\r\n</ul>\r\n</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<ul>\r\n	<li>\r\n	<p>Bảng Phấn Mắt Maybelline 6 Ô The City Mini Palette là bảng phấn mắt đến từ thương hiệu mỹ phẩm nổi tiếng Maybelline của Mỹ, với 6 ô màu theo nhiều tone màu thời thượng, lâu trôi bền màu từ màu nhũ tới màu lì giúp bạn dễ dàng sáng tạo ra những phong cách trang điểm thật độc đáo.</p>\r\n	</li>\r\n</ul>\r\n</body>\r\n</html>\r\n', 'product', 'active', 'open', 'bang-phan-mat-maybelline-new-york', 0, 1682046239, 1, 1682046239, 1, '/upload/san-pham/trangdiem3.jpg', '/upload/san-pham/trangdiem3.jpg', 0, 0, 288800, 0, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', 0, 0),
(24, 'Kem Lót Bobbi Brown Dưỡng Ẩm Da 50ml', 'Kem Lót Bobbi Brown Dưỡng Ẩm Da 50ml', '- Kem lót dưỡng da đa tác động\r\n- Vừa dưỡng ẩm vừa làm lót trang điểm\r\n- Giúp làn da mềm mại, căng mịn\r\n- Tạo lớp màng mỏng bảo vệ da', '- Kem lót dưỡng da đa tác động\r\n- Vừa dưỡng ẩm vừa làm lót trang điểm\r\n- Giúp làn da mềm mại, căng mịn\r\n- Tạo lớp màng mỏng bảo vệ da', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<ul>\r\n	<li>\r\n	<p>- Kem lót dưỡng da đa tác động<br />\r\n	- Vừa dưỡng ẩm vừa làm lót trang điểm<br />\r\n	- Giúp làn da mềm mại, căng mịn<br />\r\n	- Tạo lớp màng mỏng bảo vệ da</p>\r\n	</li>\r\n</ul>\r\n</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<ul>\r\n	<li>\r\n	<p>- Kem lót dưỡng da đa tác động<br />\r\n	- Vừa dưỡng ẩm vừa làm lót trang điểm<br />\r\n	- Giúp làn da mềm mại, căng mịn<br />\r\n	- Tạo lớp màng mỏng bảo vệ da</p>\r\n	</li>\r\n</ul>\r\n</body>\r\n</html>\r\n', 'product', 'active', 'open', 'kem-lot-bobbi-brown-duong-am-da-50ml', 0, 1682046309, 1, 1682046309, 1, '/upload/san-pham/trangdiem4.jpg', '/upload/san-pham/trangdiem4.jpg', 0, 1380000, 1380000, 0, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', 0, 0),
(25, 'Son Bóng Romand Glasting Water Tint', 'Son Bóng Romand Glasting Water Tint', ' Curél Face Lotion là lotion dưỡng da cấp ẩm dạng nước, thấm nhanh tạo cảm giác mát da và không nhờn rít.', ' Curél Face Lotion là lotion dưỡng da cấp ẩm dạng nước, thấm nhanh tạo cảm giác mát da và không nhờn rít.', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;Curél Face Lotion là lotion dưỡng da cấp ẩm dạng nước, thấm nhanh tạo cảm giác mát da và không nhờn rít.</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;Curél Face Lotion là lotion dưỡng da cấp ẩm dạng nước, thấm nhanh tạo cảm giác mát da và không nhờn rít.</body>\r\n</html>\r\n', 'product', 'active', 'open', 'son-bong-romand-glasting-water-tint', 0, 1682046676, 1, 1682046693, 1, '/upload/san-pham/son1.jpg', '/upload/san-pham/son1.jpg', 0, 0, 0, 0, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', 0, 0),
(26, 'Son Kem Lì Eglips x Barbie Misty Velvet', 'Son Kem Lì Eglips x Barbie Misty Velvet', 'Son Kem Lì Eglips x Barbie Misty Velvet', 'Son Kem Lì Eglips x Barbie Misty Velvet', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<h3>Chất son kem lì mềm mướt không gây khô môi nổi trội, khả năng giữ màu từ 4-5 tiếng trên môi. Độ bám màu trên môi lâu, có trôi đi cũng sẽ giữ lại trên môi một lớp tint màu cực xinh nha</h3>\r\n</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>Chất son kem lì mềm mướt không gây khô môi nổi trội, khả năng giữ màu từ 4-5 tiếng trên môi. Độ bám màu trên môi lâu, có trôi đi cũng sẽ giữ lại trên môi một lớp tint màu cực xinh nha</body>\r\n</html>\r\n', 'product', 'active', 'open', 'son-kem-li-eglips-x-barbie-misty-velvet', 0, 1682046755, 1, 1682046755, 1, '/upload/san-pham/son2.jpg', '/upload/san-pham/son2.jpg', 0, 0, 165000, 0, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', 0, 0),
(27, 'Son Burberry Kisses', 'Son Burberry Kisses', 'Với độ dưỡng ẩm cao, chất son satin mịn màng như bơ giúp tăng độ lên màu sẽ mang đến cho bạn đôi môi mềm mại và gợi cảm nhất, bạn sẽ không lo môi bị thâm bị nếp hay màu bị bột nặng môi khắc phục được nhược điểm gây khó chịu của dòng son lì.', 'Với độ dưỡng ẩm cao, chất son satin mịn màng như bơ giúp tăng độ lên màu sẽ mang đến cho bạn đôi môi mềm mại và gợi cảm nhất, bạn sẽ không lo môi bị thâm bị nếp hay màu bị bột nặng môi khắc phục được nhược điểm gây khó chịu của dòng son lì.', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<ul>\r\n	<li>\r\n	<p>Với độ dưỡng ẩm cao, chất son satin mịn màng như bơ giúp tăng độ lên màu sẽ mang đến cho bạn đôi môi mềm mại và gợi cảm nhất, bạn sẽ không lo môi bị thâm bị nếp hay màu bị bột nặng môi khắc phục được nhược điểm gây khó chịu của dòng son lì.</p>\r\n	</li>\r\n</ul>\r\n</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<ul>\r\n	<li>\r\n	<p>Với độ dưỡng ẩm cao, chất son satin mịn màng như bơ giúp tăng độ lên màu sẽ mang đến cho bạn đôi môi mềm mại và gợi cảm nhất, bạn sẽ không lo môi bị thâm bị nếp hay màu bị bột nặng môi khắc phục được nhược điểm gây khó chịu của dòng son lì.</p>\r\n	</li>\r\n</ul>\r\n</body>\r\n</html>\r\n', 'product', 'active', 'open', 'son-burberry-kisses', 0, 1682046815, 1, 1682046815, 1, '/upload/san-pham/son3.jpg', '/upload/san-pham/son3.jpg', 0, 0, 6999999, 0, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', 0, 0),
(28, 'Sáp Dưỡng Môi Rohto Chuyên Biệt Cho Môi', 'Sáp Dưỡng Môi Rohto Chuyên Biệt Cho Môi', '', '', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', 'product', 'active', 'open', 'sap-duong-moi-rohto-chuyen-biet-cho-moi', 0, 1682046867, 1, 1682046899, 1, '/upload/san-pham/trangdiem4.jpg', '/upload/san-pham/trangdiem4.jpg', 0, 0, 85000, 0, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `e4_posts_image`
--

CREATE TABLE `e4_posts_image` (
  `image_id` int(10) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `image_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'related',
  `image_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e4_posts_image`
--

INSERT INTO `e4_posts_image` (`image_id`, `object_id`, `image_type`, `image_link`, `order`) VALUES
(13, 13, 'related', 'http://localhost/steam/templates/buno/img/discount.jpg', 1),
(14, 13, 'related', 'http://localhost/steam/templates/buno/img/blog/details/blog-details.jpg', 2),
(15, 13, 'related', 'http://localhost/steam/templates/buno/img/logo.png', 3),
(0, 15, 'related', '/upload/traid/sp/2-800x800.jpg', 1),
(0, 17, 'related', '/upload/traid/sp/10-800x800.jpg', 1),
(0, 16, 'related', '/upload/traid/sp/1-800x800.jpg', 1),
(0, 14, 'related', '/upload/traid/sp/11-800x800.jpg', 1),
(0, 14, 'related', '/upload/traid/sp/10-800x800.jpg', 2),
(0, 22, 'related', '/upload/san-pham/trangdiem2.jpg', 1),
(0, 23, 'related', '/upload/san-pham/trangdiem3.jpg', 1),
(0, 24, 'related', '/upload/san-pham/trangdiem4.jpg', 1),
(0, 25, 'related', '/upload/san-pham/son1.jpg', 1),
(0, 26, 'related', '/upload/san-pham/son2.jpg', 1),
(0, 27, 'related', '/upload/san-pham/son3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `e4_posts_meta`
--

CREATE TABLE `e4_posts_meta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e4_roles`
--

CREATE TABLE `e4_roles` (
  `id` int(5) NOT NULL,
  `role_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role_desc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) NOT NULL,
  `menu_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `module_name_list` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `function_code_list` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e4_roles`
--

INSERT INTO `e4_roles` (`id`, `role_code`, `role_desc`, `status`, `menu_id`, `module_name_list`, `function_code_list`) VALUES
(5, 'Quyền quản trị hệ thống', 'Dành cho người quản trị hệ thống', 1, '101,103,106,102,104,105,107,72,95,15,96,97,98,100,87,49,99,92,91,73,90,74,33,25,51,2,13,10,11', 'contact,cart,product_type,product_group,product,product_category,news_tags,analytics_code,news_topic,news_type,news_group,news,web_information,web_image,web_home,product,profile,web_menu,block,task,roles,module,menu_admin,news_category,user', 'contact_delete,contact_edit,contact_newsletter,contact_view,cart_delete,cart_edit,cart_view,product_type_add,product_type_delete,product_type_edit,product_type_view,product_group_add,product_group_delete,product_group_edit,product_group_view,product_add,product_delete,product_edit,product_view,product_category_add,product_category_delete,product_category_edit,product_category_view,news_tags_add,news_tags_delete,news_tags_edit,news_tags_view,analytics_code_add,analytics_code_delete,analytics_code_edit,analytics_code_view,news_topic_add,news_topic_delete,news_topic_edit,news_topic_view,news_type_add,news_type_delete,news_type_edit,news_type_view,news_group_add,news_group_delete,news_group_edit,news_group_view,news_add,news_delete,news_edit,news_view,web_branches_add,web_branches_delete,web_branches_edit,web_information_edit,web_image_add,web_image_delete,web_image_edit,web_image_view,web_home_add,web_home_delete,web_home_edit,web_home_view,product_add,product_category_add,product_category_delete,product_category_edit,product_category_view,product_delete,product_edit,product_view,profile_change_pass,profile_edit,web_menu_add,web_menu_delete,web_menu_edit,web_menu_view,block_add,block_delete,block_edit,block_view,task_add,task_delete,task_edit,task_view,roles_add,roles_delete,roles_edit,roles_menu_access,roles_module_action,roles_view,module_add,module_delete,module_edit,module_view,menu_admin_add,menu_admin_delete,menu_admin_edit,menu_admin_view,news_category_add,news_category_delete,news_category_edit,news_category_view,user_add,user_delete,user_edit,user_publish,user_unpublish,user_view'),
(9, 'Quyền quản trị nội dung', 'Dành cho nhân viên quản trị nội dung', 1, '87,74', 'lien-he,dich-vu,recruitments,projects,product,profile,news', 'recruitments_add,recruitments_category_add,recruitments_category_delete,recruitments_category_edit,recruitments_category_view,recruitments_delete,recruitments_edit,recruitments_view,projects_add,projects_category_add,projects_category_delete,projects_category_edit,projects_category_view,projects_delete,projects_edit,projects_view,product_add,product_category_add,product_category_delete,product_category_edit,product_category_view,product_delete,product_edit,product_view,profile_change_pass,profile_edit,news_add,news_category_add,news_category_delete,news_category_edit,news_category_view,news_delete,news_edit,news_view');

-- --------------------------------------------------------

--
-- Table structure for table `e4_term_meta`
--

CREATE TABLE `e4_term_meta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e4_term_meta`
--

INSERT INTO `e4_term_meta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(0, 14, 'meta_title_vi', 'Meta Title Tiếng Việt Men fashio');

-- --------------------------------------------------------

--
-- Table structure for table `e4_term_relationships`
--

CREATE TABLE `e4_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  `object_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e4_term_relationships`
--

INSERT INTO `e4_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`, `object_type`) VALUES
(15, 33, 0, 'product'),
(15, 18, 0, 'product'),
(17, 14, 0, 'product'),
(17, 18, 0, 'product'),
(16, 33, 0, 'product'),
(16, 18, 0, 'product'),
(19, 13, 0, 'product'),
(19, 20, 0, 'product'),
(20, 13, 0, 'product'),
(20, 21, 0, 'product'),
(14, 32, 0, 'product'),
(14, 18, 0, 'product'),
(14, 20, 0, 'product'),
(18, 17, 0, 'product'),
(18, 18, 0, 'product'),
(18, 20, 0, 'product'),
(22, 66, 0, 'product'),
(22, 18, 0, 'product'),
(22, 20, 0, 'product'),
(23, 66, 0, 'product'),
(23, 18, 0, 'product'),
(23, 19, 0, 'product'),
(23, 20, 0, 'product'),
(24, 66, 0, 'product'),
(24, 18, 0, 'product'),
(24, 20, 0, 'product'),
(21, 66, 0, 'product'),
(21, 18, 0, 'product'),
(21, 19, 0, 'product'),
(21, 20, 0, 'product'),
(25, 67, 0, 'product'),
(25, 18, 0, 'product'),
(25, 20, 0, 'product'),
(26, 67, 0, 'product'),
(26, 18, 0, 'product'),
(26, 20, 0, 'product'),
(27, 67, 0, 'product'),
(27, 18, 0, 'product'),
(27, 20, 0, 'product'),
(28, 67, 0, 'product'),
(28, 18, 0, 'product'),
(28, 20, 0, 'product');

-- --------------------------------------------------------

--
-- Table structure for table `e4_term_taxonomy`
--

CREATE TABLE `e4_term_taxonomy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent` bigint(20) NOT NULL DEFAULT '0',
  `title_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief_vi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_part` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` bigint(20) NOT NULL DEFAULT '0',
  `order` int(5) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e4_term_taxonomy`
--

INSERT INTO `e4_term_taxonomy` (`id`, `taxonomy`, `parent`, `title_vi`, `title_en`, `brief_vi`, `brief_en`, `image`, `url_part`, `count`, `order`, `position`, `status`) VALUES
(3, 'category', 0, 'Tin tức', 'news', '    ', '    ', NULL, 'tin-tuc', 1, 0, 'right', 'active'),
(4, 'group', 0, 'Tin nóng', 'Hot news', ' tin nóng', ' Hot news', NULL, 'tin-nong', 2, 0, 'header', 'active'),
(5, 'group', 0, 'Bài đọc nhiều', 'Views', ' ', ' ', NULL, 'bai-doc-nhieu', 3, 0, '', 'active'),
(7, 'type', 0, 'Bài chuyên gia', 'Professor', '  ', '  ', NULL, 'bai-chuyen-gia', 3, 0, 'home', 'active'),
(8, 'type', 0, 'Bài sản xuất', 'Productions', '', '', NULL, 'bai-san-xuat', 1, 0, '', 'active'),
(9, 'topic', 0, 'Thời sự 24h', 'Daily news', ' ', ' ', NULL, 'thoi-su-24h', 2, 0, 'footer', 'active'),
(10, 'topic', 0, 'Tin tức bốn phương', 'News', '', '', NULL, 'tin-tuc-bon-phuong', 2, 0, '', 'active'),
(11, 'post_tags', 0, 'Agela Phương Trinh', 'Phuong Trinh', '', '', NULL, 'agela-phuong-trinh', 1, 0, '', 'active'),
(12, 'post_tags', 0, 'Ngọc Trinh', 'Ngoc Trinh', '', '', NULL, 'ngoc-trinh', 1, 0, '', 'active'),
(18, 'product_group', 0, 'Sản phẩm nổi bật', 'Featured Products', '', '', NULL, 'san-pham-noi-bat', 13, 1, 'home', 'active'),
(19, 'product_group', 0, 'Sản phẩm bán chạy', 'Best seller', '', '', NULL, 'san-pham-ban-chay', 2, 3, '', 'active'),
(20, 'product_group', 0, 'Sản phẩm mới', 'New Products', '', '', NULL, 'san-pham-moi', 11, 4, 'home', 'active'),
(21, 'product_group', 0, 'Hot trend', 'Hot trend', '', '', NULL, 'hot-trend', 3, 2, '', 'active'),
(22, 'product_type', 0, 'Kích cỡ', 'Size', '', '', NULL, 'kich-co', 1, 0, '', 'active'),
(23, 'product_type', 0, 'Màu sắc', 'Color', '', '', NULL, 'mau-sac', 1, 0, '', 'active'),
(24, 'product_type', 22, 'XXL', 'XXL', '', '', NULL, 'xxl', 1, 0, '', 'active'),
(25, 'product_type', 22, 'XL', 'XL', '', '', NULL, 'xl', 1, 0, '', 'active'),
(26, 'product_type', 22, 'L', 'L', '', '', NULL, 'l', 1, 0, '', 'active'),
(27, 'product_type', 22, 'M', 'M', '', '', NULL, 'm', 0, 0, '', 'active'),
(28, 'product_type', 23, 'Đen', 'Black', '', '', NULL, 'den', 1, 0, '', 'active'),
(29, 'product_type', 23, 'Trắng', 'White', '', '', NULL, 'trang', 1, 0, '', 'active'),
(30, 'product_type', 23, 'Xanh lá', 'Green', '', '', NULL, 'xanh-la', 0, 0, '', 'active'),
(31, 'product_type', 23, 'Vàng', 'Yellow', '', '', NULL, 'vang', 0, 0, '', 'active'),
(66, 'product_category', 0, 'Trang điểm', 'Makeup', '  ', '  ', '/upload/danhmuc/trang-diem-make-up_1.png', 'trang-diem', 4, 0, 'home', 'active'),
(67, 'product_category', 0, 'Son môi', 'Lips', '', '', '/upload/danhmuc/moi.png', 'son-moi', 4, 0, 'home', 'active'),
(68, 'product_category', 0, 'Chăm sóc da', 'Skincare', '', '', '/upload/danhmuc/cham-soc-da-mat.png', 'cham-soc-da', 0, 0, 'home', 'active'),
(69, 'product_category', 0, 'Chăm sóc cơ thể', 'BODY CARE ', '', '', '/upload/danhmuc/cham-soc-body_1.png', 'cham-soc-co-the', 0, 0, 'home', 'active'),
(70, 'product_category', 0, 'Chăm sóc tóc', 'Hair', '', '', '/upload/danhmuc/cham-soc-toc_1.png', 'cham-soc-toc', 0, 0, 'home', 'active'),
(71, 'product_category', 0, 'Dụng cụ ', 'Tools-Brushes', '', '', '/upload/danhmuc/dung-cu.png', 'dung-cu-', 0, 0, 'home', 'active'),
(72, 'product_category', 0, 'Nước hoa', 'Perfume', '', '', '/upload/danhmuc/dung-cu_1.png', 'nuoc-hoa', 0, 0, 'home', 'active'),
(73, 'category', 3, 'Xu hướng làm đẹp ', 'Beauty trends', '', '', NULL, 'xu-huong-lam-dep-', 0, 0, '', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `e4_users`
--

CREATE TABLE `e4_users` (
  `id` int(11) NOT NULL,
  `user_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'admin hoac public',
  `fullname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `permission` int(5) NOT NULL,
  `publish` int(1) NOT NULL,
  `random` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `homephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobifone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `yahoo` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_created` int(20) NOT NULL,
  `user_created` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` int(20) NOT NULL,
  `user_updated` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status_public` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e4_users`
--

INSERT INTO `e4_users` (`id`, `user_type`, `fullname`, `password`, `email`, `permission`, `publish`, `random`, `address`, `homephone`, `mobifone`, `image_url`, `facebook`, `yahoo`, `skype`, `date_created`, `user_created`, `date_updated`, `user_updated`, `status_public`) VALUES
(1, 'admin', 'Administrator', 'afcde91cbdd8cbbc648f4d24c5485a90', 'admin@gmail.com', 5, 1, 'b6356128c7df86c0b1024590ad12c482adafa', 'Số 29/394 Mỹ Đình, Nam Từ Liêm, Hà Nội', '0433 839 932', '098 226 9600', '', 'nguyenhuuthang.1987', 'huuthangb2k50@yahoo.com', 'huuthangb2k50', 1512438986, '', 1594715708, 'admin@gmail.com', ''),
(2, 'admin', 'Nguyễn Thắng', '', 'huuthangb2k50@gmail.com', 9, 1, '', '', '0433 839 932', '098 226 9600', '', '', '', '', 1594625935, 'admin@gmail.com', 1595236785, 'admin@gmail.com', ''),
(3, 'public', 'giang', 'e10adc3949ba59abbe56e057f20f883e', 'a@gmail.com', 0, 1, '', '', '0945649370', '0945649370', '', '', '', '', 1638849592, '', 1638849592, '', ''),
(4, 'public', 'Nguyễn Trường Giang', '4297f44b13955235245b2497399d7a93', 'giang@gmail.com', 0, 1, '', '', '123456789', '123456789', '', '', '', '', 1638860412, '', 1638860412, '', ''),
(7, 'public', 'Sơn Tùng', '4297f44b13955235245b2497399d7a93', 'tungson@gmail.com', 0, 1, '', '', '0123654789', '0123654789', '', '', '', '', 1661321331, '', 1661321331, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `e4_users_meta`
--

CREATE TABLE `e4_users_meta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e4_web_home`
--

CREATE TABLE `e4_web_home` (
  `id` int(11) NOT NULL,
  `parent` int(5) NOT NULL,
  `title_vi` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `brief_vi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `brief_en` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content_vi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content_en` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_download` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order` int(5) NOT NULL,
  `date_created` int(20) NOT NULL,
  `user_created` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` int(20) NOT NULL,
  `user_updated` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `topic_vi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Lưu thông tin về cấu hình các box trên trang chủ';

--
-- Dumping data for table `e4_web_home`
--

INSERT INTO `e4_web_home` (`id`, `parent`, `title_vi`, `title_en`, `brief_vi`, `brief_en`, `content_vi`, `content_en`, `image`, `file_download`, `icon`, `link`, `link_name`, `status`, `order`, `date_created`, `user_created`, `date_updated`, `user_updated`, `topic_vi`, `topic_en`, `date_start`, `date_end`) VALUES
(34, 0, 'Banner quảng cáo', 'Banner quảng cáo', '', '', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '\r\n\r\n	\r\n\r\n&nbsp;\r\n\r\n', 'http://localhost/steam/templates/buno/img/banner/banner-1.jpg', '', '', '', '', 'active', 1, 1575276668, 'admin@gmail.com', 1596784055, 'admin@gmail.com', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 0, 'Natural Product', 'Natural Product', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>Broccoli roses, alway fresh and delicious.100% Organic</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>Broccoli roses, alway fresh and delicious.100% Organic</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body><span>Sale</span> 50%</body>\r\n</html>\r\n', '\r\n\r\n	\r\n\r\n<span>Sale</span> 50%\r\n\r\n', '/upload//img1-center-store1.jpg', '', '', '#', 'Shop now', 'active', 2, 1576676722, 'admin@gmail.com', 1637734629, 'admin@gmail.com', 'Discount', 'Discount', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 0, 'Thanh toán', 'Payment', '', '', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '\r\n\r\n	\r\n\r\n&nbsp;\r\n\r\n', '', '', '', '', '', 'active', 3, 1576676813, 'admin@gmail.com', 1596784641, 'admin@gmail.com', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 50, 'Năm', 'years', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>2022</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>2022</body>\r\n</html>\r\n', '', '', '', '', '', '', '', 'active', 0, 1637741133, 'admin@gmail.com', 1637826054, 'admin@gmail.com', '2022', '2022', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 50, 'Tháng', 'month', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>7</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>7</body>\r\n</html>\r\n', '', '', '', '', '', '', '', 'active', 0, 1637740093, 'admin@gmail.com', 1637811559, 'admin@gmail.com', '7', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 50, 'Ngày', 'days', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>19</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>19</body>\r\n</html>\r\n', '<html>\n<head>\n	<title></title>\n</head>\n<body>&nbsp;</body>\n</html>\n', '\r\n\r\n	\r\n\r\n&nbsp;\r\n\r\n', '', '', '', '', '', 'active', 2, 1592462842, 'admin@gmail.com', 1637811579, 'admin@gmail.com', '19', '19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 50, 'giờ', 'hours', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>10</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>10</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '\r\n\r\n	\r\n\r\n&nbsp;\r\n\r\n', '', '', '', '', '', 'active', 3, 1592462831, 'admin@gmail.com', 1637811590, 'admin@gmail.com', '10', '10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 50, 'phút', 'min', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>46</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>46</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '\r\n\r\n	\r\n\r\n&nbsp;\r\n\r\n', '', '', '', '', '', 'active', 4, 1592462805, 'admin@gmail.com', 1637811599, 'admin@gmail.com', '46', '46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 50, 'giây', 'sec', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>37</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>37</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '\r\n\r\n	\r\n\r\n&nbsp;\r\n\r\n', '', '', '', '', '', 'active', 1, 1592463390, 'admin@gmail.com', 1637811569, 'admin@gmail.com', '37', '37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 53, 'Miễn phí vận chuyển', 'Free Shipping', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>For all oder over $99</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>For all oder over $99</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '\r\n\r\n	\r\n\r\n&nbsp;\r\n\r\n', '/upload/traid/cms1.png', '', '', '', '', 'active', 1, 1592463752, 'admin@gmail.com', 1637728111, 'admin@gmail.com', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 53, 'Chính sách bảo hiểm', 'Money Back Guarantee', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>If good have Problems</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>If good have Problems</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '\r\n\r\n	\r\n\r\n&nbsp;\r\n\r\n', '/upload/traid/cms2.png', '', '', '', '', 'active', 2, 1592463795, 'admin@gmail.com', 1637728166, 'admin@gmail.com', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 53, 'Bảo mật thanh toán', 'Payment Secure', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>100% secure payment</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>100% secure payment</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '\r\n\r\n	\r\n\r\n&nbsp;\r\n\r\n', '/upload/traid/cms4.png', '', '', '', '', 'active', 4, 1592463828, 'admin@gmail.com', 1637728205, 'admin@gmail.com', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 53, 'Hỗ trợ online 24/7', 'Online Support 24/7', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>Dedicated support</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>Dedicated support</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '\r\n\r\n	\r\n\r\n&nbsp;\r\n\r\n', '/upload/traid/cms3.png', '', '', '', '', 'active', 3, 1592463857, 'admin@gmail.com', 1637728185, 'admin@gmail.com', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 34, 'Banner 2', 'banner 2', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p class=\"text1\">no sugar zero calories</p>\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n<p class=\"text2\">organic</p>\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n<p class=\"text3\">Iced tea</p>\r\n</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p class=\"text1\">no sugar zero calories</p>\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n<p class=\"text2\">organic</p>\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n<p class=\"text3\">Iced tea</p>\r\n</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '\r\n\r\n	\r\n\r\n&nbsp;\r\n\r\n', '/upload/banner/banner1.jpg', '', '', '', '', 'active', 2, 1592476562, 'admin@gmail.com', 1681876083, 'admin@gmail.com', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 34, 'Banner 1', 'banner 1', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>\r\n', '', '', '/upload/banner/banner2.jpg', '', '', '', '', 'active', 1, 1681876396, 'admin@gmail.com', 1681876396, 'admin@gmail.com', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `e4_web_image`
--

CREATE TABLE `e4_web_image` (
  `id` int(5) NOT NULL,
  `title_vi` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `region` int(2) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_created` int(20) NOT NULL,
  `user_created` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` int(20) NOT NULL,
  `user_updated` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e4_web_image`
--

INSERT INTO `e4_web_image` (`id`, `title_vi`, `title_en`, `image`, `link`, `position`, `region`, `status`, `date_created`, `user_created`, `date_updated`, `user_updated`) VALUES
(2, 'Logo', 'Logo', '/upload/banner/logo.png', '', 'logo', 0, 'active', 1487872000, 'admin@gmail.com', 1682045349, 'admin@gmail.com'),
(3, 'Ảnh icon cho trình duyệt', 'Ảnh icon cho trình duyệt', '/upload/banner/free_sample_by_wix.jpg', '', 'icon', 1, 'active', 1487872053, 'admin@gmail.com', 1682044166, 'admin@gmail.com'),
(11, 'Ảnh quảng cáo', 'Image Adv', 'http://localhost/steam/templates/buno/img/banner/banner-1.jpg', '', 'banner', 0, 'active', 1594719612, 'admin@gmail.com', 1596775247, 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `e4_web_menu`
--

CREATE TABLE `e4_web_menu` (
  `id` int(5) NOT NULL,
  `title_vi` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_en` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order` int(5) NOT NULL,
  `parent` int(11) NOT NULL,
  `url_html` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_created` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_created` int(20) NOT NULL,
  `user_updated` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` int(20) NOT NULL,
  `type` int(11) NOT NULL COMMENT '0: post;'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e4_web_menu`
--

INSERT INTO `e4_web_menu` (`id`, `title_vi`, `title_en`, `order`, `parent`, `url_html`, `status`, `user_created`, `date_created`, `user_updated`, `date_updated`, `type`) VALUES
(2, 'Trang chủ', 'Home', 0, 0, 'trang-chu.html', 'active', '', 0, 'admin@gmail.com', 1637642054, 0),
(8, 'Liên hệ', 'Contacts', 5, 0, 'lien-he.html', 'active', '', 0, 'admin@gmail.com', 1594032683, 0),
(43, 'Tin tức ', 'News', 4, 0, 'blog.html', 'active', 'admin@gmail.com', 1592465875, 'admin@gmail.com', 1638872880, 0),
(1339, 'tài khoản', 'My Account', 6, 0, 'register.html', 'deactive', '1', 0, 'admin@gmail.com', 1638810366, 0),
(1345, 'Xu hướng làm đẹp ', 'Beauty trends', 0, 43, 'blog/xu-huong-lam-dep.html', 'active', 'admin@gmail.com', 1638418462, 'admin@gmail.com', 1682043846, 0),
(1349, 'Sản phẩm', 'Products', 1, 0, 'san-pham.html', 'active', 'admin@gmail.com', 1682043170, 'admin@gmail.com', 1682043187, 0),
(1350, 'Trang điểm', ' Makeup', 1, 1349, 'san-pham/trang-diem.html', 'active', 'admin@gmail.com', 1682043242, 'admin@gmail.com', 1682043242, 0),
(1351, 'Son môi', 'Lips', 2, 1349, 'san-pham/son-moi.html', 'active', 'admin@gmail.com', 1682043294, 'admin@gmail.com', 1682043294, 0),
(1352, 'Chăm sóc da', 'Skincare', 3, 1349, 'san-pham/cham-soc-da.html', 'active', 'admin@gmail.com', 1682043327, 'admin@gmail.com', 1682043327, 0),
(1353, 'Chăm sóc cơ thể ', 'BODY CARE', 4, 1349, 'san-pham/cham-soc-co-the.html', 'active', 'admin@gmail.com', 1682043363, 'admin@gmail.com', 1682043363, 0),
(1354, 'Chăm sóc tóc', 'Hair', 5, 1349, 'san-pham/cham-soc-toc.html', 'active', 'admin@gmail.com', 1682043401, 'admin@gmail.com', 1682043401, 0),
(1355, 'Dụng cụ ', 'Tools-Brushes', 6, 1349, 'san-pham/dung-cu.html', 'active', 'admin@gmail.com', 1682043448, 'admin@gmail.com', 1682043448, 0),
(1356, 'Nước hoa', 'Perfume', 7, 1349, 'san-pham/nuoc-hoa.html', 'active', 'admin@gmail.com', 1682043486, 'admin@gmail.com', 1682043486, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `e4_analytics_code`
--
ALTER TABLE `e4_analytics_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e4_blocks`
--
ALTER TABLE `e4_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e4_contacts`
--
ALTER TABLE `e4_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e4_functions`
--
ALTER TABLE `e4_functions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Module Id` (`module_id`);

--
-- Indexes for table `e4_leftmenu`
--
ALTER TABLE `e4_leftmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e4_modules`
--
ALTER TABLE `e4_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e4_options`
--
ALTER TABLE `e4_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `e4_order_list`
--
ALTER TABLE `e4_order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e4_order_product`
--
ALTER TABLE `e4_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e4_posts`
--
ALTER TABLE `e4_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e4_term_taxonomy`
--
ALTER TABLE `e4_term_taxonomy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e4_users`
--
ALTER TABLE `e4_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e4_web_home`
--
ALTER TABLE `e4_web_home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e4_web_menu`
--
ALTER TABLE `e4_web_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `e4_blocks`
--
ALTER TABLE `e4_blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `e4_contacts`
--
ALTER TABLE `e4_contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `e4_modules`
--
ALTER TABLE `e4_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `e4_order_list`
--
ALTER TABLE `e4_order_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `e4_order_product`
--
ALTER TABLE `e4_order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `e4_posts`
--
ALTER TABLE `e4_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `e4_term_taxonomy`
--
ALTER TABLE `e4_term_taxonomy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `e4_users`
--
ALTER TABLE `e4_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `e4_web_home`
--
ALTER TABLE `e4_web_home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `e4_web_menu`
--
ALTER TABLE `e4_web_menu`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1357;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
