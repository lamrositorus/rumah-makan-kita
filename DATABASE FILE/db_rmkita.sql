-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2023 at 08:41 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rmkita`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `date`) VALUES
(1, 'admin', '$2y$10$mI/hpZ59vGgjs/lPTQWLJu.I82O93AEJ3gwFycAjuibOjAGi9dcTm', 'admin123@gmail.com', '2021-02-26 16:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `dishesh`
--

CREATE TABLE `dishesh` (
  `d_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dishesh`
--

INSERT INTO `dishesh` (`d_id`, `r_id`, `name`, `about`, `price`, `img`) VALUES
(2, 1, 'Turkey Fajitas', 'Nikmati makanan Meksiko yang lezat dengan resep fajitas kalkun BBQ berasap dari Giulia Restro ini untuk menghabiskan sisa makanan kalkun atau hanya untuk membuat makan malam yang lezat! Berikan saja tendangan dengan saus Picante, paprika dan bawang, semua', 90000, 'turky.jfif'),
(3, 1, 'Hot Dog', 'Sosis utuh yang diawetkan dan dimasak tanpa kulit atau dimasukkan ke dalam casing, yang mungkin dikenal sebagai frankfurter, frank, furter, wiener, red hot, vienna, bologna, garlic bologna, atau knockwurst, dan yang dapat disajikan dalam roti atau roti gu', 450000, 'hotdog.jfif'),
(4, 1, 'Ham Burger', 'Sandwich yang terdiri dari satu atau lebih roti daging giling yang dimasak, biasanya daging sapi, ditempatkan di dalam irisan roti gulung atau roti. Patty dapat digoreng, dipanggang, diasap atau dipanggang dengan api. Epic Ham and Cheese Stuffed Bacon Bur', 500000, 'ham.jfif'),
(5, 1, 'Detroit-Style Pizza', 'Pizza tebal berpotongan persegi dengan lapisan bawah kerak yang renyah dan digoreng dipenuhi dengan keju leleh yang lezat. Hasil dari gaya pizza yang unik ini adalah bagian tengah yang lengket dan adonan dengan kerak luar yang renyah dan keju karamel yang', 500000, 'pizza.jfif'),
(6, 1, 'Pasta allArrabbiata', 'Pasta Arrabiata secara harfiah berarti \"pasta marah\" dalam bahasa Italia. Saus arrabiata (sugo all\'arrabbiata) adalah saus tomat pedas (marah) yang dibuat dengan banyak minyak zaitun, bawang putih, tomat cincang, dan serpihan paprika merah untuk memberika', 90000, 'pasta.jfif'),
(7, 1, 'Spaghetti Carbonara', 'Hanya spageti dan carbonara dibuat dengan pancetta atau bacon, telur, Parmesan, sedikit minyak zaitun, garam dan merica. Saus carbonara sutra dibuat ketika telur kocok dilemparkan dengan pasta panas dan sedikit lemak dari pancetta atau bacon.', 90000, 'spagetti.jfif'),
(11, 2, 'Currywurst', 'Currywurst adalah hidangan cepat saji asal Jerman yang terdiri dari sosis babi kukus dan goreng yang biasanya dipotong menjadi potongan-potongan seukuran gigitan dan dibumbui dengan saus kari, saus berdasarkan saus tomat berbumbu atau pasta tomat dengan t', 70000, 'curywurst.jpg'),
(12, 2, 'Mie Ayam', 'Mie Ayam Asli Solo', 15000, '22092021174747miee2.jpg'),
(24, 2, 'Bakso Daging', 'Bakso Daging', 20000, '22092021180735Bakso_mi_bihun1.jpg'),
(25, 2, 'Es jeruk lemon asli', 'Es jeruk lemon asli', 15000, '0610202109160311Jugosylicuadosquetequitanlaansiedadyteayudanabajardepeso.jpg'),
(26, 1, 'Es jeruk lemon asli', 'Es jeruk lemon asli', 15000, '0610202109160311Jugosylicuadosquetequitanlaansiedadyteayudanabajardepeso1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `r_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `o_hr` varchar(255) NOT NULL,
  `c_hr` varchar(255) NOT NULL,
  `o_days` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`r_id`, `c_id`, `name`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `img`) VALUES
(1, 9, 'MEJA 1', 'rumahmakankita@gmail.com', '0876876876876', 'www.rumahmakankita.com', '8am', '8pm', 'mon-sat', 'Free Wifi', 'grestro.jpg'),
(2, 8, 'MEJA 2', 'rumahmakankita@gmail.com', '0876876876876', 'www.rumahmakankita.com', '8am', '8pm', '24hr-x7', 'Free Wifi', 'vrfnb.jpg'),
(3, 8, 'MEJA 3', 'rumahmakankita@gmail.com', '0876876876876', 'www.rumahmakankita.com', '8am', '8pm', '24hr-x7', 'FREE WIFI', 'TOWNSEND.jpg'),
(4, 8, 'MEJA 4', 'rumahmakankita@gmail.com', '0876876876876', 'www.rumahmakankita.com', '8am', '8pm', '24hr-x7', 'FREE WIFI', 'artisan-cafe-berea-ky.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`) VALUES
(8, 'UMUM'),
(9, 'V I P');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`) VALUES
(24, 'Ari', 'bekati', 'ari', 'ria@gmail.com', '086012225470', '$2y$10$pl0kXL/4376t7les3MR5EeKVVZrGxTDzhNjCmqyzkjheeQs5zEJwG', 'jakarta utara'),
(28, 'wiwin', 'P', 'wiwin', 'wiwin@gmail.com', '08254580002', '$2y$10$S87MjBD29LIXmtegDjxa7uiGNKqUiLoMiecJ9vIRxUU9fCtdnfavO', 'rawamangun'),
(33, 'heri', 'Henry', 'hendri', 'henrdy@gmail.com', '085402225000', '$2y$10$yKsf5a6TcTBHEflcfJDKnOu6Hfsw1QNok58uvrj7YWemzM2yMLNZC', 'jatinegara'),
(34, 'juki', 'juki', 'juki', 'juki@gmail.com', '08758744260', '$2y$10$FvSDmYTKWLh9CWuhRUHsfuWqALfXwzR7jIC00y0ZSvTihaFCSnWeG', 'bekasi'),
(35, 'dila69', 'adhila', 'putri', 'adhil@gmail.com', '0822449879', '$2y$10$h7VfLBNtTSQbIZb89U0.8eBtIwdrOiDZdYRgqNom41kuQp70oi1ny', 'jember'),
(36, 'adhita1', 'adhita', 'putri', 'adhita@gmail.com', '0824567898', '$2y$10$nhz2PKMPJuN/I.Bvz778x.lYrz8z6En2vo2DkzIHyXi1UUtj..j9O', 'lumajang');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `success-date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `r_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`o_id`, `u_id`, `d_id`, `d_name`, `quantity`, `price`, `status`, `date`, `success-date`, `r_id`) VALUES
(18, 18, 9, 'Maltesers Tiramisu', 1, 4, 'closed', '2021-05-16 18:01:05', '2021-05-16 16:02:09', 3),
(20, 19, 10, 'Arancini', 1, 12, NULL, '2021-05-17 12:01:04', '2021-05-17 06:16:04', 6),
(21, 21, 18, 'Chimichanga', 1, 9, 'in process', '2021-05-17 13:38:29', '2021-05-17 12:21:29', 2),
(22, 23, 16, 'Sesame Chicken', 3, 33, 'closed', '2021-05-17 14:19:58', '2021-05-17 12:30:47', 4),
(23, 24, 1, 'Grilled Cheese Sandwich', 2, 12, NULL, '2021-05-17 14:30:02', '2021-05-17 08:45:02', 1),
(24, 24, 20, 'Chop Suey', 1, 8, 'closed', '2021-05-17 14:30:02', '2021-05-17 14:32:49', 2),
(25, 31, 7, 'Spaghetti Carbonara', 1, 9, NULL, '2021-05-17 14:38:44', '2021-05-17 08:53:44', 1),
(27, 32, 21, 'PoBoy', 2, 10, 'in process', '2021-05-17 15:55:55', '2021-05-17 13:57:23', 5),
(28, 34, 8, 'Toasted Ravioli', 4, 44, 'rejected', '2021-05-17 16:22:34', '2021-05-17 14:31:36', 2),
(34, 36, 12, 'Mie Ayam', 1, 15000, 'closed', '2023-03-12 17:35:42', '2023-03-12 16:38:31', 2),
(35, 36, 25, 'Es jeruk lemon asli', 1, 15000, 'closed', '2023-03-12 17:35:42', '2023-03-12 16:38:25', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `dishesh`
--
ALTER TABLE `dishesh`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishesh`
--
ALTER TABLE `dishesh`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
