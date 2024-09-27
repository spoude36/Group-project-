-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2023 at 03:08 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
create DATABASE restaurant_db;
use restaurant_db;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_username` varchar(500) NOT NULL,
  `admin_password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_username`, `admin_password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone_number` varchar(500) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `first_name`, `last_name`, `email`, `phone_number`, `subject`, `message`) VALUES
(1, 'aaush', 'thapa', 'aaush@gmail.com', '123123', 'Feedback', 'good food.');

-- --------------------------------------------------------

--
-- Table structure for table `food_category`
--

CREATE TABLE `food_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(500) NOT NULL,
  `category_details` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_category`
--

INSERT INTO `food_category` (`category_id`, `category_name`, `category_details`) VALUES
(1, 'Momo', 'The category for storing different types of momo'),
(4, 'Biryani', 'The category for storing different types of Biryani'),
(7, 'Burger', 'DIfferent types of burgers.'),
(8, 'Pizza', 'Normal and special pizza');

-- --------------------------------------------------------

--
-- Table structure for table `food_menu`
--

CREATE TABLE `food_menu` (
  `food_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `food_name` varchar(500) NOT NULL,
  `food_price` double NOT NULL,
  `food_details` varchar(500) NOT NULL,
  `food_image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_menu`
--

INSERT INTO `food_menu` (`food_menu_id`, `category_id`, `food_name`, `food_price`, `food_details`, `food_image`) VALUES
(1, 1, 'Veg MoMo', 10.99, 'It is plain flour based dumplings steamed with cabbage, carrot and spring onion stuffing.', 'veg-momo.jpg'),
(2, 1, 'Chicken MoMo', 12.99, 'Chicken mince flavoured with soy sauce, chilies, pepper are stuffed inside a thin flour dough filling and then steamed', 'chicken-momo.jpeg'),
(4, 4, 'Veg Biryani', 9.05, 'An aromatic rice dish made with basmati rice, mix veggies, herbs & biryani spices', 'veg-birayni.jpg'),
(5, 4, 'Chicken Biryani', 12.05, 'A savory chicken and rice dish that includes layers of chicken, rice, and aromatics that are steamed together.', 'chicken-biryani.jpg'),
(6, 4, 'Fish Biryani', 11.05, 'A layered rice dish made with fish, basmati rice, spices & herbs', 'fish-birayni.jpg'),
(7, 4, 'Mutton Biryani', 15.05, 'A delicious rice dish where tender goat or lamb meat pieces are marinated with lots of fried onions, spices, herbs and yoghurt.', 'mutton-birayni.jpg'),
(8, 7, 'Veg Burger', 12, 'Made from ingredients like beans (especially soybeans and tofu), nuts, grains, seeds, or fungi such as mushrooms.', 'veg-burger.jpg'),
(9, 7, 'Chicken Burger', 15, 'A sandwich consisting of a patty made from ground chicken, served in a bun, typically hot and often with other ingredients.', 'chicken-burger.jpg'),
(10, 7, 'Special Burger', 22, 'This is the special burger of our local restaurant.', 'special-burger.jpg'),
(11, 8, 'Normal Pizza', 13, 'The flatbreads with tomato sauce, cheese, and toppings.', 'pizza1.jpeg'),
(12, 8, 'Special Pizza', 25, 'This is the special pizza of our local restaurant.', 'pizza2.png');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL,
  `reserved_by` varchar(500) NOT NULL,
  `phone_number` varchar(500) NOT NULL,
  `party_size` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `reserved_by`, `phone_number`, `party_size`, `date`, `time`) VALUES
(1, 'Aaush Thapa', '11111111', '3 Guests', '2023-08-25', '06:00 PM'),
(3, 'Rupesh', '22222', '2 Guests', '2023-08-26', '11:00 AM'),
(4, 'Jatten', '3333', '10+ Guests', '2023-08-27', '08:30 PM'),
(5, 'David', '55555', '3 Guests', '2023-08-25', '05:00 PM'),
(6, 'Ricky', '3434', '4 Guests', '2023-08-26', '08:00 PM'),
(7, 'Micheal', '73883', '2 Guests', '2023-08-26', '11:00 AM'),
(10, '', '123123', '', '0000-00-00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `food_category`
--
ALTER TABLE `food_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `food_menu`
--
ALTER TABLE `food_menu`
  ADD PRIMARY KEY (`food_menu_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `food_category`
--
ALTER TABLE `food_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `food_menu`
--
ALTER TABLE `food_menu`
  MODIFY `food_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
