-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2019 年 10 月 10 日 20:19
-- サーバのバージョン： 5.7.26
-- PHP のバージョン: 7.3.8

SET SQL_MODE
= "NO_AUTO_VALUE_ON_ZERO";
SET time_zone
= "+00:00";

--
-- データベース: `kadai_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table`
(
  `id` int
(12) NOT NULL,
  `bookname` varchar
(64) COLLATE utf8_unicode_ci NOT NULL,
  `bookurl` text COLLATE utf8_unicode_ci,
  `bookcomment` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`
id`,
`bookname
`, `bookurl`, `bookcomment`, `indate`) VALUES
(1, 'イノベーション・オブ・ライフ', 'https://bookmeter.com/books/5661349', NULL, '2019-09-23 01:10:12'),
(2, '呪術誕生！！！', 'https://www.amazon.co.jp/%E5%B2%A1%E6%9C%AC%E5%A4%AA%E9%83%8E%E3%81%AE%E6%9C%AC%E3%80%881%E3%80%89%E5%91%AA%E8%A1%93%E8%AA%95%E7%94%9F-%E5%B2%A1%E6%9C%AC-%E5%A4%AA%E9%83%8E/dp/4622042568/', NULL, '2019-09-23 01:37:19'),
(3, 'Perfect Phrases for Managers and Supervisors, Second Edition', 'https://www.amazon.co.jp/dp/B0044XUHZ2/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1', 'ビジネスシーンで使う英語の言葉遣いについて、ネイティブスピーカーが学ぶ際に使う本。「部下を持つようになったら読む本」という位置づけで、相手と良好な関係を築きつつも、簡潔に的を絞って伝えるにはどうすればいいか、具体的な表現がたくさん紹介されている。', '2019-09-23 17:51:33'),
(4, '黒柳徹子', 'https://www.amazon.co.jp/%E7%AA%93%E3%81%8E%E3%82%8F%E3%81%AE%E3%83%88%E3%83%83%E3%83%88%E3%81%A1%E3%82%83%E3%82%93-%E8%AC%9B%E8%AB%87%E7%A4%BE%E6%96%87%E5%BA%AB-%E9%BB%92%E6%9F%B3-%E5%BE%B9%E5%AD%90/dp/4061832522', '私が幼稚園か小学生低学年の頃（高崎在住時期）に母が読んでいて印象に残っている本', '2019-09-29 16:06:13'),
(7, '小松徹也', 'あああ', 'ボクの起業物語', '2019-10-05 15:10:22'),
(8, 'wwww', 'wwww', 'wwww', '2019-10-10 18:28:03'),
(10, 'oooo', 'ooooo', 'ooooooooooo', '2019-10-10 19:38:52');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE `gs_user_table`
(
  `id` int
(12) NOT NULL,
  `name` varchar
(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar
(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar
(256) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int
(1) NOT NULL,
  `life_flg` int
(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`
id`,
`name
`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'テスト１管理者', 'test1', '$2y$10$h87kpiS4HximUyLHe8Bi9u0MhYLSehRzggERLwz4IHO5u6cUuEmAe', 1, 0),
(2, 'テスト2一般', 'test2', '$2y$10$/a0yZOJLDdSj0EUVCOpqCueAo5XDTIf.KBtluWskFnTfSvFCxFEFS', 0, 0),
(3, 'テスト3', 'test3', '$2y$10$8KJQAB7jAnTkuSpU/.eTYu7HxFejW0vOrex77iQQSLBxvHALUo6oG', 0, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
ADD PRIMARY KEY
(`id`);

--
-- テーブルのインデックス `gs_user_table`
--
ALTER TABLE `gs_user_table`
ADD PRIMARY KEY
(`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int
(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルのAUTO_INCREMENT `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int
(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
