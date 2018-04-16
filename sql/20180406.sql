-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- ホスト: localhost:3306
-- 生成日時: 2018 年 4 月 05 日 12:14
-- サーバのバージョン: 5.6.39-cll-lve
-- PHP のバージョン: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- データベース: `memo_portfolio`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '周孝威', 'hoshizora19931120@hotmail.com', '$2y$10$TuG6pK/3w1GrBHjaCKXmLuudIAFFRmcqb7JSYVgaNQ7yjAAhWcoFy', 'q7nr3Ws6VSMMoODSJQGa1U9wzPjMCTaQ0IVxdSkco5Gj7oSmASByUEZ0jfmS', '2018-04-05 08:52:56', '2018-04-05 08:52:56');

-- --------------------------------------------------------

--
-- テーブルの構造 `works`
--

CREATE TABLE IF NOT EXISTS `works` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `works`
--

INSERT INTO `works` (`id`, `title`, `date`, `content`, `full_text`, `created_at`, `updated_at`) VALUES
(1, '火車站查詢系統', '2014.02 - 2014.06', '<p>　　以原生 PHP 5 實作的火車站査詢平台，是大學二年級課程「電子計算機程式寫作」的作業之一。</p>\r\n\r\n<p><a href="http://memo.epoch.tw/projects/station/" target="_blank"><img alt="火車站查詢系統" src="http://memo.epoch.tw/portfolio/public/img/1.jpg" style="width:100%" title="火車站查詢系統" /></a></p>', 'title:火車站查詢系統;date:2014.02 - 2014.06;content:<p>　　以原生 PHP 5 實作的火車站査詢平台，是大學二年級課程「電子計算機程式寫作」的作業之一。</p>\r\n\r\n<p><a href="http://memo.epoch.tw/projects/station/" target="_blank"><img alt="火車站查詢系統" src="http://memo.epoch.tw/portfolio/public/img/1.jpg" style="width:100%" title="火車站查詢系統" /></a></p>;資料庫,網頁,PHP,HTML,CSS,2014;', '2018-04-02 18:43:45', '2018-04-06 00:10:16'),
(2, '周孝威報告集（2012 - 2017）', '2014.06 - 2017.06', '<p>　　以原生 PHP 7 實作的個人數位典藏平台，收錄大學 5 年的學習成果。</p>\r\n\r\n<p><a href="http://memo.epoch.tw/collection/" target="_blank"><img alt="周孝威報告集" src="http://memo.epoch.tw/portfolio/public/img/2.jpg" style="width:100%" title="周孝威報告集" /></a></p>', 'title:周孝威報告集（2012 - 2017）;date:2014.06 - 2017.06;content:<p>　　以原生 PHP 7 實作的個人數位典藏平台，收錄大學 5 年的學習成果。</p>\r\n\r\n<p><a href="http://memo.epoch.tw/collection/" target="_blank"><img alt="周孝威報告集" src="http://memo.epoch.tw/portfolio/public/img/2.jpg" style="width:100%" title="周孝威報告集" /></a></p>;開放近用,資料庫,網頁,數位典藏,大學報告,PHP,HTML,CSS,cPanel,2017,2016,2015,2014,2013,2012;', '2018-04-02 19:01:01', '2018-04-06 01:11:40'),
(3, '卡通動畫訂購系統', '2014.09 - 2015.01', '<p>　　以原生 PHP 5 實作的卡通動畫訂購系統，是三年級課程「資料庫概論」的作業之一。</p>\r\n\r\n<p>　　有前台與後台系統。</p>\r\n\r\n<p><a href="http://memo.epoch.tw/projects/cartoon/" target="_blank"><img alt="卡通動畫訂購系統" src="http://memo.epoch.tw/portfolio/public/img/3.jpg" style="width:100%" title="卡通動畫訂購系統" /></a></p>', 'title:卡通動畫訂購系統;date:2014.09 - 2015.01;content:<p>　　以原生 PHP 5 實作的卡通動畫訂購系統，是三年級課程「資料庫概論」的作業之一。</p>\r\n\r\n<p>　　有前台與後台系統。</p>\r\n\r\n<p><a href="http://memo.epoch.tw/projects/cartoon/" target="_blank"><img alt="卡通動畫訂購系統" src="http://memo.epoch.tw/portfolio/public/img/3.jpg" style="width:100%" title="卡通動畫訂購系統" /></a></p>;資料庫,網頁,PHP,HTML,CSS,2015,2014;', '2018-04-02 19:34:02', '2018-04-06 00:52:39'),
(4, '竹北高中動畫社網站', '2016.04', '<p>　　以 Wordpress 架設的社團網站，供高中學弟妹使用。</p>\r\n\r\n<p>　　有前台與後台系統。</p>\r\n\r\n<p><a href="http://cpac.epoch.tw/" target="_blank" title="竹北高中動畫社官方網站"><img alt="竹北高中動畫社官方網站" src="http://memo.epoch.tw/portfolio/public/img/4.jpg" style="width:100%" title="竹北高中動畫社官方網站" /></a></p>', 'title:竹北高中動畫社網站;date:2016.04;content:<p>　　以 Wordpress 架設的社團網站，供高中學弟妹使用。</p>\r\n\r\n<p>　　有前台與後台系統。</p>\r\n\r\n<p><a href="http://cpac.epoch.tw/" target="_blank" title="竹北高中動畫社官方網站"><img alt="竹北高中動畫社官方網站" src="http://memo.epoch.tw/portfolio/public/img/4.jpg" style="width:100%" title="竹北高中動畫社官方網站" /></a></p>;資料庫,網頁,Wordpress,cPanel,2016;', '2018-04-02 19:58:08', '2018-04-06 00:52:52'),
(5, '竹北高中動畫社線上公用目錄系統', '2017.04', '<p>　　以原生 PHP 7 實作的線上公用目錄系統，供學弟妹查詢社團藏書使用。</p>\r\n\r\n<p>　　有前台與後台系統。</p>\r\n\r\n<p><a href="http://cpac.epoch.tw/opac/" target="_blank"><img alt="竹北高中動畫社線上公用目錄系統" src="http://memo.epoch.tw/portfolio/public/img/5.jpg" style="width:100%" title="竹北高中動畫社線上公用目錄系統" /></a></p>', 'title:竹北高中動畫社線上公用目錄系統;date:2017.04;content:<p>　　以原生 PHP 7 實作的線上公用目錄系統，供學弟妹查詢社團藏書使用。</p>\r\n\r\n<p>　　有前台與後台系統。</p>\r\n\r\n<p><a href="http://cpac.epoch.tw/opac/" target="_blank"><img alt="竹北高中動畫社線上公用目錄系統" src="http://memo.epoch.tw/portfolio/public/img/5.jpg" style="width:100%" title="竹北高中動畫社線上公用目錄系統" /></a></p>;都柏林核心集,資料庫,網頁,PHP,OPAC,HTML,CSS,cPanel,2017;', '2018-04-02 20:48:33', '2018-04-06 00:50:32'),
(6, '淡江大學課程評價系統', '2017.01', '<p>　　以原生 PHP 7 實作的課程評價系統，供同學對學習課程進行評價、討論使用。</p>\r\n\r\n<p><a href="http://ucourse.epoch.tw/" target="_blank"><img alt="淡江大學課程評價系統" src="http://memo.epoch.tw/portfolio/public/img/6.jpg" style="width:100%" title="淡江大學課程評價系統" /></a></p>', 'title:淡江大學課程評價系統;date:2017.01;content:<p>　　以原生 PHP 7 實作的課程評價系統，供同學對學習課程進行評價、討論使用。</p>\r\n\r\n<p><a href="http://ucourse.epoch.tw/" target="_blank"><img alt="淡江大學課程評價系統" src="http://memo.epoch.tw/portfolio/public/img/6.jpg" style="width:100%" title="淡江大學課程評價系統" /></a></p>;資料庫,網頁,PHP,HTML,CSS,cPanel,2017;', '2018-04-02 21:01:04', '2018-04-06 00:15:34'),
(7, '便當訂購系統', '2017.09', '<p>　　以原生 PHP 7 實作的便當訂購系統，供同僚於服役期間訂購便當使用。</p>\r\n\r\n<p>　　有前台與後台系統。</p>\r\n\r\n<p><a href="http://memo.epoch.tw/projects/bento/" target="_blank"><img alt="國史館便當訂購系統" src="http://memo.epoch.tw/portfolio/public/img/7.jpg" style="width:100%" title="國史館便當訂購系統" /></a></p>', 'title:便當訂購系統;date:2017.09;content:<p>　　以原生 PHP 7 實作的便當訂購系統，供同僚於服役期間訂購便當使用。</p>\r\n\r\n<p>　　有前台與後台系統。</p>\r\n\r\n<p><a href="http://memo.epoch.tw/projects/bento/" target="_blank"><img alt="國史館便當訂購系統" src="http://memo.epoch.tw/portfolio/public/img/7.jpg" style="width:100%" title="國史館便當訂購系統" /></a></p>;資料庫,網頁,PHP,HTML,CSS,cPanel,2017;', '2018-04-02 21:41:35', '2018-04-06 00:49:24'),
(8, '作業上傳平台', '2017.10', '<p><span style="background-color:#ffffff; color:#333333; font-family:Arial,">　　以原生 PHP 7 實作的作業上傳平台，供學弟於擔任助教期間發布、下載、批改作業使用。</span></p>\r\n\r\n<p><span style="background-color:#ffffff; color:#333333; font-family:Arial,">　　有前台與後台系統。</span></p>\r\n\r\n<p><a href="http://memo.epoch.tw/projects/uploader/" target="_blank"><img alt="作業上傳平台" src="http://memo.epoch.tw/portfolio/public/img/8.jpg" style="width:100%" title="作業上傳平台" /></a></p>', 'title:作業上傳平台;date:2017.10;content:<p><span style="background-color:#ffffff; color:#333333; font-family:Arial,">　　以原生 PHP 7 實作的作業上傳平台，供學弟於擔任助教期間發布、下載、批改作業使用。</span></p>\r\n\r\n<p><span style="background-color:#ffffff; color:#333333; font-family:Arial,">　　有前台與後台系統。</span></p>\r\n\r\n<p><a href="http://memo.epoch.tw/projects/uploader/" target="_blank"><img alt="作業上傳平台" src="http://memo.epoch.tw/portfolio/public/img/8.jpg" style="width:100%" title="作業上傳平台" /></a></p>;資料庫,網頁,PHP,HTML,CSS,cPanel,Bootstrap,2017;', '2018-04-02 22:17:22', '2018-04-06 00:48:08'),
(9, 'Omeka', '2018.01', '<p>　　以 Omeka 架設的個人數位典藏平台。</p>\r\n\r\n<p>　　有前台與後台系統。</p>\r\n\r\n<p><a href="http://memo.epoch.tw/omeka" target="_blank"><img alt="大學報告集（Omeka）" src="http://memo.epoch.tw/portfolio/public/img/9.jpg" style="width:100%" title="大學報告集（Omeka）" /></a></p>', 'title:Omeka;date:2018.01;content:<p>　　以 Omeka 架設的個人數位典藏平台。</p>\r\n\r\n<p>　　有前台與後台系統。</p>\r\n\r\n<p><a href="http://memo.epoch.tw/omeka" target="_blank"><img alt="大學報告集（Omeka）" src="http://memo.epoch.tw/portfolio/public/img/9.jpg" style="width:100%" title="大學報告集（Omeka）" /></a></p>;開放近用,都柏林核心集,資料庫,網頁,數位典藏,大學報告,PHP,Omeka,HTML,cPanel,2018;', '2018-04-03 01:41:08', '2018-04-06 00:47:50'),
(10, '廣太洋酒網站', '2018.01 - 2018.03', '<p>　　以 Laravel 5.5 及 Bootstrap 4 實作的葡萄酒目錄網站。</p>\r\n\r\n<p>　　有前台與後台系統。</p>\r\n\r\n<p><a href="http://kuntai.epoch.tw/" target="_blank"><img alt="廣太洋酒" src="http://memo.epoch.tw/portfolio/public/img/10.jpg" style="width:100%" title="廣太洋酒" /></a></p>', 'title:廣太洋酒網站;date:2018.01 - 2018.03;content:<p>　　以 Laravel 5.5 及 Bootstrap 4 實作的葡萄酒目錄網站。</p>\r\n\r\n<p>　　有前台與後台系統。</p>\r\n\r\n<p><a href="http://kuntai.epoch.tw/" target="_blank"><img alt="廣太洋酒" src="http://memo.epoch.tw/portfolio/public/img/10.jpg" style="width:100%" title="廣太洋酒" /></a></p>;資料庫,網頁,Sass,PHP,Laravel,jQuery,JavaScript,HTML,CSS,cPanel,Bootstrap,2018;', '2018-04-03 02:33:35', '2018-04-06 00:47:32'),
(11, '癌症索引典', '2014.09 - 2015.01', '<p>　　以 HTML 及 InDesign 實作的圖形索引典，是三年級課程「索引及摘要」的作業之一。</p>\r\n\r\n<p><a href="http://memo.epoch.tw/projects/cancer/" target="_blank"><img alt="癌症索引典" src="http://memo.epoch.tw/portfolio/public/img/11.jpg" style="width:100%" title="癌症索引典" /></a></p>', 'title:癌症索引典;date:2014.09 - 2015.01;content:<p>　　以 HTML 及 InDesign 實作的圖形索引典，是三年級課程「索引及摘要」的作業之一。</p>\r\n\r\n<p><a href="http://memo.epoch.tw/projects/cancer/" target="_blank"><img alt="癌症索引典" src="http://memo.epoch.tw/portfolio/public/img/11.jpg" style="width:100%" title="癌症索引典" /></a></p>;電子書,資料庫,網頁,索引典,InDesign,HTML,CSS,2015,2014;', '2018-04-03 02:55:38', '2018-04-06 00:12:09'),
(12, '國史館臺北閱覽室平面圖', '2018.01', '<p>　　使用 InDesign 製作的平面圖。</p>\r\n\r\n<p style="text-align:center">印刷版（面西）</p>\r\n\r\n<p><img alt="國史館臺北閱覽室平面圖（印刷）（面西）" src="http://memo.epoch.tw/portfolio/public/img/12-1.jpg" style="width:100%" title="國史館臺北閱覽室平面圖（印刷）（面西）" /></p>\r\n\r\n<p style="text-align:center">印刷版（面南）</p>\r\n\r\n<p><img alt="國史館臺北閱覽室平面圖（印刷）（面南）" src="http://memo.epoch.tw/portfolio/public/img/12-2.jpg" style="width:100%" title="國史館臺北閱覽室平面圖（印刷）（面南）" /></p>\r\n\r\n<p style="text-align:center">網頁版（面北）</p>\r\n\r\n<p><img alt="國史館臺北閱覽室平面圖（網頁）（面北）" src="http://memo.epoch.tw/portfolio/public/img/12-3.jpg" style="width:100%" title="國史館臺北閱覽室平面圖（網頁）（面北）" /></p>\r\n\r\n<p style="text-align:center">網頁版（面西）</p>\r\n\r\n<p><img alt="國史館臺北閱覽室平面圖（網頁）（面西）" src="http://memo.epoch.tw/portfolio/public/img/12-4.jpg" style="width:100%" title="國史館臺北閱覽室平面圖（網頁）（面西）" /></p>', 'title:國史館臺北閱覽室平面圖;date:2018.01;content:<p>　　使用 InDesign 製作的平面圖。</p>\r\n\r\n<p style="text-align:center">印刷版（面西）</p>\r\n\r\n<p><img alt="國史館臺北閱覽室平面圖（印刷）（面西）" src="http://memo.epoch.tw/portfolio/public/img/12-1.jpg" style="width:100%" title="國史館臺北閱覽室平面圖（印刷）（面西）" /></p>\r\n\r\n<p style="text-align:center">印刷版（面南）</p>\r\n\r\n<p><img alt="國史館臺北閱覽室平面圖（印刷）（面南）" src="http://memo.epoch.tw/portfolio/public/img/12-2.jpg" style="width:100%" title="國史館臺北閱覽室平面圖（印刷）（面南）" /></p>\r\n\r\n<p style="text-align:center">網頁版（面北）</p>\r\n\r\n<p><img alt="國史館臺北閱覽室平面圖（網頁）（面北）" src="http://memo.epoch.tw/portfolio/public/img/12-3.jpg" style="width:100%" title="國史館臺北閱覽室平面圖（網頁）（面北）" /></p>\r\n\r\n<p style="text-align:center">網頁版（面西）</p>\r\n\r\n<p><img alt="國史館臺北閱覽室平面圖（網頁）（面西）" src="http://memo.epoch.tw/portfolio/public/img/12-4.jpg" style="width:100%" title="國史館臺北閱覽室平面圖（網頁）（面西）" /></p>;排版,平面圖,印刷,InDesign;', '2018-04-03 05:26:18', '2018-04-06 00:56:55'),
(13, '國史館影片光碟封面', '2018.03', '<p>　　使用 InDesign 製作的影片光碟封面。</p>\r\n\r\n<p><img alt="國史館光碟封面" src="http://memo.epoch.tw/portfolio/public/img/13.jpg" style="width:100%" title="國史館光碟封面" /></p>', 'title:國史館影片光碟封面;date:2018.03;content:<p>　　使用 InDesign 製作的影片光碟封面。</p>\r\n\r\n<p><img alt="國史館光碟封面" src="http://memo.epoch.tw/portfolio/public/img/13.jpg" style="width:100%" title="國史館光碟封面" /></p>;排版,印刷,InDesign;', '2018-04-03 05:36:27', '2018-04-06 00:41:39');

-- --------------------------------------------------------

--
-- テーブルの構造 `work_tags`
--

CREATE TABLE IF NOT EXISTS `work_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=616 ;

--
-- テーブルのデータのダンプ `work_tags`
--

INSERT INTO `work_tags` (`id`, `name`, `work_id`, `created_at`, `updated_at`) VALUES
(336, '網頁', 1, NULL, NULL),
(337, '資料庫', 1, NULL, NULL),
(338, 'HTML', 1, NULL, NULL),
(339, 'PHP', 1, NULL, NULL),
(340, 'CSS', 1, NULL, NULL),
(341, '2014', 1, NULL, NULL),
(342, '網頁', 2, NULL, NULL),
(343, '資料庫', 2, NULL, NULL),
(344, 'HTML', 2, NULL, NULL),
(345, 'PHP', 2, NULL, NULL),
(346, 'CSS', 2, NULL, NULL),
(347, 'cPanel', 2, NULL, NULL),
(348, '2014', 2, NULL, NULL),
(349, '2015', 2, NULL, NULL),
(350, '2016', 2, NULL, NULL),
(351, '2017', 2, NULL, NULL),
(352, '數位典藏', 2, NULL, NULL),
(353, '開放近用', 2, NULL, NULL),
(366, '網頁', 6, NULL, NULL),
(367, '資料庫', 6, NULL, NULL),
(368, 'PHP', 6, NULL, NULL),
(369, 'HTML', 6, NULL, NULL),
(370, 'CSS', 6, NULL, NULL),
(371, 'cPanel', 6, NULL, NULL),
(372, '2017', 6, NULL, NULL),
(373, '網頁', 5, NULL, NULL),
(374, '資料庫', 5, NULL, NULL),
(375, 'HTML', 5, NULL, NULL),
(376, 'PHP', 5, NULL, NULL),
(377, 'CSS', 5, NULL, NULL),
(378, 'cPanel', 5, NULL, NULL),
(379, 'OPAC', 5, NULL, NULL),
(380, '2017', 5, NULL, NULL),
(381, '網頁', 7, NULL, NULL),
(382, '資料庫', 7, NULL, NULL),
(383, 'HTML', 7, NULL, NULL),
(384, 'PHP', 7, NULL, NULL),
(385, 'CSS', 7, NULL, NULL),
(386, 'cPanel', 7, NULL, NULL),
(387, '2017', 7, NULL, NULL),
(388, '網頁', 8, NULL, NULL),
(389, '資料庫', 8, NULL, NULL),
(390, 'HTML', 8, NULL, NULL),
(391, 'PHP', 8, NULL, NULL),
(392, 'CSS', 8, NULL, NULL),
(393, 'cPanel', 8, NULL, NULL),
(394, '2017', 8, NULL, NULL),
(395, '網頁', 4, NULL, NULL),
(396, '資料庫', 4, NULL, NULL),
(397, 'Wordpress', 4, NULL, NULL),
(398, 'cPanel', 4, NULL, NULL),
(399, '2016', 4, NULL, NULL),
(439, '網頁', 3, NULL, NULL),
(440, '資料庫', 3, NULL, NULL),
(441, 'HTML', 3, NULL, NULL),
(442, 'PHP', 3, NULL, NULL),
(443, 'CSS', 3, NULL, NULL),
(444, '2014', 3, NULL, NULL),
(445, '2015', 3, NULL, NULL),
(482, '網頁', 10, NULL, NULL),
(483, '資料庫', 10, NULL, NULL),
(484, 'HTML', 10, NULL, NULL),
(485, 'PHP', 10, NULL, NULL),
(486, 'Laravel', 10, NULL, NULL),
(487, 'Bootstrap', 10, NULL, NULL),
(488, 'CSS', 10, NULL, NULL),
(489, 'Sass', 10, NULL, NULL),
(490, 'JavaScript', 10, NULL, NULL),
(491, 'jQuery', 10, NULL, NULL),
(492, 'cPanel', 10, NULL, NULL),
(493, '2018', 10, NULL, NULL),
(534, '電子書', 11, NULL, NULL),
(535, '資料庫', 11, NULL, NULL),
(536, '網頁', 11, NULL, NULL),
(537, '索引典', 11, NULL, NULL),
(538, 'InDesign', 11, NULL, NULL),
(539, 'HTML', 11, NULL, NULL),
(540, 'CSS', 11, NULL, NULL),
(541, '2015', 11, NULL, NULL),
(542, '2014', 11, NULL, NULL),
(543, '開放近用', 9, NULL, NULL),
(544, '資料庫', 9, NULL, NULL),
(545, '網頁', 9, NULL, NULL),
(546, '數位典藏', 9, NULL, NULL),
(547, 'PHP', 9, NULL, NULL),
(548, 'Omeka', 9, NULL, NULL),
(549, 'HTML', 9, NULL, NULL),
(550, 'cPanel', 9, NULL, NULL),
(551, '2018', 9, NULL, NULL),
(601, '排版', 13, NULL, NULL),
(602, '印刷', 13, NULL, NULL),
(603, 'InDesign', 13, NULL, NULL),
(604, '排版', 12, NULL, NULL),
(605, '印刷', 12, NULL, NULL),
(606, '平面圖', 12, NULL, NULL),
(607, 'InDesign', 12, NULL, NULL),
(608, 'Bootstrap', 8, NULL, NULL),
(609, '都柏林核心集', 5, NULL, NULL),
(611, '都柏林核心集', 9, NULL, NULL),
(612, '大學報告', 2, NULL, NULL),
(613, '大學報告', 9, NULL, NULL),
(614, '2013', 2, NULL, NULL),
(615, '2012', 2, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
