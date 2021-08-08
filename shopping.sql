-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2018 at 02:34 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '25f9e794323b453885f5181f1b624d0b', '2017-01-24 16:21:18', '03-12-2018 02:47:54 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Laptops', 'All brand laptops', '2018-12-01 19:17:37', '03-12-2018 12:22:24 AM'),
(4, 'Computers ', 'All brand Computers', '2018-12-01 19:19:32', ''),
(5, 'Mobile ', 'All brand mobiles', '2018-12-01 19:19:54', ''),
(6, 'Accessories', 'Accessories of all electronics', '2018-12-01 19:18:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 3, '23', 1, '2018-12-02 15:16:46', 'COD', NULL),
(8, 3, '24', 1, '2018-12-02 16:39:21', 'COD', NULL),
(9, 3, '26', 1, '2018-12-03 05:56:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `review` longtext NOT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productCompany` varchar(255) NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productPriceBeforeDiscount` int(11) NOT NULL,
  `productDescription` longtext NOT NULL,
  `productImage1` varchar(255) NOT NULL,
  `productImage2` varchar(255) NOT NULL,
  `productImage3` varchar(255) NOT NULL,
  `shippingCharge` int(11) NOT NULL,
  `productAvailability` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(23, 3, 13, 'Lenovo Ideapad Core i5 7th Gen', 'Lenovo', 45990, 47861, 'Take your computing experience to a whole new exciting level with the IdeaPad 320. Featuring a sleek, stylish body this laptop is a treat for your eyes. It lets you multitask effortlessly without any lags, thanks to 8 GB of DDR4 RAM and an Intel Core i5 processor (7th Gen).', '01.jpeg', '01.jpg', '02.jpg', 100, 'In Stock', '2017-10-16 16:39:32', ''),
(24, 3, 15, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', 20990, 26590, '<li>Processor: AMD A6-9220 processor</li>\n<li>Operating System: Preinstalled Windows 10 with Lifetime validity</li>\n<li>Display: 14-inch | Antiglare display</li>\n<li>Memory & Storage: 4GB DDR4 RAM |Storage: 500GB HDD</li>\n</li>Design & battery: Laptop weight 2.1 kg | Battery Life: Upto 4 hours</li>\n<li>Warranty: This genuine Lenovo laptop comes with 1 year domestic warranty from Lenovo covering manufacturing defects and not covering physical damage, for more details, see warranty section below</li>\n<li>In the Box: Laptop included with battery, charger and user manual</li>\n<li>Ports & CD drive: 1 USB 2.0 | 1 USB 3.0 | 1 HDMI | 4-in-1 card reader (SD,SDHC,SDXC,MMC) | Combo audio and microphone jack | Without CD-drive | 1 LAN port</li>', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 'lenovo-ideapad-notebook-original-1.jpeg', 100, 'Out of Stock', '2017-10-16 16:41:02', ''),
(25, 6, 17, 'Affix Back Cover for Mi Redmi Note 4', 'Mi Redmi Note ', 300, 500, 'Hard case,platic,scratchproof', '01.jpeg', '02.jpeg', '03.jpeg', 10, 'In Stock', '2017-10-16 16:42:08', ''),
(26, 3, 0, 'HP Core i5 5th Gen', 'Hewlett Packard', 77807, 93368, '<li>17.3-inch HD BrightView WLED-backlit Display (1600 x 900)</li>\r\n<li>5th Gen Intel Core i5-5200U 2.2 GHz Dual Core Processor, Intel HD Graphics 5500</li>\r\n<li>6GB DDR3L SDRAM (2 DIMM) Memory, 1TB 5400 rpm Hard Drive, SuperMulti DVD Burner\r\n802.11b/g/n WLAN, Integrated 10/100 BASE-T Ethernet LAN, HD Webcam, Multi-Format Digital Media Card Reader, 2 SuperSpeed USB 3.0, USB 2.0, HDMI, RJ-45, Headphone, Microphone, B O PLAY with dual speakers, Full-size keyboard with numeric keypad\r\nWindows 10 Home 64 Bit, 4-cell 41WHr 2.8Ah lithium-ion battery, Natural silver\r\n</li>\r\n\r\n', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 99, 'In-Stock', '2018-11-30 18:06:07', ''),
(27, 4, 0, 'Compaq Presario', 'Compaq ', 25000, 26500, '<li>Intel Pentium Dual Core E5300 Processor (2.60 GHz, 2 MB L2 Cache)</li>\r\n<li> Intel G31 Chipset</li>\r\n<li> 1GB RAM</li>\r\n<li> 320GB Sata Hard Disk</li>\r\n<li> DVD Writer</li>\r\n<li> Integrated Intel High Definition Audio – 5.1 Surround Sound Ready</li>\r\n<li> 6 USB 2.0 ports</li>', '01.jpg', '02.jpg', '03.jpg', 0, 'In-Stock', '2018-11-30 18:41:11', ''),
(28, 4, 0, 'HP 200 G3 AiO-Core i3-8130U', 'Hewlett Packard', 48950, 37649, 'Product Description The clean and simple design of the affordable HP 200 AiO Business PC looks great in your workspace. Powerful Intel processors help you quickly get through daily tasks and the 54.61 cm (21.5”) diagonal display has plenty of room for collaboration with co-workers. HP 200 G3 All-in-One PC Features Powered for business Help enhance your productivity with latest 8th Gen Intel processors, delivering powerful and reliable performance at a great price. Sleek, professional design Equipped with our latest stylish two-sided micro-edge display, the HP 200 AiO Business PC frees space on your desk while remaining affordable. Designed for quick deployment- simply unpack, place, plug in, and get to work. Flexible and powerful technology The HP 200 AiO Business PC provides flexible options to fit your business needs. Select from powerful 8th Gen Intel processors. Your eyes only Privacy is important in work environments – use the optional webcam’s privacy shutter to avoid any accidental or malicious recordings.', '01.jpg', '02.jpg', '03.jph', 50, 'Out of Stock', '2018-11-30 18:52:06', ''),
(29, 5, 0, 'Apple iPhone 6 (Silver, 16 GB)', 'Apple', 31900, 22190, '<li>8MP primary camera with auto focus and 1.2MP front facing camera</li>\r\n<li>11.4 centimeters (4.7-inch) retina HD touchscreen with 1334 x 750 pixels resolution and 326 ppi pixel density</li>\r\n<li>iOS 8, upgradable to iOS 10.3.2 with 1.4GHz A8 chip 64-bit architecture processor, 1GB RAM, 32GB internal memory and single nano SIM</li>\r\n<li>1810mAH lithium-ion battery providing talk-time of 14 hours on 3G networks and standby time of 240 hours</li>\r\n<li>1 year manufacturer warranty for device and manufacturer warranty for in-box accessories including batteries from the date of purchase</li>', 'apple-iphone-6-1.jpeg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', 200, 'In Stock', '2018-11-30 19:07:12', ''),
(30, 5, 0, 'Micromax Canvas Mega 4G', 'Micromax ', 10990, 7300, '<li>6-inch IPS LCD display, 960×540 pixels</li>\r\n<li>1.3GHz quad-core processor</li>\r\n<li>16GB ROM 2GB RAM, 4GLTE</li>\r\n<li>8.0 MP Primary Camera ,5.0 Front Camera</li>\r\n<li>3000 MAH Battery</li>', 'micromax-canvas-mega-4g-1.jpeg', 'micromax-canvas-mega-4g-2.jpeg', 'micromax-canvas-mega-4g-3.jpeg', 50, 'Out Of Stock', '2018-11-30 19:12:24', ''),
(31, 5, 0, 'OPPO A57', 'OPPO', 5500, 6000, '<li>Camera: 13 MP Rear camera with LED flash | 16 MP front camera</li>\r\n<li>Display: 11.37 centimeters (5.2-inch) HD display with 1280x720 pixels</li>\r\n<li>Memory, Storage & SIM: 3GB RAM | 32GB storage expandable up to 256GB | Dual nano SIM with dual standby (4G+4G)</li>\r\n<li>Operating System and Processor: Android v6.0 Marshmallow operating system with 1.4GHz Qualcomm MSM8940 octa core processor</li>\r\n<li>Battery: 2900 mAH lithium ion battery providing 11 hours of continuous video watching, 23 hours on the phone, or about 13.5 hours in a scenario of varied continued use</li>\r\n<li>Warranty: 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</li>\r\n<li>Included in box: Micro USB Cable, Charger, Earphones, Case</li>\r\n', 'oppo-a57-na-original-1.jpeg', 'oppo-a57-na-original-2.jpeg', 'oppo-a57-na-original-3.jpeg', 100, 'In STOCK', '2018-11-30 19:17:04', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'adithyadinesh123@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-12-02 16:27:10', '02-12-2018 10:10:32 PM', 1),
(25, 'abhiram.k139@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-12-02 16:42:36', '', 0),
(26, 'abhiram.k139@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-12-02 16:44:26', '', 0),
(27, 'abhiram.k139@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-12-02 16:45:27', '02-12-2018 10:19:34 PM', 1),
(28, 'akhilthomas@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-12-02 16:50:56', '', 1),
(29, 'adithyadinesh123@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-12-02 17:02:32', '', 0),
(30, 'adithyadinesh123@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-12-03 04:21:34', '', 0),
(31, 'adithyadinesh123@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-12-03 04:21:50', '', 1),
(32, 'adithyadinesh123@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-12-03 04:38:36', '', 1),
(33, 'adithyadinesh123@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-12-03 09:21:28', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `shippingAddress` longtext NOT NULL,
  `shippingState` varchar(255) NOT NULL,
  `shippingCity` varchar(255) NOT NULL,
  `shippingPincode` int(11) NOT NULL,
  `billingAddress` longtext NOT NULL,
  `billingState` varchar(255) NOT NULL,
  `billingCity` varchar(255) NOT NULL,
  `billingPincode` int(11) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(3, 'Adithya Dinesh', 'adithyadinesh123@gmail.com', 9108126511, '3e4b1ec0a53aa8cdce7c18d944b83908', '"Sharanya" Nr Talap Temple, Talap Kannur 2', 'Kerala', 'Kannur', 670002, '"Sharanya" Nr Talap Temple, Talap Kannur ', 'Kerala', 'Kannur', 670002, '2018-12-02 15:14:59', ''),
(4, 'Abhiram K', 'abhiram.k139@gmail.com', 9539725883, '28429a588b1a73f643a9c14b5b167c95', '', '', '', 0, '', '', '', 0, '2018-12-02 16:41:53', ''),
(5, 'Abhiram K', 'abhiram.k139@gmail.com', 9539725883, 'a44f1fc0597b51dba659349568ec80fe', '', '', '', 0, '', '', '', 0, '2018-12-02 16:44:59', ''),
(6, 'Akhil Thomas', 'akhilthomas@gmail.com', 9108126511, '258ff2b635289455d8cee81e18e6bad2', '', '', '', 0, '', '', '', 0, '2018-12-02 16:50:32', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
