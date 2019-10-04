-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2019 年 9 月 29 日 15:40
-- サーバのバージョン： 5.7.26
-- PHP のバージョン: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- データベース: `kadai_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `bookname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `bookurl` text COLLATE utf8_unicode_ci,
  `bookcomment` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `bookname`, `bookurl`, `bookcomment`, `indate`) VALUES
(1, 'イノベーション・オブ・ライフ', 'https://bookmeter.com/books/5661349', '人生とは？人生で大切なものは？を教えてくれた', '2019-09-23 01:10:12'),
(2, '呪術誕生', 'https://www.amazon.co.jp/%E5%B2%A1%E6%9C%AC%E5%A4%AA%E9%83%8E%E3%81%AE%E6%9C%AC%E3%80%881%E3%80%89%E5%91%AA%E8%A1%93%E8%AA%95%E7%94%9F-%E5%B2%A1%E6%9C%AC-%E5%A4%AA%E9%83%8E/dp/4622042568/', '芸術は爆発だ！！', '2019-09-23 01:37:19'),
(3, 'Perfect Phrases for Managers and Supervisors, Second Edition', 'https://www.amazon.co.jp/dp/B0044XUHZ2/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1', 'ビジネスシーンで使う英語の言葉遣いについて、ネイティブスピーカーが学ぶ際に使う本。「部下を持つようになったら読む本」という位置づけで、相手と良好な関係を築きつつも、簡潔に的を絞って伝えるにはどうすればいいか、具体的な表現がたくさん紹介されている。', '2019-09-23 17:51:33');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
