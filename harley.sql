-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 27, 2019 at 05:39 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `harley`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_title` varchar(50) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, ' Nike'),
(2, ' Mt Fox'),
(3, ' Venom Asphalt'),
(4, ' Vega');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cart`
--


-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE IF NOT EXISTS `cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `cat`) VALUES
(1, 'Maruti'),
(2, 'Hundai');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Helmet'),
(2, 'Jacket'),
(3, 'Rider kits');

-- --------------------------------------------------------

--
-- Table structure for table `clubjoin_req`
--

CREATE TABLE IF NOT EXISTS `clubjoin_req` (
  `reid` int(11) NOT NULL AUTO_INCREMENT,
  `clid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`reid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `clubjoin_req`
--

INSERT INTO `clubjoin_req` (`reid`, `clid`, `uid`, `date`, `status`) VALUES
(2, 2, 11, '01-03-2019', 'Accept'),
(3, 1, 12, '2019-12-10', 'Request'),
(5, 1, 12, '2019-12-10', 'Request');

-- --------------------------------------------------------

--
-- Table structure for table `club_reg`
--

CREATE TABLE IF NOT EXISTS `club_reg` (
  `clid` int(11) NOT NULL AUTO_INCREMENT,
  `clname` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`clid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `club_reg`
--

INSERT INTO `club_reg` (`clid`, `clname`, `district`, `city`, `phone`, `email`, `reg_no`, `password`, `status`) VALUES
(1, 'Storm Riders', 'Kottayam', 'Kaduthuruthy', '9874563210', 'strom@gmail.com', '7418529633', '123456', 'Accept'),
(2, 'Big B', 'Kottayam', 'Kochi', '9874563212', 'bigb@gmail.com', '741852', '123456', 'Accept');

-- --------------------------------------------------------

--
-- Table structure for table `club_vehicle`
--

CREATE TABLE IF NOT EXISTS `club_vehicle` (
  `clve_id` int(11) NOT NULL AUTO_INCREMENT,
  `clid` int(11) NOT NULL,
  `ve_name` varchar(50) NOT NULL,
  `cu_cap` varchar(50) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `no_item` int(11) NOT NULL,
  `rent` int(11) NOT NULL,
  `img` varchar(200) NOT NULL,
  PRIMARY KEY (`clve_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `club_vehicle`
--

INSERT INTO `club_vehicle` (`clve_id`, `clid`, `ve_name`, `cu_cap`, `reg_no`, `no_item`, `rent`, `img`) VALUES
(1, 1, 'Royal Enfield Himalayan', '450cc', 'KL 36 D 2255', 3, 1500, 'royal-enfield-himalayan-bikes-500x500.jpg'),
(4, 1, 'Royal Enfield', '350cc', 'KL 36 B 2255', 5, 1200, '/static/media/Royal_Enfield_Classic_350_(2017_Model_Year)_XAZtzfh.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
  `compid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `shopid` int(11) NOT NULL,
  `complaint` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`compid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`compid`, `uid`, `shopid`, `complaint`, `date`, `status`) VALUES
(1, 11, 1, 'aaaaa', '01-03-2019', 'Add'),
(2, 3, 1, 'aaaaa', '01-03-2019', 'Add');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE IF NOT EXISTS `customer_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_qty` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `uid`, `pid`, `p_price`, `p_qty`) VALUES
(30, 11, 1, 2500, 1),
(31, 11, 3, 2500, 1),
(32, 11, 6, 1500, 1),
(33, 11, 3, 2500, 1),
(34, 11, 1, 2500, 1),
(37, 11, 8, 1500, 1),
(38, 11, 9, 3000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cust_reg`
--

CREATE TABLE IF NOT EXISTS `cust_reg` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `district` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `cust_reg`
--

INSERT INTO `cust_reg` (`cid`, `cname`, `address`, `pincode`, `gender`, `age`, `district`, `location`, `email`, `mobile`, `password`) VALUES
(11, 'Jithin', 'LCC', 682031, 'Male', 27, 'Ernakulam', 'Kochi', 'jithin@gmail.com', '7418529963', '123456'),
(12, 'Anija', 'LCC', 682031, 'Female', 22, 'Ernakulam', 'Vypin', 'anija@gmail.com', '9874563212', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(50) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`did`, `dname`) VALUES
(1, 'Trivandrum'),
(2, 'Kollam'),
(3, 'Pathanamthitta'),
(4, 'Alappuzha'),
(5, 'Kottayam'),
(6, 'Idukki'),
(7, 'Ernakulam'),
(8, 'Thrissur'),
(9, 'Palakkadu'),
(10, 'Malappuram'),
(11, 'Kozhikkode'),
(12, 'Wayanad'),
(13, 'Kannur'),
(14, 'Kasargode');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `feedback`
--


-- --------------------------------------------------------

--
-- Table structure for table `hospital_reg`
--

CREATE TABLE IF NOT EXISTS `hospital_reg` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `hname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `hospital_reg`
--

INSERT INTO `hospital_reg` (`hid`, `hname`, `address`, `district`, `location`, `phone`, `email`) VALUES
(1, 'Aster Medicity', 'Cheranalloor', 'Ernakulam', 'South Chittoor', '0484 669 9999', 'aster@gmail.com'),
(2, 'Co-Operative Hospital', 'Kaduthuruthy', 'Kottayam', 'Kaduthuruthy', '04829282405', 'cooperative@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_reg`
--

CREATE TABLE IF NOT EXISTS `hotel_reg` (
  `hoid` int(11) NOT NULL AUTO_INCREMENT,
  `hotel` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`hoid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `hotel_reg`
--

INSERT INTO `hotel_reg` (`hoid`, `hotel`, `address`, `district`, `location`, `phone`, `email`) VALUES
(1, 'Radison Blu', 'Sahodaran Ayyappan Rd', 'Ernakulam', 'Kochi', '0484 412 9999', 'radison@gmail.com'),
(8, 'Taj', 'Maraindrive', 'Ernakulam', 'Kochi', '04844282405', 'taj@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `usertype`) VALUES
('jithin@gmail.com', '123456', 'Customer'),
('strom@gmail.com', '123456', 'Club'),
('lcc@gmail.com', '123456', 'Shop'),
('admin@gmail.com', 'admin', 'Admin'),
('anija@gmail.com', '123456', 'Customer'),
('bigb@gmail.com', '123456', 'Club'),
('bigb@gmail.com', '123456', 'Club'),
('4riders@gmail.com', '123456', 'Shop');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notid` int(11) NOT NULL AUTO_INCREMENT,
  `notification` varchar(4000) NOT NULL,
  `tripdate` varchar(50) NOT NULL,
  `notdate` varchar(50) NOT NULL,
  `clid` int(11) NOT NULL,
  PRIMARY KEY (`notid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notid`, `notification`, `tripdate`, `notdate`, `clid`) VALUES
(1, 'TO GOA 35 Days Ride', '2019-03-25', '05-03-2019', 1),
(4, 'aaa', '2019-03-23', '2019-03-22', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_cat` varchar(50) NOT NULL,
  `product_brand` varchar(50) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_desc` varchar(50) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `product_keywords` varchar(50) NOT NULL,
  `shid` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `quantity`, `product_desc`, `product_image`, `product_keywords`, `shid`) VALUES
(7, '1', '4', 'Vega Off Road OR-D', 2500, 15, 'ISI approved helmet', 'static/media/41Qk5WFobuL.jpg', 'Vega Off Road', 1),
(8, '1', '4', 'Vega Crux Half Face', 1500, 20, 'Leather finish touch', 'static/media/411613oRn2L.jpg', 'Helmet', 1),
(9, '2', '1', 'Generic Body Armor Jacket', 3000, 10, 'Body Armor Jacket Protector Guard', 'static/media/jack.jpg', 'Jacket', 1),
(11, '3', '2', 'Gloves Moto', 1500, 10, 'Good quality', 'static/media/full_gauntlet_side_large.png', 'Gloves', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_reg`
--

CREATE TABLE IF NOT EXISTS `shop_reg` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `shop` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `shop_reg`
--

INSERT INTO `shop_reg` (`sid`, `shop`, `district`, `city`, `phone`, `email`, `reg_no`, `password`, `status`) VALUES
(1, 'LCC', 'Ernakulam', 'Cochin', '9157354565', 'lcc@gmail.com', '7418529632', '123456', 'Accept'),
(2, '4 Riders', 'Ernakulam', 'Vypin', '9874563212', '4riders@gmail.com', '741852', '123456', 'Accept');

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE IF NOT EXISTS `subcat` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `subcat` varchar(50) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`sid`, `cid`, `subcat`) VALUES
(1, 1, 'Alto'),
(2, 2, 'Santro');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_rent`
--

CREATE TABLE IF NOT EXISTS `vehicle_rent` (
  `rent_id` int(11) NOT NULL AUTO_INCREMENT,
  `veh_id` int(11) NOT NULL,
  `custid` int(11) NOT NULL,
  `clubid` int(11) NOT NULL,
  `pickup_date` varchar(50) NOT NULL,
  `return_date` varchar(50) NOT NULL,
  `cvrent_type` varchar(50) NOT NULL,
  `rent_unit` int(11) NOT NULL,
  `rent_days` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`rent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `vehicle_rent`
--

INSERT INTO `vehicle_rent` (`rent_id`, `veh_id`, `custid`, `clubid`, `pickup_date`, `return_date`, `cvrent_type`, `rent_unit`, `rent_days`, `amount`, `status`) VALUES
(12, 1, 11, 1, '03/07/2019', '03/10/2019', 'Multiple', 2, 3, 9000, 'Accept');

-- --------------------------------------------------------

--
-- Table structure for table `workshop_reg`
--

CREATE TABLE IF NOT EXISTS `workshop_reg` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `wname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `workshop_reg`
--

INSERT INTO `workshop_reg` (`wid`, `wname`, `address`, `district`, `location`, `phone`, `email`) VALUES
(1, 'Bike Care', 'Menaka', 'Ernakulam', 'Kochi', '0484 669 9999', 'bikecare@gmail.com'),
(2, 'Royals ', 'Maraindrive', 'Ernakulam', 'Kochi', '04844282405', 'royals@gmail.com');
