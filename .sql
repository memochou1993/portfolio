-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主機: localhost:3306
-- 產生時間： 2019 年 05 月 09 日 08:20
-- 伺服器版本: 5.6.43-cll-lve
-- PHP 版本： 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `memo_portfolio`
--

--
-- 資料表的匯出資料 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '周孝威', 'hoshizora19931120@hotmail.com', '$2y$10$TuG6pK/3w1GrBHjaCKXmLuudIAFFRmcqb7JSYVgaNQ7yjAAhWcoFy', 'RfEiCzhK6DCa3PxreOu7xz56aQbUcOvaQ2brAuGi99vTIwDDFE8iLpUtRIbb', '2018-04-05 08:52:56', '2018-04-05 08:52:56');

--
-- 資料表的匯出資料 `works`
--

INSERT INTO `works` (`id`, `title`, `date`, `content`, `full_text`, `created_at`, `updated_at`) VALUES
(1, '火車站查詢系統', '2014.02 - 2014.06', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以原生 PHP 5 實作的火車站查詢系統，是淡江大學資訊與圖書館學系二年級課程「電子計算機程式寫作」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>Image Map 瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>免登入服務</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及程式寫作。</p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/station/\" target=\"_blank\"><img alt=\"火車站查詢系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/1.jpg\" style=\"width:100%\" title=\"火車站查詢系統\" /></a></p>', 'title:火車站查詢系統;date:2014.02 - 2014.06;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以原生 PHP 5 實作的火車站查詢系統，是淡江大學資訊與圖書館學系二年級課程「電子計算機程式寫作」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>Image Map 瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>免登入服務</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及程式寫作。</p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/station/\" target=\"_blank\"><img alt=\"火車站查詢系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/1.jpg\" style=\"width:100%\" title=\"火車站查詢系統\" /></a></p>;tag:資料庫,網站,PHP,MySQL,Image Map,HTML,CSS,2014;', '2018-04-02 18:43:45', '2018-04-17 19:18:05'),
(2, '周孝威報告集（2012 - 2017）', '2017.06', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以原生 PHP 7 實作的個人數位典藏平台，收錄淡江大學資訊與圖書館學系 4 年，及日本國立山口大學 1&nbsp;年的學習成果。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>收錄完整</li>\r\n	<li>全文下載</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>標記分類</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/collection/\" target=\"_blank\"><img alt=\"周孝威報告集（2012 - 2017）\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/2.jpg\" style=\"width:100%\" title=\"周孝威報告集（2012 - 2017）\" /></a></p>', 'title:周孝威報告集（2012 - 2017）;date:2017.06;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以原生 PHP 7 實作的個人數位典藏平台，收錄淡江大學資訊與圖書館學系 4 年，及日本國立山口大學 1&nbsp;年的學習成果。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>收錄完整</li>\r\n	<li>全文下載</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>標記分類</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/collection/\" target=\"_blank\"><img alt=\"周孝威報告集（2012 - 2017）\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/2.jpg\" style=\"width:100%\" title=\"周孝威報告集（2012 - 2017）\" /></a></p>;tag:資料庫,網站,數位典藏,報告集,PHP,MySQL,HTML,CSS,cPanel,2017;', '2018-04-02 19:01:01', '2018-04-17 21:07:21'),
(3, '卡通動畫訂購系統', '2014.09 - 2015.01', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以原生 PHP 5 實作的卡通動畫訂購系統，是淡江大學資訊與圖書館學系三年級課程「資料庫概論」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>登入驗證、權限管理</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>熱門檢索詞</li>\r\n	<li>留言版</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及程式寫作。</p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/cartoon/\" target=\"_blank\"><img alt=\"卡通動畫訂購系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/3.jpg\" style=\"width:100%\" title=\"卡通動畫訂購系統\" /></a></p>', 'title:卡通動畫訂購系統;date:2014.09 - 2015.01;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以原生 PHP 5 實作的卡通動畫訂購系統，是淡江大學資訊與圖書館學系三年級課程「資料庫概論」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>登入驗證、權限管理</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>熱門檢索詞</li>\r\n	<li>留言版</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及程式寫作。</p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/cartoon/\" target=\"_blank\"><img alt=\"卡通動畫訂購系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/3.jpg\" style=\"width:100%\" title=\"卡通動畫訂購系統\" /></a></p>;tag:資料庫,網站,PHP,MySQL,HTML,CSS,2015,2014;', '2018-04-02 19:34:02', '2018-04-17 19:17:26'),
(4, '竹北高中動畫社網站', '2016.04', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Wordpress 架設的社團網站，供高中學弟妹使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>響應式網頁</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索</li>\r\n	<li>登入驗證、權限管理</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>留言版</li>\r\n	<li>發信</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><a href=\"http://cpac.epoch.tw/\" target=\"_blank\" title=\"竹北高中動畫社官方網站\"><img alt=\"竹北高中動畫社官方網站\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/4.jpg\" style=\"width:100%\" title=\"竹北高中動畫社官方網站\" /></a></p>', 'title:竹北高中動畫社網站;date:2016.04;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Wordpress 架設的社團網站，供高中學弟妹使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>響應式網頁</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索</li>\r\n	<li>登入驗證、權限管理</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>留言版</li>\r\n	<li>發信</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><a href=\"http://cpac.epoch.tw/\" target=\"_blank\" title=\"竹北高中動畫社官方網站\"><img alt=\"竹北高中動畫社官方網站\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/4.jpg\" style=\"width:100%\" title=\"竹北高中動畫社官方網站\" /></a></p>;tag:響應式網頁,資料庫,網站,Wordpress,MySQL,Google Analytics,cPanel,2016;', '2018-04-02 19:58:08', '2018-05-11 08:54:46'),
(5, '竹北高中動畫社線上公用目錄系統', '2017.04', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以原生 PHP 7 實作的線上公用目錄系統，供學弟妹查詢社團藏書使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>後分類</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>熱門檢索詞</li>\r\n	<li>Dublin Core 資料欄位</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>前台</strong></p>\r\n\r\n<p><a href=\"http://cpac.epoch.tw/opac/\" target=\"_blank\"><img alt=\"竹北高中動畫社線上公用目錄系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/5.jpg\" style=\"width:100%\" title=\"竹北高中動畫社線上公用目錄系統\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【詳細編目】</strong></p>\r\n\r\n<p><a href=\"http://cpac.epoch.tw/opac/\" target=\"_blank\"><img alt=\"竹北高中動畫社線上公用目錄系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/5-2.jpg\" style=\"width:100%\" title=\"竹北高中動畫社線上公用目錄系統\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【簡易編目】</strong></p>\r\n\r\n<p><a href=\"http://cpac.epoch.tw/opac/\" target=\"_blank\"><img alt=\"竹北高中動畫社線上公用目錄系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/5-3.jpg\" style=\"width:100%\" title=\"竹北高中動畫社線上公用目錄系統\" /></a></p>', 'title:竹北高中動畫社線上公用目錄系統;date:2017.04;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以原生 PHP 7 實作的線上公用目錄系統，供學弟妹查詢社團藏書使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>後分類</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>熱門檢索詞</li>\r\n	<li>Dublin Core 資料欄位</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>前台</strong></p>\r\n\r\n<p><a href=\"http://cpac.epoch.tw/opac/\" target=\"_blank\"><img alt=\"竹北高中動畫社線上公用目錄系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/5.jpg\" style=\"width:100%\" title=\"竹北高中動畫社線上公用目錄系統\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【詳細編目】</strong></p>\r\n\r\n<p><a href=\"http://cpac.epoch.tw/opac/\" target=\"_blank\"><img alt=\"竹北高中動畫社線上公用目錄系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/5-2.jpg\" style=\"width:100%\" title=\"竹北高中動畫社線上公用目錄系統\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【簡易編目】</strong></p>\r\n\r\n<p><a href=\"http://cpac.epoch.tw/opac/\" target=\"_blank\"><img alt=\"竹北高中動畫社線上公用目錄系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/5-3.jpg\" style=\"width:100%\" title=\"竹北高中動畫社線上公用目錄系統\" /></a></p>;tag:資料庫,網站,後分類,PHP,OPAC,MySQL,HTML,Dublin Core,CSS,cPanel,2017;', '2018-04-02 20:48:33', '2018-04-20 18:38:01'),
(6, '淡江大學課程評價系統', '2017.01', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以原生 PHP 7 實作的課程評價系統，供同學對學習課程進行評價、討論使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>留言版</li>\r\n	<li>免註冊服務</li>\r\n	<li>評分</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>【評價】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/ucourse/\" target=\"_blank\"><img alt=\"淡江大學課程評價系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/6.jpg\" style=\"width:100%\" title=\"淡江大學課程評價系統\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>【問題】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/ucourse/\" target=\"_blank\"><img alt=\"淡江大學課程評價系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/6-2.jpg\" style=\"width:100%\" title=\"淡江大學課程評價系統\" /></a></p>', 'title:淡江大學課程評價系統;date:2017.01;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以原生 PHP 7 實作的課程評價系統，供同學對學習課程進行評價、討論使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>留言版</li>\r\n	<li>免註冊服務</li>\r\n	<li>評分</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>【評價】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/ucourse/\" target=\"_blank\"><img alt=\"淡江大學課程評價系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/6.jpg\" style=\"width:100%\" title=\"淡江大學課程評價系統\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>【問題】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/ucourse/\" target=\"_blank\"><img alt=\"淡江大學課程評價系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/6-2.jpg\" style=\"width:100%\" title=\"淡江大學課程評價系統\" /></a></p>;tag:資料庫,網站,PHP,MySQL,HTML,CSS,cPanel,2017;', '2018-04-02 21:01:04', '2018-04-20 18:37:07'),
(7, '便當訂購系統', '2017.09', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以原生 PHP 7 實作的便當訂購系統，供同袍於服役期間訂購便當使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>登入驗證</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　系統之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>【店家】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/bento/\" target=\"_blank\"><img alt=\"國史館便當訂購系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/7.jpg\" style=\"width:100%\" title=\"國史館便當訂購系統\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>【結帳】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/bento/\" target=\"_blank\"><img alt=\"國史館便當訂購系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/7-2.jpg\" style=\"width:100%\" title=\"國史館便當訂購系統\" /></a></p>', 'title:便當訂購系統;date:2017.09;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以原生 PHP 7 實作的便當訂購系統，供同袍於服役期間訂購便當使用。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>登入驗證</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　系統之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>【店家】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/bento/\" target=\"_blank\"><img alt=\"國史館便當訂購系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/7.jpg\" style=\"width:100%\" title=\"國史館便當訂購系統\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>【結帳】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/bento/\" target=\"_blank\"><img alt=\"國史館便當訂購系統\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/7-2.jpg\" style=\"width:100%\" title=\"國史館便當訂購系統\" /></a></p>;tag:資料庫,網站,PHP,MySQL,HTML,CSS,cPanel,2017;', '2018-04-02 21:41:35', '2018-05-11 10:16:18'),
(8, '作業上傳平台', '2017.10', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p><span style=\"background-color:#ffffff; color:#333333; font-family:Arial,\">　　以原生 PHP 7 實作的作業上傳平台，</span><span style=\"background-color:#ffffff; color:#333333\">供學弟於擔任助教期間</span><span style=\"background-color:#ffffff; color:#333333; font-family:Arial,\">發布、下載、批改作業使用。</span></p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>登入驗證、權限管理</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>自訂環境參數</li>\r\n	<li>檔案上傳</li>\r\n	<li>資料匯入</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　系統之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>前台【上傳檔案】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/uploader/\" target=\"_blank\"><img alt=\"作業上傳平台\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/8.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【公告】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/uploader/\" target=\"_blank\"><img alt=\"作業上傳平台\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/8-2.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【作業】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/uploader/\" target=\"_blank\"><img alt=\"作業上傳平台\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/8-3.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【設定】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/uploader/\" target=\"_blank\"><img alt=\"作業上傳平台\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/8-4.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></a></p>', 'title:作業上傳平台;date:2017.10;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p><span style=\"background-color:#ffffff; color:#333333; font-family:Arial,\">　　以原生 PHP 7 實作的作業上傳平台，</span><span style=\"background-color:#ffffff; color:#333333\">供學弟於擔任助教期間</span><span style=\"background-color:#ffffff; color:#333333; font-family:Arial,\">發布、下載、批改作業使用。</span></p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫　　</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索、特定欄位檢索</li>\r\n	<li>登入驗證、權限管理</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>自訂環境參數</li>\r\n	<li>檔案上傳</li>\r\n	<li>資料匯入</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　系統之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>前台【上傳檔案】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/uploader/\" target=\"_blank\"><img alt=\"作業上傳平台\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/8.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【公告】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/uploader/\" target=\"_blank\"><img alt=\"作業上傳平台\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/8-2.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【作業】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/uploader/\" target=\"_blank\"><img alt=\"作業上傳平台\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/8-3.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【設定】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/uploader/\" target=\"_blank\"><img alt=\"作業上傳平台\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/8-4.jpg\" style=\"width:100%\" title=\"作業上傳平台\" /></a></p>;tag:資料庫,網站,PHP,MySQL,HTML,CSS,cPanel,Bootstrap,2017;', '2018-04-02 22:17:22', '2018-04-20 18:39:48'),
(9, '個人數位典藏平台', '2018.01', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Omeka 架設的個人數位典藏平台。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>響應式網頁</li>\r\n	<li>單件描述</li>\r\n	<li>合集描述</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>Dublin Core 資料欄位</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>前台</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/omeka/\" target=\"_blank\"><img alt=\"Omeka\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/9.jpg\" style=\"width:100%\" title=\"Omeka\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/omeka/\" target=\"_blank\"><img alt=\"Omeka\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/9-2.jpg\" style=\"width:100%\" title=\"Omeka\" /></a></p>', 'title:個人數位典藏平台;date:2018.01;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Omeka 架設的個人數位典藏平台。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>響應式網頁</li>\r\n	<li>單件描述</li>\r\n	<li>合集描述</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>Dublin Core 資料欄位</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p style=\"text-align:center\"><strong>前台</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/omeka/\" target=\"_blank\"><img alt=\"Omeka\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/9.jpg\" style=\"width:100%\" title=\"Omeka\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/omeka/\" target=\"_blank\"><img alt=\"Omeka\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/9-2.jpg\" style=\"width:100%\" title=\"Omeka\" /></a></p>;tag:響應式網頁,資料庫,網站,數位典藏,報告集,Omeka,MySQL,Dublin Core,cPanel,2018;', '2018-04-03 01:41:08', '2018-04-20 18:00:26'),
(10, '廣太洋酒網站', '2018.01 - 2018.03', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 5.5 及 Bootstrap 4 實作的商業網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索</li>\r\n	<li>後分類</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>自訂環境參數</li>\r\n	<li>熱門檢索詞</li>\r\n	<li>簡單協同過濾</li>\r\n	<li>候選詞提示（後台）</li>\r\n	<li>檔案上傳（後台）</li>\r\n	<li>網頁文字編輯器（後台）</li>\r\n	<li>發信</li>\r\n	<li>圖片預覽</li>\r\n	<li>Google reCAPTCHA</li>\r\n	<li>Google Analytics</li>\r\n	<li>Web Font</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/kuntai\" target=\"_blank\" title=\"GitHub\">GitHub</a></p>\r\n\r\n<p style=\"text-align:center\"><strong>前台【首頁】</strong></p>\r\n\r\n<p><a href=\"http://kuntai.epoch.tw/\" target=\"_blank\"><img alt=\"廣太洋酒\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/10.jpg\" style=\"width:100%\" title=\"廣太洋酒\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【品項：新增】</strong></p>\r\n\r\n<p><a href=\"http://kuntai.epoch.tw/\" target=\"_blank\"><img alt=\"廣太洋酒\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/10-2.jpg\" style=\"width:100%\" title=\"廣太洋酒\" /></a></p>', 'title:廣太洋酒網站;date:2018.01 - 2018.03;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 5.5 及 Bootstrap 4 實作的商業網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>主題瀏覽</li>\r\n	<li>全文檢索</li>\r\n	<li>後分類</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>自訂環境參數</li>\r\n	<li>熱門檢索詞</li>\r\n	<li>簡單協同過濾</li>\r\n	<li>候選詞提示（後台）</li>\r\n	<li>檔案上傳（後台）</li>\r\n	<li>網頁文字編輯器（後台）</li>\r\n	<li>發信</li>\r\n	<li>圖片預覽</li>\r\n	<li>Google reCAPTCHA</li>\r\n	<li>Google Analytics</li>\r\n	<li>Web Font</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/kuntai\" target=\"_blank\" title=\"GitHub\">GitHub</a></p>\r\n\r\n<p style=\"text-align:center\"><strong>前台【首頁】</strong></p>\r\n\r\n<p><a href=\"http://kuntai.epoch.tw/\" target=\"_blank\"><img alt=\"廣太洋酒\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/10.jpg\" style=\"width:100%\" title=\"廣太洋酒\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【品項：新增】</strong></p>\r\n\r\n<p><a href=\"http://kuntai.epoch.tw/\" target=\"_blank\"><img alt=\"廣太洋酒\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/10-2.jpg\" style=\"width:100%\" title=\"廣太洋酒\" /></a></p>;tag:響應式網頁,資料庫,網站,後分類,Web Font,Sass,PHP,MySQL,Laravel,jQuery UI,jQuery,JavaScript,HTML,GitHub,CSS,cPanel,Bootstrap,AJAX,2018;', '2018-04-03 02:33:35', '2018-05-20 17:08:24'),
(11, '癌症索引典', '2014.09 - 2015.01', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 HTML 及 InDesign 實作的圖形索引典，是淡江大學資訊與圖書館學系三年級課程「索引及摘要」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>圖形索引典</li>\r\n	<li>互動式文件</li>\r\n	<li>書籤</li>\r\n	<li>超連結</li>\r\n	<li>交互參照</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及內容排版、程式寫作。</p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/cancer/\" target=\"_blank\"><img alt=\"癌症索引典\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/11.jpg\" style=\"width:100%\" title=\"癌症索引典\" /></a></p>', 'title:癌症索引典;date:2014.09 - 2015.01;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 HTML 及 InDesign 實作的圖形索引典，是淡江大學資訊與圖書館學系三年級課程「索引及摘要」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>圖形索引典</li>\r\n	<li>互動式文件</li>\r\n	<li>書籤</li>\r\n	<li>超連結</li>\r\n	<li>交互參照</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及內容排版、程式寫作。</p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/projects/cancer/\" target=\"_blank\"><img alt=\"癌症索引典\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/11.jpg\" style=\"width:100%\" title=\"癌症索引典\" /></a></p>;tag:電子書,網站,索引典,排版,互動式文件,InDesign,HTML,CSS,2015,2014;', '2018-04-03 02:55:38', '2018-04-17 19:17:44'),
(12, '國史館臺北閱覽室平面圖', '2018.01', '<p>　　使用 InDesign 製作的平面圖。</p>\r\n\r\n<p style=\"text-align:center\"><strong>印刷版（面西）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖印刷版（面西）\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/12.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖印刷版（面西）\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>印刷版（面南）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖印刷版（面南）\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/12-2.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖印刷版（面南）\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>網頁版（面北）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖網頁版（面北）\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/12-3.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖網頁版（面北）\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>網頁版（面西）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖網頁版（面西）\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/12-4.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖網頁版（面西）\" /></p>', 'title:國史館臺北閱覽室平面圖;date:2018.01;content:<p>　　使用 InDesign 製作的平面圖。</p>\r\n\r\n<p style=\"text-align:center\"><strong>印刷版（面西）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖印刷版（面西）\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/12.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖印刷版（面西）\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>印刷版（面南）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖印刷版（面南）\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/12-2.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖印刷版（面南）\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>網頁版（面北）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖網頁版（面北）\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/12-3.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖網頁版（面北）\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>網頁版（面西）</strong></p>\r\n\r\n<p><img alt=\"國史館臺北閱覽室平面圖網頁版（面西）\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/12-4.jpg\" style=\"width:100%\" title=\"國史館臺北閱覽室平面圖網頁版（面西）\" /></p>;tag:排版,平面圖,印刷,InDesign;', '2018-04-03 05:26:18', '2018-04-26 12:46:09'),
(13, '國史館影片光碟封面', '2018.03', '<p>　　使用 InDesign 製作的影片光碟封面。</p>\r\n\r\n<p><img alt=\"國史館光碟封面\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/13.jpg\" style=\"width:100%\" title=\"國史館光碟封面\" /></p>', 'title:國史館影片光碟封面;date:2018.03;content:<p>　　使用 InDesign 製作的影片光碟封面。</p>\r\n\r\n<p><img alt=\"國史館光碟封面\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/13.jpg\" style=\"width:100%\" title=\"國史館光碟封面\" /></p>;tag:排版,印刷,InDesign;', '2018-04-03 05:36:27', '2018-04-20 17:53:05'),
(14, '資源示意圖：性別平等', '2013.09 - 2014.01', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 InDesign 實作的資源示意圖，是淡江大學資訊與圖書館學系二年級課程「參考資源（二）」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>嚴謹的收錄標準及編排規則</li>\r\n	<li>互動式文件</li>\r\n	<li>書籤</li>\r\n	<li>超連結</li>\r\n	<li>交互參照</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及內容排版。</p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/collection/files/10102/TKU10102-010105-01.pdf\" target=\"_blank\"><img alt=\"資源示意圖：性別平等\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/14.jpg\" style=\"width:100%\" title=\"資源示意圖：性別平等\" /></a></p>', 'title:資源示意圖：性別平等;date:2013.09 - 2014.01;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 InDesign 實作的資源示意圖，是淡江大學資訊與圖書館學系二年級課程「參考資源（二）」的作業之一。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>嚴謹的收錄標準及編排規則</li>\r\n	<li>互動式文件</li>\r\n	<li>書籤</li>\r\n	<li>超連結</li>\r\n	<li>交互參照</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及內容排版。</p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/collection/files/10102/TKU10102-010105-01.pdf\" target=\"_blank\"><img alt=\"資源示意圖：性別平等\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/14.jpg\" style=\"width:100%\" title=\"資源示意圖：性別平等\" /></a></p>;tag:電子書,資源示意圖,排版,互動式文件,InDesign,2014,2013;', '2018-04-06 02:00:23', '2018-04-17 19:18:23'),
(15, '圖書目錄：日本動畫原著翻譯小說', '2012.09 - 2013.01', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 InDesign 實作的圖書目錄，是淡江大學資訊與圖書館學系一年級課程「參考資源（一）」的期末報告。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>嚴謹的收錄標準及編排規則</li>\r\n	<li>清楚的凡例說明及書後索引</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及書冊之編排、印刷。</p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/collection/files/10101/TKU10101-010105-01.pdf\" target=\"_blank\"><img alt=\"圖書目錄：日本動畫原著翻譯小說\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/15.jpg\" style=\"width:100%\" title=\"圖書目錄：日本動畫原著翻譯小說\" /></a></p>', 'title:圖書目錄：日本動畫原著翻譯小說;date:2012.09 - 2013.01;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 InDesign 實作的圖書目錄，是淡江大學資訊與圖書館學系一年級課程「參考資源（一）」的期末報告。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>嚴謹的收錄標準及編排規則</li>\r\n	<li>清楚的凡例說明及書後索引</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　資料之蒐集、彙整，及書冊之編排、印刷。</p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/collection/files/10101/TKU10101-010105-01.pdf\" target=\"_blank\"><img alt=\"圖書目錄：日本動畫原著翻譯小說\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/15.jpg\" style=\"width:100%\" title=\"圖書目錄：日本動畫原著翻譯小說\" /></a></p>;tag:電子書,排版,圖書目錄,印刷,InDesign,2013,2012;', '2018-04-06 02:11:01', '2018-04-17 19:19:17'),
(16, '短網址產生器', '2018.04', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 5.6&nbsp;及 Semantic UI&nbsp;2&nbsp;實作的工具網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>AJAX&nbsp;分頁切換</li>\r\n	<li>Google Analytics</li>\r\n	<li>Web Font</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/surl\" target=\"_blank\" title=\"GitHub\">GitHub</a></p>\r\n\r\n<p><a href=\"http://surl.epoch.tw/\" target=\"_blank\"><img alt=\"短網址產生器\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/16.jpg\" style=\"width:100%\" title=\"短網址產生器\" /></a></p>', 'title:短網址產生器;date:2018.04;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 5.6&nbsp;及 Semantic UI&nbsp;2&nbsp;實作的工具網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>免註冊服務</li>\r\n	<li>AJAX&nbsp;分頁切換</li>\r\n	<li>Google Analytics</li>\r\n	<li>Web Font</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/surl\" target=\"_blank\" title=\"GitHub\">GitHub</a></p>\r\n\r\n<p><a href=\"http://surl.epoch.tw/\" target=\"_blank\"><img alt=\"短網址產生器\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/16.jpg\" style=\"width:100%\" title=\"短網址產生器\" /></a></p>;tag:響應式網頁,資料庫,網站,Web Font,Semantic UI,Sass,PHP,MySQL,Laravel,jQuery UI,jQuery,JavaScript,HTML,Google Analytics,GitHub,CSS,cPanel,AJAX,2018;', '2018-04-15 00:15:04', '2018-05-08 00:22:47'),
(17, '周孝威部落格', '2018.04', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Hexo 及 GitHub 實作的部落格網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>響應式網頁</li>\r\n	<li>主題瀏覽</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>Disqus 留言版</li>\r\n	<li>Google Analytics</li>\r\n	<li>Web Font</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/blog\" target=\"_blank\" title=\"周孝威部落格\">GitHub</a></p>\r\n\r\n<p><a href=\"https://memochou1993.github.io\" target=\"_blank\"><img alt=\"周孝威部落格\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/17.jpg\" style=\"width:100%\" title=\"周孝威部落格\" /></a></p>', 'title:周孝威部落格;date:2018.04;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Hexo 及 GitHub 實作的部落格網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>響應式網頁</li>\r\n	<li>主題瀏覽</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>Disqus 留言版</li>\r\n	<li>Google Analytics</li>\r\n	<li>Web Font</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/blog\" target=\"_blank\" title=\"周孝威部落格\">GitHub</a></p>\r\n\r\n<p><a href=\"https://memochou1993.github.io\" target=\"_blank\"><img alt=\"周孝威部落格\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/17.jpg\" style=\"width:100%\" title=\"周孝威部落格\" /></a></p>;tag:響應式網頁,部落格,網站,Google Analytics,GitHub,Disqus,2018;', '2018-04-16 22:41:45', '2018-06-30 23:29:12'),
(18, '周孝威作品集（2012 - 2018）', '2018.04', '<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 5.5 及 Bootstrap 4 實作的個人網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>候選詞提示（後台）</li>\r\n	<li>網頁文字編輯器（後台）</li>\r\n	<li>Web font</li>\r\n	<li>REST style 路由</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/portfolio\" target=\"_blank\" title=\"GitHub\">GitHub</a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【編輯：基本】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/portfolio\"><img alt=\"周孝威作品集（2012 - 2018）\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/18.jpg\" style=\"width:100%\" title=\"周孝威作品集（2012 - 2018）\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【新增：標記】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/portfolio\"><img alt=\"周孝威作品集（2012 - 2018）\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/18-2.jpg\" style=\"width:100%\" title=\"周孝威作品集（2012 - 2018）\" /></a></p>', 'title:周孝威作品集（2012 - 2018）;date:2018.04;content:<p><strong>一、說　　明</strong></p>\r\n\r\n<p>　　以 Laravel 5.5 及 Bootstrap 4 實作的個人網站。</p>\r\n\r\n<p><strong>二、特　　色</strong></p>\r\n\r\n<ul>\r\n	<li>關聯式資料庫</li>\r\n	<li>響應式網頁</li>\r\n	<li>登入驗證</li>\r\n	<li>前後台系統</li>\r\n	<li>內容之增加、刪除、修改</li>\r\n	<li>標記分類</li>\r\n	<li>候選詞提示（後台）</li>\r\n	<li>網頁文字編輯器（後台）</li>\r\n	<li>Web font</li>\r\n	<li>REST style 路由</li>\r\n</ul>\r\n\r\n<p><strong>三、參與部分</strong></p>\r\n\r\n<p>　　網站及內容之建立。</p>\r\n\r\n<p><strong>四、程式碼</strong></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"https://github.com/memochou1993/portfolio\" target=\"_blank\" title=\"GitHub\">GitHub</a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【編輯：基本】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/portfolio\"><img alt=\"周孝威作品集（2012 - 2018）\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/18.jpg\" style=\"width:100%\" title=\"周孝威作品集（2012 - 2018）\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><strong>後台【新增：標記】</strong></p>\r\n\r\n<p><a href=\"http://memo.epoch.tw/portfolio\"><img alt=\"周孝威作品集（2012 - 2018）\" src=\"http://memo.epoch.tw/portfolio/storage/app/public/images/screenshots/original/18-2.jpg\" style=\"width:100%\" title=\"周孝威作品集（2012 - 2018）\" /></a></p>;tag:響應式網頁,資料庫,網站,Web Font,Sass,REST Style,PHP,MySQL,Laravel,jQuery UI,jQuery,JavaScript,HTML,GitHub,CSS,cPanel,Bootstrap,AJAX,2018;', '2018-04-17 19:57:26', '2018-05-08 00:22:31');

--
-- 資料表的匯出資料 `work_tags`
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
(347, '一般', 'cPanel', 2, NULL, '2018-04-07 09:17:16'),
(351, '年分', '2017', 2, NULL, '2018-04-07 09:17:16'),
(352, '一般', '數位典藏', 2, NULL, '2018-04-07 09:17:16'),
(367, '一般', '資料庫', 6, NULL, '2018-04-07 09:17:16'),
(368, '一般', 'PHP', 6, NULL, '2018-04-07 09:17:16'),
(369, '一般', 'HTML', 6, NULL, '2018-04-07 09:17:16'),
(370, '一般', 'CSS', 6, NULL, '2018-04-07 09:17:16'),
(371, '一般', 'cPanel', 6, NULL, '2018-04-07 09:17:16'),
(372, '年分', '2017', 6, NULL, '2018-04-07 09:17:16'),
(374, '一般', '資料庫', 5, NULL, '2018-04-07 09:17:16'),
(375, '一般', 'HTML', 5, NULL, '2018-04-07 09:17:16'),
(376, '一般', 'PHP', 5, NULL, '2018-04-07 09:17:16'),
(377, '一般', 'CSS', 5, NULL, '2018-04-07 09:17:16'),
(378, '一般', 'cPanel', 5, NULL, '2018-04-07 09:17:16'),
(379, '一般', 'OPAC', 5, NULL, '2018-04-07 09:17:16'),
(380, '年分', '2017', 5, NULL, '2018-04-07 09:17:16'),
(382, '一般', '資料庫', 7, NULL, '2018-04-07 09:17:16'),
(383, '一般', 'HTML', 7, NULL, '2018-04-07 09:17:16'),
(384, '一般', 'PHP', 7, NULL, '2018-04-07 09:17:16'),
(385, '一般', 'CSS', 7, NULL, '2018-04-07 09:17:16'),
(386, '一般', 'cPanel', 7, NULL, '2018-04-07 09:17:16'),
(387, '年分', '2017', 7, NULL, '2018-04-07 09:17:16'),
(389, '一般', '資料庫', 8, NULL, '2018-04-07 09:17:17'),
(390, '一般', 'HTML', 8, NULL, '2018-04-07 09:17:17'),
(391, '一般', 'PHP', 8, NULL, '2018-04-07 09:17:17'),
(392, '一般', 'CSS', 8, NULL, '2018-04-07 09:17:17'),
(393, '一般', 'cPanel', 8, NULL, '2018-04-07 09:17:17'),
(394, '年分', '2017', 8, NULL, '2018-04-07 09:17:17'),
(396, '一般', '資料庫', 4, NULL, '2018-04-07 09:17:17'),
(397, '一般', 'Wordpress', 4, NULL, '2018-04-07 09:17:17'),
(398, '一般', 'cPanel', 4, NULL, '2018-04-07 09:17:17'),
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
(492, '一般', 'cPanel', 10, NULL, '2018-04-07 09:17:17'),
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
(550, '一般', 'cPanel', 9, NULL, '2018-04-07 09:17:17'),
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
(660, '一般', '網站', 10, NULL, NULL),
(661, '一般', '網站', 9, NULL, NULL),
(662, '一般', '響應式網頁', 9, NULL, NULL),
(663, '一般', '網站', 7, NULL, NULL),
(664, '一般', '網站', 2, NULL, NULL),
(665, '一般', '網站', 5, NULL, NULL),
(666, '一般', '網站', 6, NULL, NULL),
(667, '一般', '網站', 4, NULL, NULL),
(668, '一般', '網站', 3, NULL, NULL),
(669, '一般', '網站', 11, NULL, NULL),
(670, '一般', '網站', 1, NULL, NULL),
(671, '一般', '響應式網頁', 16, NULL, NULL),
(672, '一般', '響應式網頁', 4, NULL, NULL),
(673, '一般', '網站', 8, NULL, NULL),
(674, '一般', '電子書', 15, NULL, NULL),
(675, '一般', '電子書', 11, NULL, NULL),
(676, '一般', '網站', 16, NULL, NULL),
(678, '一般', 'Sass', 16, NULL, NULL),
(680, '年分', '2018', 16, NULL, NULL),
(681, '一般', 'CSS', 16, NULL, NULL),
(682, '一般', 'cPanel', 16, NULL, NULL),
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
(699, '一般', '網站', 17, NULL, NULL),
(700, '一般', 'GitHub', 17, NULL, NULL),
(701, '一般', '部落格', 17, NULL, NULL),
(702, '年分', '2018', 17, NULL, NULL),
(703, '一般', 'Laravel', 18, NULL, NULL),
(704, '一般', 'PHP', 18, NULL, NULL),
(705, '一般', '響應式網頁', 18, NULL, NULL),
(706, '一般', 'REST Style', 18, NULL, NULL),
(707, '一般', '資料庫', 18, NULL, NULL),
(708, '一般', 'cPanel', 18, NULL, NULL),
(709, '一般', 'Bootstrap', 18, NULL, NULL),
(710, '一般', 'Sass', 18, NULL, NULL),
(711, '一般', 'CSS', 18, NULL, NULL),
(712, '一般', 'jQuery', 18, NULL, NULL),
(713, '一般', 'jQuery UI', 18, NULL, NULL),
(714, '一般', 'JavaScript', 18, NULL, NULL),
(715, '一般', 'AJAX', 18, NULL, NULL),
(716, '一般', '網站', 18, NULL, NULL),
(717, '一般', 'Web Font', 18, NULL, NULL),
(718, '一般', 'MySQL', 18, NULL, NULL),
(719, '一般', 'HTML', 18, NULL, NULL),
(721, '年分', '2018', 18, NULL, NULL),
(722, '一般', 'Dublin Core', 9, NULL, NULL),
(723, '一般', 'Dublin Core', 5, NULL, NULL),
(724, '一般', 'Google Analytics', 16, NULL, NULL),
(725, '一般', 'GitHub', 16, NULL, NULL),
(726, '一般', 'GitHub', 18, NULL, NULL),
(727, '一般', 'GitHub', 10, NULL, NULL),
(728, '一般', 'Google Analytics', 4, NULL, NULL),
(729, '一般', 'Google Analytics', 17, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
