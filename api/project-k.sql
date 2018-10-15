-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 15, 2018 at 02:31 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-k`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_records`
--

CREATE TABLE `bank_records` (
  `trans_id` bigint(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `transaction_code` varchar(15) NOT NULL,
  `amt_transacted` double(10,2) NOT NULL,
  `bal_before` double(10,2) NOT NULL,
  `bal_after` double(10,2) NOT NULL,
  `date_time` datetime NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_records`
--

CREATE TABLE `mpesa_records` (
  `trans_id` bigint(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `transaction_code` varchar(15) NOT NULL,
  `amt_transacted` double(10,2) NOT NULL,
  `bal_before` double(10,2) NOT NULL,
  `bal_after` double(10,2) NOT NULL,
  `date_time` datetime NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mpesa_records`
--

INSERT INTO `mpesa_records` (`trans_id`, `fname`, `lname`, `transaction_code`, `amt_transacted`, `bal_before`, `bal_after`, `date_time`, `id`) VALUES
(1, 'Timothy', 'Nzoki', 'MJF9y5EX3i/Uw==', 9045.00, 0.00, 9045.00, '2018-10-15 02:19:47', 1),
(2, 'Timothy', 'Nzoki', 'MJFaIbiugrRrg==', 2267.00, 9045.00, 11312.00, '2018-10-15 02:19:47', 1),
(3, 'Timothy', 'Nzoki', 'MJF3Pn20UC7wA==', -996.00, 11312.00, 10316.00, '2018-10-15 02:19:47', 1),
(4, 'Timothy', 'Nzoki', 'MJF0hyTUiD2mQ==', -9005.00, 10316.00, 1311.00, '2018-10-15 02:19:47', 1),
(5, 'Timothy', 'Nzoki', 'MJFjCxULMEsNA==', 2843.00, 1311.00, 4154.00, '2018-10-15 02:19:47', 1),
(6, 'Timothy', 'Nzoki', 'MJFa1qrjMVYhw==', 1079.00, 4154.00, 5233.00, '2018-10-15 02:19:47', 1),
(7, 'Timothy', 'Nzoki', 'MJFtXmMChM5lw==', 3125.00, 5233.00, 8358.00, '2018-10-15 02:19:47', 1),
(8, 'Timothy', 'Nzoki', 'MJFD9MktcH8Xw==', -2855.00, 8358.00, 5503.00, '2018-10-15 02:19:47', 1),
(9, 'Timothy', 'Nzoki', 'MJFFeCkoVtHZg==', -1879.00, 5503.00, 3624.00, '2018-10-15 02:19:47', 1),
(10, 'Timothy', 'Nzoki', 'MJFzWmG1yOfXQ==', 9345.00, 3624.00, 12969.00, '2018-10-15 02:19:47', 1),
(11, 'Timothy', 'Nzoki', 'MJFvWv4j5Dljg==', 10685.00, 12969.00, 23654.00, '2018-10-15 02:19:47', 1),
(12, 'Timothy', 'Nzoki', 'MJFycANI0CUyQ==', -10413.00, 23654.00, 13241.00, '2018-10-15 02:19:47', 1),
(13, 'Timothy', 'Nzoki', 'MJFhMmKR5OZxw==', -3954.00, 13241.00, 9287.00, '2018-10-15 02:19:48', 1),
(14, 'Timothy', 'Nzoki', 'MJFyoLcPXeKEg==', -2703.00, 9287.00, 6584.00, '2018-10-15 02:19:48', 1),
(15, 'Timothy', 'Nzoki', 'MJFaDA8TnHO9Q==', -5247.00, 6584.00, 1337.00, '2018-10-15 02:19:48', 1),
(16, 'Timothy', 'Nzoki', 'MJFtkjF6mJz+g==', 9737.00, 1337.00, 11074.00, '2018-10-15 02:19:48', 1),
(17, 'Timothy', 'Nzoki', 'MJFUEj6KuMyVg==', -7235.00, 11074.00, 3839.00, '2018-10-15 02:19:48', 1),
(18, 'Timothy', 'Nzoki', 'MJFqGtSqv710g==', 4458.00, 3839.00, 8297.00, '2018-10-15 02:19:48', 1),
(19, 'Timothy', 'Nzoki', 'MJFF3VPN+eW4A==', -4239.00, 8297.00, 4058.00, '2018-10-15 02:19:48', 1),
(20, 'Timothy', 'Nzoki', 'MJF2YX/3DiVFA==', -2601.00, 4058.00, 1457.00, '2018-10-15 02:19:48', 1),
(21, 'Timothy', 'Nzoki', 'MJFkyA5cNIc1Q==', 2020.00, 1457.00, 3477.00, '2018-10-15 02:19:48', 1),
(22, 'Timothy', 'Nzoki', 'MJF6Z0bBfxv9g==', 5639.00, 3477.00, 9116.00, '2018-10-15 02:19:48', 1),
(23, 'Timothy', 'Nzoki', 'MJFxFybPyf8Ow==', 11559.00, 9116.00, 20675.00, '2018-10-15 02:19:48', 1),
(24, 'Timothy', 'Nzoki', 'MJFKM+yWu2BLw==', -3585.00, 20675.00, 17090.00, '2018-10-15 02:19:48', 1),
(25, 'Timothy', 'Nzoki', 'MJFzOnoTrDF2Q==', -1717.00, 17090.00, 15373.00, '2018-10-15 02:19:48', 1),
(26, 'Timothy', 'Nzoki', 'MJFqqrOmhYTlA==', 3652.00, 15373.00, 19025.00, '2018-10-15 02:19:48', 1),
(27, 'Timothy', 'Nzoki', 'MJFCdkSofMP6Q==', 3243.00, 19025.00, 22268.00, '2018-10-15 02:19:48', 1),
(28, 'Timothy', 'Nzoki', 'MJFEOWnP46dtg==', -2125.00, 22268.00, 20143.00, '2018-10-15 02:19:48', 1),
(29, 'Timothy', 'Nzoki', 'MJFXXLSzlnptg==', -1419.00, 20143.00, 18724.00, '2018-10-15 02:19:48', 1),
(30, 'Timothy', 'Nzoki', 'MJFtp84x1Hccg==', -4121.00, 18724.00, 14603.00, '2018-10-15 02:19:48', 1),
(31, 'Timothy', 'Nzoki', 'MJFDhXfAUdwrw==', -1196.00, 14603.00, 13407.00, '2018-10-15 02:19:48', 1),
(32, 'Timothy', 'Nzoki', 'MJFlZWJ3rT5nw==', -3315.00, 13407.00, 10092.00, '2018-10-15 02:19:48', 1),
(33, 'Timothy', 'Nzoki', 'MJFuNcR3sVa+Q==', -3775.00, 10092.00, 6317.00, '2018-10-15 02:19:48', 1),
(34, 'Timothy', 'Nzoki', 'MJFJ2VjsVNUZg==', -685.00, 6317.00, 5632.00, '2018-10-15 02:19:48', 1),
(35, 'Timothy', 'Nzoki', 'MJFPaMCwtahsw==', -2200.00, 5632.00, 3432.00, '2018-10-15 02:19:48', 1),
(36, 'Timothy', 'Nzoki', 'MJFllznoowglQ==', 211.00, 3432.00, 3643.00, '2018-10-15 02:19:48', 1),
(37, 'Timothy', 'Nzoki', 'MJFZganzKdv2w==', -2831.00, 3643.00, 812.00, '2018-10-15 02:19:48', 1),
(38, 'Timothy', 'Nzoki', 'MJFJnzKO/NVyQ==', 6527.00, 812.00, 7339.00, '2018-10-15 02:19:48', 1),
(39, 'Timothy', 'Nzoki', 'MJFpJsLvUj27Q==', -4497.00, 7339.00, 2842.00, '2018-10-15 02:19:48', 1),
(40, 'Timothy', 'Nzoki', 'MJFj7C/KXYKwg==', -2031.00, 2842.00, 811.00, '2018-10-15 02:19:48', 1),
(41, 'Timothy', 'Nzoki', 'MJFT0tiJ7h/Gg==', 5740.00, 811.00, 6551.00, '2018-10-15 02:19:48', 1),
(42, 'Timothy', 'Nzoki', 'MJFmsiO+qyIVA==', -5593.00, 6551.00, 958.00, '2018-10-15 02:19:48', 1),
(43, 'Timothy', 'Nzoki', 'MJF5vdDzbp2lA==', -802.00, 958.00, 156.00, '2018-10-15 02:19:49', 1),
(44, 'Timothy', 'Nzoki', 'MJFZzxkjIHNuw==', 4273.00, 156.00, 4429.00, '2018-10-15 02:19:49', 1),
(45, 'Timothy', 'Nzoki', 'MJFgm3bhdUwhQ==', 4437.00, 4429.00, 8866.00, '2018-10-15 02:19:49', 1),
(46, 'Timothy', 'Nzoki', 'MJF0ZZf91sShw==', -2952.00, 8866.00, 5914.00, '2018-10-15 02:19:49', 1),
(47, 'Timothy', 'Nzoki', 'MJFJ2wMYi7J+g==', -517.00, 5914.00, 5397.00, '2018-10-15 02:19:49', 1),
(48, 'Timothy', 'Nzoki', 'MJFs5LVHaUaiw==', -5122.00, 5397.00, 275.00, '2018-10-15 02:19:49', 1),
(49, 'Timothy', 'Nzoki', 'MJFXBFW9WEQRw==', 4506.00, 275.00, 4781.00, '2018-10-15 02:19:49', 1),
(50, 'Timothy', 'Nzoki', 'MJFljKKim6KUQ==', 11373.00, 4781.00, 16154.00, '2018-10-15 02:19:49', 1),
(51, 'Timothy', 'Nzoki', 'MJFhbB4oz6nJg==', 3644.00, 16154.00, 19798.00, '2018-10-15 02:19:49', 1),
(52, 'Timothy', 'Nzoki', 'MJFImaYMSI5ug==', 5842.00, 19798.00, 25640.00, '2018-10-15 02:19:49', 1),
(53, 'Timothy', 'Nzoki', 'MJF1XXMY6R/Hg==', 7665.00, 25640.00, 33305.00, '2018-10-15 02:19:49', 1),
(54, 'Timothy', 'Nzoki', 'MJFxA/1+ra9RA==', -5359.00, 33305.00, 27946.00, '2018-10-15 02:19:49', 1),
(55, 'Timothy', 'Nzoki', 'MJFbSmowurb4A==', 237.00, 27946.00, 28183.00, '2018-10-15 02:19:49', 1),
(56, 'Timothy', 'Nzoki', 'MJF6ZuAvzJcpA==', -2315.00, 28183.00, 25868.00, '2018-10-15 02:19:49', 1),
(57, 'Timothy', 'Nzoki', 'MJFZMieqtAoxA==', -4765.00, 25868.00, 21103.00, '2018-10-15 02:19:49', 1),
(58, 'Timothy', 'Nzoki', 'MJFzpACdhoKfQ==', 1929.00, 21103.00, 23032.00, '2018-10-15 02:19:49', 1),
(59, 'Timothy', 'Nzoki', 'MJFUXmj8DDglw==', -3914.00, 23032.00, 19118.00, '2018-10-15 02:19:49', 1),
(60, 'Timothy', 'Nzoki', 'MJFPk42A3N10A==', -2190.00, 19118.00, 16928.00, '2018-10-15 02:19:49', 1),
(61, 'Timothy', 'Nzoki', 'MJFUOrk4NgVwQ==', -3159.00, 16928.00, 13769.00, '2018-10-15 02:19:49', 1),
(62, 'Timothy', 'Nzoki', 'MJFygLtbxUvoQ==', 5521.00, 13769.00, 19290.00, '2018-10-15 02:19:49', 1),
(63, 'Timothy', 'Nzoki', 'MJF8hYpEqFt7A==', -3165.00, 19290.00, 16125.00, '2018-10-15 02:19:49', 1),
(64, 'Timothy', 'Nzoki', 'MJFZxWhagI6JQ==', 7807.00, 16125.00, 23932.00, '2018-10-15 02:19:49', 1),
(65, 'Timothy', 'Nzoki', 'MJFrSVEj0RuKQ==', -4228.00, 23932.00, 19704.00, '2018-10-15 02:19:49', 1),
(66, 'Timothy', 'Nzoki', 'MJFaEbWrieA+w==', -8109.00, 19704.00, 11595.00, '2018-10-15 02:19:49', 1),
(67, 'Timothy', 'Nzoki', 'MJFUEa2y62ZMw==', -5010.00, 11595.00, 6585.00, '2018-10-15 02:19:49', 1),
(68, 'Timothy', 'Nzoki', 'MJF2sEmM2M4wQ==', -5383.00, 6585.00, 1202.00, '2018-10-15 02:19:49', 1),
(69, 'Timothy', 'Nzoki', 'MJFP/7J4Sqx2Q==', 2715.00, 1202.00, 3917.00, '2018-10-15 02:19:49', 1),
(70, 'Timothy', 'Nzoki', 'MJFFvnPH1IpFg==', 1607.00, 3917.00, 5524.00, '2018-10-15 02:19:50', 1),
(71, 'Timothy', 'Nzoki', 'MJFUyz1+OMNxQ==', -1322.00, 5524.00, 4202.00, '2018-10-15 02:19:50', 1),
(72, 'Timothy', 'Nzoki', 'MJFd1SrZJpTiQ==', 4906.00, 4202.00, 9108.00, '2018-10-15 02:19:50', 1),
(73, 'Timothy', 'Nzoki', 'MJF2rEdP/ekDQ==', -3253.00, 9108.00, 5855.00, '2018-10-15 02:19:50', 1),
(74, 'Timothy', 'Nzoki', 'MJFS0obF9KaNA==', 2943.00, 5855.00, 8798.00, '2018-10-15 02:19:50', 1),
(75, 'Timothy', 'Nzoki', 'MJFo3yZgCjS5g==', 102.00, 8798.00, 8900.00, '2018-10-15 02:19:50', 1),
(76, 'Timothy', 'Nzoki', 'MJF8RrYniI9rQ==', -3529.00, 8900.00, 5371.00, '2018-10-15 02:19:50', 1),
(77, 'Timothy', 'Nzoki', 'MJFptNTuWPo+A==', 2616.00, 5371.00, 7987.00, '2018-10-15 02:19:50', 1),
(78, 'Timothy', 'Nzoki', 'MJFpc3WGJ20jg==', -5953.00, 7987.00, 2034.00, '2018-10-15 02:19:50', 1),
(79, 'Timothy', 'Nzoki', 'MJFrirtyoRoTA==', 1031.00, 2034.00, 3065.00, '2018-10-15 02:19:50', 1),
(80, 'Timothy', 'Nzoki', 'MJFnGVd2K35FA==', -81.00, 3065.00, 2984.00, '2018-10-15 02:19:50', 1),
(81, 'Timothy', 'Nzoki', 'MJFP69RnQMPyA==', -2037.00, 2984.00, 947.00, '2018-10-15 02:19:50', 1),
(82, 'Timothy', 'Nzoki', 'MJF8FGWwNHOTQ==', 3013.00, 947.00, 3960.00, '2018-10-15 02:19:50', 1),
(83, 'Timothy', 'Nzoki', 'MJFAlvOaDwjmg==', -1521.00, 3960.00, 2439.00, '2018-10-15 02:19:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `salt` varchar(15) NOT NULL,
  `hash` varchar(200) NOT NULL,
  `activated` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `phone`, `dob`, `salt`, `hash`, `activated`) VALUES
(1, 'Timothy', 'Nzoki', 'speedflakes@gmail.com', '+254798213405', '1999-03-10', '09c38ee862', 'BjaSsWyKs2XhmsmXkwVBLwUaIM0wOWMzOGVlODYy', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_records`
--
ALTER TABLE `bank_records`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `mpesa_records_ibfk_1` (`id`);

--
-- Indexes for table `mpesa_records`
--
ALTER TABLE `mpesa_records`
  ADD PRIMARY KEY (`trans_id`),
  ADD UNIQUE KEY `transaction_code` (`transaction_code`),
  ADD KEY `mpesa_records_ibfk_1` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_records`
--
ALTER TABLE `bank_records`
  MODIFY `trans_id` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mpesa_records`
--
ALTER TABLE `mpesa_records`
  MODIFY `trans_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `mpesa_records`
--
ALTER TABLE `mpesa_records`
  ADD CONSTRAINT `mpesa_records_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
