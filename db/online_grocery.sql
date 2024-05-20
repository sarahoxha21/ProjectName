SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL,
  `image` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `mobile`, `email`, `password`, `image`) VALUES
(1, 'admin', '7756908815', 'admin@gmail.com', '12345', 'admin2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(6) NOT NULL,
  `itemid` int(6) NOT NULL,
  `userid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `itemid`, `userid`) VALUES
(21, 5, 2),
(22, 3, 3),
(23, 5, 3),
(25, 5, 0),
(26, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemid` int(9) NOT NULL,
  `Title` varchar(40) NOT NULL,
  `category` varchar(40) NOT NULL,
  `item_rating` int(3) NOT NULL,
  `image` varchar(90) NOT NULL,
  `discription` varchar(800) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemid`, `Title`, `category`, `item_rating`, `image`, `discription`, `price`) VALUES
(2, ' Green Peas, 500 g', 'FruitVegetables', 5, '10000283_11-fresho-green-peas.jpg', '70.00 ALL\r\n250 g \r\n1 kg', '70'),
(3, ' Banana, 1 kg ', 'FruitVegetables', 3, '10000025_24-fresho-banana-robusta.jpg', '200 ALL\r\n1 kg', '200'),
(4, 'Okra, 1 kg ', 'FruitVegetables', 2, '10000142_16-fresho-ladies-finger.jpg', '1 kg - 100 ALL\r\n250 g - 40 ALL\r\n500 g - 80 ALL', '100'),
(5, 'Tomato, 1 kg ', 'FruitVegetables', 5, '10000200_17-fresho-tomato-hybrid.jpg', '1 kg - 100 ALL\r\n500 g -50 ALL', '100'),
(6, 'Pomegranate, 1 kg ', 'FruitVegetables', 5, '20000708_14-fresho-pomegranate.jpg', '1 kg - 150 ALL\r\n500 g - 75 ALL', '150');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(3) NOT NULL,
  `cardnumber` int(10) NOT NULL,
  `card_expairy` varchar(60) NOT NULL,
  `cvc_code` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `userid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `cardnumber`, `card_expairy`, `cvc_code`, `amount`, `userid`) VALUES
(1, 2147483647, '11/19', 789, 101, 1),
(2, 2147483647, '03/22', 878, 62, 1),
(3, 2147483647, '12/21', 123, 82, 1),
(4, 2147483647, '21/19', 123, 0, 1),
(5, 2147483647, '22/2022', 212, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `name`, `mobile`, `email`, `password`) VALUES
(3, 'Grert', '0678776633', 'gerta@gmail.com', '12345'),
(4, 'admin@gmail.com', '', 's@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
