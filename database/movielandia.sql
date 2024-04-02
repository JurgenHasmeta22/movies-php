-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 04:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movielandia`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `serie_id` int(11) DEFAULT NULL,
  `episode_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `content`, `user_id`, `movie_id`, `serie_id`, `episode_id`) VALUES
(1, 'Comment 1', 6, 21, 27, 9),
(2, 'Comment 2', 24, 1, 24, 25),
(3, 'Comment 3', 24, 13, 22, 12),
(4, 'Comment 4', 22, 14, 2, 28),
(5, 'Comment 5', 15, 18, 18, 3),
(6, 'Comment 6', 22, 10, 13, 5),
(7, 'Comment 7', 16, 3, 28, 10),
(8, 'Comment 8', 25, 5, 11, 6),
(9, 'Comment 9', 30, 11, 24, 24),
(10, 'Comment 10', 21, 30, 26, 8),
(11, 'Comment 11', 25, 10, 5, 22),
(12, 'Comment 12', 6, 22, 4, 11),
(13, 'Comment 13', 12, 27, 9, 24),
(14, 'Comment 14', 2, 28, 14, 15),
(15, 'Comment 15', 4, 6, 14, 22),
(16, 'Comment 16', 6, 25, 15, 1),
(17, 'Comment 17', 20, 6, 1, 17),
(18, 'Comment 18', 20, 20, 8, 11),
(19, 'Comment 19', 28, 19, 10, 23),
(20, 'Comment 20', 23, 17, 15, 22),
(21, 'Comment 21', 7, 28, 29, 30),
(22, 'Comment 22', 1, 7, 29, 6),
(23, 'Comment 23', 3, 23, 19, 23),
(24, 'Comment 24', 28, 11, 1, 1),
(25, 'Comment 25', 2, 6, 24, 11),
(26, 'Comment 26', 13, 30, 23, 25),
(27, 'Comment 27', 24, 13, 25, 24),
(28, 'Comment 28', 17, 10, 30, 28),
(29, 'Comment 29', 19, 12, 1, 29),
(30, 'Comment 30', 22, 23, 16, 13);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_episode`
--

CREATE TABLE `tbl_episode` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_episode`
--

INSERT INTO `tbl_episode` (`id`, `title`, `season_id`) VALUES
(1, 'Episode 1', 29),
(2, 'Episode 2', 28),
(3, 'Episode 3', 23),
(4, 'Episode 4', 28),
(5, 'Episode 5', 11),
(6, 'Episode 6', 2),
(7, 'Episode 7', 7),
(8, 'Episode 8', 29),
(9, 'Episode 9', 4),
(10, 'Episode 10', 20),
(11, 'Episode 11', 29),
(12, 'Episode 12', 23),
(13, 'Episode 13', 29),
(14, 'Episode 14', 15),
(15, 'Episode 15', 16),
(16, 'Episode 16', 4),
(17, 'Episode 17', 4),
(18, 'Episode 18', 9),
(19, 'Episode 19', 29),
(20, 'Episode 20', 29),
(21, 'Episode 21', 29),
(22, 'Episode 22', 25),
(23, 'Episode 23', 9),
(24, 'Episode 24', 28),
(25, 'Episode 25', 24),
(26, 'Episode 26', 4),
(27, 'Episode 27', 8),
(28, 'Episode 28', 28),
(29, 'Episode 29', 23),
(30, 'Episode 30', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`id`, `title`, `release_year`, `description`) VALUES
(1, 'Movie 1', 1959, 'Description for Movie 1'),
(2, 'Movie 2', 1960, 'Description for Movie 2'),
(3, 'Movie 3', 1976, 'Description for Movie 3'),
(4, 'Movie 4', 1979, 'Description for Movie 4'),
(5, 'Movie 5', 2014, 'Description for Movie 5'),
(6, 'Movie 6', 1966, 'Description for Movie 6'),
(7, 'Movie 7', 1985, 'Description for Movie 7'),
(8, 'Movie 8', 2005, 'Description for Movie 8'),
(9, 'Movie 9', 1972, 'Description for Movie 9'),
(10, 'Movie 10', 1972, 'Description for Movie 10'),
(11, 'Movie 11', 1991, 'Description for Movie 11'),
(12, 'Movie 12', 2019, 'Description for Movie 12'),
(13, 'Movie 13', 1953, 'Description for Movie 13'),
(14, 'Movie 14', 1979, 'Description for Movie 14'),
(15, 'Movie 15', 2013, 'Description for Movie 15'),
(16, 'Movie 16', 1958, 'Description for Movie 16'),
(17, 'Movie 17', 1950, 'Description for Movie 17'),
(18, 'Movie 18', 1997, 'Description for Movie 18'),
(19, 'Movie 19', 1966, 'Description for Movie 19'),
(20, 'Movie 20', 1965, 'Description for Movie 20'),
(21, 'Movie 21', 1978, 'Description for Movie 21'),
(22, 'Movie 22', 1973, 'Description for Movie 22'),
(23, 'Movie 23', 1982, 'Description for Movie 23'),
(24, 'Movie 24', 1967, 'Description for Movie 24'),
(25, 'Movie 25', 2013, 'Description for Movie 25'),
(26, 'Movie 26', 1996, 'Description for Movie 26'),
(27, 'Movie 27', 1991, 'Description for Movie 27'),
(28, 'Movie 28', 2017, 'Description for Movie 28'),
(29, 'Movie 29', 2015, 'Description for Movie 29'),
(30, 'Movie 30', 2004, 'Description for Movie 30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_season`
--

CREATE TABLE `tbl_season` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `serie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_season`
--

INSERT INTO `tbl_season` (`id`, `title`, `release_year`, `serie_id`) VALUES
(1, 'Season 1', 2008, 27),
(2, 'Season 2', 2007, 1),
(3, 'Season 3', 2002, 15),
(4, 'Season 4', 2002, 4),
(5, 'Season 5', 2005, 26),
(6, 'Season 6', 2011, 28),
(7, 'Season 7', 2003, 30),
(8, 'Season 8', 2010, 12),
(9, 'Season 9', 2012, 19),
(10, 'Season 10', 2008, 3),
(11, 'Season 11', 2005, 29),
(12, 'Season 12', 2001, 15),
(13, 'Season 13', 2005, 23),
(14, 'Season 14', 2000, 27),
(15, 'Season 15', 2007, 2),
(16, 'Season 16', 2006, 7),
(17, 'Season 17', 2006, 23),
(18, 'Season 18', 2020, 6),
(19, 'Season 19', 2006, 24),
(20, 'Season 20', 2003, 12),
(21, 'Season 21', 2010, 4),
(22, 'Season 22', 2005, 27),
(23, 'Season 23', 2015, 22),
(24, 'Season 24', 2011, 14),
(25, 'Season 25', 2015, 3),
(26, 'Season 26', 2008, 21),
(27, 'Season 27', 2005, 8),
(28, 'Season 28', 2009, 9),
(29, 'Season 29', 2005, 10),
(30, 'Season 30', 2019, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_serie`
--

CREATE TABLE `tbl_serie` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_serie`
--

INSERT INTO `tbl_serie` (`id`, `title`, `release_year`) VALUES
(1, 'Serie 1', 2000),
(2, 'Serie 2', 2021),
(3, 'Serie 3', 2013),
(4, 'Serie 4', 2000),
(5, 'Serie 5', 2010),
(6, 'Serie 6', 2005),
(7, 'Serie 7', 2017),
(8, 'Serie 8', 2002),
(9, 'Serie 9', 2005),
(10, 'Serie 10', 2021),
(11, 'Serie 11', 2020),
(12, 'Serie 12', 2015),
(13, 'Serie 13', 2014),
(14, 'Serie 14', 2002),
(15, 'Serie 15', 2014),
(16, 'Serie 16', 2020),
(17, 'Serie 17', 2013),
(18, 'Serie 18', 2006),
(19, 'Serie 19', 2014),
(20, 'Serie 20', 2006),
(21, 'Serie 21', 2010),
(22, 'Serie 22', 2011),
(23, 'Serie 23', 2003),
(24, 'Serie 24', 2004),
(25, 'Serie 25', 2013),
(26, 'Serie 26', 2007),
(27, 'Serie 27', 2020),
(28, 'Serie 28', 2010),
(29, 'Serie 29', 2013),
(30, 'Serie 30', 2014);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `email`, `password`) VALUES
(1, 'user1', 'user1@example.com', 'password1'),
(2, 'user2', 'user2@example.com', 'password2'),
(3, 'user3', 'user3@example.com', 'password3'),
(4, 'user4', 'user4@example.com', 'password4'),
(5, 'user5', 'user5@example.com', 'password5'),
(6, 'user6', 'user6@example.com', 'password6'),
(7, 'user7', 'user7@example.com', 'password7'),
(8, 'user8', 'user8@example.com', 'password8'),
(9, 'user9', 'user9@example.com', 'password9'),
(10, 'user10', 'user10@example.com', 'password10'),
(11, 'user11', 'user11@example.com', 'password11'),
(12, 'user12', 'user12@example.com', 'password12'),
(13, 'user13', 'user13@example.com', 'password13'),
(14, 'user14', 'user14@example.com', 'password14'),
(15, 'user15', 'user15@example.com', 'password15'),
(16, 'user16', 'user16@example.com', 'password16'),
(17, 'user17', 'user17@example.com', 'password17'),
(18, 'user18', 'user18@example.com', 'password18'),
(19, 'user19', 'user19@example.com', 'password19'),
(20, 'user20', 'user20@example.com', 'password20'),
(21, 'user21', 'user21@example.com', 'password21'),
(22, 'user22', 'user22@example.com', 'password22'),
(23, 'user23', 'user23@example.com', 'password23'),
(24, 'user24', 'user24@example.com', 'password24'),
(25, 'user25', 'user25@example.com', 'password25'),
(26, 'user26', 'user26@example.com', 'password26'),
(27, 'user27', 'user27@example.com', 'password27'),
(28, 'user28', 'user28@example.com', 'password28'),
(29, 'user29', 'user29@example.com', 'password29'),
(30, 'user30', 'user30@example.com', 'password30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `serie_id` (`serie_id`),
  ADD KEY `episode_id` (`episode_id`);

--
-- Indexes for table `tbl_episode`
--
ALTER TABLE `tbl_episode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `season_id` (`season_id`);

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_season`
--
ALTER TABLE `tbl_season`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_id` (`serie_id`);

--
-- Indexes for table `tbl_serie`
--
ALTER TABLE `tbl_serie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_episode`
--
ALTER TABLE `tbl_episode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_season`
--
ALTER TABLE `tbl_season`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_serie`
--
ALTER TABLE `tbl_serie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD CONSTRAINT `tbl_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `tbl_comment_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `tbl_movie` (`id`),
  ADD CONSTRAINT `tbl_comment_ibfk_3` FOREIGN KEY (`serie_id`) REFERENCES `tbl_serie` (`id`),
  ADD CONSTRAINT `tbl_comment_ibfk_4` FOREIGN KEY (`episode_id`) REFERENCES `tbl_episode` (`id`);

--
-- Constraints for table `tbl_episode`
--
ALTER TABLE `tbl_episode`
  ADD CONSTRAINT `tbl_episode_ibfk_1` FOREIGN KEY (`season_id`) REFERENCES `tbl_season` (`id`);

--
-- Constraints for table `tbl_season`
--
ALTER TABLE `tbl_season`
  ADD CONSTRAINT `tbl_season_ibfk_1` FOREIGN KEY (`serie_id`) REFERENCES `tbl_serie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
