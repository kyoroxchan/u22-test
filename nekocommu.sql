-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-07-19 05:40:33
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `nekocommu`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_text` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `comment`
--

INSERT INTO `comment` (`comment_id`, `post_id`, `user_id`, `comment_text`) VALUES
(1, 13, 0, 'test'),
(2, 13, 0, 'ああああ'),
(3, 13, 0, 'ああああ');

-- --------------------------------------------------------

--
-- テーブルの構造 `post`
--

CREATE TABLE `post` (
  `post_id` int(9) NOT NULL,
  `id` varchar(12) NOT NULL,
  `image` varchar(999) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `detail` varchar(100) NOT NULL,
  `tag_name` varchar(120) NOT NULL,
  `post_point` int(9) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `post`
--

INSERT INTO `post` (`post_id`, `id`, `image`, `comment`, `detail`, `tag_name`, `post_point`) VALUES
(12, 'rokoko', 'rokoko20240705_122624_IMG_0387.JPG', '', 'ねこちゃん', 'まんとひひ', 0),
(13, 'nekoko', 'nekoko20240705_122656_IMG_0514.JPG', '', 'ぬこ', 'ちょこ', 0),
(14, 'nekoko', 'nekoko20240712_114452_Image.jpg', '', '二人が抱っこして寝てた\r\n#抱っこボーナス', 'ちょこ', 6000),
(16, 'nekoko', 'nekoko20240719_101053_IMG_0224.JPG', '', '寝てた　#睡眠', 'ちょこ', 0),
(17, 'rokoko', 'rokoko20240719_101314_IMG_0103.JPG', '', 'ハート型ねこちゃん　#ハート', 'ベンジャミン三世', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `user`
--

CREATE TABLE `user` (
  `id` varchar(12) NOT NULL,
  `name` varchar(12) NOT NULL DEFAULT 'unknown',
  `mail` varchar(36) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `profile_image` varchar(999) NOT NULL DEFAULT 'unknownUser.jpg',
  `profile_detail` varchar(60) NOT NULL DEFAULT '新規ユーザーです',
  `tag_name` varchar(120) NOT NULL DEFAULT 'ねこ',
  `point` int(9) NOT NULL DEFAULT 0,
  `pointAll` int(9) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `user`
--

INSERT INTO `user` (`id`, `name`, `mail`, `pass`, `profile_image`, `profile_detail`, `tag_name`, `point`, `pointAll`) VALUES
('nekoko', 'ねこ', 'neko@gmail.com', '111', '20240712_113533_IMG_0203.JPG', '猫大好き屋良', 'ちょこ', 197000, 3612500),
('rokoko', 'ろこ', 'roko@gmail.com', '111', '20240621_110350_dc665c0abf0f67228412092e24136808.jpg', '新規ユーザーです', 'まんとひひ かんま ベンジャミン三世 野村 トーマス ああああ', 80255, 212014);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- テーブルのインデックス `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- テーブルのインデックス `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルの AUTO_INCREMENT `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
