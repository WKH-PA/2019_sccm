-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 03, 2019 at 05:18 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2019_sccm`
--

-- --------------------------------------------------------

--
-- Table structure for table `lh_baiviet`
--

CREATE TABLE `lh_baiviet` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT '0',
  `tenbaiviet_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenbaiviet_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenbaiviet_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota_vi` text COLLATE utf8_unicode_ci,
  `mota_en` text COLLATE utf8_unicode_ci,
  `mota_cn` text COLLATE utf8_unicode_ci,
  `mota_jp` text COLLATE utf8_unicode_ci,
  `noidung_vi` text COLLATE utf8_unicode_ci,
  `noidung_en` text COLLATE utf8_unicode_ci,
  `noidung_cn` text COLLATE utf8_unicode_ci,
  `noidung_jp` text COLLATE utf8_unicode_ci,
  `tags_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `id_parent_muti` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_hover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dowload` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duongdantin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'datafiles/setone',
  `ngaydang` int(11) NOT NULL DEFAULT '0',
  `capnhat` int(11) NOT NULL DEFAULT '0',
  `soluotxem` int(11) NOT NULL DEFAULT '1',
  `step` tinyint(3) NOT NULL DEFAULT '1',
  `giatien` bigint(11) NOT NULL DEFAULT '0',
  `giakm` bigint(11) NOT NULL DEFAULT '0',
  `seo_title_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt_km` tinyint(1) NOT NULL DEFAULT '0',
  `opt` tinyint(1) NOT NULL DEFAULT '0',
  `opt1` tinyint(1) NOT NULL DEFAULT '0',
  `opt2` tinyint(1) NOT NULL DEFAULT '0',
  `p1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p2` int(11) NOT NULL DEFAULT '0',
  `p3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `var_1_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `var_1_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `var_2_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `var_2_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mt_1_vi` text COLLATE utf8_unicode_ci,
  `mt_1_en` text COLLATE utf8_unicode_ci,
  `mt_1_cn` text COLLATE utf8_unicode_ci,
  `mt_1_jp` text COLLATE utf8_unicode_ci,
  `mt_2_vi` text COLLATE utf8_unicode_ci,
  `mt_2_en` text COLLATE utf8_unicode_ci,
  `mt_2_cn` text COLLATE utf8_unicode_ci,
  `mt_2_jp` text COLLATE utf8_unicode_ci,
  `mt_3_vi` text COLLATE utf8_unicode_ci,
  `mt_3_en` text COLLATE utf8_unicode_ci,
  `mt_3_cn` text COLLATE utf8_unicode_ci,
  `mt_3_jp` text COLLATE utf8_unicode_ci,
  `mt_4_vi` text COLLATE utf8_unicode_ci,
  `mt_4_en` text COLLATE utf8_unicode_ci,
  `mt_5_vi` text COLLATE utf8_unicode_ci,
  `mt_5_en` text COLLATE utf8_unicode_ci,
  `detail_vi` text COLLATE utf8_unicode_ci,
  `seo_title_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_en` text COLLATE utf8_unicode_ci,
  `detail_cn` text COLLATE utf8_unicode_ci,
  `num_1` int(11) NOT NULL DEFAULT '0',
  `num_2` int(11) NOT NULL DEFAULT '0',
  `num_3` int(11) NOT NULL DEFAULT '0',
  `sao_5` int(11) DEFAULT '0',
  `sao_4` int(11) DEFAULT '0',
  `sao_3` int(11) DEFAULT '0',
  `sao_2` int(11) DEFAULT '0',
  `sao_1` int(11) DEFAULT '0',
  `showhi` tinyint(1) NOT NULL DEFAULT '1',
  `view` int(11) NOT NULL DEFAULT '1',
  `khoi_luong` float NOT NULL DEFAULT '0',
  `tinhnang_vi` text COLLATE utf8_unicode_ci,
  `tinhnang_en` text COLLATE utf8_unicode_ci,
  `tinhnang_cn` text COLLATE utf8_unicode_ci,
  `tinhnang_jp` text COLLATE utf8_unicode_ci,
  `gg_map` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bang chua catalag News' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `lh_baiviet`
--

INSERT INTO `lh_baiviet` (`id`, `id_user`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `mota_vi`, `mota_en`, `mota_cn`, `mota_jp`, `noidung_vi`, `noidung_en`, `noidung_cn`, `noidung_jp`, `tags_vi`, `tags_en`, `tags_cn`, `tags_jp`, `seo_name`, `id_parent`, `id_parent_muti`, `catasort`, `icon`, `icon_hover`, `dowload`, `duongdantin`, `ngaydang`, `capnhat`, `soluotxem`, `step`, `giatien`, `giakm`, `seo_title_vi`, `seo_title_en`, `seo_title_cn`, `seo_keywords_vi`, `seo_keywords_en`, `seo_keywords_cn`, `seo_description_vi`, `seo_description_en`, `seo_description_cn`, `opt_km`, `opt`, `opt1`, `opt2`, `p1`, `p2`, `p3`, `link_video`, `var_1_vi`, `var_1_en`, `var_2_vi`, `var_2_en`, `mt_1_vi`, `mt_1_en`, `mt_1_cn`, `mt_1_jp`, `mt_2_vi`, `mt_2_en`, `mt_2_cn`, `mt_2_jp`, `mt_3_vi`, `mt_3_en`, `mt_3_cn`, `mt_3_jp`, `mt_4_vi`, `mt_4_en`, `mt_5_vi`, `mt_5_en`, `detail_vi`, `seo_title_jp`, `seo_keywords_jp`, `seo_description_jp`, `detail_en`, `detail_cn`, `num_1`, `num_2`, `num_3`, `sao_5`, `sao_4`, `sao_3`, `sao_2`, `sao_1`, `showhi`, `view`, `khoi_luong`, `tinhnang_vi`, `tinhnang_en`, `tinhnang_cn`, `tinhnang_jp`, `gg_map`) VALUES
(1, 1, 'Giới thiệu chung', 'General introduction', NULL, NULL, NULL, NULL, NULL, NULL, '<p>SCC l&agrave; một c&ocirc;ng ty con của C&ocirc;ng ty Vitranschart JSC th&agrave;nh lập ng&agrave;y 25/06/1975.</p>\r\n\r\n<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>\r\n\r\n<p>Năm 1994 Vitranschart th&agrave;nh lập SCC để quản l&yacute; thuyền vi&ecirc;n đội t&agrave;u Vitranschart đồng thời mở rộng thị trường cho c&aacute;c chủ t&agrave;u trong v&agrave; ngo&agrave;i nước thu&ecirc; thuyền vi&ecirc;n.</p>\r\n\r\n<p>Chủ động nguồn lực, từ khi h&igrave;nh th&agrave;nh SCC lu&ocirc;n c&oacute; lượng thuyền vi&ecirc;n dồi d&agrave;o với ch&iacute;nh s&aacute;ch chuy&ecirc;n nghiệp trong chủ động quản l&yacute; nguồn lực, SCC x&acirc;y dựng m&ocirc; h&igrave;nh kh&eacute;p k&iacute;n:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Tuyển dụng -&gt; Dự trữ -&gt; Huấn luyện -&gt; L&agrave;m việc tr&ecirc;n t&agrave;u -&gt; Dự trữ</p>\r\n\r\n<p>Đa dạng lĩnh vực, SCC cung ứng thuyền vi&ecirc;n cho nhiều chủng loại t&agrave;u biển như: t&agrave;u h&agrave;ng rời, t&agrave;u b&aacute;ch h&oacute;a, t&agrave;u container, t&agrave;u chuy&ecirc;n d&ugrave;ng chuy&ecirc;n chở xi-măng&hellip;</p>\r\n\r\n<p>Chất lượng dịch vụ, SCC ch&uacute; trọng việc tuyển chọn nguồn lực c&oacute; chất lượng từ c&aacute;c trường đại học, cao đẳng h&agrave;ng hải, c&aacute;c trường nghề - đồng thời c&oacute; ch&iacute;nh s&aacute;ch tuyển dụng những thuyền vi&ecirc;n c&oacute; kỹ năng, kinh nghiệm v&agrave; đạo đức nghề nghiệp.</p>\r\n\r\n<p>Cam kết, SCC khẳng định thuyền vi&ecirc;n c&oacute; đủ tr&igrave;nh độ v&agrave; năng lực ph&ugrave; hợp y&ecirc;u cầu của Quốc gia v&agrave; Quốc tế, song song đ&oacute; ch&uacute;ng t&ocirc;i cũng bảo đảm họ lu&ocirc;n được hưởng đầy đủ mọi quyền lợi cũng theo quy định của Quốc gia v&agrave; Quốc tế.</p>\r\n\r\n<p><strong>TRỤ SỞ</strong></p>\r\n\r\n<p>Hội sở: 36 Nguyễn Thị Minh Khai, Phường ĐaKao, Quận 1, Tp.Hồ Ch&iacute; Minh<br />\r\nĐiện thoại: 028.38225277 / Fax: 028.38225072<br />\r\nVăn ph&ograve;ng đại diện: 5A V&otilde; Thị S&aacute;u, Ng&ocirc; Quyền, Hải Ph&ograve;ng<br />\r\nĐiện thoại/Fax: 225.3841156<br />\r\nEmail: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', '<p>SCC is a subsidiary of Vitranschart JSC established on June 25, 1975.</p>\r\n\r\n<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>\r\n\r\n<p>In 1994 Vitranschart established SCC to manage the crew of Vitranschart fleet and expand the market for domestic and foreign ship owners to hire crew members.</p>\r\n\r\n<p>Proactive resources, from the time of forming SCC, there is always an abundance of crew members with professional policies in actively managing resources, SCC builds a closed model:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Recruitment -&gt; Reserve -&gt; Coaching -&gt; Working on board -&gt; Reserve</p>\r\n\r\n<p>Diversified fields, SCC provides seafarers for many types of ships such as bulk cargo vessels, department stores, container ships, specialized vessels for transporting cement ...</p>\r\n\r\n<p>Quality of service, SCC focuses on recruiting quality resources from universities, maritime colleges and vocational schools - at the same time adopting a policy of recruiting skilled, experienced and ethical crew members. job.</p>\r\n\r\n<p>Commitment, SCC affirmed that seafarers are qualified and capable in accordance with national and international requirements, and at the same time, we also ensure that they always enjoy all rights as well as national regulations. and International.</p>\r\n\r\n<p><strong>HEADQUARTERS</strong></p>\r\n\r\n<p>Head office: 36 Nguyen Thi Minh Khai, DaKao Ward, District 1, Ho Chi Minh City<br />\r\nPhone: 028.38225277 / Fax: 028.38225072<br />\r\nRepresentative office: 5A Vo Thi Sau, Ngo Quyen, Hai Phong<br />\r\nPhone / Fax: 225.3841156</p>\r\n\r\n<p>Email: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'gioi-thieu-chung', 0, '', 4, NULL, NULL, NULL, 'datafiles/setone', 1553066167, 0, 4, 1, 0, 0, 'Giới thiệu chung', 'General introduction', '', 'Giới thiệu chung', 'General introduction', '', 'Giới thiệu chung', 'General introduction', '', 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(2, 1, 'Lịch sử hình thành', 'History begin', NULL, NULL, NULL, NULL, NULL, NULL, '<p>SCC l&agrave; một c&ocirc;ng ty con của C&ocirc;ng ty Vitranschart JSC th&agrave;nh lập ng&agrave;y 25/06/1975.</p>\r\n\r\n<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>\r\n\r\n<p>Năm 1994 Vitranschart th&agrave;nh lập SCC để quản l&yacute; thuyền vi&ecirc;n đội t&agrave;u Vitranschart đồng thời mở rộng thị trường cho c&aacute;c chủ t&agrave;u trong v&agrave; ngo&agrave;i nước thu&ecirc; thuyền vi&ecirc;n.</p>\r\n\r\n<p>Chủ động nguồn lực, từ khi h&igrave;nh th&agrave;nh SCC lu&ocirc;n c&oacute; lượng thuyền vi&ecirc;n dồi d&agrave;o với ch&iacute;nh s&aacute;ch chuy&ecirc;n nghiệp trong chủ động quản l&yacute; nguồn lực, SCC x&acirc;y dựng m&ocirc; h&igrave;nh kh&eacute;p k&iacute;n:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Tuyển dụng -&gt; Dự trữ -&gt; Huấn luyện -&gt; L&agrave;m việc tr&ecirc;n t&agrave;u -&gt; Dự trữ</p>\r\n\r\n<p>Đa dạng lĩnh vực, SCC cung ứng thuyền vi&ecirc;n cho nhiều chủng loại t&agrave;u biển như: t&agrave;u h&agrave;ng rời, t&agrave;u b&aacute;ch h&oacute;a, t&agrave;u container, t&agrave;u chuy&ecirc;n d&ugrave;ng chuy&ecirc;n chở xi-măng&hellip;</p>\r\n\r\n<p>Chất lượng dịch vụ, SCC ch&uacute; trọng việc tuyển chọn nguồn lực c&oacute; chất lượng từ c&aacute;c trường đại học, cao đẳng h&agrave;ng hải, c&aacute;c trường nghề - đồng thời c&oacute; ch&iacute;nh s&aacute;ch tuyển dụng những thuyền vi&ecirc;n c&oacute; kỹ năng, kinh nghiệm v&agrave; đạo đức nghề nghiệp.</p>\r\n\r\n<p>Cam kết, SCC khẳng định thuyền vi&ecirc;n c&oacute; đủ tr&igrave;nh độ v&agrave; năng lực ph&ugrave; hợp y&ecirc;u cầu của Quốc gia v&agrave; Quốc tế, song song đ&oacute; ch&uacute;ng t&ocirc;i cũng bảo đảm họ lu&ocirc;n được hưởng đầy đủ mọi quyền lợi cũng theo quy định của Quốc gia v&agrave; Quốc tế.</p>\r\n\r\n<p><strong>TRỤ SỞ</strong></p>\r\n\r\n<p>Hội sở: 36 Nguyễn Thị Minh Khai, Phường ĐaKao, Quận 1, Tp.Hồ Ch&iacute; Minh<br />\r\nĐiện thoại: 028.38225277 / Fax: 028.38225072<br />\r\nVăn ph&ograve;ng đại diện: 5A V&otilde; Thị S&aacute;u, Ng&ocirc; Quyền, Hải Ph&ograve;ng<br />\r\nĐiện thoại/Fax: 225.3841156<br />\r\nEmail: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', '<p>SCC is a subsidiary of Vitranschart JSC established on June 25, 1975.</p>\r\n\r\n<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>\r\n\r\n<p>In 1994 Vitranschart established SCC to manage the crew of Vitranschart fleet and expand the market for domestic and foreign ship owners to hire crew members.</p>\r\n\r\n<p>Proactive resources, from the time of forming SCC, there is always an abundance of crew members with professional policies in actively managing resources, SCC builds a closed model:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Recruitment -&gt; Reserve -&gt; Coaching -&gt; Working on board -&gt; Reserve</p>\r\n\r\n<p>Diversified fields, SCC provides seafarers for many types of ships such as bulk cargo vessels, department stores, container ships, specialized vessels for transporting cement ...</p>\r\n\r\n<p>Quality of service, SCC focuses on recruiting quality resources from universities, maritime colleges and vocational schools - at the same time adopting a policy of recruiting skilled, experienced and ethical crew members. job.</p>\r\n\r\n<p>Commitment, SCC affirmed that seafarers are qualified and capable in accordance with national and international requirements, and at the same time, we also ensure that they always enjoy all rights as well as national regulations. and International.</p>\r\n\r\n<p><strong>HEADQUARTERS</strong></p>\r\n\r\n<p>Head office: 36 Nguyen Thi Minh Khai, DaKao Ward, District 1, Ho Chi Minh City<br />\r\nPhone: 028.38225277 / Fax: 028.38225072<br />\r\nRepresentative office: 5A Vo Thi Sau, Ngo Quyen, Hai Phong<br />\r\nPhone / Fax: 225.3841156</p>\r\n\r\n<p>Email: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'lich-su-hinh-thanh', 0, '', 3, '', NULL, NULL, 'datafiles/setone', 1553066190, 0, 4, 1, 0, 0, 'Lịch sử hình thành', 'History begin', '', 'Lịch sử hình thành', 'History begin', '', 'Lịch sử hình thành', 'History begin', '', 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(3, 1, 'Sơ đồ tổ chức', 'Organizational chart', NULL, NULL, NULL, NULL, NULL, NULL, '<p>SCC l&agrave; một c&ocirc;ng ty con của C&ocirc;ng ty Vitranschart JSC th&agrave;nh lập ng&agrave;y 25/06/1975.</p>\r\n\r\n<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>\r\n\r\n<p>Năm 1994 Vitranschart th&agrave;nh lập SCC để quản l&yacute; thuyền vi&ecirc;n đội t&agrave;u Vitranschart đồng thời mở rộng thị trường cho c&aacute;c chủ t&agrave;u trong v&agrave; ngo&agrave;i nước thu&ecirc; thuyền vi&ecirc;n.</p>\r\n\r\n<p>Chủ động nguồn lực, từ khi h&igrave;nh th&agrave;nh SCC lu&ocirc;n c&oacute; lượng thuyền vi&ecirc;n dồi d&agrave;o với ch&iacute;nh s&aacute;ch chuy&ecirc;n nghiệp trong chủ động quản l&yacute; nguồn lực, SCC x&acirc;y dựng m&ocirc; h&igrave;nh kh&eacute;p k&iacute;n:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Tuyển dụng -&gt; Dự trữ -&gt; Huấn luyện -&gt; L&agrave;m việc tr&ecirc;n t&agrave;u -&gt; Dự trữ</p>\r\n\r\n<p>Đa dạng lĩnh vực, SCC cung ứng thuyền vi&ecirc;n cho nhiều chủng loại t&agrave;u biển như: t&agrave;u h&agrave;ng rời, t&agrave;u b&aacute;ch h&oacute;a, t&agrave;u container, t&agrave;u chuy&ecirc;n d&ugrave;ng chuy&ecirc;n chở xi-măng&hellip;</p>\r\n\r\n<p>Chất lượng dịch vụ, SCC ch&uacute; trọng việc tuyển chọn nguồn lực c&oacute; chất lượng từ c&aacute;c trường đại học, cao đẳng h&agrave;ng hải, c&aacute;c trường nghề - đồng thời c&oacute; ch&iacute;nh s&aacute;ch tuyển dụng những thuyền vi&ecirc;n c&oacute; kỹ năng, kinh nghiệm v&agrave; đạo đức nghề nghiệp.</p>\r\n\r\n<p>Cam kết, SCC khẳng định thuyền vi&ecirc;n c&oacute; đủ tr&igrave;nh độ v&agrave; năng lực ph&ugrave; hợp y&ecirc;u cầu của Quốc gia v&agrave; Quốc tế, song song đ&oacute; ch&uacute;ng t&ocirc;i cũng bảo đảm họ lu&ocirc;n được hưởng đầy đủ mọi quyền lợi cũng theo quy định của Quốc gia v&agrave; Quốc tế.</p>\r\n\r\n<p><strong>TRỤ SỞ</strong></p>\r\n\r\n<p>Hội sở: 36 Nguyễn Thị Minh Khai, Phường ĐaKao, Quận 1, Tp.Hồ Ch&iacute; Minh<br />\r\nĐiện thoại: 028.38225277 / Fax: 028.38225072<br />\r\nVăn ph&ograve;ng đại diện: 5A V&otilde; Thị S&aacute;u, Ng&ocirc; Quyền, Hải Ph&ograve;ng<br />\r\nĐiện thoại/Fax: 225.3841156<br />\r\nEmail: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', '<p>SCC is a subsidiary of Vitranschart JSC established on June 25, 1975.</p>\r\n\r\n<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>\r\n\r\n<p>In 1994 Vitranschart established SCC to manage the crew of Vitranschart fleet and expand the market for domestic and foreign ship owners to hire crew members.</p>\r\n\r\n<p>Proactive resources, from the time of forming SCC, there is always an abundance of crew members with professional policies in actively managing resources, SCC builds a closed model:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Recruitment -&gt; Reserve -&gt; Coaching -&gt; Working on board -&gt; Reserve</p>\r\n\r\n<p>Diversified fields, SCC provides seafarers for many types of ships such as bulk cargo vessels, department stores, container ships, specialized vessels for transporting cement ...</p>\r\n\r\n<p>Quality of service, SCC focuses on recruiting quality resources from universities, maritime colleges and vocational schools - at the same time adopting a policy of recruiting skilled, experienced and ethical crew members. job.</p>\r\n\r\n<p>Commitment, SCC affirmed that seafarers are qualified and capable in accordance with national and international requirements, and at the same time, we also ensure that they always enjoy all rights as well as national regulations. and International.</p>\r\n\r\n<p><strong>HEADQUARTERS</strong></p>\r\n\r\n<p>Head office: 36 Nguyen Thi Minh Khai, DaKao Ward, District 1, Ho Chi Minh City<br />\r\nPhone: 028.38225277 / Fax: 028.38225072<br />\r\nRepresentative office: 5A Vo Thi Sau, Ngo Quyen, Hai Phong<br />\r\nPhone / Fax: 225.3841156</p>\r\n\r\n<p>Email: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'so-do-to-chuc', 0, '', 2, '', NULL, NULL, 'datafiles/setone', 1553066201, 0, 2, 1, 0, 0, 'Sơ đồ tổ chức', 'Organizational chart', '', 'Sơ đồ tổ chức', 'Organizational chart', '', 'Sơ đồ tổ chức', 'Organizational chart', '', 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(4, 1, 'BỘ MÁY HOẠT ĐỘNG ĐỘC LẬP', 'The apparatus works', NULL, NULL, NULL, NULL, NULL, NULL, '<p>SCC l&agrave; một c&ocirc;ng ty con của C&ocirc;ng ty Vitranschart JSC th&agrave;nh lập ng&agrave;y 25/06/1975.</p>\r\n\r\n<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>\r\n\r\n<p>Năm 1994 Vitranschart th&agrave;nh lập SCC để quản l&yacute; thuyền vi&ecirc;n đội t&agrave;u Vitranschart đồng thời mở rộng thị trường cho c&aacute;c chủ t&agrave;u trong v&agrave; ngo&agrave;i nước thu&ecirc; thuyền vi&ecirc;n.</p>\r\n\r\n<p>Chủ động nguồn lực, từ khi h&igrave;nh th&agrave;nh SCC lu&ocirc;n c&oacute; lượng thuyền vi&ecirc;n dồi d&agrave;o với ch&iacute;nh s&aacute;ch chuy&ecirc;n nghiệp trong chủ động quản l&yacute; nguồn lực, SCC x&acirc;y dựng m&ocirc; h&igrave;nh kh&eacute;p k&iacute;n:</p>\r\n\r\n<figure class=\"image\"><img alt=\"Bình\" height=\"1200\" src=\"/2019_sccm/datafiles/img_data/images/4cai_60x73cm.jpg\" width=\"986\" />\r\n<figcaption>H&ugrave;ng hậu</figcaption>\r\n</figure>\r\n\r\n<p>Tuyển dụng -&gt; Dự trữ -&gt; Huấn luyện -&gt; L&agrave;m việc tr&ecirc;n t&agrave;u -&gt; Dự trữ</p>\r\n\r\n<p>Đa dạng lĩnh vực, SCC cung ứng thuyền vi&ecirc;n cho nhiều chủng loại t&agrave;u biển như: t&agrave;u h&agrave;ng rời, t&agrave;u b&aacute;ch h&oacute;a, t&agrave;u container, t&agrave;u chuy&ecirc;n d&ugrave;ng chuy&ecirc;n chở xi-măng&hellip;</p>\r\n\r\n<p>Chất lượng dịch vụ, SCC ch&uacute; trọng việc tuyển chọn nguồn lực c&oacute; chất lượng từ c&aacute;c trường đại học, cao đẳng h&agrave;ng hải, c&aacute;c trường nghề - đồng thời c&oacute; ch&iacute;nh s&aacute;ch tuyển dụng những thuyền vi&ecirc;n c&oacute; kỹ năng, kinh nghiệm v&agrave; đạo đức nghề nghiệp.</p>\r\n\r\n<p>Cam kết, SCC khẳng định thuyền vi&ecirc;n c&oacute; đủ tr&igrave;nh độ v&agrave; năng lực ph&ugrave; hợp y&ecirc;u cầu của Quốc gia v&agrave; Quốc tế, song song đ&oacute; ch&uacute;ng t&ocirc;i cũng bảo đảm họ lu&ocirc;n được hưởng đầy đủ mọi quyền lợi cũng theo quy định của Quốc gia v&agrave; Quốc tế.</p>\r\n\r\n<p><strong>TRỤ SỞ</strong></p>\r\n\r\n<p>Hội sở: 36 Nguyễn Thị Minh Khai, Phường ĐaKao, Quận 1, Tp.Hồ Ch&iacute; Minh<br />\r\nĐiện thoại: 028.38225277 / Fax: 028.38225072<br />\r\nVăn ph&ograve;ng đại diện: 5A V&otilde; Thị S&aacute;u, Ng&ocirc; Quyền, Hải Ph&ograve;ng<br />\r\nĐiện thoại/Fax: 225.3841156<br />\r\nEmail: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', '<p>SCC is a subsidiary of Vitranschart JSC established on June 25, 1975.</p>\r\n\r\n<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>\r\n\r\n<p>In 1994 Vitranschart established SCC to manage the crew of Vitranschart fleet and expand the market for domestic and foreign ship owners to hire crew members.</p>\r\n\r\n<p>Proactive resources, from the time of forming SCC, there is always an abundance of crew members with professional policies in actively managing resources, SCC builds a closed model:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Recruitment -&gt; Reserve -&gt; Coaching -&gt; Working on board -&gt; Reserve</p>\r\n\r\n<p>Diversified fields, SCC provides seafarers for many types of ships such as bulk cargo vessels, department stores, container ships, specialized vessels for transporting cement ...</p>\r\n\r\n<p>Quality of service, SCC focuses on recruiting quality resources from universities, maritime colleges and vocational schools - at the same time adopting a policy of recruiting skilled, experienced and ethical crew members. job.</p>\r\n\r\n<p>Commitment, SCC affirmed that seafarers are qualified and capable in accordance with national and international requirements, and at the same time, we also ensure that they always enjoy all rights as well as national regulations. and International.</p>\r\n\r\n<p><strong>HEADQUARTERS</strong></p>\r\n\r\n<p>Head office: 36 Nguyen Thi Minh Khai, DaKao Ward, District 1, Ho Chi Minh City<br />\r\nPhone: 028.38225277 / Fax: 028.38225072<br />\r\nRepresentative office: 5A Vo Thi Sau, Ngo Quyen, Hai Phong<br />\r\nPhone / Fax: 225.3841156</p>\r\n\r\n<p>Email: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bo-may-hoat-dong', 0, '', 1, '1553733117_1.png', NULL, NULL, 'datafiles/setone', 1553041990, 0, 3, 1, 0, 0, 'Bộ máy hoạt động', 'The apparatus works', '', 'Bộ máy hoạt động', 'The apparatus works', '', 'Bộ máy hoạt động', 'The apparatus works', '', 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(5, 1, 'Tàu hàng rời', 'Bulk cargo ships', NULL, NULL, '', '', NULL, NULL, '<p>SCC l&agrave; một c&ocirc;ng ty con của C&ocirc;ng ty Vitranschart JSC th&agrave;nh lập ng&agrave;y 25/06/1975.</p>\r\n\r\n<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>\r\n\r\n<p>Năm 1994 Vitranschart th&agrave;nh lập SCC để quản l&yacute; thuyền vi&ecirc;n đội t&agrave;u Vitranschart đồng thời mở rộng thị trường cho c&aacute;c chủ t&agrave;u trong v&agrave; ngo&agrave;i nước thu&ecirc; thuyền vi&ecirc;n.</p>\r\n\r\n<p>Chủ động nguồn lực, từ khi h&igrave;nh th&agrave;nh SCC lu&ocirc;n c&oacute; lượng thuyền vi&ecirc;n dồi d&agrave;o với ch&iacute;nh s&aacute;ch chuy&ecirc;n nghiệp trong chủ động quản l&yacute; nguồn lực, SCC x&acirc;y dựng m&ocirc; h&igrave;nh kh&eacute;p k&iacute;n:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Tuyển dụng -&gt; Dự trữ -&gt; Huấn luyện -&gt; L&agrave;m việc tr&ecirc;n t&agrave;u -&gt; Dự trữ</p>\r\n\r\n<p>Đa dạng lĩnh vực, SCC cung ứng thuyền vi&ecirc;n cho nhiều chủng loại t&agrave;u biển như: t&agrave;u h&agrave;ng rời, t&agrave;u b&aacute;ch h&oacute;a, t&agrave;u container, t&agrave;u chuy&ecirc;n d&ugrave;ng chuy&ecirc;n chở xi-măng&hellip;</p>\r\n\r\n<p>Chất lượng dịch vụ, SCC ch&uacute; trọng việc tuyển chọn nguồn lực c&oacute; chất lượng từ c&aacute;c trường đại học, cao đẳng h&agrave;ng hải, c&aacute;c trường nghề - đồng thời c&oacute; ch&iacute;nh s&aacute;ch tuyển dụng những thuyền vi&ecirc;n c&oacute; kỹ năng, kinh nghiệm v&agrave; đạo đức nghề nghiệp.</p>\r\n\r\n<p>Cam kết, SCC khẳng định thuyền vi&ecirc;n c&oacute; đủ tr&igrave;nh độ v&agrave; năng lực ph&ugrave; hợp y&ecirc;u cầu của Quốc gia v&agrave; Quốc tế, song song đ&oacute; ch&uacute;ng t&ocirc;i cũng bảo đảm họ lu&ocirc;n được hưởng đầy đủ mọi quyền lợi cũng theo quy định của Quốc gia v&agrave; Quốc tế.</p>\r\n\r\n<p><strong>TRỤ SỞ</strong></p>\r\n\r\n<p>Hội sở: 36 Nguyễn Thị Minh Khai, Phường ĐaKao, Quận 1, Tp.Hồ Ch&iacute; Minh<br />\r\nĐiện thoại: 028.38225277 / Fax: 028.38225072<br />\r\nVăn ph&ograve;ng đại diện: 5A V&otilde; Thị S&aacute;u, Ng&ocirc; Quyền, Hải Ph&ograve;ng<br />\r\nĐiện thoại/Fax: 225.3841156<br />\r\nEmail: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', '<p>SCC is a subsidiary of Vitranschart JSC established on June 25, 1975.</p>\r\n\r\n<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>\r\n\r\n<p>In 1994 Vitranschart established SCC to manage the crew of Vitranschart fleet and expand the market for domestic and foreign ship owners to hire crew members.</p>\r\n\r\n<p>Proactive resources, from the time of forming SCC, there is always an abundance of crew members with professional policies in actively managing resources, SCC builds a closed model:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Recruitment -&gt; Reserve -&gt; Coaching -&gt; Working on board -&gt; Reserve</p>\r\n\r\n<p>Diversified fields, SCC provides seafarers for many types of ships such as bulk cargo vessels, department stores, container ships, specialized vessels for transporting cement ...</p>\r\n\r\n<p>Quality of service, SCC focuses on recruiting quality resources from universities, maritime colleges and vocational schools - at the same time adopting a policy of recruiting skilled, experienced and ethical crew members. job.</p>\r\n\r\n<p>Commitment, SCC affirmed that seafarers are qualified and capable in accordance with national and international requirements, and at the same time, we also ensure that they always enjoy all rights as well as national regulations. and International.</p>\r\n\r\n<p><strong>HEADQUARTERS</strong></p>\r\n\r\n<p>Head office: 36 Nguyen Thi Minh Khai, DaKao Ward, District 1, Ho Chi Minh City<br />\r\nPhone: 028.38225277 / Fax: 028.38225072<br />\r\nRepresentative office: 5A Vo Thi Sau, Ngo Quyen, Hai Phong<br />\r\nPhone / Fax: 225.3841156</p>\r\n\r\n<p>Email: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'tau-hang-roi', 0, '', 1, '1553066426_1.jpg', NULL, NULL, 'datafiles/setone', 1553066304, 0, 1, 2, 0, 0, 'Tàu hàng rời', 'Bulk cargo ships', '', 'Tàu hàng rời', 'Bulk cargo ships', '', 'Tàu hàng rời', 'Bulk cargo ships', '', 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(6, 1, 'Tàu bách hóa', 'Cargo ship', NULL, NULL, '', '', NULL, NULL, '<p>SCC l&agrave; một c&ocirc;ng ty con của C&ocirc;ng ty Vitranschart JSC th&agrave;nh lập ng&agrave;y 25/06/1975.</p>\r\n\r\n<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>\r\n\r\n<p>Năm 1994 Vitranschart th&agrave;nh lập SCC để quản l&yacute; thuyền vi&ecirc;n đội t&agrave;u Vitranschart đồng thời mở rộng thị trường cho c&aacute;c chủ t&agrave;u trong v&agrave; ngo&agrave;i nước thu&ecirc; thuyền vi&ecirc;n.</p>\r\n\r\n<p>Chủ động nguồn lực, từ khi h&igrave;nh th&agrave;nh SCC lu&ocirc;n c&oacute; lượng thuyền vi&ecirc;n dồi d&agrave;o với ch&iacute;nh s&aacute;ch chuy&ecirc;n nghiệp trong chủ động quản l&yacute; nguồn lực, SCC x&acirc;y dựng m&ocirc; h&igrave;nh kh&eacute;p k&iacute;n:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Tuyển dụng -&gt; Dự trữ -&gt; Huấn luyện -&gt; L&agrave;m việc tr&ecirc;n t&agrave;u -&gt; Dự trữ</p>\r\n\r\n<p>Đa dạng lĩnh vực, SCC cung ứng thuyền vi&ecirc;n cho nhiều chủng loại t&agrave;u biển như: t&agrave;u h&agrave;ng rời, t&agrave;u b&aacute;ch h&oacute;a, t&agrave;u container, t&agrave;u chuy&ecirc;n d&ugrave;ng chuy&ecirc;n chở xi-măng&hellip;</p>\r\n\r\n<p>Chất lượng dịch vụ, SCC ch&uacute; trọng việc tuyển chọn nguồn lực c&oacute; chất lượng từ c&aacute;c trường đại học, cao đẳng h&agrave;ng hải, c&aacute;c trường nghề - đồng thời c&oacute; ch&iacute;nh s&aacute;ch tuyển dụng những thuyền vi&ecirc;n c&oacute; kỹ năng, kinh nghiệm v&agrave; đạo đức nghề nghiệp.</p>\r\n\r\n<p>Cam kết, SCC khẳng định thuyền vi&ecirc;n c&oacute; đủ tr&igrave;nh độ v&agrave; năng lực ph&ugrave; hợp y&ecirc;u cầu của Quốc gia v&agrave; Quốc tế, song song đ&oacute; ch&uacute;ng t&ocirc;i cũng bảo đảm họ lu&ocirc;n được hưởng đầy đủ mọi quyền lợi cũng theo quy định của Quốc gia v&agrave; Quốc tế.</p>\r\n\r\n<p><strong>TRỤ SỞ</strong></p>\r\n\r\n<p>Hội sở: 36 Nguyễn Thị Minh Khai, Phường ĐaKao, Quận 1, Tp.Hồ Ch&iacute; Minh<br />\r\nĐiện thoại: 028.38225277 / Fax: 028.38225072<br />\r\nVăn ph&ograve;ng đại diện: 5A V&otilde; Thị S&aacute;u, Ng&ocirc; Quyền, Hải Ph&ograve;ng<br />\r\nĐiện thoại/Fax: 225.3841156<br />\r\nEmail: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', '<p>SCC is a subsidiary of Vitranschart JSC established on June 25, 1975.</p>\r\n\r\n<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>\r\n\r\n<p>In 1994 Vitranschart established SCC to manage the crew of Vitranschart fleet and expand the market for domestic and foreign ship owners to hire crew members.</p>\r\n\r\n<p>Proactive resources, from the time of forming SCC, there is always an abundance of crew members with professional policies in actively managing resources, SCC builds a closed model:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Recruitment -&gt; Reserve -&gt; Coaching -&gt; Working on board -&gt; Reserve</p>\r\n\r\n<p>Diversified fields, SCC provides seafarers for many types of ships such as bulk cargo vessels, department stores, container ships, specialized vessels for transporting cement ...</p>\r\n\r\n<p>Quality of service, SCC focuses on recruiting quality resources from universities, maritime colleges and vocational schools - at the same time adopting a policy of recruiting skilled, experienced and ethical crew members. job.</p>\r\n\r\n<p>Commitment, SCC affirmed that seafarers are qualified and capable in accordance with national and international requirements, and at the same time, we also ensure that they always enjoy all rights as well as national regulations. and International.</p>\r\n\r\n<p><strong>HEADQUARTERS</strong></p>\r\n\r\n<p>Head office: 36 Nguyen Thi Minh Khai, DaKao Ward, District 1, Ho Chi Minh City<br />\r\nPhone: 028.38225277 / Fax: 028.38225072<br />\r\nRepresentative office: 5A Vo Thi Sau, Ngo Quyen, Hai Phong<br />\r\nPhone / Fax: 225.3841156</p>\r\n\r\n<p>Email: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'tau-bach-hoa', 0, '', 2, '1553066426_2.jpg', NULL, NULL, 'datafiles/setone', 1553066316, 0, 1, 2, 0, 0, 'Tàu bách hóa', 'Cargo ship', '', 'Tàu bách hóa', 'Cargo ship', '', 'Tàu bách hóa', 'Cargo ship', '', 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(7, 1, 'Tàu container', 'Container ship', NULL, NULL, '', '', NULL, NULL, '<p>SCC l&agrave; một c&ocirc;ng ty con của C&ocirc;ng ty Vitranschart JSC th&agrave;nh lập ng&agrave;y 25/06/1975.</p>\r\n\r\n<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>\r\n\r\n<p>Năm 1994 Vitranschart th&agrave;nh lập SCC để quản l&yacute; thuyền vi&ecirc;n đội t&agrave;u Vitranschart đồng thời mở rộng thị trường cho c&aacute;c chủ t&agrave;u trong v&agrave; ngo&agrave;i nước thu&ecirc; thuyền vi&ecirc;n.</p>\r\n\r\n<p>Chủ động nguồn lực, từ khi h&igrave;nh th&agrave;nh SCC lu&ocirc;n c&oacute; lượng thuyền vi&ecirc;n dồi d&agrave;o với ch&iacute;nh s&aacute;ch chuy&ecirc;n nghiệp trong chủ động quản l&yacute; nguồn lực, SCC x&acirc;y dựng m&ocirc; h&igrave;nh kh&eacute;p k&iacute;n:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Tuyển dụng -&gt; Dự trữ -&gt; Huấn luyện -&gt; L&agrave;m việc tr&ecirc;n t&agrave;u -&gt; Dự trữ</p>\r\n\r\n<p>Đa dạng lĩnh vực, SCC cung ứng thuyền vi&ecirc;n cho nhiều chủng loại t&agrave;u biển như: t&agrave;u h&agrave;ng rời, t&agrave;u b&aacute;ch h&oacute;a, t&agrave;u container, t&agrave;u chuy&ecirc;n d&ugrave;ng chuy&ecirc;n chở xi-măng&hellip;</p>\r\n\r\n<p>Chất lượng dịch vụ, SCC ch&uacute; trọng việc tuyển chọn nguồn lực c&oacute; chất lượng từ c&aacute;c trường đại học, cao đẳng h&agrave;ng hải, c&aacute;c trường nghề - đồng thời c&oacute; ch&iacute;nh s&aacute;ch tuyển dụng những thuyền vi&ecirc;n c&oacute; kỹ năng, kinh nghiệm v&agrave; đạo đức nghề nghiệp.</p>\r\n\r\n<p>Cam kết, SCC khẳng định thuyền vi&ecirc;n c&oacute; đủ tr&igrave;nh độ v&agrave; năng lực ph&ugrave; hợp y&ecirc;u cầu của Quốc gia v&agrave; Quốc tế, song song đ&oacute; ch&uacute;ng t&ocirc;i cũng bảo đảm họ lu&ocirc;n được hưởng đầy đủ mọi quyền lợi cũng theo quy định của Quốc gia v&agrave; Quốc tế.</p>\r\n\r\n<p><strong>TRỤ SỞ</strong></p>\r\n\r\n<p>Hội sở: 36 Nguyễn Thị Minh Khai, Phường ĐaKao, Quận 1, Tp.Hồ Ch&iacute; Minh<br />\r\nĐiện thoại: 028.38225277 / Fax: 028.38225072<br />\r\nVăn ph&ograve;ng đại diện: 5A V&otilde; Thị S&aacute;u, Ng&ocirc; Quyền, Hải Ph&ograve;ng<br />\r\nĐiện thoại/Fax: 225.3841156<br />\r\nEmail: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', '<p>SCC is a subsidiary of Vitranschart JSC established on June 25, 1975.</p>\r\n\r\n<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>\r\n\r\n<p>In 1994 Vitranschart established SCC to manage the crew of Vitranschart fleet and expand the market for domestic and foreign ship owners to hire crew members.</p>\r\n\r\n<p>Proactive resources, from the time of forming SCC, there is always an abundance of crew members with professional policies in actively managing resources, SCC builds a closed model:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Recruitment -&gt; Reserve -&gt; Coaching -&gt; Working on board -&gt; Reserve</p>\r\n\r\n<p>Diversified fields, SCC provides seafarers for many types of ships such as bulk cargo vessels, department stores, container ships, specialized vessels for transporting cement ...</p>\r\n\r\n<p>Quality of service, SCC focuses on recruiting quality resources from universities, maritime colleges and vocational schools - at the same time adopting a policy of recruiting skilled, experienced and ethical crew members. job.</p>\r\n\r\n<p>Commitment, SCC affirmed that seafarers are qualified and capable in accordance with national and international requirements, and at the same time, we also ensure that they always enjoy all rights as well as national regulations. and International.</p>\r\n\r\n<p><strong>HEADQUARTERS</strong></p>\r\n\r\n<p>Head office: 36 Nguyen Thi Minh Khai, DaKao Ward, District 1, Ho Chi Minh City<br />\r\nPhone: 028.38225277 / Fax: 028.38225072<br />\r\nRepresentative office: 5A Vo Thi Sau, Ngo Quyen, Hai Phong<br />\r\nPhone / Fax: 225.3841156</p>\r\n\r\n<p>Email: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'tau-container', 0, '', 3, '1553066426_3.jpg', NULL, NULL, 'datafiles/setone', 1553066329, 0, 5, 2, 0, 0, 'Tàu container', 'Container ship', '', 'Tàu container', 'Container ship', '', 'Tàu container', 'Container ship', '', 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(9, 1, 'Tàu hàng rời Handy Size', 'Handy Size vessel', NULL, NULL, '', '', NULL, NULL, '<p>SCC l&agrave; một c&ocirc;ng ty con của C&ocirc;ng ty Vitranschart JSC th&agrave;nh lập ng&agrave;y 25/06/1975.</p>\r\n\r\n<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>\r\n\r\n<p>Năm 1994 Vitranschart th&agrave;nh lập SCC để quản l&yacute; thuyền vi&ecirc;n đội t&agrave;u Vitranschart đồng thời mở rộng thị trường cho c&aacute;c chủ t&agrave;u trong v&agrave; ngo&agrave;i nước thu&ecirc; thuyền vi&ecirc;n.</p>\r\n\r\n<p>Chủ động nguồn lực, từ khi h&igrave;nh th&agrave;nh SCC lu&ocirc;n c&oacute; lượng thuyền vi&ecirc;n dồi d&agrave;o với ch&iacute;nh s&aacute;ch chuy&ecirc;n nghiệp trong chủ động quản l&yacute; nguồn lực, SCC x&acirc;y dựng m&ocirc; h&igrave;nh kh&eacute;p k&iacute;n:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Tuyển dụng -&gt; Dự trữ -&gt; Huấn luyện -&gt; L&agrave;m việc tr&ecirc;n t&agrave;u -&gt; Dự trữ</p>\r\n\r\n<p>Đa dạng lĩnh vực, SCC cung ứng thuyền vi&ecirc;n cho nhiều chủng loại t&agrave;u biển như: t&agrave;u h&agrave;ng rời, t&agrave;u b&aacute;ch h&oacute;a, t&agrave;u container, t&agrave;u chuy&ecirc;n d&ugrave;ng chuy&ecirc;n chở xi-măng&hellip;</p>\r\n\r\n<p>Chất lượng dịch vụ, SCC ch&uacute; trọng việc tuyển chọn nguồn lực c&oacute; chất lượng từ c&aacute;c trường đại học, cao đẳng h&agrave;ng hải, c&aacute;c trường nghề - đồng thời c&oacute; ch&iacute;nh s&aacute;ch tuyển dụng những thuyền vi&ecirc;n c&oacute; kỹ năng, kinh nghiệm v&agrave; đạo đức nghề nghiệp.</p>\r\n\r\n<p>Cam kết, SCC khẳng định thuyền vi&ecirc;n c&oacute; đủ tr&igrave;nh độ v&agrave; năng lực ph&ugrave; hợp y&ecirc;u cầu của Quốc gia v&agrave; Quốc tế, song song đ&oacute; ch&uacute;ng t&ocirc;i cũng bảo đảm họ lu&ocirc;n được hưởng đầy đủ mọi quyền lợi cũng theo quy định của Quốc gia v&agrave; Quốc tế.</p>\r\n\r\n<p><strong>TRỤ SỞ</strong></p>\r\n\r\n<p>Hội sở: 36 Nguyễn Thị Minh Khai, Phường ĐaKao, Quận 1, Tp.Hồ Ch&iacute; Minh<br />\r\nĐiện thoại: 028.38225277 / Fax: 028.38225072<br />\r\nVăn ph&ograve;ng đại diện: 5A V&otilde; Thị S&aacute;u, Ng&ocirc; Quyền, Hải Ph&ograve;ng<br />\r\nĐiện thoại/Fax: 225.3841156<br />\r\nEmail: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', '<p>SCC is a subsidiary of Vitranschart JSC established on June 25, 1975.</p>\r\n\r\n<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>\r\n\r\n<p>In 1994 Vitranschart established SCC to manage the crew of Vitranschart fleet and expand the market for domestic and foreign ship owners to hire crew members.</p>\r\n\r\n<p>Proactive resources, from the time of forming SCC, there is always an abundance of crew members with professional policies in actively managing resources, SCC builds a closed model:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Recruitment -&gt; Reserve -&gt; Coaching -&gt; Working on board -&gt; Reserve</p>\r\n\r\n<p>Diversified fields, SCC provides seafarers for many types of ships such as bulk cargo vessels, department stores, container ships, specialized vessels for transporting cement ...</p>\r\n\r\n<p>Quality of service, SCC focuses on recruiting quality resources from universities, maritime colleges and vocational schools - at the same time adopting a policy of recruiting skilled, experienced and ethical crew members. job.</p>\r\n\r\n<p>Commitment, SCC affirmed that seafarers are qualified and capable in accordance with national and international requirements, and at the same time, we also ensure that they always enjoy all rights as well as national regulations. and International.</p>\r\n\r\n<p><strong>HEADQUARTERS</strong></p>\r\n\r\n<p>Head office: 36 Nguyen Thi Minh Khai, DaKao Ward, District 1, Ho Chi Minh City<br />\r\nPhone: 028.38225277 / Fax: 028.38225072<br />\r\nRepresentative office: 5A Vo Thi Sau, Ngo Quyen, Hai Phong<br />\r\nPhone / Fax: 225.3841156</p>\r\n\r\n<p>Email: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'tau-hang-roi-handy-size', 0, '', 5, '1553066425_5.jpg', NULL, NULL, 'datafiles/setone', 1553066379, 0, 4, 2, 0, 0, 'Tàu hàng rời Handy Size', 'Handy Size vessel', '', 'Tàu hàng rời Handy Size', 'Handy Size vessel', '', 'Tàu hàng rời Handy Size', 'Handy Size vessel', '', 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(8, 1, 'Tàu chuyên dùng chở xi măng', 'Specialized ship carrying cement', NULL, NULL, '', '', NULL, NULL, '<p>SCC l&agrave; một c&ocirc;ng ty con của C&ocirc;ng ty Vitranschart JSC th&agrave;nh lập ng&agrave;y 25/06/1975.</p>\r\n\r\n<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>\r\n\r\n<p>Năm 1994 Vitranschart th&agrave;nh lập SCC để quản l&yacute; thuyền vi&ecirc;n đội t&agrave;u Vitranschart đồng thời mở rộng thị trường cho c&aacute;c chủ t&agrave;u trong v&agrave; ngo&agrave;i nước thu&ecirc; thuyền vi&ecirc;n.</p>\r\n\r\n<p>Chủ động nguồn lực, từ khi h&igrave;nh th&agrave;nh SCC lu&ocirc;n c&oacute; lượng thuyền vi&ecirc;n dồi d&agrave;o với ch&iacute;nh s&aacute;ch chuy&ecirc;n nghiệp trong chủ động quản l&yacute; nguồn lực, SCC x&acirc;y dựng m&ocirc; h&igrave;nh kh&eacute;p k&iacute;n:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Tuyển dụng -&gt; Dự trữ -&gt; Huấn luyện -&gt; L&agrave;m việc tr&ecirc;n t&agrave;u -&gt; Dự trữ</p>\r\n\r\n<p>Đa dạng lĩnh vực, SCC cung ứng thuyền vi&ecirc;n cho nhiều chủng loại t&agrave;u biển như: t&agrave;u h&agrave;ng rời, t&agrave;u b&aacute;ch h&oacute;a, t&agrave;u container, t&agrave;u chuy&ecirc;n d&ugrave;ng chuy&ecirc;n chở xi-măng&hellip;</p>\r\n\r\n<p>Chất lượng dịch vụ, SCC ch&uacute; trọng việc tuyển chọn nguồn lực c&oacute; chất lượng từ c&aacute;c trường đại học, cao đẳng h&agrave;ng hải, c&aacute;c trường nghề - đồng thời c&oacute; ch&iacute;nh s&aacute;ch tuyển dụng những thuyền vi&ecirc;n c&oacute; kỹ năng, kinh nghiệm v&agrave; đạo đức nghề nghiệp.</p>\r\n\r\n<p>Cam kết, SCC khẳng định thuyền vi&ecirc;n c&oacute; đủ tr&igrave;nh độ v&agrave; năng lực ph&ugrave; hợp y&ecirc;u cầu của Quốc gia v&agrave; Quốc tế, song song đ&oacute; ch&uacute;ng t&ocirc;i cũng bảo đảm họ lu&ocirc;n được hưởng đầy đủ mọi quyền lợi cũng theo quy định của Quốc gia v&agrave; Quốc tế.</p>\r\n\r\n<p><strong>TRỤ SỞ</strong></p>\r\n\r\n<p>Hội sở: 36 Nguyễn Thị Minh Khai, Phường ĐaKao, Quận 1, Tp.Hồ Ch&iacute; Minh<br />\r\nĐiện thoại: 028.38225277 / Fax: 028.38225072<br />\r\nVăn ph&ograve;ng đại diện: 5A V&otilde; Thị S&aacute;u, Ng&ocirc; Quyền, Hải Ph&ograve;ng<br />\r\nĐiện thoại/Fax: 225.3841156<br />\r\nEmail: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', '<p>SCC is a subsidiary of Vitranschart JSC established on June 25, 1975.</p>\r\n\r\n<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>\r\n\r\n<p>In 1994 Vitranschart established SCC to manage the crew of Vitranschart fleet and expand the market for domestic and foreign ship owners to hire crew members.</p>\r\n\r\n<p>Proactive resources, from the time of forming SCC, there is always an abundance of crew members with professional policies in actively managing resources, SCC builds a closed model:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Recruitment -&gt; Reserve -&gt; Coaching -&gt; Working on board -&gt; Reserve</p>\r\n\r\n<p>Diversified fields, SCC provides seafarers for many types of ships such as bulk cargo vessels, department stores, container ships, specialized vessels for transporting cement ...</p>\r\n\r\n<p>Quality of service, SCC focuses on recruiting quality resources from universities, maritime colleges and vocational schools - at the same time adopting a policy of recruiting skilled, experienced and ethical crew members. job.</p>\r\n\r\n<p>Commitment, SCC affirmed that seafarers are qualified and capable in accordance with national and international requirements, and at the same time, we also ensure that they always enjoy all rights as well as national regulations. and International.</p>\r\n\r\n<p><strong>HEADQUARTERS</strong></p>\r\n\r\n<p>Head office: 36 Nguyen Thi Minh Khai, DaKao Ward, District 1, Ho Chi Minh City<br />\r\nPhone: 028.38225277 / Fax: 028.38225072<br />\r\nRepresentative office: 5A Vo Thi Sau, Ngo Quyen, Hai Phong<br />\r\nPhone / Fax: 225.3841156</p>\r\n\r\n<p>Email: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'tau-chuyen-dung-cho-xi-mang', 0, '', 4, '1553066426_4.jpg', NULL, NULL, 'datafiles/setone', 1553066343, 0, 4, 2, 0, 0, 'Tàu chuyên dùng chở xi măng', 'Specialized ship carrying cement', '', 'Tàu chuyên dùng chở xi măng', 'Specialized ship carrying cement', '', 'Tàu chuyên dùng chở xi măng', 'Specialized ship carrying cement', '', 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(10, 1, 'Cơ sở vật chất', 'Infrastructure', NULL, NULL, NULL, NULL, NULL, NULL, '<p>SCC l&agrave; một c&ocirc;ng ty con của C&ocirc;ng ty Vitranschart JSC th&agrave;nh lập ng&agrave;y 25/06/1975.</p>\r\n\r\n<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>\r\n\r\n<p>Năm 1994 Vitranschart th&agrave;nh lập SCC để quản l&yacute; thuyền vi&ecirc;n đội t&agrave;u Vitranschart đồng thời mở rộng thị trường cho c&aacute;c chủ t&agrave;u trong v&agrave; ngo&agrave;i nước thu&ecirc; thuyền vi&ecirc;n.</p>\r\n\r\n<p>Chủ động nguồn lực, từ khi h&igrave;nh th&agrave;nh SCC lu&ocirc;n c&oacute; lượng thuyền vi&ecirc;n dồi d&agrave;o với ch&iacute;nh s&aacute;ch chuy&ecirc;n nghiệp trong chủ động quản l&yacute; nguồn lực, SCC x&acirc;y dựng m&ocirc; h&igrave;nh kh&eacute;p k&iacute;n:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Tuyển dụng -&gt; Dự trữ -&gt; Huấn luyện -&gt; L&agrave;m việc tr&ecirc;n t&agrave;u -&gt; Dự trữ</p>\r\n\r\n<p>Đa dạng lĩnh vực, SCC cung ứng thuyền vi&ecirc;n cho nhiều chủng loại t&agrave;u biển như: t&agrave;u h&agrave;ng rời, t&agrave;u b&aacute;ch h&oacute;a, t&agrave;u container, t&agrave;u chuy&ecirc;n d&ugrave;ng chuy&ecirc;n chở xi-măng&hellip;</p>\r\n\r\n<p>Chất lượng dịch vụ, SCC ch&uacute; trọng việc tuyển chọn nguồn lực c&oacute; chất lượng từ c&aacute;c trường đại học, cao đẳng h&agrave;ng hải, c&aacute;c trường nghề - đồng thời c&oacute; ch&iacute;nh s&aacute;ch tuyển dụng những thuyền vi&ecirc;n c&oacute; kỹ năng, kinh nghiệm v&agrave; đạo đức nghề nghiệp.</p>\r\n\r\n<p>Cam kết, SCC khẳng định thuyền vi&ecirc;n c&oacute; đủ tr&igrave;nh độ v&agrave; năng lực ph&ugrave; hợp y&ecirc;u cầu của Quốc gia v&agrave; Quốc tế, song song đ&oacute; ch&uacute;ng t&ocirc;i cũng bảo đảm họ lu&ocirc;n được hưởng đầy đủ mọi quyền lợi cũng theo quy định của Quốc gia v&agrave; Quốc tế.</p>\r\n\r\n<p><strong>TRỤ SỞ</strong></p>\r\n\r\n<p>Hội sở: 36 Nguyễn Thị Minh Khai, Phường ĐaKao, Quận 1, Tp.Hồ Ch&iacute; Minh<br />\r\nĐiện thoại: 028.38225277 / Fax: 028.38225072<br />\r\nVăn ph&ograve;ng đại diện: 5A V&otilde; Thị S&aacute;u, Ng&ocirc; Quyền, Hải Ph&ograve;ng<br />\r\nĐiện thoại/Fax: 225.3841156<br />\r\nEmail: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', '<p>SCC is a subsidiary of Vitranschart JSC established on June 25, 1975.</p>\r\n\r\n<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>\r\n\r\n<p>In 1994 Vitranschart established SCC to manage the crew of Vitranschart fleet and expand the market for domestic and foreign ship owners to hire crew members.</p>\r\n\r\n<p>Proactive resources, from the time of forming SCC, there is always an abundance of crew members with professional policies in actively managing resources, SCC builds a closed model:</p>\r\n\r\n<p><img alt=\"\" height=\"600\" src=\"/2019_sccm/datafiles/img_data/images/news/banner_2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>Recruitment -&gt; Reserve -&gt; Coaching -&gt; Working on board -&gt; Reserve</p>\r\n\r\n<p>Diversified fields, SCC provides seafarers for many types of ships such as bulk cargo vessels, department stores, container ships, specialized vessels for transporting cement ...</p>\r\n\r\n<p>Quality of service, SCC focuses on recruiting quality resources from universities, maritime colleges and vocational schools - at the same time adopting a policy of recruiting skilled, experienced and ethical crew members. job.</p>\r\n\r\n<p>Commitment, SCC affirmed that seafarers are qualified and capable in accordance with national and international requirements, and at the same time, we also ensure that they always enjoy all rights as well as national regulations. and International.</p>\r\n\r\n<p><strong>HEADQUARTERS</strong></p>\r\n\r\n<p>Head office: 36 Nguyen Thi Minh Khai, DaKao Ward, District 1, Ho Chi Minh City<br />\r\nPhone: 028.38225277 / Fax: 028.38225072<br />\r\nRepresentative office: 5A Vo Thi Sau, Ngo Quyen, Hai Phong<br />\r\nPhone / Fax: 225.3841156</p>\r\n\r\n<p>Email: scc@vitranschart.com.vn | Website: sccm.com.vn / scc.vn</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'co-so-vat-chat-18', 0, '', 6, '', NULL, NULL, 'datafiles/setone', 1553066484, 0, 1, 4, 0, 0, 'Cơ sở vật chất', 'Infrastructure', '', 'Cơ sở vật chất', 'Infrastructure', '', 'Cơ sở vật chất', 'Infrastructure', '', 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', '');
INSERT INTO `lh_baiviet` (`id`, `id_user`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `mota_vi`, `mota_en`, `mota_cn`, `mota_jp`, `noidung_vi`, `noidung_en`, `noidung_cn`, `noidung_jp`, `tags_vi`, `tags_en`, `tags_cn`, `tags_jp`, `seo_name`, `id_parent`, `id_parent_muti`, `catasort`, `icon`, `icon_hover`, `dowload`, `duongdantin`, `ngaydang`, `capnhat`, `soluotxem`, `step`, `giatien`, `giakm`, `seo_title_vi`, `seo_title_en`, `seo_title_cn`, `seo_keywords_vi`, `seo_keywords_en`, `seo_keywords_cn`, `seo_description_vi`, `seo_description_en`, `seo_description_cn`, `opt_km`, `opt`, `opt1`, `opt2`, `p1`, `p2`, `p3`, `link_video`, `var_1_vi`, `var_1_en`, `var_2_vi`, `var_2_en`, `mt_1_vi`, `mt_1_en`, `mt_1_cn`, `mt_1_jp`, `mt_2_vi`, `mt_2_en`, `mt_2_cn`, `mt_2_jp`, `mt_3_vi`, `mt_3_en`, `mt_3_cn`, `mt_3_jp`, `mt_4_vi`, `mt_4_en`, `mt_5_vi`, `mt_5_en`, `detail_vi`, `seo_title_jp`, `seo_keywords_jp`, `seo_description_jp`, `detail_en`, `detail_cn`, `num_1`, `num_2`, `num_3`, `sao_5`, `sao_4`, `sao_3`, `sao_2`, `sao_1`, `showhi`, `view`, `khoi_luong`, `tinhnang_vi`, `tinhnang_en`, `tinhnang_cn`, `tinhnang_jp`, `gg_map`) VALUES
(11, 1, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>', '<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>', NULL, NULL, '', NULL, NULL, NULL, 'cong-ty-tnhh-cung-ung-thuyen-vien-scc', 0, '', 1, '1553068489_1.png', NULL, NULL, 'datafiles/setone', 1553066556, 0, 1, 5, 0, 0, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', '', 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', '', 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', '', 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(12, 1, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>', '<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-121521553066573', 0, NULL, 2, '1553068489_5.png', NULL, NULL, 'datafiles/setone', 1553066556, 0, 1, 5, 0, 0, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(13, 1, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>', '<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-879201553066573', 0, NULL, 3, '1553068479_12.png', NULL, NULL, 'datafiles/setone', 1553066556, 0, 1, 5, 0, 0, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(14, 1, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>', '<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-139021553066573', 0, NULL, 4, '1553068479_11.png', NULL, NULL, 'datafiles/setone', 1553066556, 0, 1, 5, 0, 0, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(15, 1, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>', '<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-901011553066573', 0, NULL, 5, '1553068479_10.png', NULL, NULL, 'datafiles/setone', 1553066556, 0, 1, 5, 0, 0, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(16, 1, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>', '<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-121111553066573', 0, NULL, 6, '1553068479_9.png', NULL, NULL, 'datafiles/setone', 1553066556, 0, 1, 5, 0, 0, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(17, 1, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>', '<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-151971553066573', 0, NULL, 7, '1553068480_8.png', NULL, NULL, 'datafiles/setone', 1553066556, 0, 1, 5, 0, 0, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(18, 1, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>', '<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-504881553066573', 0, NULL, 8, '1553068480_7.png', NULL, NULL, 'datafiles/setone', 1553066556, 0, 1, 5, 0, 0, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(19, 1, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>', '<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-307881553066573', 0, NULL, 9, '1553068480_6.png', NULL, NULL, 'datafiles/setone', 1553066556, 0, 1, 5, 0, 0, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(20, 1, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>', '<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-318851553066573', 0, NULL, 10, '1553068480_5.png', NULL, NULL, 'datafiles/setone', 1553066556, 0, 1, 5, 0, 0, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(21, 1, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>', '<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-535881553066573', 0, NULL, 11, '1553068480_4.png', NULL, NULL, 'datafiles/setone', 1553066556, 0, 1, 5, 0, 0, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(22, 1, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>', '<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-826651553066573', 0, NULL, 12, '1553068480_3.png', NULL, NULL, 'datafiles/setone', 1553066556, 0, 1, 5, 0, 0, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(23, 1, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, NULL, '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi', 0, '', 1, '1553068664_3.jpg', NULL, NULL, 'datafiles/setone', 1553068566, 0, 1, 6, 0, 0, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', '', 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', '', 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', '', 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(24, 1, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, NULL, '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-233011553068587', 0, NULL, 2, '1553068664_7.jpg', NULL, NULL, 'datafiles/setone', 1553068566, 0, 1, 6, 0, 0, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(25, 1, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, NULL, '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-466301553068587', 0, NULL, 3, '1553068630_18.jpg', NULL, NULL, 'datafiles/setone', 1553068566, 0, 1, 6, 0, 0, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(26, 1, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, NULL, '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-584291553068587', 0, NULL, 4, '1553068630_17.jpg', NULL, NULL, 'datafiles/setone', 1553068566, 0, 1, 6, 0, 0, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lh_baiviet` (`id`, `id_user`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `mota_vi`, `mota_en`, `mota_cn`, `mota_jp`, `noidung_vi`, `noidung_en`, `noidung_cn`, `noidung_jp`, `tags_vi`, `tags_en`, `tags_cn`, `tags_jp`, `seo_name`, `id_parent`, `id_parent_muti`, `catasort`, `icon`, `icon_hover`, `dowload`, `duongdantin`, `ngaydang`, `capnhat`, `soluotxem`, `step`, `giatien`, `giakm`, `seo_title_vi`, `seo_title_en`, `seo_title_cn`, `seo_keywords_vi`, `seo_keywords_en`, `seo_keywords_cn`, `seo_description_vi`, `seo_description_en`, `seo_description_cn`, `opt_km`, `opt`, `opt1`, `opt2`, `p1`, `p2`, `p3`, `link_video`, `var_1_vi`, `var_1_en`, `var_2_vi`, `var_2_en`, `mt_1_vi`, `mt_1_en`, `mt_1_cn`, `mt_1_jp`, `mt_2_vi`, `mt_2_en`, `mt_2_cn`, `mt_2_jp`, `mt_3_vi`, `mt_3_en`, `mt_3_cn`, `mt_3_jp`, `mt_4_vi`, `mt_4_en`, `mt_5_vi`, `mt_5_en`, `detail_vi`, `seo_title_jp`, `seo_keywords_jp`, `seo_description_jp`, `detail_en`, `detail_cn`, `num_1`, `num_2`, `num_3`, `sao_5`, `sao_4`, `sao_3`, `sao_2`, `sao_1`, `showhi`, `view`, `khoi_luong`, `tinhnang_vi`, `tinhnang_en`, `tinhnang_cn`, `tinhnang_jp`, `gg_map`) VALUES
(27, 1, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, NULL, '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-651891553068587', 0, NULL, 5, '1553068630_16.jpg', NULL, NULL, 'datafiles/setone', 1553068566, 0, 1, 6, 0, 0, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(28, 1, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, NULL, '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-608311553068587', 0, NULL, 6, '1553068630_15.jpg', NULL, NULL, 'datafiles/setone', 1553068566, 0, 1, 6, 0, 0, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(29, 1, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, NULL, '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-614851553068587', 0, NULL, 7, '1553068630_14.jpg', NULL, NULL, 'datafiles/setone', 1553068566, 0, 1, 6, 0, 0, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(30, 1, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, NULL, '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-333691553068587', 0, NULL, 8, '1553068631_13.jpg', NULL, NULL, 'datafiles/setone', 1553068566, 0, 1, 6, 0, 0, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(31, 1, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, NULL, '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-525081553068587', 0, NULL, 9, '1553068631_12.jpg', NULL, NULL, 'datafiles/setone', 1553068566, 0, 1, 6, 0, 0, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(32, 1, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, NULL, '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-815011553068587', 0, NULL, 10, '1553068631_11.jpg', NULL, NULL, 'datafiles/setone', 1553068566, 0, 1, 6, 0, 0, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lh_baiviet` (`id`, `id_user`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `mota_vi`, `mota_en`, `mota_cn`, `mota_jp`, `noidung_vi`, `noidung_en`, `noidung_cn`, `noidung_jp`, `tags_vi`, `tags_en`, `tags_cn`, `tags_jp`, `seo_name`, `id_parent`, `id_parent_muti`, `catasort`, `icon`, `icon_hover`, `dowload`, `duongdantin`, `ngaydang`, `capnhat`, `soluotxem`, `step`, `giatien`, `giakm`, `seo_title_vi`, `seo_title_en`, `seo_title_cn`, `seo_keywords_vi`, `seo_keywords_en`, `seo_keywords_cn`, `seo_description_vi`, `seo_description_en`, `seo_description_cn`, `opt_km`, `opt`, `opt1`, `opt2`, `p1`, `p2`, `p3`, `link_video`, `var_1_vi`, `var_1_en`, `var_2_vi`, `var_2_en`, `mt_1_vi`, `mt_1_en`, `mt_1_cn`, `mt_1_jp`, `mt_2_vi`, `mt_2_en`, `mt_2_cn`, `mt_2_jp`, `mt_3_vi`, `mt_3_en`, `mt_3_cn`, `mt_3_jp`, `mt_4_vi`, `mt_4_en`, `mt_5_vi`, `mt_5_en`, `detail_vi`, `seo_title_jp`, `seo_keywords_jp`, `seo_description_jp`, `detail_en`, `detail_cn`, `num_1`, `num_2`, `num_3`, `sao_5`, `sao_4`, `sao_3`, `sao_2`, `sao_1`, `showhi`, `view`, `khoi_luong`, `tinhnang_vi`, `tinhnang_en`, `tinhnang_cn`, `tinhnang_jp`, `gg_map`) VALUES
(33, 1, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, NULL, '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-577721553068587', 0, NULL, 11, '1553068631_10.jpg', NULL, NULL, 'datafiles/setone', 1553068566, 0, 1, 6, 0, 0, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(34, 1, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, NULL, '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-886631553068587', 0, NULL, 12, '1553068631_9.jpg', NULL, NULL, 'datafiles/setone', 1553068566, 0, 1, 6, 0, 0, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(35, 1, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, NULL, '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-858561553068587', 0, NULL, 13, '1553068631_8.jpg', NULL, NULL, 'datafiles/setone', 1553068566, 0, 2, 6, 0, 0, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(36, 1, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, NULL, '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-150191553068587', 0, NULL, 14, '1553068631_7.jpg', NULL, NULL, 'datafiles/setone', 1553068566, 0, 2, 6, 0, 0, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(37, 1, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', NULL, NULL, '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', '<p>We work with the companies that have established a stainless reputation in what they do. They are leaders in various spheres of business, and we appreciate cooperating with them...</p>', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"546\" src=\"/2019_sccm/datafiles/img_data/images/52415930_2162524177378519_3986020660492107776_n.jpg\" width=\"725\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>The results speak for themselves: more traffic, higher-quality leads, and greater profits, every day.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/2019_sccm/datafiles/img_data/images/news/01.jpg\" width=\"1200\" /></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses. Brandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand, it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>MISSION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>\r\n\r\n<p><strong>VISION</strong></p>\r\n\r\n<p>Valuable counselling requires insight. We take the time to understand our clients businesses.<br />\r\nBrandt &amp; Lauritzen is a specialised Danish law firm with business-minded attorneys.</p>\r\n\r\n<p>We ensure value-creating counselling by combining our in-depth knowledge of the legal framework in Denmark and our understanding of the business side of the matters. We believe valuable counselling requires more than simply an understanding of the legal issues at hand,it also requires insight into our clients industries in a commercial context.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-962011553068587', 0, '', 15, '1553068631_6.jpg', NULL, NULL, 'datafiles/setone', 1553054408, 0, 4, 6, 0, 0, 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', '', 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', '', 'Biến hóa 4 phong cách cực sáng tạo chỉ với một chiếc áo sơ mi', 'Transform 4 ultra-creative styles with just a shirt', '', 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(39, 1, 'Nguyễn Thị Mai', 'Nguyen Thi Mai', NULL, NULL, '', '', NULL, NULL, '<p>Chất lượng dịch vụ, SCC ch&uacute; trọng việc tuyển chọn nguồn lực c&oacute; chất lượng từ c&aacute;c trường đại học, cao đẳng h&agrave;ng hải, c&aacute;c trường nghề - đồng thời c&oacute; ch&iacute;nh s&aacute;ch tuyển dụng những thuyền vi&ecirc;n c&oacute; kỹ năng, kinh nghiệm v&agrave; đạo đức nghề nghiệp.</p>', '<p>Quality of service, SCC focuses on recruiting quality resources from universities, maritime colleges and vocational schools - at the same time adopting a policy of recruiting skilled, experienced and ethical crew members. job.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'nguyen-thi-mai', 0, '', 1, '1553068919_client-1-112x99.jpg', NULL, NULL, 'datafiles/setone', 1553068734, 0, 1, 8, 0, 0, 'Nguyễn Thị Mai', 'Nguyen Thi Mai', '', 'Nguyễn Thị Mai', 'Nguyen Thi Mai', '', 'Nguyễn Thị Mai', 'Nguyen Thi Mai', '', 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(40, 1, 'Đỗ Thành Nhân', 'Do Thanh Nhan', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Chất lượng dịch vụ, SCC ch&uacute; trọng việc tuyển chọn nguồn lực c&oacute; chất lượng từ c&aacute;c trường đại học, cao đẳng h&agrave;ng hải, c&aacute;c trường nghề - đồng thời c&oacute; ch&iacute;nh s&aacute;ch tuyển dụng những thuyền vi&ecirc;n c&oacute; kỹ năng, kinh nghiệm v&agrave; đạo đức nghề nghiệp.</p>', '<p>Quality of service, SCC focuses on recruiting quality resources from universities, maritime colleges and vocational schools - at the same time adopting a policy of recruiting skilled, experienced and ethical crew members. job.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'do-thanh-nhan', 0, '', 2, '1553068929_client-3-112x99.jpg', NULL, NULL, 'datafiles/setone', 1553068829, 0, 1, 8, 0, 0, 'Đỗ Thành Nhân', 'Do Thanh Nhan', '', 'Đỗ Thành Nhân', 'Do Thanh Nhan', '', 'Đỗ Thành Nhân', 'Do Thanh Nhan', '', 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(41, 1, 'Trần Văn Mạnh', 'Tran Van Manh', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Chất lượng dịch vụ, SCC ch&uacute; trọng việc tuyển chọn nguồn lực c&oacute; chất lượng từ c&aacute;c trường đại học, cao đẳng h&agrave;ng hải, c&aacute;c trường nghề - đồng thời c&oacute; ch&iacute;nh s&aacute;ch tuyển dụng những thuyền vi&ecirc;n c&oacute; kỹ năng, kinh nghiệm v&agrave; đạo đức nghề nghiệp.</p>', '<p>Quality of service, SCC focuses on recruiting quality resources from universities, maritime colleges and vocational schools - at the same time adopting a policy of recruiting skilled, experienced and ethical crew members. job.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'tran-van-manh', 0, '', 3, '1553068929_client-5-112x99.jpg', NULL, NULL, 'datafiles/setone', 1553068885, 0, 1, 8, 0, 0, 'Trần Văn Mạnh', 'Tran Van Manh', '', 'Trần Văn Mạnh', 'Tran Van Manh', '', 'Trần Văn Mạnh', 'Tran Van Manh', '', 0, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(65, 1, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, NULL, 'Thuyền viên', 'Sailor', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business gro</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'nguyen-van-trung-cp-416571553069575', 0, NULL, 4, '1553069578_12.jpg', NULL, NULL, 'datafiles/setone', 1553069320, 0, 1, 3, 0, 0, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(66, 1, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, NULL, 'Thuyền viên', 'Sailor', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business gro</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'nguyen-van-trung-cp-834481553069575', 0, NULL, 4, '1553069578_11.jpg', NULL, NULL, 'datafiles/setone', 1553069320, 0, 1, 3, 0, 0, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lh_baiviet` (`id`, `id_user`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `mota_vi`, `mota_en`, `mota_cn`, `mota_jp`, `noidung_vi`, `noidung_en`, `noidung_cn`, `noidung_jp`, `tags_vi`, `tags_en`, `tags_cn`, `tags_jp`, `seo_name`, `id_parent`, `id_parent_muti`, `catasort`, `icon`, `icon_hover`, `dowload`, `duongdantin`, `ngaydang`, `capnhat`, `soluotxem`, `step`, `giatien`, `giakm`, `seo_title_vi`, `seo_title_en`, `seo_title_cn`, `seo_keywords_vi`, `seo_keywords_en`, `seo_keywords_cn`, `seo_description_vi`, `seo_description_en`, `seo_description_cn`, `opt_km`, `opt`, `opt1`, `opt2`, `p1`, `p2`, `p3`, `link_video`, `var_1_vi`, `var_1_en`, `var_2_vi`, `var_2_en`, `mt_1_vi`, `mt_1_en`, `mt_1_cn`, `mt_1_jp`, `mt_2_vi`, `mt_2_en`, `mt_2_cn`, `mt_2_jp`, `mt_3_vi`, `mt_3_en`, `mt_3_cn`, `mt_3_jp`, `mt_4_vi`, `mt_4_en`, `mt_5_vi`, `mt_5_en`, `detail_vi`, `seo_title_jp`, `seo_keywords_jp`, `seo_description_jp`, `detail_en`, `detail_cn`, `num_1`, `num_2`, `num_3`, `sao_5`, `sao_4`, `sao_3`, `sao_2`, `sao_1`, `showhi`, `view`, `khoi_luong`, `tinhnang_vi`, `tinhnang_en`, `tinhnang_cn`, `tinhnang_jp`, `gg_map`) VALUES
(67, 1, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, NULL, 'Thuyền viên', 'Sailor', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business gro</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'nguyen-van-trung-cp-749901553069575', 0, NULL, 4, '1553069578_10.jpg', NULL, NULL, 'datafiles/setone', 1553069320, 0, 1, 3, 0, 0, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(68, 1, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, NULL, 'Thuyền viên', 'Sailor', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business gro</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'nguyen-van-trung-cp-821141553069575', 0, NULL, 4, '1553069578_9.jpg', NULL, NULL, 'datafiles/setone', 1553069320, 0, 1, 3, 0, 0, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(69, 1, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, NULL, 'Thuyền viên', 'Sailor', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business gro</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'nguyen-van-trung-cp-666861553069575', 0, NULL, 4, '1553069578_8.jpg', NULL, NULL, 'datafiles/setone', 1553069320, 0, 1, 3, 0, 0, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(70, 1, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, NULL, 'Thuyền viên', 'Sailor', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business gro</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'nguyen-van-trung-cp-797891553069575', 0, NULL, 4, '1553069578_7.jpg', NULL, NULL, 'datafiles/setone', 1553069320, 0, 1, 3, 0, 0, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(71, 1, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, NULL, 'Thuyền viên', 'Sailor', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business gro</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'nguyen-van-trung-cp-735801553069575', 0, NULL, 4, '1553069578_6.jpg', NULL, NULL, 'datafiles/setone', 1553069320, 0, 1, 3, 0, 0, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(72, 1, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, NULL, 'Thuyền viên', 'Sailor', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business gro</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'nguyen-van-trung-cp-520701553069575', 0, NULL, 4, '1553069578_5.jpg', NULL, NULL, 'datafiles/setone', 1553069320, 0, 1, 3, 0, 0, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(73, 1, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, NULL, 'Thuyền viên', 'Sailor', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business gro</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'nguyen-van-trung-cp-715051553069575', 0, NULL, 4, '1553069578_4.jpg', NULL, NULL, 'datafiles/setone', 1553069320, 0, 4, 3, 0, 0, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(74, 1, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, NULL, 'Thuyền viên', 'Sailor', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business gro</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'nguyen-van-trung-cp-146821553069575', 0, NULL, 4, '1553069578_3.jpg', NULL, NULL, 'datafiles/setone', 1553069320, 0, 5, 3, 0, 0, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(75, 1, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, NULL, 'Thuyền viên', 'Sailor', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business gro</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'nguyen-van-trung-cp-196361553069575', 0, NULL, 4, '1553069579_2.jpg', NULL, NULL, 'datafiles/setone', 1553069320, 0, 14, 3, 0, 0, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(64, 1, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, NULL, 'Thuyền viên', 'Sailor', NULL, NULL, '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business gro</p>', '<p>Foxy , a Google Premier SMB Partner, develops online marketing software, provides managed PPC advertising services, and shares online marketing advice through our blog. Founded in 2007, we&rsquo;ve evolved from being a keyword software tool developer to a destination for online marketing expertise. The WordStream platform lives in the cloud, delivering customer requests on-demand and quickly adapting to changes in the industry with new customer requested features.</p>\r\n\r\n<p>HigherVisibility does not believe in a &ldquo;one size fits all&rdquo; approach. We tailor each client&rsquo;s campaigns to their specific needs to give their campaign the best chance for success. We work directly with our clients to ensure we have clear and unified business objectives.</p>\r\n\r\n<p>Our mission is to provide clients with the most professional and highest quality Internet marketing services and customer service available. We welcome the opportunity to work with your team or as your team. Contact us today to see how we can help your business grow.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'nguyen-van-trung-cp-483111553069506', 0, NULL, 3, '1553069579_01.jpg', NULL, NULL, 'datafiles/setone', 1553069320, 0, 1, 3, 0, 0, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 'Nguyễn Văn Trung', 'Nguyen Van Trung', NULL, 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
(76, 1, 'TRỤ SỞ', 'HEADQUARTERS', NULL, NULL, NULL, NULL, NULL, NULL, '<p>36 Nguyễn Thị Minh Khai, Phường ĐaKao, Quận 1, TP.HCM</p>\r\n\r\n<p>Điện thoại: <a href=\"http://tel:028.38225277\">028.38225277</a></p>\r\n\r\n<p>Fax: 028.38225072</p>', '<p>36 Nguyen Thi Minh Khai, Da Kao Ward, District 1, Ho Chi Minh City</p>\r\n\r\n<p>Phone: <a href=\"http://tel:028.38225277\">028.38225277</a></p>\r\n\r\n<p>Fax: 028.38225072</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2f2f5d057a21203eb617bda07c68121e', 0, '', 1, NULL, NULL, NULL, 'datafiles/setone', 1553069664, 0, 1, 7, 0, 0, 'TRỤ SỞ', 'HEADQUARTERS', '', 'TRỤ SỞ', 'HEADQUARTERS', '', 'TRỤ SỞ', 'HEADQUARTERS', '', 0, 0, 0, 0, 'fa fa-home', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(77, 1, 'VĂN PHÒNG ĐẠI DIỆN', 'REPRESENTATIVE OFFICE', NULL, NULL, NULL, NULL, NULL, NULL, '<p>5A V&otilde; Thị S&aacute;u, Ng&ocirc; Quyền, Hải Ph&ograve;ng, Việt Nam.</p>\r\n\r\n<p>Điện thoại: <a href=\"http://tel:225.3841156\">225.3841156</a></p>\r\n\r\n<p>Fax: 225.3841156</p>', '<p>5A Vo Thi Sau, Ngo Quyen, Hai Phong, Vietnam.</p>\r\n\r\n<p>Phone: <a href=\"http://tel:225.3841156\">225.3841156</a></p>\r\n\r\n<p>Fax: 225.3841156</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'b9269c92607d1de74eff446fbca28916', 0, '', 2, NULL, NULL, NULL, 'datafiles/setone', 1553069763, 0, 1, 7, 0, 0, 'VĂN PHÒNG ĐẠI DIỆN', 'REPRESENTATIVE OFFICE', '', 'VĂN PHÒNG ĐẠI DIỆN', 'REPRESENTATIVE OFFICE', '', 'VĂN PHÒNG ĐẠI DIỆN', 'REPRESENTATIVE OFFICE', '', 0, 0, 0, 0, 'fa fa-home', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', ''),
(78, 1, 'EMAIL - WEBSITE', 'EMAIL - WEBSITE', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Email: <a href=\"http://mailto:scc@vitranschart.com.vn\">scc@vitranschart.com.vn</a></p>\r\n\r\n<p>Website: <a href=\"http://sccm.com.vn\">sccm.com.vn</a>&nbsp;/&nbsp;<a href=\"http://scc.vn\">scc.vn</a></p>', '<p>Email: <a href=\"http://mailto:scc@vitranschart.com.vn\">scc@vitranschart.com.vn</a></p>\r\n\r\n<p>Website: <a href=\"http://sccm.com.vn\">sccm.com.vn</a>&nbsp;/&nbsp;<a href=\"http://scc.vn\">scc.vn</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, 'b7af657f922b1088cb9a4267b3d14911', 0, '', 3, NULL, NULL, NULL, 'datafiles/setone', 1553069753, 0, 1, 7, 0, 0, 'EMAIL - WEBSITE', 'EMAIL - WEBSITE', '', 'EMAIL - WEBSITE', 'EMAIL - WEBSITE', '', 'EMAIL - WEBSITE', 'EMAIL - WEBSITE', '', 0, 0, 0, 0, 'fa fa-envelope', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lh_baiviet_img`
--

CREATE TABLE `lh_baiviet_img` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `p_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_note` text COLLATE utf8_unicode_ci,
  `color_id` text COLLATE utf8_unicode_ci,
  `sort` int(11) NOT NULL DEFAULT '0',
  `duongdantin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'galagy'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lh_baiviet_select_tinhnang`
--

CREATE TABLE `lh_baiviet_select_tinhnang` (
  `id` int(11) NOT NULL,
  `id_baiviet` int(11) NOT NULL DEFAULT '0',
  `id_tinhnang` int(11) NOT NULL DEFAULT '0',
  `id_val` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lh_baiviet_tinhnang`
--

CREATE TABLE `lh_baiviet_tinhnang` (
  `id` int(11) NOT NULL,
  `id_kietxuat` int(11) NOT NULL DEFAULT '0',
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) DEFAULT NULL,
  `tenbaiviet_jp` varchar(255) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT '0',
  `loai_hienthi` tinyint(4) NOT NULL DEFAULT '0',
  `showhi` tinyint(4) NOT NULL DEFAULT '1',
  `step` int(11) NOT NULL DEFAULT '0',
  `val_min` int(11) NOT NULL DEFAULT '0',
  `val_max` int(11) NOT NULL DEFAULT '0',
  `tieu_bieu` tinyint(4) NOT NULL DEFAULT '0',
  `noi_bat` tinyint(4) NOT NULL DEFAULT '0',
  `tim_kiem` tinyint(4) NOT NULL DEFAULT '0',
  `only_timkiem` tinyint(4) NOT NULL DEFAULT '0',
  `duongdantin` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `khong_xoa` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lh_banner`
--

CREATE TABLE `lh_banner` (
  `id` int(12) NOT NULL,
  `tenbaiviet_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenbaiviet_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota_cn` text COLLATE utf8_unicode_ci,
  `noidung_vi` text COLLATE utf8_unicode_ci,
  `noidung_en` text COLLATE utf8_unicode_ci,
  `noidung_cn` text COLLATE utf8_unicode_ci,
  `tenbaiviet_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidung_jp` text COLLATE utf8_unicode_ci,
  `id_parent` int(11) DEFAULT NULL,
  `id_kietxuat` int(11) NOT NULL DEFAULT '0',
  `lien_ket` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catasort` int(20) DEFAULT '0',
  `icon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_video` tinyint(1) NOT NULL DEFAULT '0',
  `ngaydang` int(11) NOT NULL DEFAULT '0',
  `showhi` tinyint(2) NOT NULL DEFAULT '1',
  `duongdantin` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bang chua catalag News' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `lh_banner`
--

INSERT INTO `lh_banner` (`id`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `mota_vi`, `mota_en`, `mota_cn`, `noidung_vi`, `noidung_en`, `noidung_cn`, `tenbaiviet_jp`, `mota_jp`, `noidung_jp`, `id_parent`, `id_kietxuat`, `lien_ket`, `catasort`, `icon`, `video`, `check_video`, `ngaydang`, `showhi`, `duongdantin`, `p1`, `blank`) VALUES
(1, 'Slider trang chủ', 'Homepage slider', '', '', '', '', '', '', '', '', '', '', 16, 0, '', 1, '1553065984_banner_1.jpg', NULL, 0, 1553065984, 1, 'datafiles/setone', NULL, ''),
(2, 'Slider trang chủ', 'Homepage slider', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 0, NULL, 2, '1553065993_banner_2.jpg', NULL, 0, 1553065984, 1, 'datafiles/setone', NULL, NULL),
(3, 'Slider trang chủ', 'Homepage slider', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 0, NULL, 3, '1553065993_banner_3.jpg', NULL, 0, 1553065984, 1, 'datafiles/setone', NULL, NULL),
(4, 'Ảnh nền', 'Background', '', '', '', '', '', '', '', '', '', '', 25, 0, '', 1, '1553066027_bg_3.jpg', NULL, 0, 1553066027, 1, 'datafiles/setone', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `lh_banner_danhmuc`
--

CREATE TABLE `lh_banner_danhmuc` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenbaiviet_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `catasort` int(11) NOT NULL DEFAULT '0',
  `showhi` tinyint(2) NOT NULL DEFAULT '1',
  `ngaydang` int(15) NOT NULL,
  `cao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rong` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `lh_banner_danhmuc`
--

INSERT INTO `lh_banner_danhmuc` (`id`, `tenbaiviet_vi`, `tenbaiviet_en`, `catasort`, `showhi`, `ngaydang`, `cao`, `rong`) VALUES
(16, 'Slider trang chủ', '', 13, 1, 1553070939, '1000', '1600'),
(26, 'Ảnh bên trái', '', 17, 0, 1552874991, '90', '270'),
(27, 'Đăng ký tuyển sinh online', '', 18, 0, 1552883404, '315', '560'),
(25, 'Ảnh nền giới thiệu', '', 16, 1, 1553065947, '1000', '1600'),
(28, 'Trang chủ - Bên phải 4', '', 19, 0, 1548642182, 'auto', '260'),
(29, 'Ảnh Bên phải 1', '', 20, 0, 1548642233, 'auto', '260'),
(30, 'Ảnh Bên phải 2', '', 21, 0, 1548642261, 'auto', '260'),
(32, 'Ảnh nền banner', '', 23, 0, 1548751719, '140', '1600'),
(31, 'Ảnh Bên phải 3', '', 22, 0, 1548642270, 'auto', '260');

-- --------------------------------------------------------

--
-- Table structure for table `lh_clanguage`
--

CREATE TABLE `lh_clanguage` (
  `id` int(11) NOT NULL,
  `code_lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nhom` int(11) NOT NULL DEFAULT '0',
  `showhi` tinyint(1) NOT NULL DEFAULT '1',
  `lang_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lh_clanguage`
--

INSERT INTO `lh_clanguage` (`id`, `code_lang`, `lang_vi`, `lang_en`, `lang_cn`, `nhom`, `showhi`, `lang_jp`) VALUES
(1, 'trang_chu', 'Trang Chủ', 'Home', '', 0, 1, ''),
(58, 'lien_he', 'Liên hệ', 'Contact', '联系我们', 0, 1, 'お問い合わせ'),
(19, 'date', 'Ngày', 'Date', '天', 0, 1, '日'),
(20, 'thu_hai', 'Thứ hai', 'Monday', '第二', 0, 1, '二番目'),
(21, 'thu_ba', 'Thứ ba', 'Tuesday', '第三', 0, 1, '三番目'),
(22, 'thu_tu', 'Thứ tư', 'Wednesday', '第四', 0, 1, '四番目'),
(23, 'thu_nam', 'Thứ năm', 'Thursday', '星期四', 0, 1, '五番目'),
(24, 'thu_sau', 'Thứ sáu', 'Friday', '星期五', 0, 1, '金曜日'),
(25, 'thu_bay', 'Thứ bảy', 'Saturday', '第七', 0, 1, '土曜日'),
(26, 'chu_nhat', 'Chủ nhật', 'Sunday', '星期天', 0, 1, '日曜日'),
(28, 'thong_tin_bat_buoc', '(*) Thông tin bắt buộc', '(*) Required Information', '*）必填信息', 0, 1, '（*）必要な情報'),
(29, 'ho_va_ten', 'Họ & tên', 'Full name', '名字和姓氏', 0, 1, '名前と姓'),
(30, 'so_dien_thoai', 'Số điện thoại', 'Phone number', '电话号码', 0, 1, '電話番号'),
(31, 'email', 'Email', 'Email', '电子邮件', 0, 1, 'メール'),
(32, 'dia_chi', 'Địa chỉ', 'Address', '地址', 0, 1, '住所'),
(33, 'tieu_de', 'Tiêu đề', 'Title', '标题', 0, 1, 'タイトル'),
(34, 'noi_dung', 'Mô tả chi tiết', 'Content', '内容', 0, 1, '詳細な説明'),
(35, 'ma_bao_ve', 'Mã bảo vệ', 'Security Code', '安全码', 0, 1, 'セキュリティコード'),
(36, 'gui', 'Gửi', 'Send', '提交', 0, 1, '提出する'),
(37, 'lam_lai', 'Làm lại', 'Reset', '翻拍', 0, 1, 'やり直し'),
(38, 'nhap_so_dien_thoai', 'Vui lòng nhập số điện thoại!', 'Please enter the phone number!', '请输入电话号码！', 0, 1, '電話番号を入力してください！'),
(39, 'nhap_ho_ten', 'Vui lòng nhập họ tên!', 'Please enter a full name!', '请输入名字！', 0, 1, '名前を入力してください！'),
(40, 'dia_chi_email_khong_hop_le', 'Địa chỉ Email không hợp lệ!', 'Email address is not valid!', '电子邮件地址无效！', 0, 1, '無効なメールアドレス！'),
(41, 'nhap_tieu_de', 'Vui lòng nhập tiêu đề!', 'Please enter a title!', '请输入标题！', 0, 1, 'タイトルを入力してください！'),
(412, 'vui_long_nhap_ma_bao_ve', 'Vui lòng nhập mã bảo vệ!', 'Please enter the protect code!', '请输入安全码！', 0, 1, 'セキュリティコードを入力してください！'),
(43, 'yeu_cau_cua_ban_da_duoc_gui', 'Yêu cầu của bạn đã được gửi!', 'Your request has been sent!', '您的请求已发送！', 0, 1, 'あなたのリクエストは送信されました！'),
(44, 've_trang_chu', 'Quay về trang chủ', 'Back Home', '返回主页', 0, 1, 'ホームページに戻る'),
(67, 've_trang_truoc', 'về trang trước', 'previous page', '关于上一页', 0, 1, '前のページについて'),
(72, 'tim_kiem', 'Tìm kiếm', 'Search', '搜索', 0, 1, '検索'),
(73, 'ket_qua_tim_kiem', 'Rất tiết. Không tìm thấy kết quả tìm kiếm!', 'Sorry. No search results found!', '漂亮的天气。 没有搜索结果', 0, 1, '美しい天気。 検索結果が見つかりません！'),
(74, 'xem_chi_tiet', 'xem chi tiết', 'See details', '查看详情', 0, 1, '詳細を見る'),
(85, 'nhap_dia_chi', 'Vui lòng nhập địa chỉ của bạn!', 'Please enter your address!', '请输入你的地址！', 0, 1, ''),
(86, 'nhap_noi_dung', 'Vui lòng nhập nội dung!', 'Please enter the content!', '请输入内容！', 0, 1, '内容を入力してください！'),
(89, 'luot_xem', 'Lượt xem', 'View', '', 0, 1, ''),
(277, 'so_dien_thoai_khong_hop_le', 'Số điện thoại không hợp lệ!', 'Invalid telephone number!', '无效的电话号码！', 0, 1, '電話番号が無効です！'),
(544, 'nhap_tu_khoa_tim_kiem', 'Nhập từ khóa tìm kiếm...', 'Enter keyword search...', '输入搜索关键字...', 0, 1, '検索キーワードを入力...'),
(221, 'dang_xu_ly', 'Đang xử lý', 'Processing', '处理', 0, 1, '処理'),
(644, 'lien_ket_khong_hop_le_hoac_da_su_dung', 'Liên kết không hợp lệ hoặc đã được sử dụng', 'The link is invalid or has been used', '', 0, 1, ''),
(546, 'gia_lienhe', 'Liên hệ', 'Contact Us', '联系我们', 0, 1, 'お問い合わせ'),
(549, 'xem_tat_ca', 'Xem tất cả', 'View all', '查看全部', 0, 1, 'すべて見る'),
(416, 'nhap_dia_chi_email', 'Nhập địa chỉ email...', 'Enter your email address...', '输入电邮地址...', 0, 1, 'メールアドレスを入力してください...'),
(413, 'nhap_ma_bao_ve_chua_dung', 'Mã bảo vệ chưa đúng!', 'Invalid protection code!', '无效的保护码！', 0, 1, '保護コードが無効です！'),
(414, 'thongtin_lienhe', 'Thông tin liên hệ', 'Contact Info', '联系信息', 0, 1, '連絡先情報'),
(559, 'xem_them', 'Xem thêm', 'Read more', '另见', 0, 1, 'カイタイ'),
(407, 'ban_quyen_name', 'Copyright © 2018 Bản quyền thuộc về CÔNG TY TNHH CUNG ỨNG THUYỀN VIÊN SCC', 'Copyright © 2018 by SCC MEMBER SUPPLY CO., LTD', '', 0, 1, ''),
(433, 'khong_tim_thay_du_lieu_nao', 'Không tìm thấy dữ liệu nào!', 'No data found!', '找不到数据！', 0, 1, 'データが見つかりません！'),
(1015, 'tin_moi', 'Tin mới', 'News', '', 0, 1, ''),
(456, 'gui_di', 'Gửi đi', 'Send', '发送它', 0, 1, 'それを送る'),
(574, 'bai_viet_lien_quan', 'Bài viết liên quan', 'Related posts', '相关文章', 0, 1, '関連記事'),
(677, 'gio_truoc', 'giờ trước', 'hours ago', '', 0, 1, ''),
(676, 'phut_truoc', 'phút trước', 'minute ago', '', 0, 1, ''),
(675, 'giay_truoc', 'giây trước', 'seconds ago', '', 0, 1, ''),
(674, 'vua_xong', 'Vừa xong', 'Just finished', '', 0, 1, ''),
(597, 'nhap_ma_bao_ve_chua_dung', 'Nhập mã bảo vệ chưa đúng!', 'Enter the security code incorrectly!', '输入安全代码不正确！', 0, 1, 'セキュリティコードを間違って入力してください！'),
(598, 'thongtin_lienhe', 'Thông tin liên hệ', 'Contact Info', '联系信息', 0, 1, '連絡先情報'),
(607, 'ngay_dang', 'Ngày đăng', 'Date', '发布日期', 0, 1, '投稿日'),
(608, 'cap_nhat', 'Cập nhật', 'Update', '更新', 0, 1, '更新'),
(609, 'da_xem', 'Đã xem', 'View', '看着', 0, 1, '見た'),
(656, 'mo_ta_chi_tiet', 'Mô tả chi tiết', 'Description', '详细说明', 0, 1, '詳細な説明'),
(619, 'chua_nhap_dia_chi_email', 'Chưa nhập địa chỉ email', 'Did not enter email address', '没有输入电子邮件地址', 0, 1, 'メールアドレスを入力しなかった'),
(672, 'noi_dung_lien_he', 'Nội dung liên hệ', 'Contact content', '联系内容', 0, 1, '連絡先のコンテンツ'),
(627, 'hotline', 'Hotline', 'Hotline', '热线', 0, 1, 'ホットライン'),
(640, 'loi_xac_thuc_thu_lai_sau', 'Lỗi xác thực, vui lòng tại lại trang và thử lại!', 'Authentication error, please go back to the page and try again!', '認証エラーです、ページに戻ってもう一度お試しください！', 0, 1, '验证错误，请返回页面再试一次！'),
(642, 'thong_tin_ca_nhan', 'Thông tin cá nhân', 'Personal information', '', 0, 1, ''),
(643, 'thoat', 'Thoát', 'Logout', '', 0, 1, ''),
(728, 'stt', 'STT', 'STT', '', 0, 1, ''),
(729, 'ngay_dat', 'Ngày đặt', 'Date', '设定日期', 0, 1, '日付の設定'),
(745, 'dien_thoai', 'Điện thoại', 'Phone', '电话', 0, 1, '電話番号'),
(790, 'tin_tuc', 'Tin tiêu điểm', 'Hot news', '', 0, 1, ''),
(801, 'lien_he_ngay', 'Liên hệ ngay', 'Contact now', '现在联系', 0, 1, ''),
(964, 'thong_tin', 'Thông tin', 'Information', '', 0, 1, ''),
(1027, 'tin_tuc_su_kien', 'Tin tức & sự kiện', 'News & events', '', 0, 1, ''),
(1029, 'doi_tac_khach_hang', 'Đối Tác - khách hàng', 'Partners customers', '', 0, 1, ''),
(1031, 'slugan_1', 'WELCOME TO', 'WELCOME TO', '', 0, 1, ''),
(1040, 'linh_vuc_mo_ta', 'SCC CUNG ỨNG THUYỀN VIÊN CHO CÁC LOẠI TÀU BIỂN', 'SCC SUPPORTS MEMBERS FOR VESSELS', '', 0, 1, ''),
(1039, 'slugan_2', 'SCCM LTD.,CO', 'SCCM LTD.,CO', '', 0, 1, ''),
(1034, 'thong_bao_moi', 'Thông báo mới', 'New notification', '', 0, 1, ''),
(1035, 'dang_online', 'Người online', 'People online', '', 0, 1, ''),
(1036, 'tong_view', 'Tổng lượt truy cập', 'Total visits', '', 0, 1, ''),
(1037, 'thong_ke_truy_cap', 'Thống kê truy cập', 'Statistical access', '', 0, 1, ''),
(1041, 'ly_do_ban_chon_dich_vu_chung_toi', 'Lý do bạn chọn dịch vụ chúng tôi.', 'The reason you choose our service.', '', 0, 1, ''),
(1042, 'hay_de_de_cung_xay_dung_tuong_lai', 'Hãy đến để cùng xây dựng tương lai.', 'Come to build the future together.', '', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `lh_counter`
--

CREATE TABLE `lh_counter` (
  `id` bigint(20) NOT NULL,
  `coonter` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `lh_counter`
--

INSERT INTO `lh_counter` (`id`, `coonter`) VALUES
(1, 5411);

-- --------------------------------------------------------

--
-- Table structure for table `lh_count_date`
--

CREATE TABLE `lh_count_date` (
  `id` int(11) NOT NULL,
  `day` int(2) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lh_count_date`
--

INSERT INTO `lh_count_date` (`id`, `day`, `month`, `year`, `count`) VALUES
(1, 20, 3, 2019, 18),
(2, 22, 3, 2019, 17),
(3, 25, 3, 2019, 2),
(4, 28, 3, 2019, 2),
(5, 29, 3, 2019, 1),
(6, 1, 4, 2019, 1),
(7, 3, 4, 2019, 1),
(8, 25, 4, 2019, 1),
(9, 3, 5, 2019, 9);

-- --------------------------------------------------------

--
-- Table structure for table `lh_danhmuc`
--

CREATE TABLE `lh_danhmuc` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenbaiviet_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenbaiviet_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p1_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p1_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p1_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p1_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lien_ket` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_hover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota_en` text COLLATE utf8_unicode_ci,
  `mota_vi` text COLLATE utf8_unicode_ci,
  `mota_cn` text COLLATE utf8_unicode_ci,
  `mota_jp` text COLLATE utf8_unicode_ci,
  `noidung_en` text COLLATE utf8_unicode_ci,
  `noidung_vi` text COLLATE utf8_unicode_ci,
  `noidung_cn` text COLLATE utf8_unicode_ci,
  `noidung_jp` text COLLATE utf8_unicode_ci,
  `duongdantin` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `step` int(11) DEFAULT NULL,
  `id_step` int(11) NOT NULL DEFAULT '0',
  `ngaydang` int(15) NOT NULL DEFAULT '0',
  `seo_title_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt` tinyint(1) NOT NULL DEFAULT '0',
  `mt_1_vi` longtext COLLATE utf8_unicode_ci,
  `mt_1_en` longtext COLLATE utf8_unicode_ci,
  `mt_1_cn` longtext COLLATE utf8_unicode_ci,
  `mt_1_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catasort` int(11) DEFAULT NULL,
  `showhi` tinyint(2) NOT NULL DEFAULT '1',
  `num_1` int(11) NOT NULL DEFAULT '0',
  `num_2` int(11) NOT NULL DEFAULT '0',
  `nhom_sp` tinyint(1) NOT NULL DEFAULT '0',
  `p_khuyenmai` tinyint(1) NOT NULL DEFAULT '0',
  `p_banchay` tinyint(1) NOT NULL DEFAULT '0',
  `p_noibat` tinyint(1) NOT NULL DEFAULT '0',
  `p_spmoi` tinyint(1) NOT NULL DEFAULT '0',
  `p_hethang` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bang chua catalag News' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `lh_danhmuc_img`
--

CREATE TABLE `lh_danhmuc_img` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `p_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `p_note` text COLLATE utf8_unicode_ci NOT NULL,
  `color_id` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `duongdantin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'galagy'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lh_danhmuc_img`
--

INSERT INTO `lh_danhmuc_img` (`id`, `id_parent`, `p_name`, `p_note`, `color_id`, `sort`, `duongdantin`) VALUES
(20, 16, '1533804992_banner_5.jpg', '', '', 0, 'galagy'),
(21, 16, '1533804993_banner_4.jpg', '', '', 0, 'galagy'),
(22, 16, '1533804993_banner_3.jpg', '', '', 0, 'galagy');

-- --------------------------------------------------------

--
-- Table structure for table `lh_email_config`
--

CREATE TABLE `lh_email_config` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `showhi` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lh_email_config`
--

INSERT INTO `lh_email_config` (`id`, `email`, `type`, `showhi`) VALUES
(6, 'linhhuynh@pavietnam.vn', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lh_email_follow`
--

CREATE TABLE `lh_email_follow` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `v_name` varchar(255) DEFAULT NULL,
  `v_phone` varchar(255) DEFAULT NULL,
  `ddate` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) DEFAULT NULL,
  `showhi` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lh_file_import_data`
--

CREATE TABLE `lh_file_import_data` (
  `id` int(11) NOT NULL,
  `ten_vi` varchar(255) DEFAULT NULL,
  `duongdantin` varchar(255) DEFAULT NULL,
  `file_excel` varchar(255) DEFAULT NULL,
  `ngay_dang` int(11) NOT NULL DEFAULT '0',
  `so_lan_import` int(11) NOT NULL DEFAULT '0',
  `noidung_vi` text,
  `import_cuoi` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lh_form_danhmuc`
--

CREATE TABLE `lh_form_danhmuc` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `loai_from` int(11) NOT NULL DEFAULT '0',
  `mota_vi` varchar(255) DEFAULT NULL,
  `mota_en` varchar(255) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT '0',
  `showhi` tinyint(1) NOT NULL DEFAULT '1',
  `ngaydang` int(11) NOT NULL DEFAULT '0',
  `thuoc_bai_viet` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lh_form_danhmuc_nd`
--

CREATE TABLE `lh_form_danhmuc_nd` (
  `id` int(11) NOT NULL,
  `id_gui` int(11) NOT NULL DEFAULT '0',
  `ngay_dang` int(11) NOT NULL DEFAULT '0',
  `noidung_vi` longtext,
  `showhi` tinyint(1) NOT NULL,
  `id_form` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lh_form_lienhe`
--

CREATE TABLE `lh_form_lienhe` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) NOT NULL,
  `ip_gui` varchar(255) NOT NULL,
  `ngay_dang` int(11) NOT NULL,
  `noi_dung_vn` longtext NOT NULL,
  `showhi` tinyint(1) NOT NULL,
  `loai` int(11) NOT NULL DEFAULT '0',
  `nd_json` longtext,
  `file_1` varchar(255) DEFAULT NULL,
  `file_2` varchar(255) DEFAULT NULL,
  `id_bv` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lh_lien_ket_nhanh`
--

CREATE TABLE `lh_lien_ket_nhanh` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `lien_ket_vi` varchar(255) DEFAULT NULL,
  `lien_ket_en` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT '0',
  `class_icon` varchar(255) DEFAULT NULL,
  `showhi` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lh_members`
--

CREATE TABLE `lh_members` (
  `id` int(7) NOT NULL,
  `tentruycap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keypass` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` tinyint(1) NOT NULL DEFAULT '0',
  `ngaysinh` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `cmnd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idsp_view` text COLLATE utf8_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phanquyen` int(11) NOT NULL DEFAULT '0',
  `showhi` tinyint(1) NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_facebook` int(11) NOT NULL DEFAULT '0',
  `id_google` int(11) NOT NULL DEFAULT '0',
  `google_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lh_members`
--

INSERT INTO `lh_members` (`id`, `tentruycap`, `matkhau`, `keypass`, `hoten`, `email`, `diachi`, `sodienthoai`, `gioitinh`, `ngaysinh`, `cmnd`, `idsp_view`, `active`, `phanquyen`, `showhi`, `icon`, `id_facebook`, `id_google`, `google_icon`) VALUES
(1, 'sccm', '5311D326259EA1B5FAAE4433C0F989FAAB8E236C35178988228CC6E49FC4095574C46665', '5KF7X', 'sccm', 'linhhuynh@pavietnam.vn', '', '', 0, '', NULL, '', '', 1, 1, '0', 0, 0, NULL),
(98, 'f7ab95812a9166602d0174c28a3e5bd9', '8C365AB097B3584C540F6FB3AB5EB093D6EB61FAD60274AE8034970371C5F3251112B08C', 'N1Q7Z', 'Nguyễn Thế Long', 'linhhuynhpa@gmail.com', 'TpHCM', '0988222111', 0, '0', '0', '', '', 0, 1, '1548730958_13.jpg', 0, 0, NULL),
(99, 'linhhuynhpa266661548751101', '67FCB4D3A9A44B158BA79A8B791194B1B4700B58EEA413DCFB47871F64E7B5E1D069213F', 'DTBZJ', 'Nguyễn Xuân lan', 'linhhuynhpa2@gmail.com', 'TpHCM', '0988222111', 0, '0', '0', '', '', 0, 1, '1548751263_18.jpg', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lh_members_log`
--

CREATE TABLE `lh_members_log` (
  `id` int(20) NOT NULL,
  `log` varchar(255) DEFAULT NULL,
  `time_log` int(11) NOT NULL DEFAULT '0',
  `id_user` int(11) NOT NULL DEFAULT '0',
  `id_mb` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lh_members_nhom`
--

CREATE TABLE `lh_members_nhom` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `phan_tram` float NOT NULL DEFAULT '0',
  `catasort` int(11) NOT NULL DEFAULT '0',
  `showhi` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lh_members_nhom`
--

INSERT INTO `lh_members_nhom` (`id`, `tenbaiviet_vi`, `phan_tram`, `catasort`, `showhi`) VALUES
(1, 'Xanh', 10, 1, 1),
(2, 'Bạc', 20, 2, 1),
(3, 'Vip', 30, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lh_menu`
--

CREATE TABLE `lh_menu` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) DEFAULT NULL,
  `tenbaiviet_jp` varchar(255) DEFAULT NULL,
  `seo_name` varchar(255) DEFAULT NULL,
  `step` int(11) NOT NULL DEFAULT '0',
  `danhmuc` int(11) NOT NULL DEFAULT '0',
  `kieu_hien_thi` tinyint(4) NOT NULL DEFAULT '0',
  `kieu_chon` tinyint(1) NOT NULL DEFAULT '0',
  `cua_so_moi` tinyint(4) NOT NULL DEFAULT '0',
  `catasort` int(11) NOT NULL DEFAULT '1',
  `showhi` tinyint(1) NOT NULL DEFAULT '1',
  `icon` varchar(255) DEFAULT NULL,
  `duongdantin` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lh_menu`
--

INSERT INTO `lh_menu` (`id`, `id_parent`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `tenbaiviet_jp`, `seo_name`, `step`, `danhmuc`, `kieu_hien_thi`, `kieu_chon`, `cua_so_moi`, `catasort`, `showhi`, `icon`, `duongdantin`) VALUES
(1, 0, 'sccm', 'sccm', '', '', '', 0, 0, 0, 0, 0, 1, 1, NULL, 'datafiles/setone'),
(2, 1, 'Giới thiệu', 'Introduce', '', '', '', 1, 0, 2, 1, 0, 2, 1, NULL, 'datafiles/setone'),
(3, 1, 'Lĩnh vực hoạt động', 'Field of activity', '', '', '', 2, 0, 2, 1, 0, 3, 1, NULL, 'datafiles/setone'),
(4, 1, 'Đội ngũ lao động', 'Labor team', '', '', '', 3, 0, 1, 1, 0, 4, 1, NULL, 'datafiles/setone'),
(5, 1, 'Cơ sở vật chất', 'Infrastructure', '', '', '', 4, 0, 0, 1, 0, 5, 1, NULL, 'datafiles/setone'),
(6, 1, 'Khách hàng', 'Customer', '', '', '', 5, 0, 0, 1, 0, 6, 1, NULL, 'datafiles/setone'),
(7, 1, 'Hoạt động thuyền viên', 'Crew activities', '', '', '', 6, 0, 0, 1, 0, 7, 1, NULL, 'datafiles/setone'),
(8, 1, 'Liên hệ', 'Contact', '', '', '', 7, 0, 0, 1, 0, 8, 1, NULL, 'datafiles/setone'),
(9, 1, 'Trang chính', 'Home', '', '', '', 0, 0, 0, 0, 0, 1, 1, NULL, 'datafiles/setone');

-- --------------------------------------------------------

--
-- Table structure for table `lh_module_nhomtaikhoan`
--

CREATE TABLE `lh_module_nhomtaikhoan` (
  `id` int(11) NOT NULL,
  `ten_vi` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `showhi` tinyint(1) NOT NULL DEFAULT '1',
  `phan_quyen` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lh_module_nhomtaikhoan`
--

INSERT INTO `lh_module_nhomtaikhoan` (`id`, `ten_vi`, `sort`, `showhi`, `phan_quyen`) VALUES
(7, 'Quản trị', 1, 0, '{\"tn_29\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"thiet-lap-website\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_36\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"thiet-lap-menu\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_41\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"nhom-quan-tri\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_47\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_30\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"khoa-website\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_37\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"danh-sach-thanh-vien-quan-tri\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_48\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"main-module\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_31\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"quan-ly-ngon-ngu\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_38\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"danh-sach-thanh-vien\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_49\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_32\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"danh-sach-mail-nhan-tin\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_39\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"danh-sach-ma-giam-gia\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_46\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"danh-sach-hinh-anh\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_33\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_34\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"danh-sach-mail-he-thong\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_13\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"nhung-thong-tin-khac\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_42\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"thong-tin-ca-nhan\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_50\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_84\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_91\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"khach-hang-lien-he\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"tn_40\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"9\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"1\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"2\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"3\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"4\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"5\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"6\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"7\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0},\"8\":{\"xem\":0,\"them\":0,\"sua\":0,\"xoa\":0,\"menu\":0}}');

-- --------------------------------------------------------

--
-- Table structure for table `lh_module_page`
--

CREATE TABLE `lh_module_page` (
  `id` int(11) NOT NULL,
  `ten_vi` varchar(255) DEFAULT NULL,
  `page` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `showhi` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lh_module_page`
--

INSERT INTO `lh_module_page` (`id`, `ten_vi`, `page`, `sort`, `showhi`) VALUES
(1, 'Giới thiệu', 1, 1, 1),
(2, 'Sản phẩm', 2, 2, 0),
(3, 'Tin tức', 3, 3, 1),
(4, 'Dịch vụ', 4, 4, 0),
(5, 'Liên hệ', 5, 5, 1),
(6, 'Thư viện ảnh', 6, 6, 0),
(7, 'Dowload File', 7, 7, 0),
(8, 'Video', 8, 8, 0),
(9, 'Phòng', 9, 9, 0),
(10, 'Đăng tin', 10, 10, 0),
(11, 'Du lịch', 11, 11, 0),
(12, 'Địa điểm', 12, 12, 0),
(13, 'Đối tác', 13, 13, 1),
(14, 'Hỏi đáp', 14, 14, 0),
(15, 'Văn phòng cho thuê', 15, 15, 0),
(16, 'Nhà Tuyển dụng', 16, 16, 0),
(17, 'Bài viết khác (mutile ảnh)', 17, 17, 0),
(18, 'Đại lý', 18, 18, 0),
(19, 'Dự án', 19, 19, 0),
(20, 'Sản phẩm 2', 20, 20, 0),
(21, 'Bất động sản', 21, 21, 0),
(22, 'Danh bạ doanh nghiệp', 22, 22, 0),
(23, 'Diễn đàn', 23, 23, 0),
(27, 'Người tìm việc', 24, 24, 0),
(28, 'Khóa học', 28, 25, 0),
(29, 'Lịch khám bệnh', 29, 26, 0),
(31, 'Giáo viên', 31, 27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lh_module_setting`
--

CREATE TABLE `lh_module_setting` (
  `id` int(11) NOT NULL,
  `ten_vi` varchar(255) DEFAULT NULL,
  `ten_key` varchar(255) DEFAULT NULL,
  `is_check` tinyint(4) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lh_module_setting`
--

INSERT INTO `lh_module_setting` (`id`, `ten_vi`, `ten_key`, `is_check`, `sort`) VALUES
(6, 'Danh mục tiêu biểu', '8', 1, 0),
(10, 'Sản phẩm khuyến mãi', 'san-pham-khuyen-mai', 1, 8),
(11, 'Sản phẩm hover', 'san-pham-hover', 0, 9),
(12, 'Mã sản phẩm', 'ma-san-pham', 0, 10),
(18, 'Ngôn ngữ Tiến Anh', 'ngon-ngu-tieng-anh', 1, 16),
(46, 'Dowload file', '', 1, 0),
(22, 'Mô tả main module', 'main-menu-mo-ta', 0, 20),
(23, 'Main menu - Ảnh slider', 'main-menu-anh-slider', 0, 21),
(52, 'Bài viết không mô tả', '3,5,6,7,9,11,10,4,1,8', 1, 0),
(53, 'Bài viết không nội dung', '', 1, 0),
(28, 'Thêm ngôn ngữ thứ 3', 'them-ngon-ngu-thu-3', 0, 16),
(29, 'Liên hệ nhóm con', 'lien-he-nhom-con', 1, 26),
(36, 'Danh sách hình ảnh nội dung', 'danh-sach-hinh-anh-noidung', 1, 33),
(37, 'Danh sách hình ảnh video', 'danh-sach-hinh-anh-video', 0, 34),
(38, 'Hiển thị danh mục', '', 1, 0),
(39, 'Hiển thị tính năng', '', 1, 0),
(42, 'Liên kết bài viết khác', 'lien-ket-bai-viet-khac', 0, 38),
(43, 'Danh mục slider', '', 1, 0),
(45, 'Thêm ngôn ngữ thứ 4', 'them-ngon-ngu-thu-4', 0, 40),
(47, 'Danh mục mô tả', '', 1, 0),
(48, 'Danh mục nội dung', '', 1, 0),
(49, 'Bài viết Opt', '2,6,8,5', 1, 0),
(50, 'Bài viết Opt1', '', 1, 0),
(51, 'Bài viết Opt2', '', 1, 0),
(54, 'Ảnh menu', '0', 1, 41);

-- --------------------------------------------------------

--
-- Table structure for table `lh_module_tinhnang`
--

CREATE TABLE `lh_module_tinhnang` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `ten_vi` varchar(255) DEFAULT NULL,
  `m_action` varchar(255) DEFAULT NULL,
  `m_xem` tinyint(4) NOT NULL DEFAULT '0',
  `m_them` tinyint(4) NOT NULL DEFAULT '0',
  `m_sua` tinyint(4) NOT NULL DEFAULT '0',
  `m_xoa` tinyint(4) NOT NULL DEFAULT '0',
  `m_other` tinyint(4) NOT NULL DEFAULT '0',
  `m_dev` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) DEFAULT NULL,
  `lien_ket` varchar(255) DEFAULT NULL,
  `showhi` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lh_module_tinhnang`
--

INSERT INTO `lh_module_tinhnang` (`id`, `id_parent`, `ten_vi`, `m_action`, `m_xem`, `m_them`, `m_sua`, `m_xoa`, `m_other`, `m_dev`, `sort`, `icon`, `lien_ket`, `showhi`) VALUES
(73, 0, 'Quản lý Đơn hàng', 'danh-sach-don-hang', 1, 0, 1, 1, 0, 0, 10, 'fa fa-shopping-cart', '', 0),
(63, 29, 'Số điện thoại đăng ký', 'danh-sach-phone-nhan-tin', 0, 0, 0, 0, 0, 0, 5, '', '?module=quan-ly-website&action=danh-sach-phone-nhan-tin', 0),
(13, 0, 'Email hệ thống', 'danh-sach-mail-he-thong', 1, 1, 1, 1, 0, 0, 17, 'fa fa-envelope', '', 1),
(72, 69, 'Danh sách liên hệ', 'form-lien-he', 0, 0, 0, 0, 1, 0, 44, '', '?module=form&action=form-lien-he&noi-dung=true', 1),
(68, 66, 'Danh sách file', 'danh-sach-import-du-lieu', 0, 0, 0, 0, 1, 0, 40, '', '?module=quan-ly-import-du-lieu&action=danh-sach-import-du-lieu', 1),
(71, 69, 'Danh sách form', 'form-lien-he', 0, 0, 0, 0, 1, 0, 43, '', '?module=form&action=form-lien-he', 1),
(69, 0, 'Form liên hệ', 'form-lien-he', 1, 1, 1, 1, 0, 0, 9, 'fa fa-plus-square-o', '', 0),
(70, 69, 'Thêm form', 'form-lien-he', 0, 0, 0, 0, 1, 0, 42, '', '?module=form&action=form-lien-he&them-moi=true', 1),
(64, 29, 'Danh sách mạng xã hội', 'danh-sach-mang-xa-hoi', 1, 1, 1, 1, 0, 0, 6, '', '?module=quan-ly-website&action=danh-sach-mang-xa-hoi', 0),
(65, 29, 'Danh sách liên kết nhanh', 'danh-sach-lien-ket-nhanh', 1, 1, 1, 1, 0, 0, 37, '', '?module=quan-ly-website&action=danh-sach-lien-ket-nhanh', 0),
(66, 0, 'Quản lý import dữ liệu', 'danh-sach-import-du-lieu', 1, 1, 1, 1, 0, 0, 8, 'fa fa-download', '', 0),
(67, 66, 'Thêm file', 'danh-sach-import-du-lieu', 0, 0, 0, 0, 1, 0, 39, '', '?module=quan-ly-import-du-lieu&action=danh-sach-import-du-lieu&them-moi=true', 1),
(29, 0, 'Quản lý website', '', 0, 0, 0, 0, 0, 0, 1, 'fa fa-tachometer', '', 1),
(30, 0, 'Main Menu', '', 0, 0, 0, 0, 0, 0, 2, 'fa fa-sliders', '', 1),
(31, 0, 'Main Module', 'main-module', 0, 0, 0, 0, 0, 0, 3, 'fa fa-bars', '', 1),
(32, 0, 'Quản lý thanh toán', '', 0, 0, 0, 0, 0, 0, 4, 'fa fa-plane', '', 0),
(33, 0, 'Quản lý hình ảnh', 'danh-sach-hinh-anh', 1, 1, 1, 1, 0, 0, 5, 'fa fa-image', '', 1),
(34, 0, 'Tài khoản quản trị', 'nhom-quan-tri', 0, 0, 0, 0, 0, 0, 16, 'fa fa-user-circle-o', '', 1),
(36, 29, 'Thiết lập website', 'thiet-lap-websitehttp://localhost/2018_inoxmauvietnam/nguoiquanly/', 1, 0, 1, 0, 0, 0, 1, '', '?module=quan-ly-website&action=thiet-lap-website', 1),
(37, 29, 'Khóa website', 'khoa-website', 1, 0, 1, 0, 0, 0, 2, '', '?module=quan-ly-website&action=khoa-website', 1),
(38, 29, 'Quản lý ngôn ngữ', 'quan-ly-ngon-ngu', 1, 0, 1, 0, 0, 0, 3, '', '?module=quan-ly-website&action=quan-ly-ngon-ngu', 1),
(39, 29, 'Danh sách email nhận tin', 'danh-sach-mail-nhan-tin', 1, 0, 0, 1, 0, 0, 4, '', '?module=quan-ly-website&action=danh-sach-mail-nhan-tin', 0),
(40, 29, 'Khách hàng liên hệ', 'khach-hang-lien-he', 1, 0, 0, 1, 0, 0, 72, '', '?module=quan-ly-website&action=khach-hang-lien-he', 1),
(41, 30, 'Thiết lập menu', 'thiet-lap-menu', 1, 1, 1, 1, 0, 0, 1, '', '?module=main-menu&action=thiet-lap-menu', 1),
(42, 30, 'Nội dung khác', 'nhung-thong-tin-khac', 1, 0, 1, 0, 0, 0, 40, '', '?module=main-menu&action=nhung-thong-tin-khac', 1),
(43, 32, 'Địa điểm', 'thanh-toan-dia-diem', 1, 1, 1, 1, 0, 0, 1, '', '?module=quan-ly-thanh-toan&action=thanh-toan-dia-diem', 1),
(44, 32, 'Phương thức vận chuyển', 'thanh-toan-phuong-thuc-van-chuyen', 1, 1, 1, 1, 0, 0, 2, '', '?module=quan-ly-thanh-toan&action=thanh-toan-phuong-thuc-van-chuyen', 1),
(45, 32, 'Phương thức thanh toán', 'thanh-toan-phuong-thuc-thanh-toan', 1, 1, 1, 1, 0, 0, 43, '', '?module=quan-ly-thanh-toan&action=thanh-toan-phuong-thuc-thanh-toan', 1),
(46, 32, 'Mã giảm giá', 'danh-sach-ma-giam-gia', 1, 1, 1, 1, 0, 0, 4, '', '?module=quan-ly-thanh-toan&action=danh-sach-ma-giam-gia', 0),
(47, 34, 'Nhóm quản trị', 'nhom-quan-tri', 1, 1, 1, 1, 0, 0, 1, '', '', 0),
(48, 34, 'Tài khoản quản trị', 'danh-sach-thanh-vien-quan-tri', 1, 1, 1, 1, 0, 0, 2, '', '', 1),
(49, 0, 'Thành viên đăng ký', 'danh-sach-thanh-vien', 1, 1, 1, 1, 0, 0, 16, 'fa fa-users', '', 0),
(50, 34, 'Thông tin cá nhân', 'thong-tin-ca-nhan', 1, 0, 1, 0, 0, 0, 48, '', '?module=quan-ly-thanh-vien&action=thong-tin-ca-nhan', 1),
(51, 33, 'Thêm hình ảnh', 'danh-sach-hinh-anh', 0, 0, 0, 0, 1, 0, 49, '', '?module=quan-ly-hinh-anh&action=danh-sach-hinh-anh&them-moi=true', 1),
(52, 33, 'Danh sách hình ảnh', 'danh-sach-hinh-anh', 0, 0, 0, 0, 1, 0, 50, '', '?module=quan-ly-hinh-anh&action=danh-sach-hinh-anh', 1),
(53, 33, 'Thêm loại hình ảnh', 'danh-sach-loai-hinh-anh', 0, 0, 0, 0, 1, 1, 51, '', '?module=quan-ly-hinh-anh&action=danh-sach-loai-hinh-anh&them-moi=true', 1),
(54, 33, 'Danh sách loại hình ảnh', 'danh-sach-loai-hinh-anh', 0, 0, 0, 0, 1, 1, 52, '', '?module=quan-ly-hinh-anh&action=danh-sach-loai-hinh-anh', 1),
(55, 47, 'Thêm nhóm quản trị', 'nhom-quan-tri', 0, 0, 0, 0, 1, 0, 53, '', '?module=quan-ly-thanh-vien&action=nhom-quan-tri&them-moi=true', 1),
(56, 47, 'Danh sách nhóm quản trị', 'nhom-quan-tri', 0, 0, 0, 0, 1, 0, 54, '', '?module=quan-ly-thanh-vien&action=nhom-quan-tri', 1),
(57, 48, 'Thêm tài khoản', 'danh-sach-thanh-vien-quan-tri', 0, 0, 0, 0, 1, 0, 55, '', '?module=quan-ly-thanh-vien&action=danh-sach-thanh-vien-quan-tri&them-moi=true', 1),
(58, 48, 'Danh sách tài khoản', 'danh-sach-thanh-vien-quan-tri', 0, 0, 0, 0, 1, 0, 56, '', '?module=quan-ly-thanh-vien&action=danh-sach-thanh-vien-quan-tri', 1),
(59, 49, 'Thêm thành viên', 'danh-sach-thanh-vien', 0, 0, 0, 0, 1, 0, 57, '', '?module=quan-ly-thanh-vien&action=danh-sach-thanh-vien&them-moi=true', 1),
(60, 49, 'Danh sách thành viên', 'danh-sach-thanh-vien', 0, 0, 0, 0, 1, 0, 58, '', '?module=quan-ly-thanh-vien&action=danh-sach-thanh-vien', 1),
(61, 13, 'Thêm email', 'danh-sach-mail-he-thong', 0, 0, 0, 0, 1, 0, 59, '', '?module=quan-ly-mail-he-thong&action=danh-sach-mail-he-thong&them-moi=true', 1),
(62, 13, 'Danh sách email', 'danh-sach-mail-he-thong', 0, 0, 0, 0, 1, 0, 60, '', '?module=quan-ly-mail-he-thong&action=danh-sach-mail-he-thong', 1),
(74, 73, 'Danh sách đơn hàng', 'danh-sach-don-hang', 0, 0, 0, 0, 1, 0, 46, '', '?module=quan-ly-don-hang&action=danh-sach-don-hang', 1),
(75, 0, 'Quản lý Hỗ trợ online', 'danh-sach-ho-tro', 1, 1, 1, 1, 0, 0, 11, 'fa fa-phone', '', 0),
(76, 75, 'Thêm mới', 'danh-sach-ho-tro', 0, 0, 0, 0, 1, 0, 48, '', '?module=quan-ly-ho-tro&action=danh-sach-ho-tro&them-moi=true', 1),
(77, 75, 'Danh sách hỗ trợ', 'danh-sach-ho-tro', 0, 0, 0, 0, 1, 0, 49, '', '?module=quan-ly-ho-tro&action=danh-sach-ho-tro', 1),
(78, 32, 'Quản lý kho', 'quan-ly-kho', 1, 1, 1, 1, 0, 0, 50, '', '?module=quan-ly-thanh-toan&action=quan-ly-kho', 0),
(79, 29, 'Quản lý bình luận', 'quan-ly-binh-luan', 1, 0, 1, 1, 0, 0, 51, '', '?module=module-he-thong&action=quan-ly-binh-luan', 0),
(80, 32, 'Quản lý nhập kho', 'quan-ly-nhap-kho', 1, 1, 1, 1, 0, 0, 52, '', '', 0),
(83, 32, 'Quản lý xuất kho', 'quan-ly-xuat-kho', 1, 1, 1, 1, 0, 0, 55, '', '', 0),
(81, 80, 'Thêm phiếu nhập', 'quan-ly-nhap-kho', 0, 0, 0, 0, 1, 0, 53, '', '?module=module-he-thong&action=quan-ly-nhap-kho&them-moi=true', 1),
(82, 80, 'Danh sách phiếu nhập', 'quan-ly-nhap-kho', 0, 0, 0, 0, 1, 0, 54, '', '?module=module-he-thong&action=quan-ly-nhap-kho', 1),
(84, 83, 'Thêm phiếu xuất', 'quan-ly-xuat-kho', 0, 0, 0, 0, 0, 0, 56, '', '?module=module-he-thong&action=quan-ly-xuat-kho&them-moi=true', 1),
(85, 83, 'Danh sách phiếu xuất', 'quan-ly-xuat-kho', 0, 0, 0, 0, 1, 0, 57, '', '?module=module-he-thong&action=quan-ly-xuat-kho', 1),
(86, 32, 'Mua X tặng Y', 'mua-x-tang-y', 1, 1, 1, 1, 0, 0, 5, '', '', 0),
(87, 86, 'Thêm khuyến mãi', 'mua-x-tang-y', 0, 0, 0, 0, 1, 0, 59, '', '?module=module-he-thong&action=mua-x-tang-y&them-moi=true', 1),
(88, 86, 'Danh sách khuyến mãi', 'mua-x-tang-y', 0, 0, 0, 0, 1, 0, 60, '', '?module=module-he-thong&action=mua-x-tang-y', 1),
(89, 29, 'Tùy chọn form', 'tuy-chon-form', 1, 1, 1, 1, 0, 0, 61, '', '?module=quan-ly-website&action=tuy-chon-form', 0),
(90, 0, 'Quản lý địa điểm', 'quan-ly-dia-diem', 1, 1, 1, 1, 0, 0, 62, '', '', 0),
(91, 90, 'Danh sách địa điểm', 'danh-sach-dia-diem', 1, 0, 1, 0, 0, 0, 63, '', '?module=quan-ly-dia-diem&action=danh-sach-dia-diem', 1),
(92, 34, 'Nhóm thành viên', 'nhom-thanh-vien', 1, 1, 1, 1, 0, 0, 47, '', '?module=quan-ly-tai-khoan&action=nhom-thanh-vien', 0),
(93, 92, 'Thêm nhóm thành viên', 'nhom-thanh-vien', 0, 0, 0, 0, 1, 0, 65, '', '?module=quan-ly-tai-khoan&action=nhom-thanh-vien&them-moi=true', 1),
(94, 92, 'Danh sách nhóm thành viên', 'nhom-thanh-vien', 0, 0, 0, 0, 1, 0, 66, '', '?module=quan-ly-tai-khoan&action=nhom-thanh-vien', 1),
(95, 29, 'Học viên đăng ký', 'hoc-vien-dang-ky', 1, 0, 1, 1, 0, 0, 67, '', '?module=quan-ly-website&action=hoc-vien-dang-ky', 0),
(96, 29, 'Form check', 'form-check', 1, 1, 1, 1, 0, 0, 68, '', '?module=quan-ly-website&action=form-check', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lh_online`
--

CREATE TABLE `lh_online` (
  `uip` varchar(150) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `sidd` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `timer` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `uid` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `lh_online`
--

INSERT INTO `lh_online` (`uip`, `sidd`, `timer`, `uid`) VALUES
('::1', 'c0e6be5ce2f76d529e86843510f57143', '1556853495', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lh_seo`
--

CREATE TABLE `lh_seo` (
  `id` int(11) NOT NULL,
  `seo_title_vi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description_vi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords_vi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title_cn` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `seo_description_cn` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `seo_keywords_cn` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `duongdantin` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `favico` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `robots` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tencongty_vi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai_vi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi_vi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotline_vi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_vi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tencongty_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotline_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tencongty_cn` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sodienthoai_cn` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `diachi_cn` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hotline_cn` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email_cn` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `seo_title_jp` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `seo_description_jp` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `seo_keywords_jp` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `diachi_jp` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hotline_jp` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email_jp` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tencongty_jp` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sodienthoai_jp` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `em_ip` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `em_taikhoan` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `em_pass` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `js_google_anilatic` text CHARACTER SET utf8,
  `khoa_website` text CHARACTER SET utf8,
  `is_khoasite` tinyint(4) NOT NULL DEFAULT '0',
  `chiet_khau_def` float NOT NULL DEFAULT '0',
  `tien_tich_luy` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lh_seo`
--

INSERT INTO `lh_seo` (`id`, `seo_title_vi`, `seo_description_vi`, `seo_keywords_vi`, `seo_title_en`, `seo_description_en`, `seo_keywords_en`, `seo_title_cn`, `seo_description_cn`, `seo_keywords_cn`, `duongdantin`, `logo`, `favico`, `robots`, `tencongty_vi`, `sodienthoai_vi`, `diachi_vi`, `hotline_vi`, `email_vi`, `tencongty_en`, `sodienthoai_en`, `diachi_en`, `hotline_en`, `email_en`, `tencongty_cn`, `sodienthoai_cn`, `diachi_cn`, `hotline_cn`, `email_cn`, `seo_title_jp`, `seo_description_jp`, `seo_keywords_jp`, `diachi_jp`, `hotline_jp`, `email_jp`, `tencongty_jp`, `sodienthoai_jp`, `em_ip`, `em_taikhoan`, `em_pass`, `js_google_anilatic`, `khoa_website`, `is_khoasite`, `chiet_khau_def`, `tien_tich_luy`) VALUES
(1, 'Công ty TNHH Cung ứng thuyền viên SCC', 'Công ty TNHH Cung ứng thuyền viên SCC', 'Công ty TNHH Cung ứng thuyền viên SCC', 'SCC Crew Supply Company Limited', 'SCC Crew Supply Company Limited', 'SCC Crew Supply Company Limited', '', '', '', 'datafiles/setone', '1553732785_02_big.jpg', '1553732785_08-TruongXuanRefugees3.jpg', 'User-agent: *\r\nDisallow: /nguoiquanly/', 'Công ty TNHH Cung ứng thuyền viên SCC', '028.38225277', '36 Nguyễn Thị Minh Khai, Phường ĐaKao, Quận 1, TP.HCM', '028.38225277', 'scc@vitranschart.com.vn', 'SCC Crew Supply Company Limited', '(028) 38422199', '36 Nguyen Thi Minh Khai, Da Kao Ward, District 1, Ho Chi Minh City', '0911 959 505', 'scc@vitranschart.com.vn', '', '', '', '', '', '', '', '', '', '', '', '', '', '112.213.89.161', 'no-reply@webdemo4.pavietnam.vn', 'qqhtV&lFs#RZ', '', '<p>Website đang cập nhật...</p>', 0, 5, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `lh_seo_name`
--

CREATE TABLE `lh_seo_name` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `noidung_vi` text,
  `icon` varchar(255) DEFAULT NULL,
  `lien_ket` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `noidung_en` text,
  `tenbaiviet_cn` text,
  `noidung_cn` text,
  `p1_cn` text,
  `opt` tinyint(1) NOT NULL DEFAULT '0',
  `p1_vi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `p1_en` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tenbaiviet_jp` varchar(255) DEFAULT NULL,
  `noidung_jp` text NOT NULL,
  `p1_jp` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lh_seo_name`
--

INSERT INTO `lh_seo_name` (`id`, `tenbaiviet_vi`, `noidung_vi`, `icon`, `lien_ket`, `tenbaiviet_en`, `noidung_en`, `tenbaiviet_cn`, `noidung_cn`, `p1_cn`, `opt`, `p1_vi`, `p1_en`, `tenbaiviet_jp`, `noidung_jp`, `p1_jp`) VALUES
(1, 'Lỗi 404 - Không Tìm Thấy Trang!', '<p>Ch&uacute;ng t&ocirc;i kh&ocirc;ng thể t&igrave;m thấy trang qu&yacute; kh&aacute;ch y&ecirc;u cầu hoặc trang y&ecirc;u cầu hiện tại kh&ocirc;ng c&oacute; sẵn. Nếu lỗi n&agrave;y xảy ra với mức độ thường xuy&ecirc;n, xin qu&yacute; kh&aacute;ch vui l&ograve;ng th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i biết về sự cố qu&yacute; kh&aacute;ch gặp, bằng c&aacute;ch gửi mail tới địa chỉ:&nbsp;<a href=\"mailto:scc@vitranschart.com.vn\">scc@vitranschart.com.vn</a></p>\r\n\r\n<p><b>C&ocirc;ng ty TNHH Cung ứng thuyền vi&ecirc;n SCC</b><strong>&nbsp;</strong>h&acirc;n hạnh được phục vụ qu&yacute; kh&aacute;ch!</p>', '1519956201_404-Slider-Anzeige.png', '', '404 error page Not Found!', '<p>We could not find the page you requested or the requested page is not currently available. If this error occurs on a regular basis, please inform us about the problem you are having, by sending an email to <a href=\"mailto:scc@vitranschart.com.vn\">scc@vitranschart.com.vn</a></p>\r\n\r\n<p><strong>SCC Crew Supply Company Limited&nbsp;</strong>is pleased to serve you!</p>', '', '', '', 1, '', '', '', '', ''),
(43, 'Giới thiệu SCC', '<p>Năm 1987 những thuyền vi&ecirc;n Vitranschart &ndash; những thuyền vi&ecirc;n đầu ti&ecirc;n của Việt Nam, đi l&agrave;m việc tr&ecirc;n t&agrave;u của chủ t&agrave;u nước ngo&agrave;i.</p>\r\n\r\n<p>Năm 1994 Vitranschart th&agrave;nh lập SCC để quản l&yacute; thuyền vi&ecirc;n đội t&agrave;u Vitranschart đồng thời mở rộng thị trường cho c&aacute;c chủ t&agrave;u trong v&agrave; ngo&agrave;i nước thu&ecirc; thuyền vi&ecirc;n.</p>', '1553065896_6.jpg', 'gioi-thieu/', 'Introducing SCC', '<p>In 1987 Vitranschart crew members - the first Vietnamese seafarers, went to work on foreign shipowners&#39; ships.</p>\r\n\r\n<p>In 1994 Vitranschart established SCC to manage the crew of Vitranschart fleet and expand the market for domestic and foreign ship owners to hire crew members.</p>\r\n\r\n<p>&nbsp;</p>', '', '', '', 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lh_slug`
--

CREATE TABLE `lh_slug` (
  `id` int(11) NOT NULL,
  `bang` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `id_bang` int(11) NOT NULL,
  `step` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lh_slug`
--

INSERT INTO `lh_slug` (`id`, `bang`, `slug`, `id_bang`, `step`) VALUES
(1, 'step', 'gioi-thieu', 1, 1),
(2, 'step', 'linh-vuc-hoat-dong', 2, 2),
(3, 'step', 'doi-ngu-lao-dong', 3, 3),
(4, 'step', 'co-so-vat-chat', 4, 4),
(5, 'step', 'khach-hang', 5, 5),
(6, 'step', 'hoat-dong-thuyen-vien', 6, 6),
(7, 'step', 'lien-he', 7, 7),
(8, 'step', 'tuyen-dung', 8, 8),
(9, 'baiviet', 'gioi-thieu-chung', 1, 1),
(10, 'baiviet', 'lich-su-hinh-thanh', 2, 1),
(11, 'baiviet', 'so-do-to-chuc', 3, 1),
(12, 'baiviet', 'bo-may-hoat-dong', 4, 1),
(13, 'baiviet', 'tau-hang-roi', 5, 2),
(14, 'baiviet', 'tau-bach-hoa', 6, 2),
(15, 'baiviet', 'tau-container', 7, 2),
(16, 'baiviet', 'tau-chuyen-dung-cho-xi-mang', 8, 2),
(17, 'baiviet', 'tau-hang-roi-handy-size', 9, 2),
(18, 'baiviet', 'co-so-vat-chat-18', 10, 4),
(19, 'baiviet', 'cong-ty-tnhh-cung-ung-thuyen-vien-scc', 11, 5),
(20, 'baiviet', 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-121521553066573', 12, 5),
(21, 'baiviet', 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-879201553066573', 13, 5),
(22, 'baiviet', 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-139021553066573', 14, 5),
(23, 'baiviet', 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-901011553066573', 15, 5),
(24, 'baiviet', 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-121111553066573', 16, 5),
(25, 'baiviet', 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-151971553066573', 17, 5),
(26, 'baiviet', 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-504881553066573', 18, 5),
(27, 'baiviet', 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-307881553066573', 19, 5),
(28, 'baiviet', 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-318851553066573', 20, 5),
(29, 'baiviet', 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-535881553066573', 21, 5),
(30, 'baiviet', 'cong-ty-tnhh-cung-ung-thuyen-vien-scc-cp-826651553066573', 22, 5),
(31, 'baiviet', 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi', 23, 6),
(32, 'baiviet', 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-233011553068587', 24, 6),
(33, 'baiviet', 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-466301553068587', 25, 6),
(34, 'baiviet', 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-584291553068587', 26, 6),
(35, 'baiviet', 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-651891553068587', 27, 6),
(36, 'baiviet', 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-608311553068587', 28, 6),
(37, 'baiviet', 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-614851553068587', 29, 6),
(38, 'baiviet', 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-333691553068587', 30, 6),
(39, 'baiviet', 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-525081553068587', 31, 6),
(40, 'baiviet', 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-815011553068587', 32, 6),
(41, 'baiviet', 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-577721553068587', 33, 6),
(42, 'baiviet', 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-886631553068587', 34, 6),
(43, 'baiviet', 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-858561553068587', 35, 6),
(44, 'baiviet', 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-150191553068587', 36, 6),
(45, 'baiviet', 'bien-hoa-4-phong-cach-cuc-sang-tao-chi-voi-mot-chiec-ao-so-mi-cp-962011553068587', 37, 6),
(47, 'baiviet', 'nguyen-thi-mai', 39, 8),
(48, 'baiviet', 'do-thanh-nhan', 40, 8),
(83, 'baiviet', 'nguyen-van-trung-cp-196361553069575', 75, 3),
(49, 'baiviet', 'tran-van-manh', 41, 8),
(73, 'baiviet', 'nguyen-van-trung-cp-416571553069575', 65, 3),
(74, 'baiviet', 'nguyen-van-trung-cp-834481553069575', 66, 3),
(75, 'baiviet', 'nguyen-van-trung-cp-749901553069575', 67, 3),
(76, 'baiviet', 'nguyen-van-trung-cp-821141553069575', 68, 3),
(77, 'baiviet', 'nguyen-van-trung-cp-666861553069575', 69, 3),
(78, 'baiviet', 'nguyen-van-trung-cp-797891553069575', 70, 3),
(79, 'baiviet', 'nguyen-van-trung-cp-735801553069575', 71, 3),
(80, 'baiviet', 'nguyen-van-trung-cp-520701553069575', 72, 3),
(81, 'baiviet', 'nguyen-van-trung-cp-715051553069575', 73, 3),
(82, 'baiviet', 'nguyen-van-trung-cp-146821553069575', 74, 3),
(72, 'baiviet', 'nguyen-van-trung-cp-483111553069506', 64, 3),
(84, 'baiviet', '2f2f5d057a21203eb617bda07c68121e', 76, 7),
(85, 'baiviet', 'b9269c92607d1de74eff446fbca28916', 77, 7),
(86, 'baiviet', 'b7af657f922b1088cb9a4267b3d14911', 78, 7);

-- --------------------------------------------------------

--
-- Table structure for table `lh_sponline`
--

CREATE TABLE `lh_sponline` (
  `id` int(11) NOT NULL,
  `support_name_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `support_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `contact_name_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT '0',
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt` int(11) NOT NULL DEFAULT '0',
  `ngaydang` int(11) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT '0',
  `showhi` tinyint(1) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duongdantin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lh_sponline`
--

INSERT INTO `lh_sponline` (`id`, `support_name_vi`, `support_name_en`, `contact_link`, `type`, `contact_name_vi`, `contact_name_en`, `phone`, `id_user`, `note`, `opt`, `ngaydang`, `catasort`, `showhi`, `email`, `duongdantin`, `icon`) VALUES
(18, 'Linh Nguyễn', 'Linh Nguyen', NULL, NULL, '', '', '0989 999 999', 5, '', 0, 1546242873, 10, 1, 'linhnguyen66@yahoo.com', NULL, NULL),
(4, 'Zalo', 'Zalo', NULL, NULL, '', '', '', 0, '', 0, 1546242170, 1, 1, 'linhnguyen66@yahoo.com', 'datafiles/setone', '1546394609_icon_zalo.png'),
(5, 'Viber', 'Viber', NULL, NULL, '', '', '', 0, '', 0, 1546242177, 2, 1, 'linhnguyen66@yahoo.com', 'datafiles/setone', '1546394609_icon_viber.png'),
(6, 'Skype', 'Skype', NULL, NULL, '', '', '', 0, '', 0, 1546242186, 3, 1, 'linhnguyen66@yahoo.com', 'datafiles/setone', '1546394609_icon_sky.png'),
(20, 'Linh Nguyễn', 'Linh Nguyen', NULL, NULL, '', '', '0989 999 999', 4, '', 0, 1546395124, 11, 1, 'linhnguyen66@yahoo.com', 'datafiles/setone', NULL),
(21, 'Linh Nguyễn', 'Linh Nguyen', NULL, NULL, '', '', '0989 999 999', 4, '', 0, 1546395128, 11, 1, 'linhnguyen66@yahoo.com', 'datafiles/setone', NULL),
(19, 'Linh Nguyễn', 'Linh Nguyen', NULL, NULL, '', '', '0989 999 999', 6, '', 0, 1546242918, 10, 1, 'linhnguyen66@yahoo.com', NULL, NULL),
(24, 'Linh Nguyễn', 'Linh Nguyen', NULL, NULL, '', '', '0989 999 999', 5, '', 0, 1546242870, 11, 1, 'linhnguyen66@yahoo.com', NULL, NULL),
(22, 'Linh Nguyễn', 'Linh Nguyen', NULL, NULL, NULL, NULL, '0989 999 999', 4, NULL, 0, 1546242836, 11, 1, 'linhnguyen66@yahoo.com', NULL, NULL),
(23, 'Linh Nguyễn', 'Linh Nguyen', NULL, NULL, '', '', '0989 999 999', 5, '', 0, 1546242867, 11, 1, 'linhnguyen66@yahoo.com', NULL, NULL),
(25, 'Linh Nguyễn', 'Linh Nguyen', NULL, NULL, NULL, NULL, '0989 999 999', 5, NULL, 0, 1546242850, 12, 1, 'linhnguyen66@yahoo.com', NULL, NULL),
(27, 'Linh Nguyễn', 'Linh Nguyen', NULL, NULL, '', '', '0989 999 999', 6, '', 0, 1546242915, 11, 1, 'linhnguyen66@yahoo.com', NULL, NULL),
(26, 'Linh Nguyễn', 'Linh Nguyen', NULL, NULL, NULL, NULL, '0989 999 999', 4, NULL, 0, 1546242832, 11, 1, 'linhnguyen66@yahoo.com', NULL, NULL),
(28, 'Linh Nguyễn', 'Linh Nguyen', NULL, NULL, '', '', '0989 999 999', 6, '', 0, 1546242912, 11, 1, 'linhnguyen66@yahoo.com', NULL, NULL),
(29, 'Linh Nguyễn', 'Linh Nguyen', NULL, NULL, NULL, NULL, '0989 999 999', 6, NULL, 0, 1546242893, 12, 1, 'linhnguyen66@yahoo.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lh_step`
--

CREATE TABLE `lh_step` (
  `id` int(11) NOT NULL,
  `tenbaiviet_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenbaiviet_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenbaiviet_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p1_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p1_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p1_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p2_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p2_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p2_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p3_vi` text COLLATE utf8_unicode_ci,
  `p3_en` text COLLATE utf8_unicode_ci,
  `p3_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidung_vi` text COLLATE utf8_unicode_ci,
  `noidung_en` text COLLATE utf8_unicode_ci,
  `noidung_cn` text COLLATE utf8_unicode_ci,
  `seo_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catasort` int(11) DEFAULT '0',
  `step` tinyint(4) NOT NULL DEFAULT '0',
  `ngaydang` int(11) NOT NULL DEFAULT '0',
  `duongdantin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_view` int(11) NOT NULL DEFAULT '0',
  `opt` tinyint(1) NOT NULL DEFAULT '0',
  `opt1` tinyint(1) NOT NULL DEFAULT '0',
  `showhi` tinyint(1) NOT NULL DEFAULT '1',
  `size_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_img_dm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_google` text COLLATE utf8_unicode_ci,
  `tenbaiviet_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p1_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p2_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p3_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidung_jp` text COLLATE utf8_unicode_ci,
  `seo_title_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lh_step`
--

INSERT INTO `lh_step` (`id`, `tenbaiviet_vi`, `tenbaiviet_en`, `tenbaiviet_cn`, `p1_vi`, `p1_en`, `p1_cn`, `p2_vi`, `p2_en`, `p2_cn`, `p3_vi`, `p3_en`, `p3_cn`, `noidung_vi`, `noidung_en`, `noidung_cn`, `seo_name`, `catasort`, `step`, `ngaydang`, `duongdantin`, `icon`, `seo_title_vi`, `seo_title_en`, `seo_title_cn`, `seo_description_vi`, `seo_description_en`, `seo_description_cn`, `seo_keywords_vi`, `seo_keywords_en`, `seo_keywords_cn`, `num_view`, `opt`, `opt1`, `showhi`, `size_img`, `size_img_dm`, `map_google`, `tenbaiviet_jp`, `p1_jp`, `p2_jp`, `p3_jp`, `noidung_jp`, `seo_title_jp`, `seo_description_jp`, `seo_keywords_jp`) VALUES
(1, 'Giới thiệu', 'Introduce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'gioi-thieu', 1, 1, 1553075497, 'datafiles/setone', '1553075497_1.jpg', 'Giới thiệu', 'Introduce', '', 'Giới thiệu', 'Introduce', '', 'Giới thiệu', 'Introduce', '', 0, 0, 0, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', ''),
(2, 'Lĩnh vực hoạt động', 'Field of activity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'linh-vuc-hoat-dong', 2, 1, 1553075505, 'datafiles/setone', '1553075505_2.jpg', 'Lĩnh vực hoạt động', 'Field of activity', '', 'Lĩnh vực hoạt động', 'Field of activity', '', 'Lĩnh vực hoạt động', 'Field of activity', '', 0, 0, 0, 1, '600x400', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', ''),
(3, 'Đội ngủ lao động', 'Working team', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'doi-ngu-lao-dong', 3, 31, 1553076078, 'datafiles/setone', '1553075511_3.jpg', 'Đội ngủ lao động', 'Working team', '', 'Đội ngủ lao động', 'Working team', '', 'Đội ngủ lao động', 'Working team', '', 12, 0, 0, 1, '300x300', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', ''),
(4, 'Cơ sở vật chất', 'Infrastructure', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'co-so-vat-chat', 4, 1, 1553075487, 'datafiles/setone', '1553075487_4.jpg', 'Cơ sở vật chất', 'Infrastructure', '', 'Cơ sở vật chất', 'Infrastructure', '', 'Cơ sở vật chất', 'Infrastructure', '', 0, 0, 0, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', ''),
(5, 'Khách hàng', 'Customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'khach-hang', 5, 13, 1553075524, 'datafiles/setone', '1553075524_5.jpg', 'Khách hàng', 'Customer', '', 'Khách hàng', 'Customer', '', 'Khách hàng', 'Customer', '', 14, 0, 0, 1, '300x210', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', ''),
(6, 'Hoạt động thuyền viên', 'Crew activities', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'hoat-dong-thuyen-vien', 6, 3, 1553075533, 'datafiles/setone', '1553075533_6.jpg', 'Hoạt động thuyền viên', 'Crew activities', '', 'Hoạt động thuyền viên', 'Crew activities', '', 'Hoạt động thuyền viên', 'Crew activities', '', 15, 0, 0, 1, '400x245', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', ''),
(7, 'Liên hệ', 'Contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'lien-he', 7, 5, 1553075544, 'datafiles/setone', '1553075544_7.jpg', 'Liên hệ', 'Contact', '', 'Liên hệ', 'Contact', '', 'Liên hệ', 'Contact', '', 0, 0, 0, 1, '', '', '10.784308, 106.699241', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(8, 'Tuyển dụng', 'Recruitment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'tuyen-dung', 8, 1, 1553075552, 'datafiles/setone', '1553075552_4.jpg', 'Tuyển dụng', 'Recruitment', '', 'Tuyển dụng', 'Recruitment', '', 'Tuyển dụng', 'Recruitment', '', 0, 0, 0, 1, '300x300', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lh_step_img`
--

CREATE TABLE `lh_step_img` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `p_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `p_note` text COLLATE utf8_unicode_ci NOT NULL,
  `color_id` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `duongdantin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'galagy'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lh_tinhnang`
--

CREATE TABLE `lh_tinhnang` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT '0',
  `showhi` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lh_tuychon_form`
--

CREATE TABLE `lh_tuychon_form` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `tenbaiviet_vi` varchar(255) DEFAULT NULL,
  `tenbaiviet_en` varchar(255) DEFAULT NULL,
  `waining_vi` varchar(255) DEFAULT NULL,
  `waining_en` varchar(255) DEFAULT NULL,
  `catasort` int(11) NOT NULL DEFAULT '0',
  `loai_hienthi` tinyint(4) NOT NULL DEFAULT '0',
  `tieu_bieu` tinyint(4) NOT NULL DEFAULT '0',
  `showhi` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lh_baiviet`
--
ALTER TABLE `lh_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_baiviet_img`
--
ALTER TABLE `lh_baiviet_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_baiviet_select_tinhnang`
--
ALTER TABLE `lh_baiviet_select_tinhnang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_baiviet_tinhnang`
--
ALTER TABLE `lh_baiviet_tinhnang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_banner`
--
ALTER TABLE `lh_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_banner_danhmuc`
--
ALTER TABLE `lh_banner_danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_clanguage`
--
ALTER TABLE `lh_clanguage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_counter`
--
ALTER TABLE `lh_counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_count_date`
--
ALTER TABLE `lh_count_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_danhmuc`
--
ALTER TABLE `lh_danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_danhmuc_img`
--
ALTER TABLE `lh_danhmuc_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_email_config`
--
ALTER TABLE `lh_email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_email_follow`
--
ALTER TABLE `lh_email_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_file_import_data`
--
ALTER TABLE `lh_file_import_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_form_danhmuc`
--
ALTER TABLE `lh_form_danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_form_danhmuc_nd`
--
ALTER TABLE `lh_form_danhmuc_nd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_form_lienhe`
--
ALTER TABLE `lh_form_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_lien_ket_nhanh`
--
ALTER TABLE `lh_lien_ket_nhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_members`
--
ALTER TABLE `lh_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tentruycap` (`tentruycap`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `active_subdomain` (`tentruycap`),
  ADD KEY `active_onedomain` (`tentruycap`);

--
-- Indexes for table `lh_members_log`
--
ALTER TABLE `lh_members_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_members_nhom`
--
ALTER TABLE `lh_members_nhom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_menu`
--
ALTER TABLE `lh_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_module_nhomtaikhoan`
--
ALTER TABLE `lh_module_nhomtaikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_module_page`
--
ALTER TABLE `lh_module_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_module_setting`
--
ALTER TABLE `lh_module_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_module_tinhnang`
--
ALTER TABLE `lh_module_tinhnang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_seo`
--
ALTER TABLE `lh_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_seo_name`
--
ALTER TABLE `lh_seo_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_slug`
--
ALTER TABLE `lh_slug`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `lh_sponline`
--
ALTER TABLE `lh_sponline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_step`
--
ALTER TABLE `lh_step`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_step_img`
--
ALTER TABLE `lh_step_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_tinhnang`
--
ALTER TABLE `lh_tinhnang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lh_tuychon_form`
--
ALTER TABLE `lh_tuychon_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lh_baiviet`
--
ALTER TABLE `lh_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `lh_baiviet_img`
--
ALTER TABLE `lh_baiviet_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_baiviet_select_tinhnang`
--
ALTER TABLE `lh_baiviet_select_tinhnang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_baiviet_tinhnang`
--
ALTER TABLE `lh_baiviet_tinhnang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_banner`
--
ALTER TABLE `lh_banner`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lh_banner_danhmuc`
--
ALTER TABLE `lh_banner_danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `lh_clanguage`
--
ALTER TABLE `lh_clanguage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1043;

--
-- AUTO_INCREMENT for table `lh_counter`
--
ALTER TABLE `lh_counter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lh_count_date`
--
ALTER TABLE `lh_count_date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lh_danhmuc`
--
ALTER TABLE `lh_danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_danhmuc_img`
--
ALTER TABLE `lh_danhmuc_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `lh_email_config`
--
ALTER TABLE `lh_email_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lh_email_follow`
--
ALTER TABLE `lh_email_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_file_import_data`
--
ALTER TABLE `lh_file_import_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_form_danhmuc`
--
ALTER TABLE `lh_form_danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_form_danhmuc_nd`
--
ALTER TABLE `lh_form_danhmuc_nd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_form_lienhe`
--
ALTER TABLE `lh_form_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lh_lien_ket_nhanh`
--
ALTER TABLE `lh_lien_ket_nhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_members`
--
ALTER TABLE `lh_members`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `lh_members_log`
--
ALTER TABLE `lh_members_log`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lh_members_nhom`
--
ALTER TABLE `lh_members_nhom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lh_menu`
--
ALTER TABLE `lh_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lh_module_nhomtaikhoan`
--
ALTER TABLE `lh_module_nhomtaikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lh_module_page`
--
ALTER TABLE `lh_module_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `lh_module_setting`
--
ALTER TABLE `lh_module_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `lh_module_tinhnang`
--
ALTER TABLE `lh_module_tinhnang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `lh_seo`
--
ALTER TABLE `lh_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lh_seo_name`
--
ALTER TABLE `lh_seo_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `lh_slug`
--
ALTER TABLE `lh_slug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `lh_sponline`
--
ALTER TABLE `lh_sponline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `lh_step`
--
ALTER TABLE `lh_step`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lh_step_img`
--
ALTER TABLE `lh_step_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_tinhnang`
--
ALTER TABLE `lh_tinhnang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lh_tuychon_form`
--
ALTER TABLE `lh_tuychon_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
