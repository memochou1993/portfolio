-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： mysql
-- 產生時間： 2021 年 05 月 04 日 15:01
-- 伺服器版本： 8.0.22
-- PHP 版本： 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `portfolio`
--

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_01_162556_create_works_table', 1),
(4, '2018_04_01_192218_create_work_tags_table', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '周孝威', 'hoshizora19931120@hotmail.com', '$2y$10$TuG6pK/3w1GrBHjaCKXmLuudIAFFRmcqb7JSYVgaNQ7yjAAhWcoFy', 'suOVfCV2P35aUUWaR2rSXkGAmUVKDTLiMeJPMAFZKLWDXRFeTuZSP175qRhL', '2018-04-05 08:52:56', '2018-04-05 08:52:56');

-- --------------------------------------------------------

--
-- 資料表結構 `works`
--

CREATE TABLE `works` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `begin_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `works`
--

INSERT INTO `works` (`id`, `title`, `begin_date`, `end_date`, `content`, `full_text`, `created_at`, `updated_at`) VALUES
(1, '火車站查詢系統', '2014-02', '2014-06', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以&nbsp;PHP 5 實作的火車站查詢系統，是淡江大學資訊與圖書館學系二年級課程「電子計算機程式寫作」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>Image Map 瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>免登入服務</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及程式設計。</p>\r\n\r\n<p><img alt=\"火車站查詢系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/1.jpg\" style=\"width:100%\" title=\"火車站查詢系統\" /></p>', 'title:火車站查詢系統;begin_date:2014.02;end_date:2014.06;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以&nbsp;PHP 5 實作的火車站查詢系統，是淡江大學資訊與圖書館學系二年級課程「電子計算機程式寫作」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>Image Map 瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>免登入服務</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及程式設計。</p>\r\n\r\n<p><img alt=\"火車站查詢系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/1.jpg\" style=\"width:100%\" title=\"火車站查詢系統\" /></p>;tag:資料庫,網頁,PHP,MySQL,Image Map,HTML,CSS,2014;', '2018-04-02 18:43:45', '2021-05-04 14:28:06'),
(2, '周孝威報告集（2012 - 2017）', '2017-06', '2017-06', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以&nbsp;PHP 7 實作的個人數位典藏平台，收錄淡江大學資訊與圖書館學系 4 年，及日本國立山口大學 1&nbsp;年的學習成果。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>收錄完整</li>\r\n	<li>全文下載</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>標記分類</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/archive\" target=\"_blank\">archive</a></p>\r\n\r\n<p><img alt=\"周孝威報告集（2012 - 2017）\" src=\"http://portfolio.epoch.tw/images/screenshots/original/2.jpg\" style=\"width:100%\" title=\"周孝威報告集（2012 - 2017）\" /></p>', 'title:周孝威報告集（2012 - 2017）;begin_date:2017.06;end_date:2017.06;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以&nbsp;PHP 7 實作的個人數位典藏平台，收錄淡江大學資訊與圖書館學系 4 年，及日本國立山口大學 1&nbsp;年的學習成果。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>收錄完整</li>\r\n	<li>全文下載</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>標記分類</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/archive\" target=\"_blank\">archive</a></p>\r\n\r\n<p><img alt=\"周孝威報告集（2012 - 2017）\" src=\"http://portfolio.epoch.tw/images/screenshots/original/2.jpg\" style=\"width:100%\" title=\"周孝威報告集（2012 - 2017）\" /></p>;tag:資料庫,網頁,數位典藏,報告集,PHP,MySQL,HTML,CSS,2017;', '2018-04-02 19:01:01', '2021-05-04 14:33:13'),
(3, '卡通動畫訂購系統', '2014-09', '2015-01', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以&nbsp;PHP 5 實作的卡通動畫訂購系統，是淡江大學資訊與圖書館學系三年級課程「資料庫概論」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>登入驗證、權限管理</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>熱門檢索詞</li>\r\n	<li>留言版</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及程式設計。</p>\r\n\r\n<p><img alt=\"卡通動畫訂購系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/3.jpg\" style=\"width:100%\" title=\"卡通動畫訂購系統\" /></p>', 'title:卡通動畫訂購系統;begin_date:2014.09;end_date:2015.01;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以&nbsp;PHP 5 實作的卡通動畫訂購系統，是淡江大學資訊與圖書館學系三年級課程「資料庫概論」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>登入驗證、權限管理</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>熱門檢索詞</li>\r\n	<li>留言版</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及程式設計。</p>\r\n\r\n<p><img alt=\"卡通動畫訂購系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/3.jpg\" style=\"width:100%\" title=\"卡通動畫訂購系統\" /></p>;tag:資料庫,網頁,PHP,MySQL,HTML,CSS,2015,2014;', '2018-04-02 19:34:02', '2021-05-04 14:28:27'),
(4, '竹北高中動畫社網站', '2016-04', '2016-04', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Wordpress 架設的社團網站，供高中學弟妹使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>響應式網頁</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索</li>\r\n	<li>登入驗證、權限管理</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>留言版</li>\r\n	<li>發信</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><img alt=\"竹北高中動畫社官方網站\" src=\"http://portfolio.epoch.tw/images/screenshots/original/4.jpg\" style=\"width:100%\" title=\"竹北高中動畫社官方網站\" /></p>', 'title:竹北高中動畫社網站;begin_date:2016.04;end_date:2016.04;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Wordpress 架設的社團網站，供高中學弟妹使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>響應式網頁</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索</li>\r\n	<li>登入驗證、權限管理</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>留言版</li>\r\n	<li>發信</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><img alt=\"竹北高中動畫社官方網站\" src=\"http://portfolio.epoch.tw/images/screenshots/original/4.jpg\" style=\"width:100%\" title=\"竹北高中動畫社官方網站\" /></p>;tag:響應式網頁,資料庫,網頁,Wordpress,MySQL,Google Analytics,2016;', '2018-04-02 19:58:08', '2021-05-04 14:29:23'),
(5, '竹北高中動畫社線上公用目錄系統', '2017-04', '2017-04', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以&nbsp;PHP 7 實作的線上公用目錄系統，供學弟妹查詢社團藏書使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>後分類</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>熱門檢索詞</li>\r\n	<li>Dublin Core 資料欄位</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>【前台】</strong></p>\r\n\r\n<p><img alt=\"竹北高中動畫社線上公用目錄系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/5.jpg\" style=\"width:100%\" title=\"竹北高中動畫社線上公用目錄系統\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台：詳細編目】</strong></p>\r\n\r\n<p><img alt=\"竹北高中動畫社線上公用目錄系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/5-2.jpg\" style=\"width:100%\" title=\"竹北高中動畫社線上公用目錄系統\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台：簡易編目】</strong></p>\r\n\r\n<p><img alt=\"竹北高中動畫社線上公用目錄系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/5-3.jpg\" style=\"width:100%\" title=\"竹北高中動畫社線上公用目錄系統\" /></p>', 'title:竹北高中動畫社線上公用目錄系統;begin_date:2017.04;end_date:2017.04;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以&nbsp;PHP 7 實作的線上公用目錄系統，供學弟妹查詢社團藏書使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>後分類</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>熱門檢索詞</li>\r\n	<li>Dublin Core 資料欄位</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>【前台】</strong></p>\r\n\r\n<p><img alt=\"竹北高中動畫社線上公用目錄系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/5.jpg\" style=\"width:100%\" title=\"竹北高中動畫社線上公用目錄系統\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台：詳細編目】</strong></p>\r\n\r\n<p><img alt=\"竹北高中動畫社線上公用目錄系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/5-2.jpg\" style=\"width:100%\" title=\"竹北高中動畫社線上公用目錄系統\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台：簡易編目】</strong></p>\r\n\r\n<p><img alt=\"竹北高中動畫社線上公用目錄系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/5-3.jpg\" style=\"width:100%\" title=\"竹北高中動畫社線上公用目錄系統\" /></p>;tag:資料庫,網頁,後分類,PHP,OPAC,MySQL,HTML,Dublin Core,CSS,2017;', '2018-04-02 20:48:33', '2021-05-04 14:31:30'),
(6, '淡江大學課程評價系統', '2017-01', '2017-01', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以&nbsp;PHP 7 實作的課程評價系統，供同學對學習課程進行評價、討論使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>留言版</li>\r\n	<li>免註冊服務</li>\r\n	<li>評分</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>【評價】</strong></p>\r\n\r\n<p><img alt=\"淡江大學課程評價系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/6.jpg\" style=\"width:100%\" title=\"淡江大學課程評價系統\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【問題】</strong></p>\r\n\r\n<p><img alt=\"淡江大學課程評價系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/6-2.jpg\" style=\"width:100%\" title=\"淡江大學課程評價系統\" /></p>', 'title:淡江大學課程評價系統;begin_date:2017.01;end_date:2017.01;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以&nbsp;PHP 7 實作的課程評價系統，供同學對學習課程進行評價、討論使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>留言版</li>\r\n	<li>免註冊服務</li>\r\n	<li>評分</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>【評價】</strong></p>\r\n\r\n<p><img alt=\"淡江大學課程評價系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/6.jpg\" style=\"width:100%\" title=\"淡江大學課程評價系統\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【問題】</strong></p>\r\n\r\n<p><img alt=\"淡江大學課程評價系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/6-2.jpg\" style=\"width:100%\" title=\"淡江大學課程評價系統\" /></p>;tag:資料庫,網頁,PHP,MySQL,HTML,CSS,2017;', '2018-04-02 21:01:04', '2021-05-04 14:29:43'),
(7, '便當訂購系統', '2017-09', '2017-09', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以&nbsp;PHP 7 實作的便當訂購系統，供同袍於服役期間訂購便當使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>登入驗證</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　系統之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>【店家】</strong></p>\r\n\r\n<p><img alt=\"國史館便當訂購系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/7.jpg\" style=\"width:100%\" title=\"國史館便當訂購系統\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【結帳】</strong></p>\r\n\r\n<p><img alt=\"國史館便當訂購系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/7-2.jpg\" style=\"width:100%\" title=\"國史館便當訂購系統\" /></p>', 'title:便當訂購系統;begin_date:2017.09;end_date:2017.09;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以&nbsp;PHP 7 實作的便當訂購系統，供同袍於服役期間訂購便當使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>登入驗證</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　系統之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>【店家】</strong></p>\r\n\r\n<p><img alt=\"國史館便當訂購系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/7.jpg\" style=\"width:100%\" title=\"國史館便當訂購系統\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【結帳】</strong></p>\r\n\r\n<p><img alt=\"國史館便當訂購系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/7-2.jpg\" style=\"width:100%\" title=\"國史館便當訂購系統\" /></p>;tag:資料庫,網頁,PHP,MySQL,HTML,CSS,2017;', '2018-04-02 21:41:35', '2021-05-04 14:34:12'),
(8, '作業上傳平台', '2017-10', '2017-10', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以&nbsp;PHP 7 實作的作業上傳平台，供學弟妹於擔任助教期間發布、下載、批改作業使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>登入驗證、權限管理</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>自訂環境參數</li>\r\n	<li>檔案上傳</li>\r\n	<li>資料匯入</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　系統之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>【前台：上傳檔案】</strong></p>\r\n\r\n<p><img alt=\"作業上傳平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/8.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台：公告】</strong></p>\r\n\r\n<p><img alt=\"作業上傳平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/8-2.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台：作業】</strong></p>\r\n\r\n<p><img alt=\"作業上傳平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/8-3.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台：設定】</strong></p>\r\n\r\n<p><img alt=\"作業上傳平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/8-4.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></p>', 'title:作業上傳平台;begin_date:2017.10;end_date:2017.10;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以&nbsp;PHP 7 實作的作業上傳平台，供學弟妹於擔任助教期間發布、下載、批改作業使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>登入驗證、權限管理</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>自訂環境參數</li>\r\n	<li>檔案上傳</li>\r\n	<li>資料匯入</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　系統之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>【前台：上傳檔案】</strong></p>\r\n\r\n<p><img alt=\"作業上傳平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/8.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台：公告】</strong></p>\r\n\r\n<p><img alt=\"作業上傳平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/8-2.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台：作業】</strong></p>\r\n\r\n<p><img alt=\"作業上傳平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/8-3.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台：設定】</strong></p>\r\n\r\n<p><img alt=\"作業上傳平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/8-4.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></p>;tag:資料庫,網頁,PHP,MySQL,HTML,CSS,Bootstrap,2017;', '2018-04-02 22:17:22', '2021-05-04 14:45:18'),
(9, '個人數位典藏平台', '2018-01', '2018-01', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Omeka 架設的個人數位典藏平台。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>響應式網頁</li>\r\n	<li>單件描述</li>\r\n	<li>合集描述</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>Dublin Core 資料欄位</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>【前台】</strong></p>\r\n\r\n<p><img alt=\"Omeka\" src=\"http://portfolio.epoch.tw/images/screenshots/original/9.jpg\" style=\"width:100%\" title=\"Omeka\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台】</strong></p>\r\n\r\n<p><img alt=\"Omeka\" src=\"http://portfolio.epoch.tw/images/screenshots/original/9-2.jpg\" style=\"width:100%\" title=\"Omeka\" /></p>', 'title:個人數位典藏平台;begin_date:2018.01;end_date:2018.01;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Omeka 架設的個人數位典藏平台。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>響應式網頁</li>\r\n	<li>單件描述</li>\r\n	<li>合集描述</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>Dublin Core 資料欄位</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>【前台】</strong></p>\r\n\r\n<p><img alt=\"Omeka\" src=\"http://portfolio.epoch.tw/images/screenshots/original/9.jpg\" style=\"width:100%\" title=\"Omeka\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台】</strong></p>\r\n\r\n<p><img alt=\"Omeka\" src=\"http://portfolio.epoch.tw/images/screenshots/original/9-2.jpg\" style=\"width:100%\" title=\"Omeka\" /></p>;tag:響應式網頁,資料庫,網頁,數位典藏,報告集,Omeka,MySQL,Dublin Core,2018;', '2018-04-03 01:41:08', '2021-05-04 14:35:35'),
(10, '廣太洋酒網站', '2018-01', '2018-03', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 5.5 及 Bootstrap 4 實作的商業網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索</li>\r\n	<li>後分類</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>自訂環境參數</li>\r\n	<li>熱門檢索詞</li>\r\n	<li>簡單協同過濾</li>\r\n	<li>候選詞提示</li>\r\n	<li>檔案上傳</li>\r\n	<li>網頁文字編輯器</li>\r\n	<li>發信</li>\r\n	<li>圖片預覽</li>\r\n	<li>容器化</li>\r\n	<li>Google reCAPTCHA</li>\r\n	<li>Google Analytics</li>\r\n	<li>Web Font</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/kuntai\" target=\"_blank\" title=\"GitHub\">kuntai</a></p>\r\n\r\n<p><strong>五、網址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://kuntai.epoch.tw/\" target=\"_blank\">http://kuntai.epoch.tw/</a></p>\r\n\r\n<p style=\"text-align:center\"><strong>【前台】</strong></p>\r\n\r\n<p><img alt=\"廣太洋酒\" src=\"http://portfolio.epoch.tw/images/screenshots/original/10.jpg\" style=\"width:100%\" title=\"廣太洋酒\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台】</strong></p>\r\n\r\n<p><img alt=\"廣太洋酒\" src=\"http://portfolio.epoch.tw/images/screenshots/original/10-2.jpg\" style=\"width:100%\" title=\"廣太洋酒\" /></p>', 'title:廣太洋酒網站;begin_date:2018.01;end_date:2018.03;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 5.5 及 Bootstrap 4 實作的商業網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索</li>\r\n	<li>後分類</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>自訂環境參數</li>\r\n	<li>熱門檢索詞</li>\r\n	<li>簡單協同過濾</li>\r\n	<li>候選詞提示</li>\r\n	<li>檔案上傳</li>\r\n	<li>網頁文字編輯器</li>\r\n	<li>發信</li>\r\n	<li>圖片預覽</li>\r\n	<li>容器化</li>\r\n	<li>Google reCAPTCHA</li>\r\n	<li>Google Analytics</li>\r\n	<li>Web Font</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/kuntai\" target=\"_blank\" title=\"GitHub\">kuntai</a></p>\r\n\r\n<p><strong>五、網址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://kuntai.epoch.tw/\" target=\"_blank\">http://kuntai.epoch.tw/</a></p>\r\n\r\n<p style=\"text-align:center\"><strong>【前台】</strong></p>\r\n\r\n<p><img alt=\"廣太洋酒\" src=\"http://portfolio.epoch.tw/images/screenshots/original/10.jpg\" style=\"width:100%\" title=\"廣太洋酒\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台】</strong></p>\r\n\r\n<p><img alt=\"廣太洋酒\" src=\"http://portfolio.epoch.tw/images/screenshots/original/10-2.jpg\" style=\"width:100%\" title=\"廣太洋酒\" /></p>;tag:響應式網頁,資料庫,網頁,後分類,Web Font,Sass,PHP,MySQL,Laravel,jQuery UI,jQuery,JavaScript,HTML,CSS,Bootstrap,AJAX,2018;', '2018-04-03 02:33:35', '2021-05-04 14:36:27'),
(11, '癌症索引典', '2014-09', '2015-01', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 HTML 及 InDesign 實作的圖形索引典，是淡江大學資訊與圖書館學系三年級課程「索引及摘要」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>圖形索引典</li>\r\n	<li>互動式文件</li>\r\n	<li>書籤</li>\r\n	<li>超連結</li>\r\n	<li>交互參照</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及內容排版、程式設計。</p>\r\n\r\n<p><img alt=\"癌症索引典\" src=\"http://portfolio.epoch.tw/images/screenshots/original/11.jpg\" style=\"width:100%\" title=\"癌症索引典\" /></p>', 'title:癌症索引典;begin_date:2014.09;end_date:2015.01;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 HTML 及 InDesign 實作的圖形索引典，是淡江大學資訊與圖書館學系三年級課程「索引及摘要」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>圖形索引典</li>\r\n	<li>互動式文件</li>\r\n	<li>書籤</li>\r\n	<li>超連結</li>\r\n	<li>交互參照</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及內容排版、程式設計。</p>\r\n\r\n<p><img alt=\"癌症索引典\" src=\"http://portfolio.epoch.tw/images/screenshots/original/11.jpg\" style=\"width:100%\" title=\"癌症索引典\" /></p>;tag:電子書,網頁,索引典,排版,互動式文件,InDesign,HTML,CSS,2015,2014;', '2018-04-03 02:55:38', '2021-05-04 14:28:42'),
(12, '國史館臺北閱覽室平面圖', '2018-01', '2018-01', '<p>　　使用 InDesign 製作的平面圖。</p>\r\n\r\n<p style=\"text-align:center\"><strong>印刷版（面西）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖印刷版（面西）\" src=\"http://portfolio.epoch.tw/images/screenshots/original/12.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖印刷版（面西）\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>印刷版（面南）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖印刷版（面南）\" src=\"http://portfolio.epoch.tw/images/screenshots/original/12-2.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖印刷版（面南）\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>網頁版（面北）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖網頁版（面北）\" src=\"http://portfolio.epoch.tw/images/screenshots/original/12-3.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖網頁版（面北）\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>網頁版（面西）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖網頁版（面西）\" src=\"http://portfolio.epoch.tw/images/screenshots/original/12-4.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖網頁版（面西）\" /></p>', 'title:國史館臺北閱覽室平面圖;begin_date:2018.01;end_date:2018.01;content:<p>　　使用 InDesign 製作的平面圖。</p>\r\n\r\n<p style=\"text-align:center\"><strong>印刷版（面西）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖印刷版（面西）\" src=\"http://portfolio.epoch.tw/images/screenshots/original/12.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖印刷版（面西）\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>印刷版（面南）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖印刷版（面南）\" src=\"http://portfolio.epoch.tw/images/screenshots/original/12-2.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖印刷版（面南）\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>網頁版（面北）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖網頁版（面北）\" src=\"http://portfolio.epoch.tw/images/screenshots/original/12-3.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖網頁版（面北）\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>網頁版（面西）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖網頁版（面西）\" src=\"http://portfolio.epoch.tw/images/screenshots/original/12-4.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖網頁版（面西）\" /></p>;tag:排版,平面圖,印刷,InDesign;', '2018-04-03 05:26:18', '2021-05-04 14:35:16'),
(13, '國史館影片光碟封面', '2018-03', '2018-03', '<p>　　使用 InDesign 製作的影片光碟封面。</p>\r\n\r\n<p><img alt=\"國史館光碟封面\" src=\"http://portfolio.epoch.tw/images/screenshots/original/13.jpg\" style=\"width:100%\" title=\"國史館光碟封面\" /></p>', 'title:國史館影片光碟封面;begin_date:2018.03;end_date:2018.03;content:<p>　　使用 InDesign 製作的影片光碟封面。</p>\r\n\r\n<p><img alt=\"國史館光碟封面\" src=\"http://portfolio.epoch.tw/images/screenshots/original/13.jpg\" style=\"width:100%\" title=\"國史館光碟封面\" /></p>;tag:排版,印刷,InDesign;', '2018-04-03 05:36:27', '2021-05-04 14:35:54'),
(14, '資源示意圖：性別平等', '2013-09', '2014-01', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 InDesign 實作的資源示意圖，是淡江大學資訊與圖書館學系二年級課程「參考資源（二）」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>嚴謹的收錄標準及編排規則</li>\r\n	<li>互動式文件</li>\r\n	<li>書籤</li>\r\n	<li>超連結</li>\r\n	<li>交互參照</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及內容排版。</p>\r\n\r\n<p><img alt=\"資源示意圖：性別平等\" src=\"http://portfolio.epoch.tw/images/screenshots/original/14.jpg\" style=\"width:100%\" title=\"資源示意圖：性別平等\" /></p>', 'title:資源示意圖：性別平等;begin_date:2013.09;end_date:2014.01;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 InDesign 實作的資源示意圖，是淡江大學資訊與圖書館學系二年級課程「參考資源（二）」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>嚴謹的收錄標準及編排規則</li>\r\n	<li>互動式文件</li>\r\n	<li>書籤</li>\r\n	<li>超連結</li>\r\n	<li>交互參照</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及內容排版。</p>\r\n\r\n<p><img alt=\"資源示意圖：性別平等\" src=\"http://portfolio.epoch.tw/images/screenshots/original/14.jpg\" style=\"width:100%\" title=\"資源示意圖：性別平等\" /></p>;tag:電子書,資源示意圖,排版,互動式文件,InDesign,2014,2013;', '2018-04-06 02:00:23', '2021-05-04 14:27:46'),
(15, '圖書目錄：日本動畫原著翻譯小說', '2012-09', '2013-01', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 InDesign 實作的圖書目錄，是淡江大學資訊與圖書館學系一年級課程「參考資源（一）」的期末報告。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>嚴謹的收錄標準及編排規則</li>\r\n	<li>清楚的凡例說明及書後索引</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及書冊之編排、印刷。</p>\r\n\r\n<p><img alt=\"圖書目錄：日本動畫原著翻譯小說\" src=\"http://portfolio.epoch.tw/images/screenshots/original/15.jpg\" style=\"width:100%\" title=\"圖書目錄：日本動畫原著翻譯小說\" /></p>', 'title:圖書目錄：日本動畫原著翻譯小說;begin_date:2012.09;end_date:2013.01;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 InDesign 實作的圖書目錄，是淡江大學資訊與圖書館學系一年級課程「參考資源（一）」的期末報告。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>嚴謹的收錄標準及編排規則</li>\r\n	<li>清楚的凡例說明及書後索引</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及書冊之編排、印刷。</p>\r\n\r\n<p><img alt=\"圖書目錄：日本動畫原著翻譯小說\" src=\"http://portfolio.epoch.tw/images/screenshots/original/15.jpg\" style=\"width:100%\" title=\"圖書目錄：日本動畫原著翻譯小說\" /></p>;tag:電子書,排版,圖書目錄,印刷,InDesign,2013,2012;', '2018-04-06 02:11:01', '2021-05-04 14:26:31'),
(16, '短網址產生器', '2018-04', '2018-04', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 5.6&nbsp;及 Semantic UI&nbsp;2&nbsp;實作的工具網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>AJAX&nbsp;分頁切換</li>\r\n	<li>容器化</li>\r\n	<li>Google Analytics</li>\r\n	<li>Web Font</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/surl\" target=\"_blank\" title=\"GitHub\">surl</a></p>\r\n\r\n<p><img alt=\"短網址產生器\" src=\"http://portfolio.epoch.tw/images/screenshots/original/16.jpg\" style=\"width:100%\" title=\"短網址產生器\" /></p>', 'title:短網址產生器;begin_date:2018.04;end_date:2018.04;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 5.6&nbsp;及 Semantic UI&nbsp;2&nbsp;實作的工具網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>AJAX&nbsp;分頁切換</li>\r\n	<li>容器化</li>\r\n	<li>Google Analytics</li>\r\n	<li>Web Font</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/surl\" target=\"_blank\" title=\"GitHub\">surl</a></p>\r\n\r\n<p><img alt=\"短網址產生器\" src=\"http://portfolio.epoch.tw/images/screenshots/original/16.jpg\" style=\"width:100%\" title=\"短網址產生器\" /></p>;tag:響應式網頁,資料庫,網頁,Web Font,Semantic UI,Sass,PHP,MySQL,Laravel,jQuery UI,jQuery,JavaScript,HTML,Google Analytics,CSS,AJAX,2018;', '2018-04-15 00:15:04', '2021-05-04 14:37:21'),
(17, '周孝威部落格', '2018-04', '2018-04', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Hexo 架設的部落格網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>響應式網頁</li>\r\n	<li>主題瀏覽</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>Disqus 留言版</li>\r\n	<li>Google Analytics</li>\r\n	<li>Web Font</li>\r\n	<li>標記雲</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/blog\" target=\"_blank\" title=\"周孝威部落格\">blog</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://blog.epoch.tw/\" target=\"_blank\">http://blog.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"周孝威部落格\" src=\"http://portfolio.epoch.tw/images/screenshots/original/17.jpg\" style=\"width:100%\" title=\"周孝威部落格\" /></p>', 'title:周孝威部落格;begin_date:2018.04;end_date:2018.04;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Hexo 架設的部落格網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>響應式網頁</li>\r\n	<li>主題瀏覽</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>Disqus 留言版</li>\r\n	<li>Google Analytics</li>\r\n	<li>Web Font</li>\r\n	<li>標記雲</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/blog\" target=\"_blank\" title=\"周孝威部落格\">blog</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://blog.epoch.tw/\" target=\"_blank\">http://blog.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"周孝威部落格\" src=\"http://portfolio.epoch.tw/images/screenshots/original/17.jpg\" style=\"width:100%\" title=\"周孝威部落格\" /></p>;tag:響應式網頁,部落格,網頁,Google Analytics,Disqus,2018;', '2018-04-16 22:41:45', '2021-05-04 14:37:05'),
(18, '周孝威作品集（2012 - 2020）', '2018-04', '2018-04', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 5.5 及 Bootstrap 4 實作的個人網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>候選詞提示</li>\r\n	<li>網頁文字編輯器</li>\r\n	<li>Web Font</li>\r\n	<li>REST style 路由</li>\r\n	<li>容器化</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/portfolio\" target=\"_blank\" title=\"GitHub\">portfolio</a></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台：編輯（基本）】</strong></p>\r\n\r\n<p><img alt=\"周孝威作品集（2012 - 2020）\" src=\"http://portfolio.epoch.tw/images/screenshots/original/18.jpg\" style=\"width:100%\" title=\"周孝威作品集（2012 - 2020）\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台：編輯（標記）】</strong></p>\r\n\r\n<p><img alt=\"周孝威作品集（2012 - 2020）\" src=\"http://portfolio.epoch.tw/images/screenshots/original/18-2.jpg\" style=\"width:100%\" title=\"周孝威作品集（2012 - 2020）\" /></p>', 'title:周孝威作品集（2012 - 2020）;begin_date:2018.04;end_date:2018.04;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 5.5 及 Bootstrap 4 實作的個人網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>候選詞提示</li>\r\n	<li>網頁文字編輯器</li>\r\n	<li>Web Font</li>\r\n	<li>REST style 路由</li>\r\n	<li>容器化</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/portfolio\" target=\"_blank\" title=\"GitHub\">portfolio</a></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台：編輯（基本）】</strong></p>\r\n\r\n<p><img alt=\"周孝威作品集（2012 - 2020）\" src=\"http://portfolio.epoch.tw/images/screenshots/original/18.jpg\" style=\"width:100%\" title=\"周孝威作品集（2012 - 2020）\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【後台：編輯（標記）】</strong></p>\r\n\r\n<p><img alt=\"周孝威作品集（2012 - 2020）\" src=\"http://portfolio.epoch.tw/images/screenshots/original/18-2.jpg\" style=\"width:100%\" title=\"周孝威作品集（2012 - 2020）\" /></p>;tag:響應式網頁,資料庫,網頁,Web Font,Sass,REST Style,PHP,MySQL,Laravel,jQuery UI,jQuery,JavaScript,HTML,CSS,Bootstrap,AJAX,2018;', '2018-04-17 19:57:26', '2021-05-04 14:36:47'),
(19, '密碼管理系統', '2019-04', '2019-05', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 5.8、Vue 2.5 及 Vuetify&nbsp;1.5&nbsp;實作的內容管理系統。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>全文檢索</li>\r\n	<li>登入驗證</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>自訂環境參數</li>\r\n	<li>多國語系</li>\r\n	<li>REST API</li>\r\n	<li>前後端分離</li>\r\n	<li>無限滾動</li>\r\n	<li>容器化</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/keychain\" target=\"_blank\" title=\"GitHub\">keychain</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/keychain-ui\" target=\"_blank\" title=\"GitHub\">keychain-ui</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://keychain.epoch.tw/\" target=\"_blank\">http://keychain.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"密碼管理平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/19.jpg\" style=\"width:100%\" title=\"密碼管理系統\" /></p>', 'title:密碼管理系統;begin_date:2019.04;end_date:2019.05;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 5.8、Vue 2.5 及 Vuetify&nbsp;1.5&nbsp;實作的內容管理系統。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>全文檢索</li>\r\n	<li>登入驗證</li>\r\n	<li>內容之新增、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>自訂環境參數</li>\r\n	<li>多國語系</li>\r\n	<li>REST API</li>\r\n	<li>前後端分離</li>\r\n	<li>無限滾動</li>\r\n	<li>容器化</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/keychain\" target=\"_blank\" title=\"GitHub\">keychain</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/keychain-ui\" target=\"_blank\" title=\"GitHub\">keychain-ui</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://keychain.epoch.tw/\" target=\"_blank\">http://keychain.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"密碼管理平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/19.jpg\" style=\"width:100%\" title=\"密碼管理系統\" /></p>;tag:響應式網頁,資料庫,網頁,Vuetify,Vue,Stylus,SPA,REST API,PHP,MySQL,Localization,Laravel,JavaScript,HTML,CSS,2019;', '2019-05-10 03:36:51', '2021-05-04 14:37:50'),
(20, '104 應徵人數計算器', '2019-05', '2019-05', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Vue 2.5&nbsp;及 Vuetify 1.5&nbsp;實作的工具網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>數據分析</li>\r\n	<li>容器化</li>\r\n	<li>Google Analytics</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/104-calculator\" target=\"_blank\" title=\"GitHub\">104-calculator</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://104-calculator.epoch.tw/\" target=\"_blank\">http://104-calculator.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"104 應徵人數計算器\" src=\"http://portfolio.epoch.tw/images/screenshots/original/20.jpg\" style=\"width:100%\" title=\"104 應徵人數計算器\" /></p>', 'title:104 應徵人數計算器;begin_date:2019.05;end_date:2019.05;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Vue 2.5&nbsp;及 Vuetify 1.5&nbsp;實作的工具網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>數據分析</li>\r\n	<li>容器化</li>\r\n	<li>Google Analytics</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/104-calculator\" target=\"_blank\" title=\"GitHub\">104-calculator</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://104-calculator.epoch.tw/\" target=\"_blank\">http://104-calculator.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"104 應徵人數計算器\" src=\"http://portfolio.epoch.tw/images/screenshots/original/20.jpg\" style=\"width:100%\" title=\"104 應徵人數計算器\" /></p>;tag:響應式網頁,網頁,Vuetify,Vue,Stylus,SPA,JavaScript,HTML,Google Analytics,CSS,2019;', '2019-05-25 17:23:11', '2021-05-04 14:37:37'),
(21, 'JSON Editor', '2019-09', '2019-09', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 6.0、Vue 2.6&nbsp;及 Vuetify 2.0&nbsp;實作的工具網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>JSON 編輯器</li>\r\n	<li>容器化</li>\r\n	<li>Google Analytics</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/json-editor\" target=\"_blank\" title=\"GitHub\">json-editor</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://json.epoch.tw/\" target=\"_blank\">http://json.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"104 應徵人數計算器\" src=\"http://portfolio.epoch.tw/images/screenshots/original/21.jpg\" style=\"width:100%\" title=\"JSON Editor\" /></p>', 'title:JSON Editor;begin_date:2019.09;end_date:2019.09;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 6.0、Vue 2.6&nbsp;及 Vuetify 2.0&nbsp;實作的工具網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>JSON 編輯器</li>\r\n	<li>容器化</li>\r\n	<li>Google Analytics</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/json-editor\" target=\"_blank\" title=\"GitHub\">json-editor</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://json.epoch.tw/\" target=\"_blank\">http://json.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"104 應徵人數計算器\" src=\"http://portfolio.epoch.tw/images/screenshots/original/21.jpg\" style=\"width:100%\" title=\"JSON Editor\" /></p>;tag:響應式網頁,網頁,Vuetify,Vue,SPA,Sass,PHP,Laravel,JavaScript,HTML,Google Analytics,CSS,2019;', '2019-09-27 15:27:11', '2021-05-04 14:38:03'),
(22, '藝術與建築索引典', '2020-01', '2020-01', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Go 及 Quasar 1.8&nbsp;實作的工具網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>非關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>特定欄位檢索</li>\r\n	<li>伺服器端渲染</li>\r\n	<li>開放資料</li>\r\n	<li>階層式資料</li>\r\n	<li>XML 檔案處理</li>\r\n	<li>REST API</li>\r\n	<li>前後端分離</li>\r\n	<li>無限滾動</li>\r\n	<li>容器化</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/thesaurus\" target=\"_blank\" title=\"GitHub\">thesaurus</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/thesaurus-ui\" target=\"_blank\" title=\"GitHub\">thesaurus-ui</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://thesaurus.epoch.tw/\" target=\"_blank\">http://thesaurus.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"藝術與建築索引典\" src=\"http://portfolio.epoch.tw/images/screenshots/original/22.jpg\" style=\"width:100%\" title=\"藝術與建築索引典\" /></p>\r\n\r\n<p><img alt=\"藝術與建築索引典\" src=\"http://portfolio.epoch.tw/images/screenshots/original/22-2.jpg\" style=\"width:100%\" title=\"藝術與建築索引典\" /></p>', 'title:藝術與建築索引典;begin_date:2020.01;end_date:2020.01;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Go 及 Quasar 1.8&nbsp;實作的工具網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>非關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>特定欄位檢索</li>\r\n	<li>伺服器端渲染</li>\r\n	<li>開放資料</li>\r\n	<li>階層式資料</li>\r\n	<li>XML 檔案處理</li>\r\n	<li>REST API</li>\r\n	<li>前後端分離</li>\r\n	<li>無限滾動</li>\r\n	<li>容器化</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/thesaurus\" target=\"_blank\" title=\"GitHub\">thesaurus</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/thesaurus-ui\" target=\"_blank\" title=\"GitHub\">thesaurus-ui</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://thesaurus.epoch.tw/\" target=\"_blank\">http://thesaurus.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"藝術與建築索引典\" src=\"http://portfolio.epoch.tw/images/screenshots/original/22.jpg\" style=\"width:100%\" title=\"藝術與建築索引典\" /></p>\r\n\r\n<p><img alt=\"藝術與建築索引典\" src=\"http://portfolio.epoch.tw/images/screenshots/original/22-2.jpg\" style=\"width:100%\" title=\"藝術與建築索引典\" /></p>;tag:響應式網頁,資料庫,網頁,索引典,Vue,SPA,Sass,REST API,Quasar,MongoDB,JavaScript,HTML,Go,Docker,CSS,2020;', '2020-01-25 08:15:22', '2021-05-04 14:38:18'),
(23, '即時聊天室', '2020-03', '2020-03', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Go、React 16.12&nbsp;及 Bootstrap 4 實作的聊天網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>前後端分離</li>\r\n	<li>配對聊天</li>\r\n	<li>容器化</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/chat\" target=\"_blank\" title=\"GitHub\">chat</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/chat-ui\" target=\"_blank\" title=\"GitHub\">chat-ui</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://chat.epoch.tw/\" target=\"_blank\">http://chat.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"一對一即時聊天室\" src=\"http://portfolio.epoch.tw/images/screenshots/original/23.jpg\" style=\"width:100%\" title=\"一對一即時聊天室\" /></p>', 'title:即時聊天室;begin_date:2020.03;end_date:2020.03;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Go、React 16.12&nbsp;及 Bootstrap 4 實作的聊天網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>前後端分離</li>\r\n	<li>配對聊天</li>\r\n	<li>容器化</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/chat\" target=\"_blank\" title=\"GitHub\">chat</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/chat-ui\" target=\"_blank\" title=\"GitHub\">chat-ui</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://chat.epoch.tw/\" target=\"_blank\">http://chat.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"一對一即時聊天室\" src=\"http://portfolio.epoch.tw/images/screenshots/original/23.jpg\" style=\"width:100%\" title=\"一對一即時聊天室\" /></p>;tag:響應式網頁,聊天室,網頁,WebSocket,Sass,HTML,Go,Docker,CSS,Bootstrap,2020;', '2020-03-06 12:41:15', '2021-05-04 14:38:33'),
(24, '圖片下載器', '2020-04', '2020-04', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Go、Vue 2.6 及 Vuetify 2.0 實作的工具網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>爬蟲</li>\r\n	<li>並行</li>\r\n	<li>容器化</li>\r\n	<li>Google Analytics</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/image-crawler\" target=\"_blank\" title=\"GitHub\">image-crawler</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://crawler.epoch.tw/\" target=\"_blank\">http://crawler.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"圖片下載器\" src=\"http://portfolio.epoch.tw/images/screenshots/original/24.jpg\" title=\"圖片下載器\" /></p>', 'title:圖片下載器;begin_date:2020.04;end_date:2020.04;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Go、Vue 2.6 及 Vuetify 2.0 實作的工具網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>爬蟲</li>\r\n	<li>並行</li>\r\n	<li>容器化</li>\r\n	<li>Google Analytics</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/image-crawler\" target=\"_blank\" title=\"GitHub\">image-crawler</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://crawler.epoch.tw/\" target=\"_blank\">http://crawler.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"圖片下載器\" src=\"http://portfolio.epoch.tw/images/screenshots/original/24.jpg\" title=\"圖片下載器\" /></p>;tag:響應式網頁,網頁,Vuetify,Vue,SPA,JavaScript,HTML,Google Analytics,Go,CSS,2020;', '2020-04-10 04:08:24', '2021-05-04 14:38:53'),
(25, '股票交易計算器', '2020-07', '2020-07', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 JavaScript 及 Bootstrp 4.5 實作的工具網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>容器化</li>\r\n	<li>Progressive Web App</li>\r\n	<li>Google Analytics</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/profit-and-loss-calculator\" target=\"_blank\" title=\"GitHub\">profit-and-loss-calculator</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://stock.epoch.tw/\" target=\"_blank\">http://stock.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"圖片下載器\" src=\"http://portfolio.epoch.tw/images/screenshots/original/25.jpg\" style=\"width:100%\" title=\"圖片下載器\" /></p>', 'title:股票交易計算器;begin_date:2020.07;end_date:2020.07;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 JavaScript 及 Bootstrp 4.5 實作的工具網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>容器化</li>\r\n	<li>Progressive Web App</li>\r\n	<li>Google Analytics</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/profit-and-loss-calculator\" target=\"_blank\" title=\"GitHub\">profit-and-loss-calculator</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://stock.epoch.tw/\" target=\"_blank\">http://stock.epoch.tw/</a></p>\r\n\r\n<p><img alt=\"圖片下載器\" src=\"http://portfolio.epoch.tw/images/screenshots/original/25.jpg\" style=\"width:100%\" title=\"圖片下載器\" /></p>;tag:響應式網頁,網頁,PWA,jQuery,HTML,Google Analytics,CSS,Bootstrap,2020;', '2020-07-10 14:40:15', '2021-05-04 14:39:36');
INSERT INTO `works` (`id`, `title`, `begin_date`, `end_date`, `content`, `full_text`, `created_at`, `updated_at`) VALUES
(26, '翻譯管理系統', '2020-05', '2020-10', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 8.0、Vue 2.6 及 Vuetify&nbsp;2.2&nbsp;實作的內容管理系統。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>內容之新增、修改</li>\r\n	<li>多國語系</li>\r\n	<li>REST API</li>\r\n	<li>前後端分離</li>\r\n	<li>客戶端套件</li>\r\n	<li>Webhook</li>\r\n	<li>CLI</li>\r\n	<li>容器化</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/lexicon-api-php-client\" target=\"_blank\" title=\"GitHub\">lexicon-api-php-client</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/lexicon-api-laravel-client\" target=\"_blank\" title=\"GitHub\">lexicon-api-laravel-client</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/lexicon\" target=\"_blank\" title=\"GitHub\">lexicon</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/lexicon-ui\" target=\"_blank\" title=\"GitHub\">lexicon-ui</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/lexicon-demo\" target=\"_blank\" title=\"GitHub\">lexicon-demo</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://lexicon.epoch.tw/\" target=\"_blank\">http://lexicon.epoch.tw/</a></p>\r\n\r\n<p style=\"text-align:center\"><strong>【服務端】</strong></p>\r\n\r\n<p><img alt=\"翻譯管理平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/26.jpg\" style=\"width:100%\" title=\"翻譯管理平台\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【客戶端（英文）】</strong></p>\r\n\r\n<p><img alt=\"翻譯管理平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/26-2.jpg\" style=\"width:100%\" title=\"翻譯管理平台\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【客戶端（中文）】</strong></p>\r\n\r\n<p><img alt=\"翻譯管理平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/26-3.jpg\" style=\"width:100%\" title=\"翻譯管理平台\" /></p>', 'title:翻譯管理系統;begin_date:2020.05;end_date:2020.10;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 8.0、Vue 2.6 及 Vuetify&nbsp;2.2&nbsp;實作的內容管理系統。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>內容之新增、修改</li>\r\n	<li>多國語系</li>\r\n	<li>REST API</li>\r\n	<li>前後端分離</li>\r\n	<li>客戶端套件</li>\r\n	<li>Webhook</li>\r\n	<li>CLI</li>\r\n	<li>容器化</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/lexicon-api-php-client\" target=\"_blank\" title=\"GitHub\">lexicon-api-php-client</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/lexicon-api-laravel-client\" target=\"_blank\" title=\"GitHub\">lexicon-api-laravel-client</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/lexicon\" target=\"_blank\" title=\"GitHub\">lexicon</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/lexicon-ui\" target=\"_blank\" title=\"GitHub\">lexicon-ui</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/lexicon-demo\" target=\"_blank\" title=\"GitHub\">lexicon-demo</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://lexicon.epoch.tw/\" target=\"_blank\">http://lexicon.epoch.tw/</a></p>\r\n\r\n<p style=\"text-align:center\"><strong>【服務端】</strong></p>\r\n\r\n<p><img alt=\"翻譯管理平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/26.jpg\" style=\"width:100%\" title=\"翻譯管理平台\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【客戶端（英文）】</strong></p>\r\n\r\n<p><img alt=\"翻譯管理平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/26-2.jpg\" style=\"width:100%\" title=\"翻譯管理平台\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【客戶端（中文）】</strong></p>\r\n\r\n<p><img alt=\"翻譯管理平台\" src=\"http://portfolio.epoch.tw/images/screenshots/original/26-3.jpg\" style=\"width:100%\" title=\"翻譯管理平台\" /></p>;tag:響應式網頁,資料庫,網頁,Webhook,Vuetify,Vue,SPA,Sass,REST API,PHP,MySQL,Localization,Laravel,JavaScript,HTML,CSS,CLI,Bootstrap,2020;', '2020-10-25 07:25:07', '2021-05-04 14:39:50'),
(27, 'GitHub 排名系統', '2020-12', '2021-03', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Go、Vue 2.6 及 Vuetify&nbsp;2.2&nbsp;實作的 GitHub 排名系統。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>非關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>特定欄位檢索</li>\r\n	<li>開放資料</li>\r\n	<li>REST API</li>\r\n	<li>GraphQL</li>\r\n	<li>前後端分離</li>\r\n	<li>並行</li>\r\n	<li>排程</li>\r\n	<li>容器化</li>\r\n	<li>Google Analytics</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/gh-rankings\" target=\"_blank\" title=\"GitHub\">gh-rankings</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/gh-rankings-ui\" target=\"_blank\" title=\"GitHub\">gh-rankings-ui</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/gh-rankings-language\" target=\"_blank\" title=\"GitHub\">gh-rankings-language</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/gh-rankings-location\" target=\"_blank\" title=\"GitHub\">gh-rankings-location</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://gh-rankings.epoch.tw/\" target=\"_blank\">http://gh-rankings.epoch.tw/</a></p>\r\n\r\n<p style=\"text-align:center\"><strong>【使用者排名】</strong></p>\r\n\r\n<p><img alt=\"GitHub 排名系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/27.jpg\" style=\"width:100%\" title=\"GitHub 排名系統\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【組織排名】</strong></p>\r\n\r\n<p><img alt=\"GitHub 排名系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/27-2.jpg\" style=\"width:100%\" title=\"GitHub 排名系統\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【專案排名】</strong></p>\r\n\r\n<p><img alt=\"GitHub 排名系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/27-3.jpg\" style=\"width:100%\" title=\"GitHub 排名系統\" /></p>', 'title:GitHub 排名系統;begin_date:2020.12;end_date:2021.03;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Go、Vue 2.6 及 Vuetify&nbsp;2.2&nbsp;實作的 GitHub 排名系統。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>單頁應用</li>\r\n	<li>非關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>特定欄位檢索</li>\r\n	<li>開放資料</li>\r\n	<li>REST API</li>\r\n	<li>GraphQL</li>\r\n	<li>前後端分離</li>\r\n	<li>並行</li>\r\n	<li>排程</li>\r\n	<li>容器化</li>\r\n	<li>Google Analytics</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/gh-rankings\" target=\"_blank\" title=\"GitHub\">gh-rankings</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/gh-rankings-ui\" target=\"_blank\" title=\"GitHub\">gh-rankings-ui</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/gh-rankings-language\" target=\"_blank\" title=\"GitHub\">gh-rankings-language</a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/gh-rankings-location\" target=\"_blank\" title=\"GitHub\">gh-rankings-location</a></p>\r\n\r\n<p><strong>五、網　　址</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://gh-rankings.epoch.tw/\" target=\"_blank\">http://gh-rankings.epoch.tw/</a></p>\r\n\r\n<p style=\"text-align:center\"><strong>【使用者排名】</strong></p>\r\n\r\n<p><img alt=\"GitHub 排名系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/27.jpg\" style=\"width:100%\" title=\"GitHub 排名系統\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【組織排名】</strong></p>\r\n\r\n<p><img alt=\"GitHub 排名系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/27-2.jpg\" style=\"width:100%\" title=\"GitHub 排名系統\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>【專案排名】</strong></p>\r\n\r\n<p><img alt=\"GitHub 排名系統\" src=\"http://portfolio.epoch.tw/images/screenshots/original/27-3.jpg\" style=\"width:100%\" title=\"GitHub 排名系統\" /></p>;tag:響應式網頁,資料庫,網頁,Vuetify,Vue,SPA,Sass,REST API,MongoDB,JavaScript,HTML,GraphQL,Google Analytics,Go,Docker,CSS,2021;', '2021-03-04 16:25:03', '2021-05-04 14:40:17');

-- --------------------------------------------------------

--
-- 資料表結構 `work_tags`
--

CREATE TABLE `work_tags` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `work_tags`
--

INSERT INTO `work_tags` (`id`, `type`, `name`, `work_id`, `created_at`, `updated_at`) VALUES
(337, '一般', '資料庫', 1, NULL, '2018-04-07 09:17:16'),
(338, '一般', 'HTML', 1, NULL, '2018-04-07 09:17:16'),
(339, '一般', 'PHP', 1, NULL, '2018-04-07 09:17:16'),
(340, '一般', 'CSS', 1, NULL, '2018-04-07 09:17:16'),
(341, '年分', '2014', 1, NULL, '2018-04-07 09:17:16'),
(343, '一般', '資料庫', 2, NULL, '2018-04-07 09:17:16'),
(344, '一般', 'HTML', 2, NULL, '2018-04-07 09:17:16'),
(345, '一般', 'PHP', 2, NULL, '2018-04-07 09:17:16'),
(346, '一般', 'CSS', 2, NULL, '2018-04-07 09:17:16'),
(351, '年分', '2017', 2, NULL, '2018-04-07 09:17:16'),
(352, '一般', '數位典藏', 2, NULL, '2018-04-07 09:17:16'),
(367, '一般', '資料庫', 6, NULL, '2018-04-07 09:17:16'),
(368, '一般', 'PHP', 6, NULL, '2018-04-07 09:17:16'),
(369, '一般', 'HTML', 6, NULL, '2018-04-07 09:17:16'),
(370, '一般', 'CSS', 6, NULL, '2018-04-07 09:17:16'),
(372, '年分', '2017', 6, NULL, '2018-04-07 09:17:16'),
(374, '一般', '資料庫', 5, NULL, '2018-04-07 09:17:16'),
(375, '一般', 'HTML', 5, NULL, '2018-04-07 09:17:16'),
(376, '一般', 'PHP', 5, NULL, '2018-04-07 09:17:16'),
(377, '一般', 'CSS', 5, NULL, '2018-04-07 09:17:16'),
(379, '一般', 'OPAC', 5, NULL, '2018-04-07 09:17:16'),
(380, '年分', '2017', 5, NULL, '2018-04-07 09:17:16'),
(382, '一般', '資料庫', 7, NULL, '2018-04-07 09:17:16'),
(383, '一般', 'HTML', 7, NULL, '2018-04-07 09:17:16'),
(384, '一般', 'PHP', 7, NULL, '2018-04-07 09:17:16'),
(385, '一般', 'CSS', 7, NULL, '2018-04-07 09:17:16'),
(387, '年分', '2017', 7, NULL, '2018-04-07 09:17:16'),
(389, '一般', '資料庫', 8, NULL, '2018-04-07 09:17:17'),
(390, '一般', 'HTML', 8, NULL, '2018-04-07 09:17:17'),
(391, '一般', 'PHP', 8, NULL, '2018-04-07 09:17:17'),
(392, '一般', 'CSS', 8, NULL, '2018-04-07 09:17:17'),
(394, '年分', '2017', 8, NULL, '2018-04-07 09:17:17'),
(396, '一般', '資料庫', 4, NULL, '2018-04-07 09:17:17'),
(397, '一般', 'Wordpress', 4, NULL, '2018-04-07 09:17:17'),
(399, '年分', '2016', 4, NULL, '2018-04-07 09:17:17'),
(440, '一般', '資料庫', 3, NULL, '2018-04-07 09:17:17'),
(441, '一般', 'HTML', 3, NULL, '2018-04-07 09:17:17'),
(442, '一般', 'PHP', 3, NULL, '2018-04-07 09:17:17'),
(443, '一般', 'CSS', 3, NULL, '2018-04-07 09:17:17'),
(444, '年分', '2014', 3, NULL, '2018-04-07 09:17:17'),
(445, '年分', '2015', 3, NULL, '2018-04-07 09:17:17'),
(483, '一般', '資料庫', 10, NULL, '2018-04-07 09:17:17'),
(484, '一般', 'HTML', 10, NULL, '2018-04-07 09:17:17'),
(485, '一般', 'PHP', 10, NULL, '2018-04-07 09:17:17'),
(486, '一般', 'Laravel', 10, NULL, '2018-04-07 09:17:17'),
(487, '一般', 'Bootstrap', 10, NULL, '2018-04-07 09:17:17'),
(488, '一般', 'CSS', 10, NULL, '2018-04-07 09:17:17'),
(489, '一般', 'Sass', 10, NULL, '2018-04-07 09:17:17'),
(490, '一般', 'JavaScript', 10, NULL, '2018-04-07 09:17:17'),
(491, '一般', 'jQuery', 10, NULL, '2018-04-07 09:17:17'),
(493, '年分', '2018', 10, NULL, '2018-04-07 09:17:17'),
(537, '一般', '索引典', 11, NULL, '2018-04-07 09:17:17'),
(538, '一般', 'InDesign', 11, NULL, '2018-04-07 09:17:17'),
(539, '一般', 'HTML', 11, NULL, '2018-04-07 09:17:17'),
(540, '一般', 'CSS', 11, NULL, '2018-04-07 09:17:17'),
(541, '年分', '2015', 11, NULL, '2018-04-07 09:17:17'),
(542, '年分', '2014', 11, NULL, '2018-04-07 09:17:17'),
(544, '一般', '資料庫', 9, NULL, '2018-04-07 09:17:17'),
(546, '一般', '數位典藏', 9, NULL, '2018-04-07 09:17:17'),
(548, '一般', 'Omeka', 9, NULL, '2018-04-07 09:17:17'),
(551, '年分', '2018', 9, NULL, '2018-04-07 09:17:17'),
(601, '一般', '排版', 13, NULL, '2018-04-07 09:17:17'),
(602, '一般', '印刷', 13, NULL, '2018-04-07 09:17:17'),
(603, '一般', 'InDesign', 13, NULL, '2018-04-07 09:17:17'),
(604, '一般', '排版', 12, NULL, '2018-04-07 09:17:17'),
(605, '一般', '印刷', 12, NULL, '2018-04-07 09:17:17'),
(606, '一般', '平面圖', 12, NULL, '2018-04-07 09:17:17'),
(607, '一般', 'InDesign', 12, NULL, '2018-04-07 09:17:17'),
(608, '一般', 'Bootstrap', 8, NULL, '2018-04-07 09:17:17'),
(616, '一般', '報告集', 9, NULL, '2018-04-07 09:17:17'),
(617, '一般', '報告集', 2, NULL, '2018-04-07 09:17:17'),
(619, '一般', '互動式文件', 11, NULL, '2018-04-07 09:17:17'),
(620, '一般', '電子書', 14, NULL, '2018-04-07 09:17:17'),
(621, '一般', '資源示意圖', 14, NULL, '2018-04-07 09:17:17'),
(622, '一般', 'InDesign', 14, NULL, '2018-04-07 09:17:17'),
(624, '一般', '排版', 14, NULL, '2018-04-07 09:17:17'),
(625, '一般', '互動式文件', 14, NULL, '2018-04-07 09:17:17'),
(626, '年分', '2014', 14, NULL, '2018-04-07 09:17:17'),
(627, '年分', '2013', 14, NULL, '2018-04-07 09:17:17'),
(628, '一般', 'InDesign', 15, NULL, '2018-04-07 09:17:17'),
(629, '一般', '圖書目錄', 15, NULL, '2018-04-07 09:17:17'),
(630, '一般', '排版', 15, NULL, '2018-04-07 09:17:17'),
(631, '一般', '印刷', 15, NULL, '2018-04-07 09:17:17'),
(633, '年分', '2012', 15, NULL, '2018-04-07 09:17:17'),
(634, '年分', '2013', 15, NULL, '2018-04-07 09:17:17'),
(636, '一般', '排版', 11, NULL, '2018-04-07 09:17:17'),
(640, '一般', 'Image Map', 1, NULL, '2018-04-07 09:17:17'),
(641, '一般', '後分類', 10, NULL, '2018-04-07 09:17:17'),
(642, '一般', '後分類', 5, NULL, '2018-04-07 09:17:17'),
(646, '一般', '資料庫', 16, NULL, NULL),
(650, '一般', 'Laravel', 16, NULL, NULL),
(651, '一般', 'JavaScript', 16, NULL, NULL),
(652, '一般', 'jQuery', 16, NULL, NULL),
(653, '一般', 'Semantic UI', 16, NULL, NULL),
(654, '一般', 'AJAX', 16, NULL, NULL),
(655, '一般', 'jQuery UI', 16, NULL, NULL),
(656, '一般', 'PHP', 16, NULL, NULL),
(657, '一般', 'AJAX', 10, NULL, NULL),
(658, '一般', 'jQuery UI', 10, NULL, NULL),
(659, '一般', '響應式網頁', 10, NULL, NULL),
(662, '一般', '響應式網頁', 9, NULL, NULL),
(671, '一般', '響應式網頁', 16, NULL, NULL),
(672, '一般', '響應式網頁', 4, NULL, NULL),
(674, '一般', '電子書', 15, NULL, NULL),
(675, '一般', '電子書', 11, NULL, NULL),
(678, '一般', 'Sass', 16, NULL, NULL),
(680, '年分', '2018', 16, NULL, NULL),
(681, '一般', 'CSS', 16, NULL, NULL),
(683, '一般', 'HTML', 16, NULL, NULL),
(684, '一般', 'Web Font', 10, NULL, NULL),
(685, '一般', 'Web Font', 16, NULL, NULL),
(686, '一般', 'MySQL', 16, NULL, NULL),
(687, '一般', 'MySQL', 10, NULL, NULL),
(688, '一般', 'MySQL', 9, NULL, NULL),
(689, '一般', 'MySQL', 8, NULL, NULL),
(690, '一般', 'MySQL', 7, NULL, NULL),
(691, '一般', 'MySQL', 2, NULL, NULL),
(692, '一般', 'MySQL', 5, NULL, NULL),
(693, '一般', 'MySQL', 6, NULL, NULL),
(694, '一般', 'MySQL', 4, NULL, NULL),
(695, '一般', 'MySQL', 3, NULL, NULL),
(696, '一般', 'MySQL', 1, NULL, NULL),
(697, '一般', 'Disqus', 17, NULL, NULL),
(698, '一般', '響應式網頁', 17, NULL, NULL),
(701, '一般', '部落格', 17, NULL, NULL),
(702, '年分', '2018', 17, NULL, NULL),
(703, '一般', 'Laravel', 18, NULL, NULL),
(704, '一般', 'PHP', 18, NULL, NULL),
(705, '一般', '響應式網頁', 18, NULL, NULL),
(706, '一般', 'REST Style', 18, NULL, NULL),
(707, '一般', '資料庫', 18, NULL, NULL),
(709, '一般', 'Bootstrap', 18, NULL, NULL),
(710, '一般', 'Sass', 18, NULL, NULL),
(711, '一般', 'CSS', 18, NULL, NULL),
(712, '一般', 'jQuery', 18, NULL, NULL),
(713, '一般', 'jQuery UI', 18, NULL, NULL),
(714, '一般', 'JavaScript', 18, NULL, NULL),
(715, '一般', 'AJAX', 18, NULL, NULL),
(717, '一般', 'Web Font', 18, NULL, NULL),
(718, '一般', 'MySQL', 18, NULL, NULL),
(719, '一般', 'HTML', 18, NULL, NULL),
(721, '年分', '2018', 18, NULL, NULL),
(722, '一般', 'Dublin Core', 9, NULL, NULL),
(723, '一般', 'Dublin Core', 5, NULL, NULL),
(724, '一般', 'Google Analytics', 16, NULL, NULL),
(728, '一般', 'Google Analytics', 4, NULL, NULL),
(729, '一般', 'Google Analytics', 17, NULL, NULL),
(730, '年分', '2019', 19, NULL, NULL),
(731, '一般', '網頁', 6, NULL, NULL),
(732, '一般', '網頁', 5, NULL, NULL),
(733, '一般', '網頁', 1, NULL, NULL),
(735, '一般', '網頁', 18, NULL, NULL),
(736, '一般', '網頁', 4, NULL, NULL),
(737, '一般', '網頁', 7, NULL, NULL),
(738, '一般', '網頁', 3, NULL, NULL),
(739, '一般', '網頁', 9, NULL, NULL),
(740, '一般', '網頁', 11, NULL, NULL),
(741, '一般', '網頁', 2, NULL, NULL),
(742, '一般', '網頁', 10, NULL, NULL),
(743, '一般', '網頁', 16, NULL, NULL),
(744, '一般', '網頁', 8, NULL, NULL),
(745, '一般', '網頁', 17, NULL, NULL),
(746, '一般', '響應式網頁', 19, NULL, NULL),
(747, '一般', '資料庫', 19, NULL, NULL),
(748, '一般', '網頁', 19, NULL, NULL),
(749, '一般', 'Stylus', 19, NULL, NULL),
(750, '一般', 'REST API', 19, NULL, NULL),
(751, '一般', 'PHP', 19, NULL, NULL),
(752, '一般', 'MySQL', 19, NULL, NULL),
(753, '一般', 'Laravel', 19, NULL, NULL),
(754, '一般', 'JavaScript', 19, NULL, NULL),
(755, '一般', 'HTML', 19, NULL, NULL),
(756, '一般', 'CSS', 19, NULL, NULL),
(757, '一般', 'Vue', 19, NULL, NULL),
(758, '一般', 'Vuetify', 19, NULL, NULL),
(759, '一般', 'SPA', 19, NULL, NULL),
(760, '年分', '2019', 20, NULL, NULL),
(761, '一般', '響應式網頁', 20, NULL, NULL),
(762, '一般', '網頁', 20, NULL, NULL),
(763, '一般', 'Vuetify', 20, NULL, NULL),
(764, '一般', 'Vue', 20, NULL, NULL),
(765, '一般', 'Stylus', 20, NULL, NULL),
(766, '一般', 'SPA', 20, NULL, NULL),
(767, '一般', 'JavaScript', 20, NULL, NULL),
(768, '一般', 'HTML', 20, NULL, NULL),
(769, '一般', 'CSS', 20, NULL, NULL),
(770, '一般', '響應式網頁', 21, NULL, NULL),
(779, '年分', '2019', 21, NULL, NULL),
(780, '一般', 'Laravel', 21, NULL, NULL),
(781, '一般', 'PHP', 21, NULL, NULL),
(782, '一般', 'Google Analytics', 21, NULL, NULL),
(783, '一般', 'Google Analytics', 20, NULL, NULL),
(785, '一般', 'CSS', 21, NULL, NULL),
(786, '一般', 'SPA', 21, NULL, NULL),
(787, '一般', '網頁', 21, NULL, NULL),
(788, '一般', 'Sass', 21, NULL, NULL),
(789, '一般', 'Vue', 21, NULL, NULL),
(790, '一般', 'Vuetify', 21, NULL, NULL),
(791, '一般', 'JavaScript', 21, NULL, NULL),
(792, '一般', 'HTML', 21, NULL, NULL),
(796, '年分', '2020', 22, NULL, NULL),
(797, '一般', '響應式網頁', 22, NULL, NULL),
(798, '一般', '資料庫', 22, NULL, NULL),
(799, '一般', '網頁', 22, NULL, NULL),
(800, '一般', 'Vue', 22, NULL, NULL),
(801, '一般', 'Quasar', 22, NULL, NULL),
(802, '一般', 'Sass', 22, NULL, NULL),
(803, '一般', 'SPA', 22, NULL, NULL),
(804, '一般', 'REST API', 22, NULL, NULL),
(805, '一般', 'MongoDB', 22, NULL, NULL),
(806, '一般', 'JavaScript', 22, NULL, NULL),
(807, '一般', 'CSS', 22, NULL, NULL),
(808, '一般', 'HTML', 22, NULL, NULL),
(809, '一般', 'Go', 22, NULL, NULL),
(810, '一般', '索引典', 22, NULL, NULL),
(811, '年分', '2020', 23, NULL, NULL),
(812, '一般', '響應式網頁', 23, NULL, NULL),
(813, '一般', 'Go', 23, NULL, NULL),
(814, '一般', '網頁', 23, NULL, NULL),
(815, '一般', 'Sass', 23, NULL, NULL),
(816, '一般', 'HTML', 23, NULL, NULL),
(817, '一般', 'CSS', 23, NULL, NULL),
(818, '一般', 'Bootstrap', 23, NULL, NULL),
(819, '一般', '聊天室', 23, NULL, NULL),
(820, '一般', 'WebSocket', 23, NULL, NULL),
(821, '一般', 'Docker', 23, NULL, NULL),
(822, '一般', 'Docker', 22, NULL, NULL),
(823, '年分', '2020', 24, NULL, NULL),
(824, '一般', 'Go', 24, NULL, NULL),
(825, '一般', 'Google Analytics', 24, NULL, NULL),
(826, '一般', '響應式網頁', 24, NULL, NULL),
(827, '一般', '網頁', 24, NULL, NULL),
(828, '一般', 'Vuetify', 24, NULL, NULL),
(829, '一般', 'Vue', 24, NULL, NULL),
(830, '一般', 'SPA', 24, NULL, NULL),
(831, '一般', 'CSS', 24, NULL, NULL),
(832, '一般', 'JavaScript', 24, NULL, NULL),
(833, '一般', 'HTML', 24, NULL, NULL),
(834, '一般', 'HTML', 25, NULL, NULL),
(835, '一般', '響應式網頁', 25, NULL, NULL),
(836, '一般', '網頁', 25, NULL, NULL),
(837, '一般', 'jQuery', 25, NULL, NULL),
(838, '一般', 'Google Analytics', 25, NULL, NULL),
(839, '一般', 'CSS', 25, NULL, NULL),
(840, '年分', '2020', 25, NULL, NULL),
(841, '年分', '2020', 26, NULL, NULL),
(842, '一般', '響應式網頁', 26, NULL, NULL),
(843, '一般', '資料庫', 26, NULL, NULL),
(844, '一般', '網頁', 26, NULL, NULL),
(845, '一般', 'Vuetify', 26, NULL, NULL),
(846, '一般', 'Vue', 26, NULL, NULL),
(847, '一般', 'Sass', 26, NULL, NULL),
(848, '一般', 'SPA', 26, NULL, NULL),
(849, '一般', 'REST API', 26, NULL, NULL),
(850, '一般', 'PHP', 26, NULL, NULL),
(851, '一般', 'MySQL', 26, NULL, NULL),
(852, '一般', 'Laravel', 26, NULL, NULL),
(853, '一般', 'JavaScript', 26, NULL, NULL),
(854, '一般', 'HTML', 26, NULL, NULL),
(855, '一般', 'CSS', 26, NULL, NULL),
(856, '一般', 'Webhook', 26, NULL, NULL),
(857, '一般', 'Bootstrap', 26, NULL, NULL),
(858, '一般', 'Localization', 26, NULL, NULL),
(859, '一般', 'CLI', 26, NULL, NULL),
(860, '一般', 'Localization', 19, NULL, NULL),
(861, '一般', 'PWA', 25, NULL, NULL),
(862, '一般', 'Bootstrap', 25, NULL, NULL),
(863, '一般', '響應式網頁', 27, NULL, NULL),
(864, '一般', '資料庫', 27, NULL, NULL),
(865, '一般', '網頁', 27, NULL, NULL),
(866, '一般', 'Vue', 27, NULL, NULL),
(867, '一般', 'SPA', 27, NULL, NULL),
(868, '一般', 'Sass', 27, NULL, NULL),
(869, '一般', 'REST API', 27, NULL, NULL),
(870, '一般', 'Vuetify', 27, NULL, NULL),
(871, '一般', 'MongoDB', 27, NULL, NULL),
(872, '一般', 'JavaScript', 27, NULL, NULL),
(873, '一般', 'HTML', 27, NULL, NULL),
(874, '一般', 'Go', 27, NULL, NULL),
(875, '一般', 'Docker', 27, NULL, NULL),
(876, '一般', 'Google Analytics', 27, NULL, NULL),
(877, '一般', 'CSS', 27, NULL, NULL),
(878, '一般', 'GraphQL', 27, NULL, NULL),
(879, '年分', '2021', 27, NULL, NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 資料表索引 `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `work_tags`
--
ALTER TABLE `work_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_tags_work_id_foreign` (`work_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `works`
--
ALTER TABLE `works`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `work_tags`
--
ALTER TABLE `work_tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=880;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `work_tags`
--
ALTER TABLE `work_tags`
  ADD CONSTRAINT `work_tags_work_id_foreign` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
