-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2016 at 10:46 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `coupon`
--

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE IF NOT EXISTS `budget` (
  `budgetID` int(5) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`budgetID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`budgetID`, `description`) VALUES
(1, '< Rp 5.000.000'),
(2, 'Rp 5.000.000 - Rp 10.000.000'),
(3, 'Rp 10.000.000 - Rp 20.000.000'),
(4, '> Rp 30.000.000'),
(5, 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `commentID` int(5) NOT NULL AUTO_INCREMENT,
  `userID` int(5) NOT NULL,
  `comment` text NOT NULL,
  `createdOn` date NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`commentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`commentID`, `userID`, `comment`, `createdOn`, `status`) VALUES
(1, 4, 'Bagus', '2015-01-01', 1),
(2, 3, 'memuaskan', '2015-01-01', 1),
(3, 2, 'sip', '2015-02-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
  `configurationID` int(5) NOT NULL AUTO_INCREMENT,
  `field` varchar(100) NOT NULL,
  `value` text NOT NULL,
  `url` varchar(50) NOT NULL,
  PRIMARY KEY (`configurationID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`configurationID`, `field`, `value`, `url`) VALUES
(1, 'website_name', 'Ruang Rapi', ''),
(2, 'website_title', 'Ruang Rapi', ''),
(3, 'website_description', '', ''),
(4, 'website_keyword', '', ''),
(5, 'logo_dark', '', ''),
(6, 'logo_bright', '', ''),
(7, 'address', 'Jakarta', ''),
(8, 'contact', '08992369126', ''),
(9, 'email', 'cs1@gmail.com', ''),
(10, 'facebook', 'ruangrapi', ''),
(11, 'twitter', 'ruangrapi', ''),
(12, 'yahoo_messenger', 'mvp_yungfei.com', ''),
(13, 'status', '1', ''),
(14, 'budget_note', '* Semua survey lokasi akan dikenakan biaya Rp 500.000, jika service jadi dilakukan maka akan kami potongkan.Jika tidak jadi maka uang tersebut akan kami potongkan. Jika tidak jadi maka uang tersebut tidak dapat dikembalikan. Semua harus ditransfer terlebih dahulu sebelum tinjau lokasi.', '');

-- --------------------------------------------------------

--
-- Table structure for table `content_line`
--

CREATE TABLE IF NOT EXISTS `content_line` (
  `content_lineID` int(5) NOT NULL AUTO_INCREMENT,
  `contentID` int(5) NOT NULL,
  `content_title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`content_lineID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `content_line`
--

INSERT INTO `content_line` (`content_lineID`, `contentID`, `content_title`, `content`, `active`) VALUES
(1, 1, 'about_description', 'Ruang Rapi adalah', 1),
(2, 1, 'vission', 'visi kami adalah <br>', 1),
(3, 1, 'mission', 'Misi kami adalah ...', 1),
(4, 1, 'team_description', 'Team kami adalah team yang solid.', 1),
(5, 7, 'picture1_description', 'discuss', 1),
(6, 7, 'picture2_description', 'Estimation', 1),
(7, 7, 'picture3_description', 'Agreement', 1),
(8, 7, 'picture4_description', 'Action', 1),
(9, 7, 'website_description', 'Melayani berbagai macam service untuk anda. Lebih dari 1000 perusahaan telah menggunakan jasa kami', 1),
(10, 3, 'service_description', 'Berikut service yang kami tawarkan ', 1),
(11, 8, 'product_description', 'Berikut product yang kami tawarkan  ', 1),
(12, 10, 'partner_description', 'Berikut list partner yang bekerjasama dengan kami', 1),
(13, 12, 'investor_description', 'Berikut list Investor kami ', 1),
(14, 14, 'text', 'Dapatkan Point dari Service yang dipesan dari website.<br>                                                                        ', 1),
(15, 15, 'text', 'Daftar sekarang menjadi member dan dapatkan poinnya setiap melakukan order', 1),
(16, 16, 'text', 'Dapatkan Point dari Service yang dipesan dari webs...', 1),
(17, 17, 'text', 'Dapatkan Point dari Service yang dipesan dari webs...', 1),
(18, 18, 'text', 'Dapatkan Point dari Service yang dipesan dari webs...', 1),
(19, 20, 'text', 'Dapatkan Point dari Service yang dipesan dari webs...', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `kategoriID` int(2) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `code` varchar(1) NOT NULL,
  PRIMARY KEY (`kategoriID`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategoriID`, `description`, `code`) VALUES
(1, 'Admin', 'A'),
(2, 'User', 'U'),
(3, 'Super Admin', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `userID` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `hp` varchar(100) NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `whatsApp` varchar(100) NOT NULL,
  `kategori_code` varchar(1) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `birthday` date NOT NULL,
  `createdon` date NOT NULL,
  `totalpoint` int(11) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userID`, `name`, `address`, `hp`, `telepon`, `email`, `password`, `facebook`, `twitter`, `whatsApp`, `kategori_code`, `photo`, `active`, `birthday`, `createdon`, `totalpoint`) VALUES
(1, 'yung fei', 'jakarta', '08992369126', '08992369126', 'yungfei1989@gmail.com', '66739439c353b0f5f830995a6f4d9451 ', 'mvp_yungfei@yahoo.com', 'mvp_yungfei@yahoo.com', '08992369126', 'S', '', 1, '2015-01-01', '0000-00-00', 0),
(2, 'Jenny', 'Jakarta', '089847850', '084682635423', 'jenny@gmail.com', 'e13fb5a1a4b9aeaae5bd32f5c80062a5', 'jenny@gmail.com', 'jenny@gmail.com', '43678643', 'U', '', 1, '2015-01-01', '2015-01-29', 0),
(3, 'Grace', '', '', '', 'grace@gmail.com', '', '', '', '', 'U', 'team02.jpg', 1, '2015-01-06', '0000-00-00', 0),
(8, 'yung fei.', 'jakarta.', '089923691261', '089923691261', 'admin1234@gmail.com', '9fbe0d2108f16de83c26f760d8b691f4', 'admin1234@gmail.com', 'aa@gmail.com', '089923691261', 'U', '', 0, '2015-01-01', '0000-00-00', 0),
(16, 'aaaa', '', '1123', '', 'admin123@gmail.com', '54805b140d811d76c1854390c96d8c46', '', '', '', 'U', '', 0, '0000-00-00', '2015-01-10', 0),
(18, 'yungfei', 'jakarta', '08992369126', '08992369126', 'webmaster@yungfei.com', 'e13fb5a1a4b9aeaae5bd32f5c80062a5', 'webmaster@yungfei.com', 'webmaster@yungfei.com', 'webmaster@yungfei.com', 'U', '', 2, '2015-01-22', '2015-01-22', 0),
(19, 'aaaa', 'aaa', '08989123', '0686576', 'fei89_takizawa@yahoo.com', 'e13fb5a1a4b9aeaae5bd32f5c80062a5', 'fei89_takizawa@yahoo.com', 'fei89_takizawa@yahoo.com', 'fei89_takizawa@yahoo.com', 'U', '', 2, '2015-01-22', '2015-01-22', 0),
(20, 'yf', 'aaaaaaa', '12345', '12345', 'test123@gmail.com', 'e13fb5a1a4b9aeaae5bd32f5c80062a5', 'test123@gmail.com', 'test123@gmail.com', '12345', 'U', '', 2, '2015-01-30', '2015-01-30', 0),
(21, 'yf123', 'jkt.', '567578777', '123777', 'xxx@yahoo.com', '139ae7e922af0366c8fb9b59b69303eb', '', '', '', 'A', '', 0, '0000-00-00', '2015-02-04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `idMenu` int(2) NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) NOT NULL,
  `link` varchar(150) NOT NULL,
  `newlink` varchar(150) NOT NULL,
  `shortcut` varchar(100) NOT NULL,
  `editlink` varchar(150) NOT NULL,
  PRIMARY KEY (`idMenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`idMenu`, `menu`, `link`, `newlink`, `shortcut`, `editlink`) VALUES
(1, 'Dashboard', 'dashboard.php', '', 'icomoon-icon-bars', ''),
(2, 'Configuration', 'configuration.php', 'newconfiguration.php', 'entypo-icon-settings', 'editconfiguration.php'),
(3, 'Customer', 'customer.php', 'newcustomer.php', 'entypo-icon-user', 'editcustomer.php'),
(4, 'Service Type', 'servicetype.php', 'newservicetype.php', 'icomoon-icon-paper', 'editservicetype.php'),
(5, 'Product Type', 'producttype.php', 'newproducttype.php', 'icomoon-icon-paper', 'editproducttype.php'),
(6, 'Product', 'product.php', 'newproduct.php', 'icomoon-icon-paper', 'editproduct.php'),
(7, 'Service', 'service.php', 'newservice.php', 'icomoon-icon-paper', 'editservice.php'),
(9, 'User', 'user.php', 'newuser.php', 'entypo-icon-settings', 'edituser.php'),
(10, 'Update Password', 'updatepassword.php', '', 'entypo-icon-settings', ''),
(12, 'Investor', 'investor.php', 'newinvestor.php', 'icomoon-icon-paper', 'editinvestor.php'),
(13, 'Partner', 'partner.php', 'newpartner.php', 'icomoon-icon-paper', 'editpartner.php'),
(14, 'Slider', 'slider.php', '', 'entypo-icon-settings', 'editslider.php'),
(15, 'Web Content', 'webcontent.php', '', 'entypo-icon-settings', 'editwebcontent.php'),
(16, 'Team', 'team.php', 'newteam.php', 'entypo-icon-settings', 'editteam.php'),
(17, 'Service Order', 'serviceorder.php', 'newserviceorder.php', 'cut-icon-cart', 'editserviceorder.php'),
(18, 'Report', 'report.php', '', 'silk-icon-checklist', ''),
(19, 'Comment', 'comment.php', '', 'cut-icon-comment', 'editcomment.php'),
(20, 'Product Order', 'productorder.php', 'newproductorder.php', 'brocco-icon-cart', 'editproductorder.php'),
(21, 'Budget', 'budget.php', 'newbudget.php', 'icomoon-icon-paper', 'editbudget.php'),
(22, 'Pelunasan Pembelian', 'paymentpembelian.php', 'newpaymentpembelian.php', 'brocco-icon-cart', ''),
(23, 'Inventory Adjustment', 'inventoryadjustment.php', 'newinventoryadjustment.php', 'icomoon-icon-cube', 'editinventoryadjustment.php'),
(24, 'Inventory Transaction', 'inventorytransaction.php', 'newinventorytransaction.php', 'icomoon-icon-cube', 'editinventorytransaction.php'),
(25, 'Ware House', 'warehouse.php', '', 'brocco-icon-home', 'editwarehouse.php'),
(26, 'Input Ware House', 'inputwarehouse.php', 'newinputwarehouse.php', 'brocco-icon-home', ''),
(27, 'Pengolahan', 'pengolahan.php', 'newpengolahan.php', 'brocco-icon-atom', 'editpengolahan.php'),
(28, 'Unit Cost Pengolahan', 'unitcostpengolahan.php', 'newunitcostpengolahan.php', 'brocco-icon-atom', 'editunitcostpengolahan.php'),
(29, 'Return Penjualan', 'salesorderreturn.php', 'newsalesorderreturn.php', 'icon16 cut-icon-cart', 'editsalesorderreturn.php'),
(30, 'Ongkos Kirim', 'ongkir.php', 'newongkir.php', 'cut-icon-cart', 'editongkir.php'),
(31, 'Piutang', 'piutang.php', '', 'cut-icon-cart', ''),
(32, 'Pendapatan Lain-lain', 'otherincome.php', 'newotherincome.php', 'minia-icon-cart', 'editotherincome.php'),
(33, 'Pengeluaran Lain-lain', 'otheroutcome.php', 'newotheroutcome.php', 'minia-icon-cart', ''),
(34, 'Transaction Type', 'transactiontype.php', 'newtransactiontype.php', 'minia-icon-cart', 'edittransactiontype.php');

-- --------------------------------------------------------

--
-- Table structure for table `menu_page`
--

CREATE TABLE IF NOT EXISTS `menu_page` (
  `menuID` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `url` varchar(50) NOT NULL,
  `order_index` int(2) NOT NULL,
  PRIMARY KEY (`menuID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `menu_page`
--

INSERT INTO `menu_page` (`menuID`, `title`, `active`, `url`, `order_index`) VALUES
(1, 'HOME', 1, 'home', 1),
(7, 'CONTACT', 1, 'contact', 9);

-- --------------------------------------------------------

--
-- Table structure for table `menu_sub`
--

CREATE TABLE IF NOT EXISTS `menu_sub` (
  `menu_subID` int(2) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`menu_subID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `menu_sub`
--

INSERT INTO `menu_sub` (`menu_subID`, `title`, `url`) VALUES
(1, 'HEADER', ''),
(2, 'SLIDER', 'slider.php'),
(3, 'CONTENT', ''),
(4, 'ABOUT', ''),
(5, 'TEAM', 'team.php'),
(6, 'TESTIMONIAL', 'testimonial.php'),
(7, 'MAP', ''),
(8, 'SERVICE', 'service.php'),
(9, 'PRODUCT', 'product.php'),
(10, 'PARTNER', 'partner.php'),
(11, 'INVESTOR', 'investor.php'),
(12, 'ADS', '');

-- --------------------------------------------------------

--
-- Table structure for table `page_content`
--

CREATE TABLE IF NOT EXISTS `page_content` (
  `contentID` int(5) NOT NULL AUTO_INCREMENT,
  `menuID` int(5) NOT NULL,
  `menu_subID` int(2) NOT NULL DEFAULT '1',
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`contentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `page_content`
--

INSERT INTO `page_content` (`contentID`, `menuID`, `menu_subID`, `active`) VALUES
(1, 2, 3, 1),
(2, 2, 5, 1),
(3, 3, 3, 1),
(4, 3, 8, 1),
(5, 1, 2, 1),
(6, 1, 6, 1),
(7, 1, 1, 1),
(8, 4, 3, 1),
(9, 4, 9, 1),
(10, 5, 3, 1),
(11, 5, 10, 1),
(12, 6, 3, 1),
(13, 6, 11, 1),
(14, 2, 12, 1),
(15, 3, 12, 1),
(16, 4, 12, 1),
(17, 5, 12, 1),
(18, 6, 12, 1),
(19, 7, 7, 1),
(20, 7, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE IF NOT EXISTS `partner` (
  `partnerID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `active` int(1) NOT NULL,
  PRIMARY KEY (`partnerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`partnerID`, `name`, `logo`, `active`) VALUES
(2, 'Partner 2', 'pic2.jpg', 1),
(3, 'Partner 3', 'pic2.jpg', 1),
(4, 'Partner 4', 'pic2.jpg', 1),
(5, 'Partner 1', 'pic2.jpg', 1),
(6, 'Partner 5', 'pic2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `productID` int(5) NOT NULL AUTO_INCREMENT,
  `product_typeID` int(5) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_description` text NOT NULL,
  `price` float NOT NULL,
  `photo` varchar(50) NOT NULL,
  `createdby` int(5) NOT NULL,
  `createdon` date NOT NULL,
  `active` int(1) NOT NULL,
  `big_photo` varchar(50) NOT NULL,
  `additional_description` text NOT NULL,
  `isdelete` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `product_typeID`, `product_name`, `product_description`, `price`, `photo`, `createdby`, `createdon`, `active`, `big_photo`, `additional_description`, `isdelete`) VALUES
(1, 1, 'Product 1', 'Product Description                                                                                                                                                                                                                                                                                                ', 100000, 'pic2.jpg', 10001, '2015-01-11', 1, 'pic2.jpg', 'Additional description                                                                                                                                                                                                                                                                                                ', 0),
(2, 1, 'Product 2', 'Product Description\r\n', 0, 'pic2.jpg', 10001, '2015-01-04', 1, 'pic2.jpg', 'Additional Description', 0),
(3, 1, 'Product 3.', '<div align="left"><b>Product description gfjjjbdfqbf<br>fdfwefqefjenfbejfb dwhdvwhd </b><b>Product description gfjjjbdfqbf<br>fdfwefqefjenfbejfb dwhdvwhd </b><b>Product description gfjjjbdfqbf<br>fdfwefqefjenfbejfb dwhdvwhd </b><b>Product description gfjjjbdfqbf<br>fdfwefqefjenfbejfb dwhdvwhd </b><b>Product description gfjjjbdfqbf<br>fdfwefqefjenfbejfb dwhdvwhd </b><b>Product description gfjjjbdfqbf<br>fdfwefqefjenfbejfb dwhdvwhd </b><b>Product description gfjjjbdfqbf<br>fdfwefqefjenfbejfb dwhdvwhd </b></div>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 1000000, 'pic2.jpg', 10001, '2015-01-11', 1, '2d79fe6017d92063498c59c6fbde84978278big.jpg', '<b>Product description gfjjjbdfqbf<br>fdfwefqefjenfbejfb dwhdvwhd </b><b>Product description gfjjjbdfqbf<br>fdfwefqefjenfbejfb dwhdvwhd </b><b>Product description gfjjjbdfqbf<br>fdfwefqefjenfbejfb dwhdvwhd </b><b>Product description gfjjjbdfqbf<br>fdfwefqefjenfbejfb dwhdvwhd </b>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 0),
(7, 2, 'product 3', 'tes <b>saja</b><br>', 0, 'pic2.jpg', 1, '2015-01-17', 1, 'pic2.jpg', '<b>ok</b>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE IF NOT EXISTS `product_order` (
  `productorderID` int(5) NOT NULL AUTO_INCREMENT,
  `productNbr` varchar(15) NOT NULL,
  `userID` int(5) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` date NOT NULL,
  `productTypeID` int(5) NOT NULL,
  `product_lineID` int(5) NOT NULL,
  `address` text NOT NULL,
  `qty` int(5) NOT NULL,
  `price` float NOT NULL,
  `totalprice` float NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`productorderID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`productorderID`, `productNbr`, `userID`, `createdby`, `createdon`, `productTypeID`, `product_lineID`, `address`, `qty`, `price`, `totalprice`, `status`) VALUES
(1, 'PO-15-02-0001', 2, 2, '2015-02-07', 1, 9, 'jakarta', 5, 100000, 500000, 1),
(2, 'PO-15-02-0002', 1, 1, '2015-02-08', 1, 9, 'jkt', 2, 1000000, 2000000, 1),
(3, 'PO-15-02-0003', 1, 1, '2015-02-09', 1, 9, 'jakarta', 2, 1000000, 2000000, 1),
(4, 'PO-15-02-0004', 2, 2, '2015-02-09', 1, 9, 'jakarta', 2, 1000000, 2000000, 1),
(5, 'PO-15-02-0005', 2, 2, '2015-02-09', 1, 9, 'tes', 2, 1000000, 2000000, 1),
(6, 'PO-15-02-0006', 2, 2, '2015-02-09', 1, 9, 'tes', 2, 1000000, 2000000, 1),
(7, 'PO-15-02-0007', 2, 2, '2015-02-09', 1, 9, 'tes', 1, 1000000, 1000000, 1),
(8, 'PO-15-02-0008', 2, 2, '2015-02-09', 1, 9, 'a', 2, 1000000, 2000000, 1),
(9, 'PO-15-02-0009', 2, 2, '2015-02-09', 1, 9, 'aa', 6, 1000000, 6000000, 1),
(10, 'PO-15-02-0010', 2, 2, '2015-02-09', 1, 9, 'aa', 6, 1000000, 6000000, 1),
(11, 'PO-15-02-0011', 2, 2, '2015-02-09', 1, 9, 'aa', 6, 1000000, 6000000, 1),
(12, 'PO-15-02-0012', 2, 2, '2015-02-09', 1, 9, 'aa', 6, 1000000, 6000000, 1),
(13, 'PO-15-02-0013', 2, 2, '2015-02-09', 1, 9, 'aaa', 2, 1000000, 2000000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_type`
--

CREATE TABLE IF NOT EXISTS `product_sub_type` (
  `product_sub_typeID` int(5) NOT NULL AUTO_INCREMENT,
  `product_type_ID` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `url` varchar(100) NOT NULL,
  `order_index` int(1) NOT NULL,
  PRIMARY KEY (`product_sub_typeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `product_sub_type`
--

INSERT INTO `product_sub_type` (`product_sub_typeID`, `product_type_ID`, `name`, `active`, `url`, `order_index`) VALUES
(1, 2, 'Food', 1, '', 2),
(2, 1, 'Gadget', 1, '', 3),
(4, 1, 'Fashion', 1, '', 4),
(5, 1, 'Peralatan', 1, '', 5),
(6, 2, 'Beauty', 1, '', 6),
(7, 2, 'Hobby', 1, '', 7),
(8, 3, 'Travel', 1, '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE IF NOT EXISTS `product_type` (
  `product_typeID` int(5) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `active` int(1) NOT NULL,
  PRIMARY KEY (`product_typeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`product_typeID`, `description`, `active`) VALUES
(1, 'Product', 1),
(2, 'Kupon', 1),
(3, 'Travel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `report_server`
--

CREATE TABLE IF NOT EXISTS `report_server` (
  `reportserverID` int(5) NOT NULL AUTO_INCREMENT,
  `reportname` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `kat` varchar(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`reportserverID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `report_server`
--

INSERT INTO `report_server` (`reportserverID`, `reportname`, `link`, `kat`) VALUES
(1, 'Order Report', 'orderreport.php', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `slideID` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `images` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`slideID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`slideID`, `title`, `description`, `images`, `url`, `active`) VALUES
(1, 'WELCOME TO RUANG RAPI', 'Where We Turn Mess into Glammour', '27b5ae15b0982121a0f1379897e72d762191.jpg', '', 1),
(2, 'SERVICE EXCELLENCE', 'By proffesional makeover team', 'slide.jpg', '', 1),
(3, 'GREAT PEOPLE', 'Make Your Day Full of Smiles', '4ad77af359d247b4355b47304fedd9cd3100.jpg', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `statusID` int(1) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`statusID`, `description`) VALUES
(0, 'open'),
(1, 'confirm'),
(2, 'reject'),
(3, 'cancel');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `teamID` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `job_desc` varchar(100) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `twitter` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `order_index` int(2) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`teamID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`teamID`, `name`, `job_desc`, `facebook`, `twitter`, `photo`, `order_index`, `active`) VALUES
(1, 'Steve Hillenbrand', 'Founder, CEO', '#', '#', 'team01.jpg', 1, 0),
(2, 'Erica Dunn', 'Founder, COO', '#', '#', 'team02.jpg', 2, 1),
(3, 'Thomas Ahrens', 'Senior Developer                                                                                    ', '#', '#', '8d25ec308f659f56e9a61a10310a14a51288small.jpg', 3, 1),
(4, 'Jessica', 'Art Director', '#', '#', 'team04.jpg', 4, 1),
(5, 'David', 'Account Manager', '#', '#', 'team05.jpg', 5, 1),
(7, 'tes', 'CEO', 'yf', 'yf', 'team05.jpg', 2, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
