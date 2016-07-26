-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2016 at 10:59 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `regq8211_regcommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE IF NOT EXISTS `about` (
`id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `tentang` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `nama`, `tentang`) VALUES
(1, 'Regarcomm Development', '');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1461911549),
('m130524_201442_init', 1461911557);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
`id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `keterangan`, `gambar`) VALUES
(1, 'CRM Customer Relationship Mangament', 'Aplikasi CRM memungkinkan untuk menggunakan informasi dari semua titik dengan pelanggan, baik via web, call center, ataupun lewat staff pemasaran dan pelayanan di lapangan. Konsistensi dan aksepsibilitas informasi ini memungkinkan penjualan dan pelayanan yang lebih baik dengan berbagai informasi penting mengenai pelanggan tersebut', 'service1.fw.png'),
(2, 'ERP Enterprise Resource Planning', 'Secara implisit aplikasi ERP bukan hanya suatu software semata, namun merupakan suatu solusi terhadap permasalahan informasi dalam organisasi. Enterprise Resource Planning (ERP) dapat didefinisikan sebagai aplikasi sistem informasi berbasis komputer yang dirancang untuk mengolah dan memanipulasi suatu transaksi di dalam organisasi dan menyediakan fasilitas perencanaan, produksi dan pelayanan konsumen yang real-time dan terintegrasi', 'service2.fw.png'),
(3, 'Sistem Manajemen Karyawan', 'memberikan informasi detail tentang data kepegawaian, sehingga membantu Top Manager dalam memilih pegawai yang kompeten.\r\nStaff hrd berkemampuan untuk menambah, mengurangi , mengedit data pegawai, sehingga memudahkan perusahaan dalam mengelola karyawan.\r\nTop Manager dapat memonitoring setiap karyawan yang dibawah kepemimpinannya.\r\n', 'Sistem Manajemen Karyawan.png'),
(4, 'Software Inventory ', 'Software Inventory Stock yang digunakan untuk pengolahan Stock Pabrikasi / Manufacture, dengan fitur-fitur seperti Inventory dikelompokkan berdasarkan Kategori Produk, Purchase Order, Pembelian Barang , Nota Retur Pembelian, Purchase Invoice, Sales Order, Delivery Order, Sales Invoices, Nota Retur Penjualan, Hutang, Piutang, Job Order, Bill Of Material (BOM), Pemakaian Bahan Baku, Mutasi Barang antar Gudang, Laporan WIP, Stock, Kartu Stock, History Stock, Laporan Keuangan ( Neraca, Rugi Laba ), Bisa full Automatic Internal dan External', 'service4.fw.png'),
(5, 'Accounting Software', 'Accounting Software merupakan perangkat lunak (software) yang dirancang untuk memudahkan segala aktivitas dan pencatatan akuntansi dengan memanfaatkan konsep modularitas atas serangkaian aktivitas yang serupa ke dalam modul-modul spesifik seperti pembelian (account payable), penjualan (account receivable), penggajian, buku besar, dan lain-lain.', 'service5.fw.png'),
(6, 'Integrated Commerce', 'Aplikasi Terintegrasi POS, Inventory Stock, Akuntansi yang berbasis web. Sehingga dapat dioperasikan Lokal, maupun external dengan manfaatkan internet. Program ini dibuat dengan PHP dan database MySQL. Dan dapat dimonitoring setiap saat', 'service6.fw.png'),
(7, 'Regarcomm e-Commerce', 'Aptikasi Terintegrasi yang bertujuan  melayani pasar digital  antara konsumen dan  retail secara jarak jauh dengan media Internet. Customer dimudahkan untuk  dapatkan produk secara  remote system dengan apfikasi Regaroomm e-Commerce. Dari pihak Retail dimudahkan dalam tungsi marketing. kasir dan laporan yang terpadu didalam apfikasi e-Commerce tersebut', 'service7.fw.png');

-- --------------------------------------------------------

--
-- Table structure for table `r_admin`
--

CREATE TABLE IF NOT EXISTS `r_admin` (
`id_admin` int(11) NOT NULL,
  `id_admin_role` int(11) NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `first_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `last_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `phone` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `present_visit_date` datetime NOT NULL,
  `last_visit_date` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `r_admin`
--

INSERT INTO `r_admin` (`id_admin`, `id_admin_role`, `password`, `first_name`, `last_name`, `phone`, `email`, `date_created`, `present_visit_date`, `last_visit_date`, `date_modified`, `status`) VALUES
(1, 1, '$2a$13$YT9ia6Hk4PP23y14ERqYXeHhsgPSNVW1i7iPqvsZCqySbG3OcUf.G', 'James', 'Katrick', '9000000009', 'demo@cartnex.org', '0000-00-00 00:00:00', '2015-04-01 15:40:46', '2015-04-01 15:29:47', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `r_admin_activity_log`
--

CREATE TABLE IF NOT EXISTS `r_admin_activity_log` (
`id_admin_log_history` int(15) NOT NULL,
  `access_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `id_admin` int(11) NOT NULL DEFAULT '0',
  `page_accessed` varchar(80) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `page_parameters` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `page_url` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `action` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `ip_address` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `r_admin_activity_log`
--

INSERT INTO `r_admin_activity_log` (`id_admin_log_history`, `access_date`, `id_admin`, `page_accessed`, `page_parameters`, `page_url`, `action`, `ip_address`) VALUES
(38, '2014-01-22 15:21:26', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.171.232'),
(39, '2014-01-22 15:22:06', 1, 'orders', NULL, 'http://www.book4party.com/multivendor/ranzo/orders', 'View', '183.82.171.232'),
(40, '2014-01-23 13:16:29', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(41, '2014-01-23 13:16:42', 1, 'payment', NULL, 'http://www.book4party.com/multivendor/ranzo/payment', 'View', '183.82.0.192'),
(42, '2014-01-31 21:09:08', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.166.13'),
(43, '2014-01-31 21:09:19', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.166.13'),
(44, '2014-01-31 21:09:22', 1, 'my-store', NULL, 'http://www.book4party.com/multivendor/ranzo/my-store', 'View', '183.82.166.13'),
(45, '2014-02-04 11:35:38', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '182.72.246.156'),
(46, '2014-02-05 09:16:07', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '49.204.57.252'),
(47, '2014-02-05 09:16:40', 1, 'orders', NULL, 'http://www.book4party.com/multivendor/ranzo/orders', 'View', '49.204.57.252'),
(48, '2014-02-05 09:24:25', 1, 'unapprovedproducts', NULL, 'http://www.book4party.com/multivendor/ranzo/unapprovedproducts', 'View', '49.204.57.252'),
(65, '2014-02-26 10:58:21', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '182.72.246.156'),
(66, '2014-02-26 10:58:30', 1, 'email-templates', NULL, 'http://www.book4party.com/multivendor/ranzo/email-templates', 'View', '182.72.246.156'),
(67, '2014-02-26 11:01:19', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '182.72.246.156'),
(68, '2014-02-26 11:01:24', 1, 'email-templates', NULL, 'http://www.book4party.com/multivendor/ranzo/email-templates', 'View', '182.72.246.156'),
(69, '2014-02-28 10:33:37', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(70, '2014-02-28 10:33:44', 1, 'orders', NULL, 'http://www.book4party.com/multivendor/ranzo/orders', 'View', '183.82.0.192'),
(71, '2014-02-28 10:39:12', 1, 'orders', NULL, 'http://www.book4party.com/multivendor/ranzo/orders', 'View', '183.82.0.192'),
(72, '2014-03-04 17:13:17', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(73, '2014-03-04 17:13:30', 1, 'products', NULL, 'http://www.book4party.com/multivendor/ranzo/products', 'View', '183.82.0.192'),
(74, '2014-03-04 17:50:09', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/home', 'View', '183.82.0.192'),
(75, '2014-03-04 17:51:00', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo', 'View', '183.82.0.192'),
(76, '2014-03-16 14:11:56', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '122.169.170.182'),
(77, '2014-03-16 14:12:09', 1, 'vendor', NULL, 'http://www.book4party.com/multivendor/ranzo/vendor', 'View', '122.169.170.182'),
(78, '2014-03-16 14:12:21', 1, 'vendor-plan', NULL, 'http://www.book4party.com/multivendor/ranzo/vendor-plan', 'View', '122.169.170.182'),
(79, '2014-03-16 14:12:50', 1, 'orders', NULL, 'http://www.book4party.com/multivendor/ranzo/orders', 'View', '122.169.170.182'),
(80, '2014-03-16 14:14:29', 1, 'vendor-plan', NULL, 'http://www.book4party.com/multivendor/ranzo/vendor-plan', 'View', '122.169.170.182'),
(81, '2014-03-16 14:14:30', 1, 'vendor-plan', NULL, 'http://www.book4party.com/multivendor/ranzo/vendor-plan', 'View', '122.169.170.182'),
(82, '2014-03-16 14:14:31', 1, 'vendor-plan', NULL, 'http://www.book4party.com/multivendor/ranzo/vendor-plan', 'View', '122.169.170.182'),
(83, '2014-03-16 14:14:31', 1, 'vendor-plan', NULL, 'http://www.book4party.com/multivendor/ranzo/vendor-plan', 'View', '122.169.170.182'),
(84, '2014-03-16 14:21:32', 1, 'products', NULL, 'http://www.book4party.com/multivendor/ranzo/products', 'View', '122.169.170.182'),
(85, '2014-03-16 14:21:35', 1, 'attribute', NULL, 'http://www.book4party.com/multivendor/ranzo/attribute', 'View', '122.169.170.182'),
(86, '2014-03-16 14:21:37', 1, 'attributegroup', NULL, 'http://www.book4party.com/multivendor/ranzo/attributegroup', 'View', '122.169.170.182'),
(87, '2014-03-16 14:21:39', 1, 'categories', NULL, 'http://www.book4party.com/multivendor/ranzo/categories', 'View', '122.169.170.182'),
(88, '2014-03-16 14:21:45', 1, 'products', NULL, 'http://www.book4party.com/multivendor/ranzo/products', 'View', '122.169.170.182'),
(89, '2014-03-16 14:22:02', 1, 'products', NULL, 'http://www.book4party.com/multivendor/ranzo/products?page=', 'View', '122.169.170.182'),
(90, '2014-04-01 09:35:57', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '182.72.246.156'),
(91, '2014-04-15 15:48:38', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(92, '2014-04-22 15:32:57', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(93, '2014-04-22 15:33:11', 1, 'taxclass', NULL, 'http://www.book4party.com/multivendor/ranzo/taxclass', 'View', '183.82.0.192'),
(94, '2014-04-23 12:09:43', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(95, '2014-04-23 12:10:01', 1, 'taxclass', NULL, 'http://www.book4party.com/multivendor/ranzo/taxclass', 'View', '183.82.0.192'),
(96, '2014-04-23 12:10:36', 1, 'products', NULL, 'http://www.book4party.com/multivendor/ranzo/products', 'View', '183.82.0.192'),
(97, '2014-04-24 12:29:46', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '101.63.77.128'),
(98, '2014-04-24 12:30:05', 1, 'customergroup', NULL, 'http://www.book4party.com/multivendor/ranzo/customergroup', 'View', '101.63.77.128'),
(99, '2014-04-24 12:30:11', 1, 'customers', NULL, 'http://www.book4party.com/multivendor/ranzo/customers', 'View', '101.63.77.128'),
(100, '2014-04-24 12:30:39', 1, 'email-templates', NULL, 'http://www.book4party.com/multivendor/ranzo/email-templates', 'View', '101.63.77.128'),
(101, '2014-04-24 12:30:42', 1, 'customers', NULL, 'http://www.book4party.com/multivendor/ranzo/customers', 'View', '101.63.77.128'),
(102, '2014-04-24 12:30:56', 1, 'customergroup', NULL, 'http://www.book4party.com/multivendor/ranzo/customergroup', 'View', '101.63.77.128'),
(103, '2014-04-24 12:36:15', 1, 'customers', NULL, 'http://www.book4party.com/multivendor/ranzo/customers', 'View', '101.63.77.128'),
(104, '2014-04-24 12:37:09', 1, 'customers', NULL, 'http://www.book4party.com/multivendor/ranzo/customers?action=UnPub&ctrlaction=customers&rid=56&table=r_customers&upd_col=customers_status&comp_col=customers_id&page=1', 'View', '101.63.77.128'),
(105, '2014-04-24 12:37:10', 1, 'customers', NULL, 'http://www.book4party.com/multivendor/ranzo/customers?page=1&action=UnPub&msg=c2VsZWN0ZWQgQ3VzdG9tZXIgVW5wdWJsaXNoZWQgc3VjY2Vzc2Z1bGx5ISE=', 'View', '101.63.77.128'),
(106, '2014-04-24 12:38:27', 1, 'customers', NULL, 'http://www.book4party.com/multivendor/ranzo/customers?action=Pub&ctrlaction=customers&rid=56&table=r_customers&upd_col=customers_status&comp_col=customers_id&page=1', 'View', '101.63.77.128'),
(107, '2014-04-24 12:38:32', 1, 'customers', NULL, 'http://www.book4party.com/multivendor/ranzo/customers?page=1&action=Pub&msg=c2VsZWN0ZWQgQ3VzdG9tZXIgcHVibGlzaGVkIHN1Y2Nlc3NmdWxseSEh', 'View', '101.63.77.128'),
(108, '2014-04-24 12:41:12', 1, 'customergroup', NULL, 'http://www.book4party.com/multivendor/ranzo/customergroup', 'View', '101.63.77.128'),
(109, '2014-04-24 12:41:40', 1, 'customergroup', NULL, 'http://www.book4party.com/multivendor/ranzo/customergroup?page=', 'View', '101.63.77.128'),
(110, '2014-04-24 12:47:59', 1, 'customers', NULL, 'http://www.book4party.com/multivendor/ranzo/customers', 'View', '101.63.77.128'),
(111, '2014-04-24 14:41:46', 1, 'categories', NULL, 'http://www.book4party.com/multivendor/ranzo/categories', 'View', '115.242.75.103'),
(112, '2014-04-24 15:06:48', 1, 'categories', NULL, 'http://www.book4party.com/multivendor/ranzo/categories?page=', 'View', '115.242.75.103'),
(113, '2014-05-02 16:14:01', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(114, '2014-05-02 17:42:51', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/home', 'View', '183.82.0.192'),
(115, '2014-05-03 15:45:04', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(116, '2014-05-03 15:45:28', 1, 'search-terms-report', NULL, 'http://www.book4party.com/multivendor/ranzo/search-terms-report', 'View', '183.82.0.192'),
(117, '2014-05-03 15:45:35', 1, 'products-viewed', NULL, 'http://www.book4party.com/multivendor/ranzo/products-viewed', 'View', '183.82.0.192'),
(118, '2014-05-03 15:45:44', 1, 'customers-by-order-total-report', NULL, 'http://www.book4party.com/multivendor/ranzo/customers-by-order-total-report', 'View', '183.82.0.192'),
(119, '2014-05-03 15:48:56', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(120, '2014-05-03 15:49:05', 1, 'products-viewed', NULL, 'http://www.book4party.com/multivendor/ranzo/products-viewed', 'View', '183.82.0.192'),
(121, '2014-05-03 15:49:15', 1, 'search-terms-report', NULL, 'http://www.book4party.com/multivendor/ranzo/search-terms-report', 'View', '183.82.0.192'),
(122, '2014-05-03 15:49:33', 1, 'customers-by-order-total-report', NULL, 'http://www.book4party.com/multivendor/ranzo/customers-by-order-total-report', 'View', '183.82.0.192'),
(123, '2014-05-03 16:04:06', 1, 'products-viewed', NULL, 'http://www.book4party.com/multivendor/ranzo/products-viewed', 'View', '183.82.0.192'),
(124, '2014-05-03 16:04:07', 1, 'search-terms-report', NULL, 'http://www.book4party.com/multivendor/ranzo/search-terms-report', 'View', '183.82.0.192'),
(125, '2014-05-03 16:04:07', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(126, '2014-05-03 17:54:17', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(127, '2014-05-03 17:54:34', 1, 'tax-report', NULL, 'http://www.book4party.com/multivendor/ranzo/tax-report', 'View', '183.82.0.192'),
(128, '2014-05-03 17:54:44', 1, 'taxclass', NULL, 'http://www.book4party.com/multivendor/ranzo/taxclass', 'View', '183.82.0.192'),
(129, '2014-05-03 17:55:25', 1, 'taxzones', NULL, 'http://www.book4party.com/multivendor/ranzo/taxzones', 'View', '183.82.0.192'),
(130, '2014-05-06 17:09:51', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(131, '2014-05-06 17:10:13', 1, 'products-purchased', NULL, 'http://www.book4party.com/multivendor/ranzo/products-purchased', 'View', '183.82.0.192'),
(132, '2014-05-06 17:14:33', 1, 'orders', NULL, 'http://www.book4party.com/multivendor/ranzo/orders', 'View', '183.82.0.192'),
(133, '2014-05-06 17:18:16', 1, 'products-purchased', NULL, 'http://www.book4party.com/multivendor/ranzo/products-purchased', 'View', '183.82.0.192'),
(134, '2014-05-06 17:18:55', 1, 'products-download-report', NULL, 'http://www.book4party.com/multivendor/ranzo/products-download-report', 'View', '183.82.0.192'),
(135, '2014-05-06 17:19:20', 1, 'products', NULL, 'http://www.book4party.com/multivendor/ranzo/products?page=', 'View', '183.82.0.192'),
(136, '2014-05-06 17:22:05', 1, 'products-download-report', NULL, 'http://www.book4party.com/multivendor/ranzo/products-download-report', 'View', '183.82.0.192'),
(137, '2014-05-06 17:22:45', 1, 'products-purchased', NULL, 'http://www.book4party.com/multivendor/ranzo/products-purchased', 'View', '183.82.0.192'),
(138, '2014-05-06 18:06:48', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(139, '2014-05-06 18:06:50', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(140, '2014-05-06 18:06:53', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(141, '2014-05-06 18:06:55', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(142, '2014-05-06 18:07:52', 1, 'categories', NULL, 'http://www.book4party.com/multivendor/ranzo/categories', 'View', '183.82.0.192'),
(143, '2014-05-06 18:07:55', 1, 'categories', NULL, 'http://www.book4party.com/multivendor/ranzo/categories', 'View', '183.82.0.192'),
(144, '2014-05-06 18:16:51', 1, 'products', NULL, 'http://www.book4party.com/multivendor/ranzo/products', 'View', '183.82.0.192'),
(145, '2014-05-06 18:16:54', 1, 'products', NULL, 'http://www.book4party.com/multivendor/ranzo/products', 'View', '183.82.0.192'),
(146, '2014-05-06 18:20:19', 1, 'unapprovedproducts', NULL, 'http://www.book4party.com/multivendor/ranzo/unapprovedproducts', 'View', '183.82.0.192'),
(147, '2014-05-06 18:23:18', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(148, '2014-05-06 18:23:30', 1, 'unapprovedproducts', NULL, 'http://www.book4party.com/multivendor/ranzo/unapprovedproducts', 'View', '183.82.0.192'),
(149, '2014-05-06 18:24:00', 1, 'products', NULL, 'http://www.book4party.com/multivendor/ranzo/products', 'View', '183.82.0.192'),
(150, '2014-05-06 18:24:54', 1, 'products', NULL, 'http://www.book4party.com/multivendor/ranzo/products', 'View', '183.82.0.192'),
(151, '2014-05-06 18:28:27', 1, 'attribute', NULL, 'http://www.book4party.com/multivendor/ranzo/attribute', 'View', '183.82.0.192'),
(152, '2014-05-06 18:32:01', 1, 'attribute', NULL, 'http://www.book4party.com/multivendor/ranzo/attribute', 'View', '183.82.0.192'),
(153, '2014-05-06 18:32:39', 1, 'attribute', NULL, 'http://www.book4party.com/multivendor/ranzo/attribute', 'View', '183.82.0.192'),
(154, '2014-05-06 18:47:32', 1, 'attribute', NULL, 'http://www.book4party.com/multivendor/ranzo/attribute?page=', 'View', '183.82.0.192'),
(155, '2014-05-06 18:47:47', 1, 'attribute', NULL, 'http://www.book4party.com/multivendor/ranzo/attribute?page=', 'View', '183.82.0.192'),
(156, '2014-05-06 18:49:41', 1, 'attributegroup', NULL, 'http://www.book4party.com/multivendor/ranzo/attributegroup', 'View', '183.82.0.192'),
(157, '2014-05-06 18:52:49', 1, 'products', NULL, 'http://www.book4party.com/multivendor/ranzo/products', 'View', '183.82.0.192'),
(158, '2014-05-06 18:52:57', 1, 'products-viewed', NULL, 'http://www.book4party.com/multivendor/ranzo/products-viewed', 'View', '183.82.0.192'),
(159, '2014-05-06 18:54:52', 1, 'customers-by-order-total-report', NULL, 'http://www.book4party.com/multivendor/ranzo/customers-by-order-total-report', 'View', '183.82.0.192'),
(160, '2014-05-06 18:56:33', 1, 'search-terms-report', NULL, 'http://www.book4party.com/multivendor/ranzo/search-terms-report', 'View', '183.82.0.192'),
(161, '2014-05-06 18:57:03', 1, 'search-terms-report', NULL, 'http://www.book4party.com/multivendor/ranzo/search-terms-report', 'View', '183.82.0.192'),
(162, '2014-05-07 13:56:50', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(163, '2014-05-07 13:57:21', 1, 'customers-by-order-total-report', NULL, 'http://www.book4party.com/multivendor/ranzo/customers-by-order-total-report', 'View', '183.82.0.192'),
(164, '2014-05-07 14:09:07', 1, 'customers-by-order-total-report', NULL, 'http://www.book4party.com/multivendor/ranzo/customers-by-order-total-report', 'View', '183.82.0.192'),
(165, '2014-05-07 17:30:29', 1, 'customers-by-order-total-report', NULL, 'http://www.book4party.com/multivendor/ranzo/customers-by-order-total-report', 'View', '183.82.0.192'),
(166, '2014-05-08 12:38:18', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(167, '2014-05-08 12:38:27', 1, 'customers-by-order-total-report', NULL, 'http://www.book4party.com/multivendor/ranzo/customers-by-order-total-report', 'View', '183.82.0.192'),
(168, '2014-05-08 12:40:21', 1, 'customers-by-order-total-report', NULL, 'http://www.book4party.com/multivendor/ranzo/customers-by-order-total-report', 'View', '183.82.0.192'),
(169, '2014-05-13 16:47:33', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/index', 'View', '183.82.0.192'),
(170, '2014-05-13 16:50:52', 1, 'customers-by-order-total-report', NULL, 'http://www.book4party.com/multivendor/ranzo/customers-by-order-total-report', 'View', '183.82.0.192'),
(171, '2014-05-13 17:18:19', 1, 'customers-by-order-total-report', NULL, 'http://www.book4party.com/multivendor/ranzo/customers-by-order-total-report', 'View', '183.82.0.192'),
(172, '2014-05-13 17:18:24', 1, 'customers-by-order-total-report', NULL, 'http://www.book4party.com/multivendor/ranzo/customers-by-order-total-report', 'View', '183.82.0.192'),
(173, '2014-05-13 17:18:30', 1, 'customers-by-order-total-report', NULL, 'http://www.book4party.com/multivendor/ranzo/customers-by-order-total-report', 'View', '183.82.0.192'),
(174, '2014-05-13 18:00:55', 1, 'home', NULL, 'http://www.book4party.com/multivendor/ranzo/home', 'View', '183.82.0.192');

-- --------------------------------------------------------

--
-- Table structure for table `r_admin_log_history`
--

CREATE TABLE IF NOT EXISTS `r_admin_log_history` (
`id_log` int(15) NOT NULL,
  `access_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_admin` int(11) NOT NULL DEFAULT '0',
  `page_accessed` varchar(80) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `page_url` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `action` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `ip_address` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `r_admin_permissions`
--

CREATE TABLE IF NOT EXISTS `r_admin_permissions` (
`id_admin_permission` int(11) NOT NULL,
  `id_admin_role` int(11) NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `view` char(1) NOT NULL,
  `add` char(1) NOT NULL,
  `edit` char(1) NOT NULL,
  `trash` char(1) NOT NULL,
  `file_sort_order` tinyint(1) NOT NULL,
  `module_sort_order` tinyint(4) NOT NULL,
  `menu_type` tinyint(4) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_admin_permissions`
--

INSERT INTO `r_admin_permissions` (`id_admin_permission`, `id_admin_role`, `module_name`, `file_name`, `view`, `add`, `edit`, `trash`, `file_sort_order`, `module_sort_order`, `menu_type`, `date_modified`) VALUES
(2, 1, 'catalog', 'category', 'Y', 'Y', 'Y', 'Y', 1, 1, 0, '0000-00-00 00:00:00'),
(3, 1, 'catalog', 'attribute', 'Y', 'Y', 'Y', 'Y', 3, 4, 0, '0000-00-00 00:00:00'),
(5, 1, 'catalog', 'option', 'Y', 'Y', 'Y', 'Y', 5, 6, 0, '0000-00-00 00:00:00'),
(6, 1, 'catalog', 'manufacturer', 'Y', 'Y', 'Y', 'Y', 6, 3, 0, '0000-00-00 00:00:00'),
(7, 1, 'catalog', 'review', 'Y', 'Y', 'Y', 'Y', 7, 7, 0, '0000-00-00 00:00:00'),
(8, 1, 'design', 'page', 'Y', 'Y', 'Y', 'Y', 30, 5, 0, '0000-00-00 00:00:00'),
(9, 1, 'featured', 'coupon', 'Y', 'Y', 'Y', 'Y', 33, 4, 0, '0000-00-00 00:00:00'),
(13, 1, 'customers', 'customer', 'Y', 'Y', 'Y', 'Y', 9, 4, 0, '0000-00-00 00:00:00'),
(14, 1, 'customers', 'customergroups', 'Y', 'Y', 'Y', 'Y', 10, 4, 0, '0000-00-00 00:00:00'),
(18, 1, 'reports', 'productview', 'Y', 'N', 'N', 'N', 19, 6, 1, '0000-00-00 00:00:00'),
(20, 1, 'settings', 'shipping', 'Y', 'Y', 'Y', 'Y', 20, 7, 1, '2014-11-27 11:23:52'),
(21, 1, 'settings', 'payment', 'Y', 'Y', 'Y', 'Y', 21, 7, 1, '2014-11-27 11:23:47'),
(22, 1, 'settings', 'cartrules', 'Y', 'Y', 'Y', 'Y', 22, 7, 1, '2014-11-28 10:55:34'),
(23, 1, 'settings', 'country', 'Y', 'Y', 'Y', 'Y', 23, 7, 1, '0000-00-00 00:00:00'),
(24, 1, 'settings', 'zone', 'Y', 'Y', 'Y', 'Y', 24, 7, 1, '0000-00-00 00:00:00'),
(26, 1, 'settings', 'taxclass', 'Y', 'Y', 'Y', 'Y', 26, 7, 1, '0000-00-00 00:00:00'),
(27, 1, 'admin', 'administrator', 'Y', 'Y', 'Y', 'Y', 27, 8, 1, '0000-00-00 00:00:00'),
(28, 1, 'admin', 'adminrole', 'Y', 'Y', 'Y', 'Y', 28, 8, 1, '0000-00-00 00:00:00'),
(29, 1, 'admin', 'adminloghistory', 'Y', 'N', 'N', 'Y', 29, 8, 1, '2014-11-25 18:21:25'),
(30, 1, 'settings', 'mystore', 'Y', 'N', 'Y', 'N', 30, 7, 1, '0000-00-00 00:00:00'),
(31, 1, 'design', 'theme', 'Y', 'N', 'Y', 'N', 31, 5, 0, '0000-00-00 00:00:00'),
(32, 1, 'settings', 'orderstatus', 'Y', 'Y', 'Y', 'Y', 17, 1, 1, '0000-00-00 00:00:00'),
(33, 1, 'settings', 'stockstatus', 'Y', 'Y', 'Y', 'Y', 13, 1, 1, '0000-00-00 00:00:00'),
(34, 1, 'orders', 'order', 'Y', 'N', 'Y', 'Y', 11, 1, 0, '2014-12-05 14:47:46'),
(45, 1, 'reports', 'customerordertotal', 'Y', 'N', 'N', 'N', 26, 6, 1, '0000-00-00 00:00:00'),
(46, 1, 'reports', 'productreport', 'Y', 'N', 'N', 'N', 27, 6, 1, '0000-00-00 00:00:00'),
(52, 1, 'design', 'emailtemplate', 'Y', 'Y', 'Y', 'N', 36, 5, 0, '0000-00-00 00:00:00'),
(53, 1, 'settings', 'modules', 'Y', 'Y', 'Y', 'Y', 1, 7, 1, '2014-11-27 11:26:59'),
(54, 1, 'design', 'banner', 'Y', 'Y', 'Y', 'Y', 31, 5, 0, '0000-00-00 00:00:00'),
(56, 1, 'settings', 'currency', 'Y', 'Y', 'Y', 'Y', 26, 7, 1, '0000-00-00 00:00:00'),
(57, 1, 'home', 'gettingstarted', 'Y', 'N', 'N', 'N', 1, 0, 0, '0000-00-00 00:00:00'),
(58, 1, 'catalog', 'product', 'Y', 'Y', 'Y', 'Y', 2, 2, 0, '0000-00-00 00:00:00'),
(59, 1, 'settings', 'website', 'Y', 'N', 'Y', 'N', 30, 7, 1, '0000-00-00 00:00:00'),
(60, 1, 'catalog', 'productgroup', 'Y', 'Y', 'Y', 'Y', 4, 5, 0, '0000-00-00 00:00:00'),
(61, 1, 'settings', 'region', 'Y', 'Y', 'Y', 'Y', 20, 7, 1, '0000-00-00 00:00:00'),
(62, 1, 'reports', 'searchterm', 'Y', 'N', 'N', 'N', 19, 6, 1, '2014-11-25 14:33:16'),
(63, 1, 'settings', 'state', 'Y', 'Y', 'Y', 'Y', 19, 7, 1, '0000-00-00 00:00:00'),
(64, 1, 'home', 'dashboard', 'Y', 'N', 'N', 'N', 2, 0, 0, '0000-00-00 00:00:00'),
(147, 7, 'catalog', 'category', 'Y', 'N', 'Y', 'N', 1, 1, 0, '2014-11-25 14:34:49'),
(148, 7, 'catalog', 'attribute', 'Y', 'Y', 'Y', 'Y', 3, 4, 0, '2014-11-25 14:34:49'),
(149, 7, 'catalog', 'option', 'Y', 'Y', 'Y', 'Y', 5, 6, 0, '2014-11-25 14:34:49'),
(150, 7, 'catalog', 'manufacturer', 'Y', 'Y', 'Y', 'Y', 6, 3, 0, '2014-11-25 14:34:49'),
(151, 7, 'catalog', 'review', 'Y', 'Y', 'Y', 'Y', 7, 7, 0, '2014-11-25 14:34:49'),
(152, 7, 'catalog', 'product', 'Y', 'Y', 'Y', 'Y', 2, 2, 0, '2014-11-25 14:34:49'),
(153, 7, 'catalog', 'productgroup', 'Y', 'Y', 'Y', 'Y', 4, 5, 0, '2014-11-25 14:34:49'),
(154, 7, 'design', 'page', 'Y', 'Y', 'Y', 'Y', 30, 5, 0, '2014-11-25 14:34:49'),
(155, 7, 'design', 'theme', 'Y', 'N', 'Y', 'N', 31, 5, 0, '2014-11-25 14:34:49'),
(156, 7, 'design', 'emailtemplate', 'Y', 'Y', 'Y', 'N', 36, 5, 0, '2014-11-25 14:34:49'),
(157, 7, 'design', 'banner', 'Y', 'Y', 'Y', 'Y', 31, 5, 0, '2014-11-25 14:34:49'),
(158, 7, 'featured', 'coupon', 'Y', 'Y', 'Y', 'Y', 33, 4, 0, '2014-11-25 14:34:50'),
(159, 7, 'customers', 'customer', 'Y', 'Y', 'Y', 'Y', 9, 4, 0, '2014-11-25 14:34:50'),
(160, 7, 'customers', 'customergroups', 'Y', 'Y', 'Y', 'Y', 10, 4, 0, '2014-11-25 14:34:50'),
(164, 7, 'reports', 'productview', 'Y', 'N', 'N', 'N', 19, 6, 1, '2014-11-25 14:34:50'),
(165, 7, 'reports', 'customerordertotal', 'Y', 'N', 'N', 'N', 26, 6, 1, '2014-11-25 14:34:50'),
(166, 7, 'reports', 'productreport', 'Y', 'N', 'N', 'N', 27, 6, 1, '2014-11-25 14:34:50'),
(167, 7, 'reports', 'searchterm', 'Y', 'N', 'N', 'N', 19, 6, 1, '2014-11-25 14:34:50'),
(168, 7, 'settings', 'shipping', 'Y', 'Y', 'Y', 'Y', 20, 7, 1, '2014-11-25 14:34:50'),
(169, 7, 'settings', 'payment', 'Y', 'Y', 'Y', 'Y', 21, 7, 1, '2014-11-25 14:34:50'),
(170, 7, 'settings', 'cartrules', 'Y', 'Y', 'Y', 'Y', 22, 7, 1, '2014-11-25 14:34:50'),
(171, 7, 'settings', 'country', 'Y', 'Y', 'Y', 'Y', 23, 7, 1, '2014-11-25 14:34:51'),
(172, 7, 'settings', 'zone', 'Y', 'Y', 'Y', 'Y', 24, 7, 1, '2014-11-25 14:34:51'),
(173, 7, 'settings', 'taxclass', 'Y', 'Y', 'Y', 'Y', 26, 7, 1, '2014-11-25 14:34:51'),
(174, 7, 'settings', 'mystore', 'Y', 'N', 'Y', 'N', 30, 7, 1, '2014-11-25 14:34:51'),
(175, 7, 'settings', 'orderstatus', 'Y', 'Y', 'Y', 'Y', 17, 1, 1, '2014-11-25 14:34:51'),
(176, 7, 'settings', 'stockstatus', 'Y', 'Y', 'Y', 'Y', 13, 1, 1, '2014-11-25 14:34:51'),
(177, 7, 'settings', 'modules', 'Y', 'Y', 'Y', 'Y', 1, 7, 1, '2014-11-25 14:34:51'),
(178, 7, 'settings', 'currency', 'Y', 'Y', 'Y', 'Y', 26, 7, 1, '2014-11-25 14:34:51'),
(179, 7, 'settings', 'website', 'Y', 'N', 'Y', 'N', 30, 7, 1, '2014-11-25 14:34:51'),
(180, 7, 'settings', 'region', 'Y', 'Y', 'Y', 'Y', 20, 7, 1, '2014-11-25 14:34:51'),
(181, 7, 'settings', 'state', 'Y', 'Y', 'Y', 'Y', 19, 7, 1, '2014-11-25 14:34:51'),
(182, 7, 'admin', 'administrator', 'Y', 'Y', 'Y', 'Y', 27, 8, 1, '2014-11-25 14:34:51'),
(183, 7, 'admin', 'adminrole', 'Y', 'Y', 'Y', 'Y', 28, 8, 1, '2014-11-25 14:34:51'),
(184, 7, 'admin', 'adminloghistory', 'Y', 'N', 'N', 'Y', 29, 8, 1, '2014-11-25 18:18:19'),
(185, 7, 'orders', 'order', 'Y', 'N', 'Y', 'Y', 11, 1, 0, '2014-12-05 14:47:51'),
(186, 7, 'home', 'gettingstarted', 'Y', 'N', 'N', 'N', 1, 0, 0, '2014-11-25 14:34:52'),
(187, 7, 'home', 'dashboard', 'Y', 'N', 'N', 'N', 2, 0, 0, '2014-11-25 14:34:52'),
(188, 6, 'catalog', 'category', 'Y', 'N', 'N', 'N', 1, 1, 0, '2014-12-30 09:36:17'),
(189, 6, 'catalog', 'attribute', 'Y', 'N', 'N', 'N', 3, 4, 0, '2014-12-30 09:36:17'),
(190, 6, 'catalog', 'option', 'Y', 'N', 'N', 'N', 5, 6, 0, '2014-12-30 09:36:17'),
(191, 6, 'catalog', 'manufacturer', 'Y', 'N', 'N', 'N', 6, 3, 0, '2014-12-30 09:36:17'),
(192, 6, 'catalog', 'review', 'Y', 'N', 'N', 'N', 7, 7, 0, '2014-12-30 09:36:17'),
(193, 6, 'catalog', 'product', 'Y', 'N', 'N', 'N', 2, 2, 0, '2014-12-30 09:36:17'),
(194, 6, 'catalog', 'productgroup', 'Y', 'N', 'N', 'N', 4, 5, 0, '2014-12-30 09:36:17'),
(195, 6, 'customers', 'customer', 'Y', 'N', 'N', 'N', 9, 4, 0, '2014-12-30 09:36:17'),
(261, 8, 'catalog', 'category', 'Y', 'Y', 'Y', 'Y', 1, 1, 0, '2015-03-29 22:03:33'),
(262, 8, 'catalog', 'attribute', 'Y', 'N', 'N', 'N', 3, 4, 0, '2015-03-29 22:03:33'),
(263, 8, 'catalog', 'option', 'Y', 'N', 'N', 'N', 5, 6, 0, '2015-03-29 22:03:33'),
(264, 8, 'catalog', 'manufacturer', 'Y', 'N', 'N', 'Y', 6, 3, 0, '2015-03-29 22:03:33'),
(265, 8, 'catalog', 'review', 'Y', 'Y', 'N', 'N', 7, 7, 0, '2015-03-29 22:03:33'),
(266, 8, 'catalog', 'product', 'Y', 'Y', 'Y', 'Y', 2, 2, 0, '2015-03-29 22:03:33'),
(267, 8, 'catalog', 'productgroup', 'Y', 'N', 'N', 'N', 4, 5, 0, '2015-03-29 22:03:33'),
(268, 8, 'design', 'page', 'Y', 'Y', 'Y', 'N', 30, 5, 0, '2015-03-29 22:03:33'),
(269, 8, 'design', 'theme', 'Y', 'N', 'Y', 'N', 31, 5, 0, '2015-03-29 22:03:33'),
(270, 8, 'design', 'emailtemplate', 'Y', 'Y', 'Y', 'N', 36, 5, 0, '2015-03-29 22:03:33'),
(271, 8, 'design', 'banner', 'Y', 'Y', 'Y', 'N', 31, 5, 0, '2015-03-29 22:03:33'),
(272, 8, 'featured', 'coupon', 'Y', 'Y', 'Y', 'N', 33, 4, 0, '2015-03-29 22:03:33'),
(273, 8, 'customers', 'customer', 'Y', 'Y', 'N', 'N', 9, 4, 0, '2015-03-29 22:03:33'),
(274, 8, 'customers', 'customergroups', 'Y', 'Y', 'N', 'N', 10, 4, 0, '2015-03-29 22:03:33'),
(275, 8, 'settings', 'shipping', 'Y', 'N', 'N', 'N', 20, 7, 1, '2015-03-29 22:03:33'),
(276, 8, 'settings', 'payment', 'Y', 'N', 'N', 'N', 21, 7, 1, '2015-03-29 22:03:33'),
(277, 8, 'settings', 'cartrules', 'Y', 'N', 'N', 'N', 22, 7, 1, '2015-03-29 22:03:33'),
(278, 8, 'settings', 'country', 'Y', 'N', 'N', 'N', 23, 7, 1, '2015-03-29 22:03:33'),
(279, 8, 'settings', 'zone', 'Y', 'N', 'N', 'N', 24, 7, 1, '2015-03-29 22:03:33'),
(280, 8, 'settings', 'taxclass', 'Y', 'Y', 'N', 'N', 26, 7, 1, '2015-03-29 22:03:33'),
(281, 8, 'settings', 'mystore', 'Y', 'N', 'N', 'N', 30, 7, 1, '2015-03-29 22:03:33'),
(282, 8, 'settings', 'orderstatus', 'Y', 'N', 'N', 'N', 17, 1, 1, '2015-03-29 22:03:33'),
(283, 8, 'settings', 'stockstatus', 'Y', 'N', 'N', 'N', 13, 1, 1, '2015-03-29 22:03:33'),
(284, 8, 'settings', 'modules', 'Y', 'Y', 'Y', 'Y', 1, 7, 1, '2015-03-29 22:03:33'),
(285, 8, 'settings', 'currency', 'Y', 'N', 'N', 'N', 26, 7, 1, '2015-03-29 22:03:33'),
(286, 8, 'settings', 'website', 'Y', 'N', 'N', 'N', 30, 7, 1, '2015-03-29 22:03:33'),
(287, 8, 'settings', 'region', 'Y', 'N', 'N', 'N', 20, 7, 1, '2015-03-29 22:03:33'),
(288, 8, 'settings', 'state', 'Y', 'N', 'N', 'N', 19, 7, 1, '2015-03-29 22:03:33'),
(289, 8, 'admin', 'administrator', 'Y', 'N', 'N', 'N', 27, 8, 1, '2015-03-29 22:03:33'),
(290, 8, 'admin', 'adminrole', 'Y', 'N', 'N', 'N', 28, 8, 1, '2015-03-29 22:03:33'),
(291, 8, 'admin', 'adminloghistory', 'Y', 'N', 'N', 'N', 29, 8, 1, '2015-03-29 22:03:33'),
(292, 8, 'orders', 'order', 'Y', 'N', 'Y', 'Y', 11, 1, 0, '2015-03-29 22:03:33'),
(293, 8, 'home', 'gettingstarted', 'Y', 'N', 'N', 'N', 1, 0, 0, '2015-03-29 22:03:33'),
(294, 8, 'home', 'dashboard', 'Y', 'N', 'N', 'N', 2, 0, 0, '2015-03-29 22:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `r_admin_role`
--

CREATE TABLE IF NOT EXISTS `r_admin_role` (
`id_admin_role` int(11) NOT NULL,
  `role` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_admin_role`
--

INSERT INTO `r_admin_role` (`id_admin_role`, `role`, `date_created`, `date_modified`, `status`) VALUES
(1, 'Global Admin', '2011-09-29 08:23:43', '2011-10-01 08:23:50', 1),
(4, 'clerks', '2011-10-02 12:14:30', '2012-01-31 17:34:56', 1),
(6, 'Sale', '2013-03-11 05:45:04', '2014-12-30 23:36:17', 1),
(7, 'Marketing Manager', '2014-07-14 15:03:29', '2014-11-26 18:04:52', 1),
(8, 'demo', '2015-03-30 11:42:01', '2015-03-30 12:03:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `r_attribute`
--

CREATE TABLE IF NOT EXISTS `r_attribute` (
`id_attribute` int(11) NOT NULL,
  `id_attribute_group` int(11) NOT NULL,
  `sort_order` tinyint(3) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_attribute`
--

INSERT INTO `r_attribute` (`id_attribute`, `id_attribute_group`, `sort_order`, `date_modified`) VALUES
(6, 4, 1, '0000-00-00 00:00:00'),
(10, 4, 2, '0000-00-00 00:00:00'),
(13, 10, 0, '0000-00-00 00:00:00'),
(14, 10, 1, '0000-00-00 00:00:00'),
(15, 10, 2, '0000-00-00 00:00:00'),
(16, 13, 0, '0000-00-00 00:00:00'),
(17, 13, 1, '0000-00-00 00:00:00'),
(18, 13, 2, '0000-00-00 00:00:00'),
(20, 14, 0, '0000-00-00 00:00:00'),
(21, 14, 1, '0000-00-00 00:00:00'),
(22, 14, 2, '0000-00-00 00:00:00'),
(23, 15, 0, '0000-00-00 00:00:00'),
(24, 15, 1, '0000-00-00 00:00:00'),
(34, 18, 0, '0000-00-00 00:00:00'),
(35, 18, 1, '0000-00-00 00:00:00'),
(36, 18, 2, '0000-00-00 00:00:00'),
(37, 19, 0, '0000-00-00 00:00:00'),
(38, 19, 1, '0000-00-00 00:00:00'),
(39, 19, 2, '0000-00-00 00:00:00'),
(40, 4, 3, '0000-00-00 00:00:00'),
(41, 20, 1, '0000-00-00 00:00:00'),
(42, 21, 1, '0000-00-00 00:00:00'),
(43, 21, 2, '0000-00-00 00:00:00'),
(44, 21, 3, '0000-00-00 00:00:00'),
(45, 21, 4, '0000-00-00 00:00:00'),
(46, 21, 5, '0000-00-00 00:00:00'),
(47, 21, 6, '0000-00-00 00:00:00'),
(48, 22, 1, '0000-00-00 00:00:00'),
(49, 22, 0, '0000-00-00 00:00:00'),
(50, 22, 0, '0000-00-00 00:00:00'),
(51, 22, 0, '0000-00-00 00:00:00'),
(53, 22, 0, '0000-00-00 00:00:00'),
(54, 23, 0, '0000-00-00 00:00:00'),
(55, 23, 0, '0000-00-00 00:00:00'),
(56, 23, 0, '0000-00-00 00:00:00'),
(57, 23, 0, '0000-00-00 00:00:00'),
(58, 24, 1, '0000-00-00 00:00:00'),
(59, 24, 2, '0000-00-00 00:00:00'),
(61, 24, 4, '0000-00-00 00:00:00'),
(62, 25, 0, '0000-00-00 00:00:00'),
(63, 25, 2, '0000-00-00 00:00:00'),
(64, 25, 1, '0000-00-00 00:00:00'),
(65, 25, 4, '0000-00-00 00:00:00'),
(66, 25, 3, '0000-00-00 00:00:00'),
(67, 25, 5, '0000-00-00 00:00:00'),
(68, 26, 0, '0000-00-00 00:00:00'),
(69, 26, 0, '0000-00-00 00:00:00'),
(70, 26, 0, '0000-00-00 00:00:00'),
(71, 26, 0, '0000-00-00 00:00:00'),
(72, 26, 0, '0000-00-00 00:00:00'),
(73, 26, 0, '0000-00-00 00:00:00'),
(74, 27, 1, '2014-12-30 08:27:24'),
(75, 27, 2, '2014-12-30 08:27:24'),
(76, 27, 3, '2014-12-30 08:27:24'),
(77, 28, 0, '2015-03-29 23:00:31'),
(78, 28, 1, '2015-03-29 23:00:31'),
(79, 28, 2, '2015-03-29 23:00:31'),
(80, 28, 3, '2015-03-29 23:00:31'),
(81, 28, 4, '2015-03-29 23:00:31'),
(82, 28, 5, '2015-03-29 23:00:31'),
(83, 28, 6, '2015-03-29 23:00:31'),
(84, 28, 7, '2015-03-29 23:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `r_attribute_description`
--

CREATE TABLE IF NOT EXISTS `r_attribute_description` (
  `id_attribute` int(11) NOT NULL,
  `id_language` int(11) NOT NULL,
  `id_attribute_group` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_attribute_description`
--

INSERT INTO `r_attribute_description` (`id_attribute`, `id_language`, `id_attribute_group`, `name`) VALUES
(6, 1, 4, '50 GB'),
(6, 2, 4, ''),
(10, 1, 4, '100 GB'),
(10, 2, 4, '1'),
(13, 1, 10, 'Full'),
(13, 2, 10, 'White'),
(14, 1, 10, 'Half'),
(14, 2, 10, 'Blue'),
(15, 1, 10, 'No Sleeve'),
(15, 2, 10, 'Green'),
(16, 1, 13, 'Model'),
(16, 2, 13, 'model'),
(17, 1, 13, 'High'),
(17, 2, 13, 'high'),
(18, 1, 13, 'Primary Drive'),
(18, 2, 13, 'Primary Drive'),
(20, 1, 14, 'Clock Speed'),
(20, 2, 14, 'Clock Speed'),
(21, 1, 14, 'Description'),
(21, 2, 14, 'Description'),
(22, 1, 14, 'No.of Cores'),
(22, 2, 14, 'No.of Cores'),
(23, 1, 15, 'Aspect Ratio'),
(23, 2, 15, 'Aspect Ratio'),
(24, 1, 15, 'Monitor Size'),
(24, 2, 15, 'Monitor Size'),
(34, 1, 18, 'Saturated fat 1.2 g'),
(34, 2, 18, 'Saturated fat 1.2 g'),
(35, 1, 18, 'Polyunsaturated fat 2.5 g'),
(35, 2, 18, 'Polyunsaturated fat 2.5 g'),
(36, 1, 18, 'Monounsaturated fat 2.2 g'),
(36, 2, 18, 'Monounsaturated fat 2.2 g'),
(37, 1, 19, 'Saturated fat 0.1 g'),
(37, 2, 19, 'Saturated fat 0.1 g'),
(38, 1, 19, 'Polyunsaturated fat 0.2 g'),
(38, 2, 19, 'Polyunsaturated fat 0.2 g'),
(39, 1, 19, 'Monounsaturated fat 0 g'),
(39, 2, 19, 'Monounsaturated fat 0 g'),
(40, 1, 4, '200 GB'),
(40, 2, 4, '200 GB'),
(41, 1, 20, 'Pack of'),
(41, 2, 20, 'Pack of'),
(42, 1, 21, 'Brand'),
(42, 2, 21, 'Pack of'),
(43, 1, 21, 'Model Number'),
(43, 2, 21, 'Model Number'),
(44, 1, 21, 'Body Material'),
(44, 2, 21, 'Body Material'),
(45, 1, 21, 'Plating'),
(45, 2, 21, 'Plating'),
(46, 1, 21, 'Model Name'),
(46, 2, 21, 'Model Name'),
(47, 1, 21, 'Ideal For'),
(47, 2, 21, 'Ideal For'),
(48, 1, 22, 'In the Box'),
(48, 2, 22, 'In the Box'),
(49, 1, 22, 'Brand'),
(49, 2, 22, 'Brand'),
(50, 1, 22, 'Model ID'),
(50, 2, 22, 'Model ID'),
(51, 1, 22, 'Business Features'),
(51, 2, 22, 'Business Features'),
(53, 1, 22, 'Handset Color'),
(53, 2, 22, 'Handset Color'),
(54, 1, 23, 'Operating Freq'),
(54, 2, 23, 'Operating Freq'),
(55, 1, 23, 'OS'),
(55, 2, 23, 'OS'),
(56, 1, 23, 'Java'),
(56, 2, 23, 'Java'),
(57, 1, 23, 'Processor'),
(57, 2, 23, 'Processor'),
(58, 1, 24, 'Type'),
(58, 2, 24, 'Type'),
(59, 1, 24, 'Size'),
(59, 2, 24, 'Size'),
(61, 1, 24, 'Color'),
(61, 2, 24, 'Color'),
(62, 1, 25, 'Primary Camera'),
(62, 2, 25, 'Primary Camera'),
(63, 1, 25, 'Secondary Camera'),
(63, 2, 25, 'Secondary Camera'),
(64, 1, 25, 'Flash'),
(64, 2, 25, 'Flash'),
(65, 1, 25, 'Video Recording'),
(65, 2, 25, 'Video Recording'),
(66, 1, 25, 'HD Recording'),
(66, 2, 25, 'HD Recording'),
(67, 1, 25, 'Other Camera Features'),
(67, 2, 25, 'Other Camera Features'),
(68, 1, 26, 'Type'),
(68, 2, 26, 'Type'),
(69, 1, 26, 'Fabric'),
(69, 2, 26, 'Fabric'),
(70, 1, 26, 'Design'),
(70, 2, 26, 'Design'),
(71, 1, 26, 'Cuff'),
(71, 2, 26, 'Cuff'),
(72, 1, 26, 'Sleeve'),
(72, 2, 26, 'Sleeve'),
(73, 1, 26, 'Collar'),
(73, 2, 26, 'Collar'),
(74, 1, 27, 'External Depth'),
(74, 2, 27, 'External Depth'),
(75, 1, 27, 'External Width'),
(75, 2, 27, 'External Width'),
(76, 1, 27, 'External Height'),
(76, 2, 27, 'External Height'),
(77, 1, 28, 'Fabric'),
(77, 2, 28, 'Fabric'),
(78, 1, 28, 'Sleeves'),
(78, 2, 28, 'Sleeves'),
(79, 1, 28, 'Neck'),
(79, 2, 28, 'Neck'),
(80, 1, 28, 'Pockets'),
(80, 2, 28, 'Pockets'),
(81, 1, 28, 'Fit'),
(81, 2, 28, 'Fit'),
(82, 1, 28, 'Color'),
(82, 2, 28, 'Color'),
(83, 1, 28, 'Wash Care'),
(83, 2, 28, 'Wash Care'),
(84, 1, 28, 'Style '),
(84, 2, 28, 'Style ');

-- --------------------------------------------------------

--
-- Table structure for table `r_attribute_group`
--

CREATE TABLE IF NOT EXISTS `r_attribute_group` (
`id_attribute_group` int(11) NOT NULL,
  `sort_order` tinyint(3) NOT NULL,
  `filter` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_attribute_group`
--

INSERT INTO `r_attribute_group` (`id_attribute_group`, `sort_order`, `filter`) VALUES
(4, 1, 1),
(10, 2, 1),
(13, 2, 0),
(14, 3, 0),
(15, 4, 1),
(18, 1, 1),
(19, 0, 1),
(20, 1, 0),
(21, 2, 0),
(22, 1, 0),
(23, 2, 0),
(24, 3, 0),
(25, 4, 0),
(26, 2, 1),
(27, 4, 0),
(28, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `r_attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `r_attribute_group_description` (
  `id_attribute_group` int(11) NOT NULL,
  `id_language` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_attribute_group_description`
--

INSERT INTO `r_attribute_group_description` (`id_attribute_group`, `id_language`, `name`) VALUES
(4, 1, 'Memory'),
(4, 2, 'MEMORY'),
(10, 1, 'Sleeves'),
(10, 2, 'colors'),
(13, 1, ' Item specifics'),
(13, 2, ' Item specifics'),
(14, 1, 'Processor'),
(14, 2, 'Processor'),
(15, 1, 'Display'),
(15, 2, 'Display'),
(18, 1, 'Total Fat In Oats'),
(18, 2, 'Total Fat in Oats'),
(19, 1, 'Total Fat In Berries'),
(19, 2, 'Total Fat in Berries'),
(20, 1, 'IN THE BOX'),
(20, 2, 'IN THE BOX'),
(21, 1, 'GENERAL'),
(21, 2, 'IN THE BOX'),
(22, 1, 'GENERAL FEATURES'),
(22, 2, 'GENERAL FEATURES'),
(23, 1, 'PLATFORM'),
(23, 2, 'PLATFORM'),
(24, 1, 'DISPLAY'),
(24, 2, 'DISPLAY'),
(25, 1, ' CAMERA'),
(25, 2, ' CAMERA'),
(26, 1, 'T-SHIRT'),
(26, 2, 'T-SHIRT'),
(27, 1, 'Dimensions'),
(27, 2, 'Dimensions'),
(28, 1, 'Product Info & Care '),
(28, 2, 'Product Info & Care ');

-- --------------------------------------------------------

--
-- Table structure for table `r_banner`
--

CREATE TABLE IF NOT EXISTS `r_banner` (
`id_banner` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_banner`
--

INSERT INTO `r_banner` (`id_banner`, `name`, `status`) VALUES
(10, 'Home Banners', 1),
(17, 'Friday Offers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `r_banner_image`
--

CREATE TABLE IF NOT EXISTS `r_banner_image` (
`id_banner_image` int(11) NOT NULL,
  `id_banner` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_banner_image`
--

INSERT INTO `r_banner_image` (`id_banner_image`, `id_banner`, `link`, `image`) VALUES
(5, 10, 'http://www.google.com', 'banner.jpg'),
(8, 10, 'http://www.google.com', 'banner1.jpg'),
(27, 17, 'link', 'banner_title-27_1404469563.jpg'),
(28, 17, 'link', 'banner_title-_1404469563.jpg'),
(29, 17, 'link', 'banner_title-_1404469563.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `r_banner_image_description`
--

CREATE TABLE IF NOT EXISTS `r_banner_image_description` (
  `id_banner_image` int(11) NOT NULL,
  `id_language` int(11) NOT NULL,
  `id_banner` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_banner_image_description`
--

INSERT INTO `r_banner_image_description` (`id_banner_image`, `id_language`, `id_banner`, `title`) VALUES
(5, 1, 10, ''),
(5, 2, 10, ''),
(8, 1, 10, ''),
(8, 2, 10, ''),
(27, 1, 17, ''),
(27, 2, 17, ''),
(28, 1, 17, ''),
(28, 2, 17, ''),
(29, 1, 17, ''),
(29, 2, 17, '');

-- --------------------------------------------------------

--
-- Table structure for table `r_category`
--

CREATE TABLE IF NOT EXISTS `r_category` (
`id_category` int(11) NOT NULL,
  `image` varchar(64) DEFAULT NULL,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `filter` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_category`
--

INSERT INTO `r_category` (`id_category`, `image`, `id_parent`, `top`, `column`, `sort_order`, `date_created`, `date_modified`, `filter`, `status`) VALUES
(61, 'category_61_1427715064.jpg', 0, 1, 3, 1, '2015-03-30 10:55:22', '2015-03-31 19:44:39', NULL, 1),
(62, 'category_62_1427715053.jpg', 0, 1, 0, 2, '2015-03-30 10:55:37', '2015-03-29 22:00:32', NULL, 1),
(63, 'category_63_1427715657.jpg', 0, 1, 0, 3, '2015-03-30 10:55:49', '2015-03-29 22:03:05', NULL, 1),
(65, 'category_65_1427714989.jpeg', 0, 1, 0, 5, '2015-03-30 10:56:13', '2015-03-29 22:06:05', NULL, 1),
(67, 'category_67_1427715768.jpg', 0, 1, 3, 7, '2015-03-30 10:57:55', '2015-03-31 19:44:53', NULL, 1),
(68, 'category_68_1427715979.jpg', 0, 1, 0, 8, '2015-03-30 10:58:14', '2015-03-29 22:10:17', NULL, 1),
(69, 'category_69_1427715021.jpg', 0, 1, 0, 9, '2015-03-30 10:59:05', '2015-03-29 22:12:00', NULL, 1),
(70, 'category_69_1427714303.png', 61, 0, 0, 1, '2015-03-30 11:18:23', '2015-03-29 21:18:23', NULL, 1),
(71, 'category_70_1427715375.png', 61, 1, 0, 2, '2015-03-30 11:36:15', '2015-03-29 21:36:15', NULL, 1),
(73, '', 67, 0, 0, 2, '2015-03-30 11:55:54', '2015-03-29 21:56:49', NULL, 1),
(74, 'category_73_1427716901.png', 61, 0, 0, 3, '2015-03-30 12:01:41', '2015-03-29 22:01:41', NULL, 1),
(75, 'category_74_1427718194.jpg', 65, 0, 0, 0, '2015-03-30 12:23:14', '2015-03-29 22:23:14', NULL, 1),
(76, 'category_76_1427718506.png', 67, 0, 1, 1, '2015-03-30 12:26:38', '2015-03-31 19:41:26', NULL, 1),
(77, 'category_76_1427718604.png', 67, 0, 0, 2, '2015-03-30 12:30:04', '2015-03-31 19:41:08', NULL, 1),
(78, 'category_77_1427719209.jpg', 62, 0, 0, NULL, '2015-03-30 12:40:09', '2015-03-29 22:40:09', NULL, 1),
(79, 'category_61_1427715064.jpg', 0, 0, 3, 1, '2016-05-11 00:00:00', '2016-05-10 10:00:00', NULL, 1),
(80, 'category_70_1427715375.png', 61, 1, 0, 1, '2016-05-11 00:00:00', '2016-05-10 10:00:00', 'null', 1);

-- --------------------------------------------------------

--
-- Table structure for table `r_category_description`
--

CREATE TABLE IF NOT EXISTS `r_category_description` (
  `id_category` int(11) NOT NULL DEFAULT '0',
  `id_language` int(11) NOT NULL DEFAULT '1',
  `name` varchar(32) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(500) NOT NULL,
  `meta_description` varchar(500) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_category_description`
--

INSERT INTO `r_category_description` (`id_category`, `id_language`, `name`, `meta_title`, `meta_keyword`, `meta_description`, `description`) VALUES
(61, 1, 'Mobiles', '', '', '', '<p>Welcome to the Mobiles&nbsp;. Shop for Smartphones, Basic Mobiles,from popular brands including Apple, Samsung, Lenovo and more. Also, find perfect accessories including Cases, Screen Protectors, Bluetooth Headsets and more. &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n'),
(61, 2, 'Mobiles', '', '', '', ''),
(62, 1, 'Men', '', '', '', '<p>Buy Now! <em>Men&#39;s</em> shoes, clothes and <em>men&#39;s accessories online</em> in India at best price.</p>\r\n'),
(62, 2, 'Men', '', '', '', ''),
(63, 1, 'Women', '', '', '', '<p>Buy <em>Women&#39;s</em> shoes, clothes, jewelry and <em>women&#39;s accessories </em>&nbsp;at best prices.</p>\r\n'),
(63, 2, 'Women', '', '', '', ''),
(65, 1, 'Jewellery', '', '', '', '<p>Are you looking to buy the best <em>jewelry</em>? Whether it&#39;s the most dazzling ring or a simple leather bracelet -- you will find it here.</p>\r\n'),
(65, 2, ' jewellery', '', '', '', ''),
(67, 1, 'Electronic ', '', '', '', '<p><strong>Electronic devices</strong> are such an important part of our life that we use an electronic device almost every minute of the day in various forms. We have become very dependent on them that almost half of our work is done using an electronic device. This includes PC, Laptops, Tablets, Cameras, Watches and so on. It is needless to say that usage of Electronics gadgets in India is growing everyday and it&#39;s a good sign for electronics manufacturers in India. Gadgets like <strong>Smartphones</strong>, <strong>Tablets</strong>, <strong>Cameras</strong>, <strong>Music players</strong> have become a must-own product for people.</p>\r\n'),
(67, 2, 'Electronic ', '', '', '', ''),
(68, 1, 'Kitchen', '', '', '', '<p><em>Buy Home</em> &amp; <em>Kitchen Appliances online</em> at low prices in India.<em>Shop</em> from a wide range of Electrical <em>Home</em> &amp; <em>Kitchen</em> Appliances.</p>\r\n'),
(68, 2, 'Kitchen', '', '', '', ''),
(69, 1, 'Books', '', '', '', '<p>Buy <em>books online</em> from India&#39;s largest book store like biography, autobiography fiction, novel ...</p>\r\n'),
(69, 2, 'Books', '', '', '', ''),
(70, 1, 'Apple', 'Apple', 'Apple', 'Apple Inc. is an American multinational company that offers the best smart phones to the future generation that technology can make.', '<p>Apple Inc. is an American multinational company that offers the best smart phones to the future generation that technology can make. It is an innovative company known for their leading edge products. Incorporated in 1977 by college dropouts Steve Jobs and Steve Wozniak, Apple designs, makes and markets mobile communication devices, computers and portable digital music players.</p>\r\n'),
(70, 2, 'Apple', 'Apple', 'Apple', 'Apple Inc. is an American multinational company that offers the best smart phones to the future generation that technology can make.', '<p>Apple Inc. is an American multinational company that offers the best smart phones to the future generation that technology can make. It is an innovative company known for their leading edge products. Incorporated in 1977 by college dropouts Steve Jobs and Steve Wozniak, Apple designs, makes and markets mobile communication devices, computers and portable digital music players.</p>\r\n'),
(71, 1, 'Samsung ', '', '', '', '<p><span style="background-color:rgb(245, 245, 245); color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:13.992000579834px">Samsung is the largest mobile phone maker in its home market of South Korea, and the third largest in the world. In addition to mobile phones and related devices, the company also manufacturers things such as televisions, cameras, and electronic components.</span></p>\r\n'),
(71, 2, 'Samsung ', '', '', '', '<p><span style="background-color:rgb(245, 245, 245); color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; font-size:13.992000579834px">Samsung is the largest mobile phone maker in its home market of South Korea, and the third largest in the world. In addition to mobile phones and related devices, the company also manufacturers things such as televisions, cameras, and electronic components.</span></p>\r\n'),
(73, 1, 'Audio &  MP3 Players', '', '', '', ''),
(73, 2, 'AUDIO & MP3 PLAYERS', '', '', '', ''),
(74, 1, 'Blackberry', '', '', '', '<p>BlackBerry is a line of wireless handheld devices (commonly called smartphones) and services designed and marketed by BlackBerry Limited,&nbsp;</p>\r\n'),
(74, 2, 'Blackberry', '', '', '', '<p>BlackBerry is a line of wireless handheld devices (commonly called smartphones) and services designed and marketed by BlackBerry Limited,&nbsp;</p>\r\n'),
(75, 1, 'Jewellery Sets', 'Jewellery Sets', 'Jewellery Sets', 'Jewellery Sets', ''),
(75, 2, 'Jewellery Sets', 'Jewellery Sets', 'Jewellery Sets', 'Jewellery Sets', ''),
(76, 1, 'Canon ', '', '', '', '<p>Canon Optical Image Stabilizer technology makes handheld photography more practical at slow shutter speeds, accommodating more low-light shooting situations than ever before.&nbsp;</p>\r\n'),
(76, 2, 'Canon ', '', '', '', ''),
(77, 1, 'Nikon', '', '', '', '<p>Nikon&#39;s Coolpix compact camera line finally has its first large-sensor model! The Nikon Coolpix A is company&#39;s first entry into the burgeoning large-sensor, fixed prime lens market, and the category&#39;s&nbsp;</p>\r\n'),
(77, 2, 'nikon', '', '', '', '<p>Nikon&#39;s Coolpix compact camera line finally has its first large-sensor model! The Nikon Coolpix A is company&#39;s first entry into the burgeoning large-sensor, fixed prime lens market, and the category&#39;s&nbsp;</p>\r\n'),
(78, 1, 'Casual Shirts', '', '', '', ''),
(78, 2, 'Casual Shirts', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `r_category_filter`
--

CREATE TABLE IF NOT EXISTS `r_category_filter` (
`id_category_filter` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id` int(11) NOT NULL COMMENT '0:price,1:brands,2:discount',
  `type` varchar(10) NOT NULL COMMENT 'general,option,attribute',
  `sort_order` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_category_filter`
--

INSERT INTO `r_category_filter` (`id_category_filter`, `id_category`, `id`, `type`, `sort_order`) VALUES
(210, 73, 0, 'general', 1),
(211, 73, 1, 'general', 2);

-- --------------------------------------------------------

--
-- Table structure for table `r_configuration`
--

CREATE TABLE IF NOT EXISTS `r_configuration` (
`id_configuration` int(11) NOT NULL,
  `id_configuration_group` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=448 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_configuration`
--

INSERT INTO `r_configuration` (`id_configuration`, `id_configuration_group`, `code`, `key`, `value`) VALUES
(1, 0, 'CONFIG', 'CONFIG_STORE_NAME', 'Cartnex'),
(2, 0, 'CONFIG', 'CONFIG_STORE_OWNER', 'Cartnex.org'),
(3, 0, 'CONFIG', 'CONFIG_STORE_OWNER_EMAIL_ADDRESS', 'info@cartnex.org'),
(4, 0, 'CONFIG', 'CONFIG_STORE_SUPPORT_EMAIL_ADDRESS', 'info@cartnex.org'),
(5, 0, 'CONFIG', 'CONFIG_STORE_STATE', '1476'),
(6, 0, 'CONFIG', 'CONFIG_STORE_REPLY_EMAIL', 'info@cartnex.org'),
(7, 0, 'CONFIG', 'CONFIG_STORE_TELEPHONE_NUMBER', '9000000009'),
(8, 0, 'CONFIG', 'CONFIG_STORE_FAX_NUMBER', '9000000009'),
(9, 0, 'CONFIG', 'CONFIG_STORE_ADDRESS', 'Road No 32, Lincoln Street, California-CA 31002, United States'),
(10, 0, 'CONFIG', 'CONFIG_STORE_COUNTRY', '99'),
(11, 0, 'CONFIG', 'CONFIG_STORE_ALLOW_CHECKOUT', '1'),
(13, 0, 'CONFIG', 'CONFIG_STORE_SHOW_PRICE_WITH_TAX', '0'),
(14, 0, 'CONFIG', 'CONFIG_STORE_INVOICE_PREFIX', 'INV_'),
(15, 0, 'CONFIG', 'CONFIG_STORE_LOGIN_SHOW_PRICE', '0'),
(16, 0, 'CONFIG', 'CONFIG_STORE_APPROVE_NEW_CUSTOMER', '0'),
(17, 0, 'CONFIG', 'CONFIG_STORE_ALLOW_GUEST_CHECKOUT', '1'),
(18, 0, 'CONFIG', 'CONFIG_STORE_ALLOW_REVIEWS', '1'),
(20, 0, 'CONFIG', 'CONFIG_STORE_ACCOUNT_TERMS', '13'),
(21, 0, 'CONFIG', 'CONFIG_STORE_CHECKOUT_TERMS', '13'),
(23, 0, 'CONFIG', 'CONFIG_STORE_ORDER_ALERT_MAILS', 'info@cartnex.org'),
(25, 0, 'CONFIG', 'CONFIG_WEBSITE_COPYRIGHTS', 'All right reserverd cartnex'),
(26, 0, 'CONFIG', 'CONFIG_WEBSITE_DEFAULT_WEIGHT', 'KG'),
(27, 0, 'CONFIG', 'CONFIG_WEBSITE_DEFAULT_LENGTH', 'INC'),
(28, 0, 'CONFIG', 'CONFIG_WEBSITE_ADDTOCART_REDIRECT', '0'),
(29, 0, 'CONFIG', 'CONFIG_WEBSITE_DEFAULT_CUSTOMER_GROUP', '1'),
(30, 0, 'CONFIG', 'CONFIG_WEBSITE_COMPLETE_ORDER_STATUS', '1'),
(31, 0, 'CONFIG', 'CONFIG_WEBSITE_GOOGLE_ANALYTICS', 'None'),
(32, 0, 'CONFIG', 'CONFIG_WEBSITE_MAINTENANCE_MODE', '0'),
(33, 0, 'CONFIG', 'CONFIG_WEBSITE_CACHE_LIFE_TIME', '600'),
(34, 0, 'CONFIG', 'CONFIG_WEBSITE_MAINTENANCE_MESSAGE', 'Site is under maintenance!!'),
(35, 0, 'CONFIG', 'CONFIG_WEBSITE_META_TITLE', 'Welcome to Cartnex !!'),
(36, 0, 'CONFIG', 'CONFIG_WEBSITE_META_KEYWORDS', 'Open Source eCommerce using YII Framework, eCommerce platform using YII Framework, YII open source eCommerce platform. Online Store using Yii framework, Open Source Online store using Yii framework, Free online store using Yii framework, free eCommerce on Yii framework, Open source eCommerce platform built on Yii framework'),
(37, 0, 'CONFIG', 'CONFIG_WEBSITE_META_DESCRIPTION', 'Open Source eCommerce using YII Framework,'),
(38, 0, 'CONFIG', 'CONFIG_WEBSITE_DEFAULT_PRODUCT_LIST_VIEW', 'grid'),
(39, 0, 'CONFIG', 'CONFIG_WEBSITE_PRODUCT_NAME_LIMIT', '15'),
(41, 0, 'CONFIG', 'CONFIG_WEBSITE_ITEMS_PER_PAGE', '9'),
(42, 0, 'CONFIG', 'CONFIG_WEBSITE_ITEMS_PER_PAGE_ADMIN', '50'),
(45, 0, 'CONFIG', 'CONFIG_STORE_DEFAULT_CURRENCY', 'USD'),
(46, 0, 'CONFIG', 'CONFIG_STORE_DEFAULT_LANGUAGE', 'en'),
(172, 0, 'CONFIG', 'CONFIG_WEBSITE_TEMPLATE', 'default'),
(230, 0, 'CONFIG', 'CONFIG_STORE_SHOW_CATEGORY_PRODUCT_COUNT', '0'),
(232, 0, 'CONFIG', 'CONFIG_STORE_NO_IMAGE', 'store_1416997053.jpg'),
(233, 0, 'CONFIG', 'CONFIG_STORE_LOGO_IMAGE', 'CONFIG_STORE_LOGO_IMAGE_1416356961.png'),
(234, 0, 'CONFIG', 'CONFIG_STORE_FAVI_IMAGE', 'CONFIG_STORE_FAVI_IMAGE_1405082388.ico'),
(235, 0, 'CONFIG', 'CONFIG_STORE_ENABLE_BILLING', '1'),
(270, 0, 'CONFIG', 'CONFIG_WEBSITE_MAIL_PROTOCOL', 'mail'),
(271, 0, 'CONFIG', 'CONFIG_WEBSITE_SMTP_HOST', 'null'),
(272, 0, 'CONFIG', 'CONFIG_WEBSITE_SMTP_USERNAME', 'null'),
(273, 0, 'CONFIG', 'CONFIG_WEBSITE_SMTP_PASSWORD', 'null'),
(274, 0, 'CONFIG', 'CONFIG_WEBSITE_SMTP_PORT', 'null'),
(275, 0, 'CONFIG', 'CONFIG_WEBSITE_SMTP_TIMEOUT', 'null'),
(300, 0, 'CONFIG', 'CONFIG_WEBSITE_ALLOWED_FILE_TYPES', 'txt\r\npng\r\njpe\r\njpeg\r\njpg'),
(312, 0, 'SHIPPING', 'CARTRULE_SHIPPING_TITLE', 'Shipping : '),
(313, 0, 'SHIPPING', 'CARTRULE_SHIPPING_STATUS', '1'),
(314, 0, 'SHIPPING', 'CARTRULE_SHIPPING_FILE', 'Shipping'),
(315, 0, 'SHIPPING', 'CARTRULE_SHIPPING_SORT_ORDER', '2'),
(343, 0, 'FILTER', 'MODULE_FILTER', 'a:2:{s:4:"data";N;s:6:"module";a:1:{i:0;a:4:{s:6:"layout";s:14:"productlisting";s:8:"position";s:4:"left";s:10:"sort_order";s:1:"3";s:6:"status";s:1:"1";}}}'),
(358, 0, 'TOTAL', 'CARTRULE_TOTAL_FILE', 'Total'),
(359, 0, 'TOTAL', 'CARTRULE_TOTAL_TITLE', 'Total:'),
(360, 0, 'TOTAL', 'CARTRULE_TOTAL_STATUS', '1'),
(361, 0, 'TOTAL', 'CARTRULE_TOTAL_SORT_ORDER', '4'),
(362, 0, 'BANNER', 'MODULE_BANNER', 'a:2:{s:4:"data";N;s:6:"module";N;}'),
(370, 0, 'ACCOUNT', 'MODULE_ACCOUNT', 'a:2:{s:4:"data";N;s:6:"module";a:1:{i:0;a:4:{s:6:"layout";s:7:"account";s:8:"position";s:4:"left";s:10:"sort_order";s:1:"1";s:6:"status";s:1:"1";}}}'),
(392, 0, 'SLIDESHOW', 'MODULE_SLIDESHOW', 'a:2:{s:4:"data";N;s:6:"module";a:1:{i:0;a:7:{s:6:"banner";s:2:"10";s:6:"height";s:4:"1000";s:5:"width";s:3:"330";s:6:"layout";s:4:"home";s:8:"position";s:3:"top";s:10:"sort_order";s:1:"1";s:6:"status";s:1:"1";}}}'),
(403, 0, 'LATEST', 'MODULE_LATEST', 'a:2:{s:4:"data";N;s:6:"module";a:1:{i:0;a:8:{s:5:"limit";s:2:"10";s:8:"box_size";s:1:"2";s:6:"height";s:3:"290";s:5:"width";s:3:"290";s:6:"layout";s:4:"home";s:8:"position";s:6:"bottom";s:10:"sort_order";s:1:"3";s:6:"status";s:1:"1";}}}'),
(405, 0, 'RECENTLYVIEWED', 'MODULE_RECENTLYVIEWED', 'a:2:{s:4:"data";N;s:6:"module";a:1:{i:0;a:8:{s:5:"limit";s:1:"5";s:8:"box_size";s:1:"3";s:6:"height";s:3:"200";s:5:"width";s:3:"200";s:6:"layout";s:4:"home";s:8:"position";s:6:"bottom";s:10:"sort_order";s:1:"1";s:6:"status";s:1:"0";}}}'),
(406, 0, 'SPECIAL', 'MODULE_SPECIAL', 'a:2:{s:4:"data";N;s:6:"module";a:1:{i:0;a:8:{s:5:"limit";s:1:"5";s:8:"box_size";s:1:"1";s:6:"height";s:2:"10";s:5:"width";s:3:"100";s:6:"layout";s:4:"home";s:8:"position";s:6:"bottom";s:10:"sort_order";s:1:"1";s:6:"status";s:1:"0";}}}'),
(426, 0, 'SUBTOTAL', 'CARTRULE_SUBTOTAL_FILE', 'SubTotal'),
(427, 0, 'SUBTOTAL', 'CARTRULE_SUBTOTAL_TITLE', 'Sub Total : '),
(428, 0, 'SUBTOTAL', 'CARTRULE_SUBTOTAL_STATUS', '1'),
(429, 0, 'SUBTOTAL', 'CARTRULE_SUBTOTAL_SORT_ORDER', '1'),
(430, 0, 'COUPON', 'CARTRULE_COUPON_FILE', 'Coupon'),
(431, 0, 'COUPON', 'CARTRULE_COUPON_TITLE', 'Coupon'),
(432, 0, 'COUPON', 'CARTRULE_COUPON_STATUS', '1'),
(433, 0, 'COUPON', 'CARTRULE_COUPON_SORT_ORDER', '3'),
(434, 0, 'FLAT', 'SHIPPING_FLAT_FILE', 'Flat_Rate'),
(435, 0, 'FLAT', 'SHIPPING_FLAT_TITLE', 'Flat Rate Shipping'),
(436, 0, 'FLAT', 'SHIPPING_FLAT_COST', '5'),
(437, 0, 'FLAT', 'SHIPPING_FLAT_REGION', '0'),
(438, 0, 'FLAT', 'SHIPPING_FLAT_TAX_CLASS', '3'),
(439, 0, 'FLAT', 'SHIPPING_FLAT_STATUS', '1'),
(440, 0, 'FLAT', 'SHIPPING_FLAT_SORT_ORDER', '0'),
(441, 0, 'COD', 'PAYMENT_COD_FILE', 'Cash_On_Delivery'),
(442, 0, 'COD', 'PAYMENT_COD_TITLE', 'Cash On Delivery'),
(443, 0, 'COD', 'PAYMENT_COD_ORDER_STATUS_ID', '2'),
(444, 0, 'COD', 'PAYMENT_COD_REGION', '0'),
(445, 0, 'COD', 'PAYMENT_COD_STATUS', '1'),
(446, 0, 'COD', 'PAYMENT_COD_SORT_ORDER', '1'),
(447, 0, 'CATEGORY', 'MODULE_CATEGORY', 'a:2:{s:4:"data";N;s:6:"module";a:1:{i:0;a:4:{s:6:"layout";s:14:"productlisting";s:8:"position";s:4:"left";s:10:"sort_order";s:1:"1";s:6:"status";s:1:"1";}}}');

-- --------------------------------------------------------

--
-- Table structure for table `r_configuration_group`
--

CREATE TABLE IF NOT EXISTS `r_configuration_group` (
`id_configuration_group` int(11) NOT NULL,
  `type` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_configuration_group`
--

INSERT INTO `r_configuration_group` (`id_configuration_group`, `type`, `code`, `date_created`, `date_modified`) VALUES
(1, 'CONFIG', 'CONFIG', '2014-05-02 00:00:00', '2015-03-31 20:11:57'),
(73, 'CARTRULE', 'SUBTOTAL', '2014-06-15 00:00:00', '2014-12-27 17:07:44'),
(144, 'CARTRULE', 'SHIPPING', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'CARTRULE', 'COUPON', '2014-10-21 22:02:52', '2014-12-27 17:08:04'),
(148, 'PAYMENT', 'COD', '2014-10-21 22:49:36', '2015-01-06 09:21:48'),
(150, 'SHIPPING', 'FLAT', '2014-10-21 22:53:44', '2015-01-04 13:28:52'),
(154, 'MODULE', 'FILTER', '0000-00-00 00:00:00', '2014-10-23 09:43:45'),
(157, 'PAYMENT', 'MT', '2014-11-28 14:19:47', '2014-11-27 10:49:47'),
(162, 'MODULE', 'MANUFACTURER', '2014-11-28 14:56:36', '2014-11-27 11:26:36'),
(164, 'MODULE', 'NEWSLETTER', '2014-11-29 14:02:30', '2014-11-28 10:32:30'),
(165, 'CARTRULE', 'TOTAL', '2014-11-29 14:24:52', '2014-11-28 10:54:52'),
(166, 'MODULE', 'BANNER', '0000-00-00 00:00:00', '2014-11-29 08:27:34'),
(174, 'MODULE', 'ACCOUNT', '0000-00-00 00:00:00', '2014-11-29 13:09:26'),
(183, 'MODULE', 'SLIDESHOW', '0000-00-00 00:00:00', '2014-12-19 08:15:39'),
(194, 'MODULE', 'LATEST', '0000-00-00 00:00:00', '2014-12-26 12:19:32'),
(196, 'MODULE', 'RECENTLYVIEWED', '0000-00-00 00:00:00', '2014-12-26 13:17:44'),
(197, 'MODULE', 'SPECIAL', '0000-00-00 00:00:00', '2014-12-26 13:18:09'),
(199, 'MODULE', 'CATEGORY', '0000-00-00 00:00:00', '2015-03-29 22:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `r_country`
--

CREATE TABLE IF NOT EXISTS `r_country` (
`id_country` int(11) NOT NULL,
  `id_zone` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `call_prefix` int(10) DEFAULT NULL,
  `address_format` varchar(255) DEFAULT NULL COMMENT 'firstname,lastname,company,address_1,address_2,city,state,postcode,country',
  `iso_code_2` varchar(2) DEFAULT NULL,
  `iso_code_3` varchar(3) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_country`
--

INSERT INTO `r_country` (`id_country`, `id_zone`, `name`, `call_prefix`, `address_format`, `iso_code_2`, `iso_code_3`, `status`) VALUES
(1, 2, 'Afghanistan', 12, '', 'AF', 'AFG', 0),
(2, 0, 'Albania', NULL, '', 'AL', 'ALB', 1),
(3, 0, 'Algeria', NULL, '', 'DZ', 'DZA', 1),
(4, 0, 'American Samoa', NULL, '', 'AS', 'ASM', 1),
(5, 0, 'Andorra', NULL, '', 'AD', 'AND', 1),
(6, 0, 'Angola', NULL, '', 'AO', 'AGO', 1),
(7, 0, 'Anguilla', NULL, '', 'AI', 'AIA', 1),
(8, 0, 'Antarctica', NULL, '', 'AQ', 'ATA', 1),
(9, 0, 'Antigua and Barbuda', NULL, '', 'AG', 'ATG', 1),
(10, 0, 'Argentina', NULL, '', 'AR', 'ARG', 1),
(11, 0, 'Armenia', NULL, '', 'AM', 'ARM', 1),
(12, 0, 'Aruba', NULL, '', 'AW', 'ABW', 1),
(13, 0, 'Australia', NULL, '', 'AU', 'AUS', 1),
(14, 0, 'Austria', NULL, '', 'AT', 'AUT', 1),
(15, 0, 'Azerbaijan', NULL, '', 'AZ', 'AZE', 1),
(16, 0, 'Bahamas', NULL, '', 'BS', 'BHS', 1),
(17, 0, 'Bahrain', NULL, '', 'BH', 'BHR', 1),
(18, 2, 'Bangladesh', 123, '', 'BD', 'BGD', 0),
(19, 0, 'Barbados', NULL, '', 'BB', 'BRB', 1),
(20, 0, 'Belarus', NULL, '', 'BY', 'BLR', 1),
(21, 0, 'Belgium', NULL, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 'BE', 'BEL', 1),
(22, 0, 'Belize', NULL, '', 'BZ', 'BLZ', 1),
(23, 0, 'Benin', NULL, '', 'BJ', 'BEN', 1),
(24, 0, 'Bermuda', NULL, '', 'BM', 'BMU', 1),
(25, 0, 'Bhutan', NULL, '', 'BT', 'BTN', 1),
(26, 0, 'Bolivia', NULL, '', 'BO', 'BOL', 1),
(27, 0, 'Bosnia and Herzegovina', NULL, '', 'BA', 'BIH', 1),
(28, 0, 'Botswana', NULL, '', 'BW', 'BWA', 1),
(29, 0, 'Bouvet Island', NULL, '', 'BV', 'BVT', 1),
(30, 0, 'Brazil', NULL, '', 'BR', 'BRA', 1),
(31, 0, 'British Indian Ocean Territory', NULL, '', 'IO', 'IOT', 1),
(32, 0, 'Brunei Darussalam', NULL, '', 'BN', 'BRN', 1),
(33, 0, 'Bulgaria', NULL, '', 'BG', 'BGR', 1),
(34, 0, 'Burkina Faso', NULL, '', 'BF', 'BFA', 1),
(35, 0, 'Burundi', NULL, '', 'BI', 'BDI', 1),
(36, 0, 'Cambodia', NULL, '', 'KH', 'KHM', 1),
(37, 0, 'Cameroon', NULL, '', 'CM', 'CMR', 1),
(38, 0, 'Canada', NULL, '', 'CA', 'CAN', 1),
(39, 0, 'Cape Verde', NULL, '', 'CV', 'CPV', 1),
(40, 0, 'Cayman Islands', NULL, '', 'KY', 'CYM', 1),
(41, 0, 'Central African Republic', NULL, '', 'CF', 'CAF', 1),
(42, 0, 'Chad', NULL, '', 'TD', 'TCD', 1),
(43, 0, 'Chile', NULL, '', 'CL', 'CHL', 1),
(44, 0, 'China', NULL, '', 'CN', 'CHN', 1),
(45, 0, 'Christmas Island', NULL, '', 'CX', 'CXR', 1),
(46, 0, 'Cocos (Keeling) Islands', NULL, '', 'CC', 'CCK', 1),
(47, 0, 'Colombia', NULL, '', 'CO', 'COL', 1),
(48, 0, 'Comoros', NULL, '', 'KM', 'COM', 1),
(49, 0, 'Congo', NULL, '', 'CG', 'COG', 1),
(50, 0, 'Cook Islands', NULL, '', 'CK', 'COK', 1),
(51, 0, 'Costa Rica', NULL, '', 'CR', 'CRI', 1),
(52, 0, 'Cote D''Ivoire', NULL, '', 'CI', 'CIV', 1),
(53, 0, 'Croatia', NULL, '', 'HR', 'HRV', 1),
(54, 0, 'Cuba', NULL, '', 'CU', 'CUB', 1),
(55, 0, 'Cyprus', NULL, '', 'CY', 'CYP', 1),
(56, 0, 'Czech Republic', NULL, '', 'CZ', 'CZE', 1),
(57, 0, 'Denmark', NULL, '', 'DK', 'DNK', 1),
(58, 0, 'Djibouti', NULL, '', 'DJ', 'DJI', 1),
(59, 0, 'Dominica', NULL, '', 'DM', 'DMA', 1),
(60, 0, 'Dominican Republic', NULL, '', 'DO', 'DOM', 1),
(61, 0, 'East Timor', NULL, '', 'TL', 'TLS', 1),
(62, 0, 'Ecuador', NULL, '', 'EC', 'ECU', 1),
(63, 0, 'Egypt', NULL, '', 'EG', 'EGY', 1),
(64, 0, 'El Salvador', NULL, '', 'SV', 'SLV', 1),
(65, 0, 'Equatorial Guinea', NULL, '', 'GQ', 'GNQ', 1),
(66, 0, 'Eritrea', NULL, '', 'ER', 'ERI', 1),
(67, 0, 'Estonia', NULL, '', 'EE', 'EST', 1),
(68, 0, 'Ethiopia', NULL, '', 'ET', 'ETH', 1),
(69, 0, 'Falkland Islands (Malvinas)', NULL, '', 'FK', 'FLK', 1),
(70, 0, 'Faroe Islands', NULL, '', 'FO', 'FRO', 1),
(71, 0, 'Fiji', NULL, '', 'FJ', 'FJI', 1),
(72, 0, 'Finland', NULL, '', 'FI', 'FIN', 1),
(74, 0, 'France, Metropolitan', NULL, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 'FR', 'FRA', 1),
(75, 0, 'French Guiana', NULL, '', 'GF', 'GUF', 1),
(76, 0, 'French Polynesia', NULL, '', 'PF', 'PYF', 1),
(77, 0, 'French Southern Territories', NULL, '', 'TF', 'ATF', 1),
(78, 0, 'Gabon', NULL, '', 'GA', 'GAB', 1),
(79, 0, 'Gambia', NULL, '', 'GM', 'GMB', 1),
(80, 0, 'Georgia', NULL, '', 'GE', 'GEO', 1),
(81, 0, 'Germany', NULL, '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 'DE', 'DEU', 1),
(82, 0, 'Ghana', NULL, '', 'GH', 'GHA', 1),
(83, 0, 'Gibraltar', NULL, '', 'GI', 'GIB', 1),
(84, 0, 'Greece', NULL, '', 'GR', 'GRC', 1),
(85, 0, 'Greenland', NULL, '', 'GL', 'GRL', 1),
(86, 0, 'Grenada', NULL, '', 'GD', 'GRD', 1),
(87, 0, 'Guadeloupe', NULL, '', 'GP', 'GLP', 1),
(88, 0, 'Guam', NULL, '', 'GU', 'GUM', 1),
(89, 0, 'Guatemala', NULL, '', 'GT', 'GTM', 1),
(90, 0, 'Guinea', NULL, '', 'GN', 'GIN', 1),
(91, 0, 'Guinea-Bissau', NULL, '', 'GW', 'GNB', 1),
(92, 0, 'Guyana', NULL, '', 'GY', 'GUY', 1),
(93, 0, 'Haiti', NULL, '', 'HT', 'HTI', 1),
(94, 0, 'Heard and Mc Donald Islands', NULL, '', 'HM', 'HMD', 1),
(95, 0, 'Honduras', NULL, '', 'HN', 'HND', 1),
(96, 0, 'Hong Kong', NULL, '', 'HK', 'HKG', 1),
(97, 0, 'Hungary', NULL, '', 'HU', 'HUN', 1),
(98, 0, 'Iceland', NULL, '', 'IS', 'ISL', 1),
(99, 0, 'India', 91, '', 'IN', 'IND', 1),
(100, 0, 'Indonesia', NULL, '', 'ID', 'IDN', 1),
(101, 0, 'Iran (Islamic Republic of)', NULL, '', 'IR', 'IRN', 1),
(102, 0, 'Iraq', NULL, '', 'IQ', 'IRQ', 1),
(103, 0, 'Ireland', NULL, '', 'IE', 'IRL', 1),
(104, 0, 'Israel', NULL, '', 'IL', 'ISR', 1),
(105, 0, 'Italy', NULL, '', 'IT', 'ITA', 1),
(106, 0, 'Jamaica', NULL, '', 'JM', 'JAM', 1),
(107, 0, 'Japan', NULL, '', 'JP', 'JPN', 1),
(108, 0, 'Jordan', NULL, '', 'JO', 'JOR', 1),
(109, 0, 'Kazakhstan', NULL, '', 'KZ', 'KAZ', 1),
(110, 0, 'Kenya', NULL, '', 'KE', 'KEN', 1),
(111, 0, 'Kiribati', NULL, '', 'KI', 'KIR', 1),
(112, 0, 'North Korea', NULL, '', 'KP', 'PRK', 1),
(113, 0, 'Korea, Republic of', NULL, '', 'KR', 'KOR', 1),
(114, 0, 'Kuwait', NULL, '', 'KW', 'KWT', 1),
(115, 0, 'Kyrgyzstan', NULL, '', 'KG', 'KGZ', 1),
(116, 0, 'Lao People''s Democratic Republic', NULL, '', 'LA', 'LAO', 1),
(117, 0, 'Latvia', NULL, '', 'LV', 'LVA', 1),
(118, 0, 'Lebanon', NULL, '', 'LB', 'LBN', 1),
(119, 0, 'Lesotho', NULL, '', 'LS', 'LSO', 1),
(120, 0, 'Liberia', NULL, '', 'LR', 'LBR', 1),
(121, 0, 'Libyan Arab Jamahiriya', NULL, '', 'LY', 'LBY', 1),
(122, 0, 'Liechtenstein', NULL, '', 'LI', 'LIE', 1),
(123, 0, 'Lithuania', NULL, '', 'LT', 'LTU', 1),
(124, 0, 'Luxembourg', NULL, '', 'LU', 'LUX', 1),
(125, 0, 'Macau', NULL, '', 'MO', 'MAC', 1),
(126, 0, 'FYROM', NULL, '', 'MK', 'MKD', 1),
(127, 0, 'Madagascar', NULL, '', 'MG', 'MDG', 1),
(128, 0, 'Malawi', NULL, '', 'MW', 'MWI', 1),
(129, 0, 'Malaysia', NULL, '', 'MY', 'MYS', 1),
(130, 0, 'Maldives', NULL, '', 'MV', 'MDV', 1),
(131, 0, 'Mali', NULL, '', 'ML', 'MLI', 1),
(132, 0, 'Malta', NULL, '', 'MT', 'MLT', 1),
(133, 0, 'Marshall Islands', NULL, '', 'MH', 'MHL', 1),
(134, 0, 'Martinique', NULL, '', 'MQ', 'MTQ', 1),
(135, 0, 'Mauritania', NULL, '', 'MR', 'MRT', 1),
(136, 0, 'Mauritius', NULL, '', 'MU', 'MUS', 1),
(137, 0, 'Mayotte', NULL, '', 'YT', 'MYT', 1),
(138, 0, 'Mexico', NULL, '', 'MX', 'MEX', 1),
(139, 0, 'Micronesia, Federated States of', NULL, '', 'FM', 'FSM', 1),
(140, 0, 'Moldova, Republic of', NULL, '', 'MD', 'MDA', 1),
(141, 0, 'Monaco', NULL, '', 'MC', 'MCO', 1),
(142, 0, 'Mongolia', NULL, '', 'MN', 'MNG', 1),
(143, 0, 'Montserrat', NULL, '', 'MS', 'MSR', 1),
(144, 0, 'Morocco', NULL, '', 'MA', 'MAR', 1),
(145, 0, 'Mozambique', NULL, '', 'MZ', 'MOZ', 1),
(146, 0, 'Myanmar', NULL, '', 'MM', 'MMR', 1),
(147, 0, 'Namibia', NULL, '', 'NA', 'NAM', 1),
(148, 0, 'Nauru', NULL, '', 'NR', 'NRU', 1),
(149, 0, 'Nepal', NULL, '', 'NP', 'NPL', 1),
(150, 0, 'Netherlands', NULL, '', 'NL', 'NLD', 1),
(151, 0, 'Netherlands Antilles', NULL, '', 'AN', 'ANT', 1),
(152, 0, 'New Caledonia', NULL, '', 'NC', 'NCL', 1),
(153, 0, 'New Zealand', NULL, '', 'NZ', 'NZL', 1),
(154, 0, 'Nicaragua', NULL, '', 'NI', 'NIC', 1),
(155, 0, 'Niger', NULL, '', 'NE', 'NER', 1),
(156, 0, 'Nigeria', NULL, '', 'NG', 'NGA', 1),
(157, 0, 'Niue', NULL, '', 'NU', 'NIU', 1),
(158, 0, 'Norfolk Island', NULL, '', 'NF', 'NFK', 1),
(159, 0, 'Northern Mariana Islands', NULL, '', 'MP', 'MNP', 1),
(160, 0, 'Norway', NULL, '', 'NO', 'NOR', 1),
(161, 0, 'Oman', NULL, '', 'OM', 'OMN', 1),
(162, 0, 'Pakistan', NULL, '', 'PK', 'PAK', 1),
(163, 0, 'Palau', NULL, '', 'PW', 'PLW', 1),
(164, 0, 'Panama', NULL, '', 'PA', 'PAN', 1),
(165, 0, 'Papua New Guinea', NULL, '', 'PG', 'PNG', 1),
(166, 0, 'Paraguay', NULL, '', 'PY', 'PRY', 1),
(167, 0, 'Peru', NULL, '', 'PE', 'PER', 1),
(168, 0, 'Philippines', NULL, '', 'PH', 'PHL', 1),
(169, 0, 'Pitcairn', NULL, '', 'PN', 'PCN', 1),
(170, 0, 'Poland', NULL, '', 'PL', 'POL', 1),
(171, 0, 'Portugal', NULL, '', 'PT', 'PRT', 1),
(172, 0, 'Puerto Rico', NULL, '', 'PR', 'PRI', 1),
(173, 0, 'Qatar', NULL, '', 'QA', 'QAT', 1),
(174, 0, 'Reunion', NULL, '', 'RE', 'REU', 1),
(175, 0, 'Romania', NULL, '', 'RO', 'ROM', 1),
(176, 0, 'Russian Federation', NULL, '', 'RU', 'RUS', 1),
(177, 0, 'Rwanda', NULL, '', 'RW', 'RWA', 1),
(178, 0, 'Saint Kitts and Nevis', NULL, '', 'KN', 'KNA', 1),
(179, 0, 'Saint Lucia', NULL, '', 'LC', 'LCA', 1),
(180, 0, 'Saint Vincent and the Grenadines', NULL, '', 'VC', 'VCT', 1),
(181, 0, 'Samoa', NULL, '', 'WS', 'WSM', 1),
(182, 0, 'San Marino', NULL, '', 'SM', 'SMR', 1),
(183, 0, 'Sao Tome and Principe', NULL, '', 'ST', 'STP', 1),
(184, 0, 'Saudi Arabia', NULL, '', 'SA', 'SAU', 1),
(185, 0, 'Senegal', NULL, '', 'SN', 'SEN', 1),
(186, 0, 'Seychelles', NULL, '', 'SC', 'SYC', 1),
(187, 0, 'Sierra Leone', NULL, '', 'SL', 'SLE', 1),
(188, 0, 'Singapore', NULL, '', 'SG', 'SGP', 1),
(189, 0, 'Slovak Republic', NULL, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 'SK', 'SVK', 1),
(190, 0, 'Slovenia', NULL, '', 'SI', 'SVN', 1),
(191, 0, 'Solomon Islands', NULL, '', 'SB', 'SLB', 1),
(192, 0, 'Somalia', NULL, '', 'SO', 'SOM', 1),
(193, 0, 'South Africa', NULL, '', 'ZA', 'ZAF', 1),
(194, 0, 'South Georgia &amp; South Sandwich Islands', NULL, '', 'GS', 'SGS', 1),
(195, 0, 'Spain', NULL, '', 'ES', 'ESP', 1),
(196, 0, 'Sri Lanka', NULL, '', 'LK', 'LKA', 1),
(197, 0, 'St. Helena', NULL, '', 'SH', 'SHN', 1),
(198, 0, 'St. Pierre and Miquelon', NULL, '', 'PM', 'SPM', 1),
(199, 0, 'Sudan', NULL, '', 'SD', 'SDN', 1),
(200, 0, 'Suriname', NULL, '', 'SR', 'SUR', 1),
(201, 0, 'Svalbard and Jan Mayen Islands', NULL, '', 'SJ', 'SJM', 1),
(202, 0, 'Swaziland', NULL, '', 'SZ', 'SWZ', 1),
(203, 0, 'Sweden', NULL, '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 'SE', 'SWE', 1),
(204, 0, 'Switzerland', NULL, '', 'CH', 'CHE', 1),
(205, 0, 'Syrian Arab Republic', NULL, '', 'SY', 'SYR', 1),
(206, 0, 'Taiwan', NULL, '', 'TW', 'TWN', 1),
(207, 0, 'Tajikistan', NULL, '', 'TJ', 'TJK', 1),
(208, 0, 'Tanzania, United Republic of', NULL, '', 'TZ', 'TZA', 1),
(209, 0, 'Thailand', NULL, '', 'TH', 'THA', 1),
(210, 0, 'Togo', NULL, '', 'TG', 'TGO', 1),
(211, 0, 'Tokelau', NULL, '', 'TK', 'TKL', 1),
(212, 0, 'Tonga', NULL, '', 'TO', 'TON', 1),
(213, 0, 'Trinidad and Tobago', NULL, '', 'TT', 'TTO', 1),
(214, 0, 'Tunisia', NULL, '', 'TN', 'TUN', 1),
(215, 0, 'Turkey', NULL, '', 'TR', 'TUR', 1),
(216, 0, 'Turkmenistan', NULL, '', 'TM', 'TKM', 1),
(217, 0, 'Turks and Caicos Islands', NULL, '', 'TC', 'TCA', 1),
(218, 0, 'Tuvalu', NULL, '', 'TV', 'TUV', 1),
(219, 0, 'Uganda', NULL, '', 'UG', 'UGA', 1),
(220, 0, 'Ukraine', NULL, '', 'UA', 'UKR', 1),
(221, 0, 'United Arab Emirates', NULL, '', 'AE', 'ARE', 1),
(222, 0, 'United Kingdom', NULL, '', 'GB', 'GBR', 1),
(223, 0, 'United States', NULL, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 'US', 'USA', 1),
(224, 0, 'United States Minor Outlying Islands', NULL, '', 'UM', 'UMI', 1),
(225, 0, 'Uruguay', NULL, '', 'UY', 'URY', 1),
(226, 0, 'Uzbekistan', NULL, '', 'UZ', 'UZB', 1),
(227, 0, 'Vanuatu', NULL, '', 'VU', 'VUT', 1),
(228, 0, 'Vatican City State (Holy See)', NULL, '', 'VA', 'VAT', 1),
(230, 0, 'Viet Nam', NULL, '', 'VN', 'VNM', 1),
(231, 0, 'Virgin Islands (British)', NULL, '', 'VG', 'VGB', 1),
(232, 0, 'Virgin Islands (U.S.)', NULL, '', 'VI', 'VIR', 1),
(233, 0, 'Wallis and Futuna Islands', NULL, '', 'WF', 'WLF', 1),
(234, 0, 'Western Sahara', NULL, '', 'EH', 'ESH', 1),
(235, 0, 'Yemen', NULL, '', 'YE', 'YEM', 1),
(237, 0, 'Democratic Republic of Congo', NULL, '', 'CD', 'COD', 1),
(238, 0, 'Zambia', NULL, '', 'ZM', 'ZMB', 1),
(239, 0, 'Zimbabwe', NULL, '', 'ZW', 'ZWE', 1),
(240, 0, 'Jersey', NULL, '', 'JE', 'JEY', 1),
(241, 0, 'Guernsey', NULL, '', 'GG', 'GGY', 1),
(242, 0, 'Montenegro', NULL, '', 'ME', 'MNE', 1),
(243, 0, 'Serbia', NULL, '', 'RS', 'SRB', 1),
(244, 0, 'Aaland Islands', NULL, '', 'AX', 'ALA', 1),
(245, 0, 'Bonaire, Sint Eustatius and Saba', NULL, '', 'BQ', 'BES', 1),
(246, 0, 'Curacao', NULL, '', 'CW', 'CUW', 1),
(247, 0, 'Palestinian Territory, Occupied', NULL, '', 'PS', 'PSE', 1),
(248, 0, 'South Sudan', NULL, '', 'SS', 'SSD', 1),
(249, 0, 'St. Barthelemy', NULL, '', 'BL', 'BLM', 1),
(250, 0, 'St. Martin (French part)', NULL, '', 'MF', 'MAF', 1),
(251, 0, 'Canary Islands', NULL, '', 'IC', 'ICA', 1),
(252, 4, 'tajikistan', 0, 'tajikistan', 'tj', 'tjk', 1),
(253, 19, 'Ethiopia', 251, '.O. Box delivery:\r\nMr. Abebe Bekele\r\ntesting 	 \r\nP.O. Box 1519 	 \r\n1000 ADDIS ABABA 	 \r\nETHIOPIA', '31', '31', 1),
(254, 19, 'kenya', 252, 'Format\r\n\r\nRECIPIENT\r\nP.O. Box OFFICE_BOX_NUMBER\r\nLOCALITY\r\nPOSTAL_CODE\r\nKENYA\r\n', 'KE', 'KEN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `r_coupon`
--

CREATE TABLE IF NOT EXISTS `r_coupon` (
`id_coupon` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  `code` varchar(10) COLLATE utf8_bin NOT NULL,
  `type` char(1) COLLATE utf8_bin NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_coupon`
--

INSERT INTO `r_coupon` (`id_coupon`, `name`, `code`, `type`, `discount`, `logged`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_created`, `date_modified`) VALUES
(15, 'Christmas Offer 2014', 'abcdef', 'F', '10.0000', 0, '100.0000', '2014-12-01', '2016-01-26', 10, '1', 1, '2014-12-02 16:13:37', '2014-12-02 16:59:25'),
(16, 'New Year 2015 Offer', 'NYR2015', 'F', '10.0000', 1, '1000.0000', '2014-12-27', '2015-06-25', 10, '110', 1, '2014-12-28 22:01:17', '2014-12-28 22:01:17'),
(17, 'Jan26th offer', 'jan26', 'P', '20.0000', 1, '2.0000', '2014-12-31', '2015-02-28', 1, '1', 1, '2014-12-31 03:11:05', '2014-12-31 03:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `r_coupon_history`
--

CREATE TABLE IF NOT EXISTS `r_coupon_history` (
`id_coupon_history` int(11) NOT NULL,
  `id_coupon` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_coupon_history`
--

INSERT INTO `r_coupon_history` (`id_coupon_history`, `id_coupon`, `id_order`, `id_customer`, `amount`, `date_created`) VALUES
(1, 15, 23, 1, '10.0000', '2014-12-28 21:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `r_coupon_product`
--

CREATE TABLE IF NOT EXISTS `r_coupon_product` (
`id_coupon_product` int(11) NOT NULL,
  `id_coupon` int(11) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_coupon_product`
--

INSERT INTO `r_coupon_product` (`id_coupon_product`, `id_coupon`, `id_product`) VALUES
(1, 17, 224);

-- --------------------------------------------------------

--
-- Table structure for table `r_currency`
--

CREATE TABLE IF NOT EXISTS `r_currency` (
`id_currency` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` char(3) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `position` varchar(32) NOT NULL COMMENT 'LEFT,RIGHT',
  `decimal_separator` char(1) DEFAULT NULL,
  `thousand_separator` char(1) DEFAULT NULL,
  `decimals` tinyint(1) NOT NULL,
  `value` float(13,8) DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_currency`
--

INSERT INTO `r_currency` (`id_currency`, `name`, `code`, `symbol`, `position`, `decimal_separator`, `thousand_separator`, `decimals`, `value`, `date_modified`, `status`) VALUES
(2, 'Dollars', 'USD', '$', 'LEFT', '.', ',', 2, 1.00000000, '2014-11-18 06:12:10', 1),
(4, 'British pound', 'GBP', '£', 'LEFT', '.', ',', 0, 100.00000000, '2015-01-06 08:57:36', 1),
(10, 'Euro', 'EUR', '€', 'LEFT', ',', '.', 1, 82.02999878, '2015-01-06 08:57:15', 1),
(11, 'rupee', 'INR', 'Rs', 'RIGHT', '', '', 0, 1.00000000, '2015-01-06 08:58:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `r_customer`
--

CREATE TABLE IF NOT EXISTS `r_customer` (
`id_customer` int(11) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `email` varchar(96) DEFAULT NULL,
  `id_customer_address_default` int(11) NOT NULL,
  `id_customer_group` int(11) NOT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `cart` text,
  `wishlist` text,
  `password` char(255) DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL,
  `status` smallint(1) NOT NULL,
  `approved` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_customer`
--

INSERT INTO `r_customer` (`id_customer`, `gender`, `firstname`, `lastname`, `email`, `id_customer_address_default`, `id_customer_group`, `ip`, `telephone`, `cart`, `wishlist`, `password`, `newsletter`, `status`, `approved`, `date_created`, `date_modified`) VALUES
(1, '1', 'James', 'Katrick', 'james.katrick@gmail.com', 110, 3, '115.241.73.134', '9988775544', 'a:2:{i:139;i:1;i:149;i:2;}', '', '$2a$13$7hSFXialWDfXIcCSnws41eOy8yWBkUPfPWQLEFiynpzWMXQRjiID2', 0, 1, 1, '2014-05-29 15:33:14', '2014-12-28 19:21:39'),
(4, '', 'dinesh', 'golla', 'dinesh@rsoftindia.com', 0, 1, NULL, '9012789001', NULL, NULL, '$2a$13$M7jOhH2Pr8.4QjDywBSSCuOCEXe94WN4wegrv71UXn/W00vRD.hKq', 0, 1, 1, '2014-05-30 17:39:33', '2014-12-28 16:21:16'),
(7, '1', 'narender', 'reddy', 'narenderdesiing@gmail.com', 67, 2, NULL, '9963716731', NULL, NULL, 'narry', 0, 1, 1, '2014-06-02 11:30:31', '0000-00-00 00:00:00'),
(15, '0', 'aisha', 'sunkesula', 'aisha.gitams@gmail.com', 0, 1, NULL, '', NULL, NULL, '$2a$13$zl38V5b1eFSchn3hZuUjC.dsQ1glcHo2bwd64eRvhX3u/66q6fJkC', 0, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '0', 'kavitha', 'Cheerapureddy', 'kavitha@rsoftindia.com', 70, 1, NULL, '8712890123', 'N;', 'a:0:{}', '1234567', 0, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '1', 'sample', 'sunkesula', 'sample@gmail.com', 82, 1, NULL, '9949600120', NULL, NULL, '$2a$13$bneK04bjWNe/i6lM32o9eOUH.w0q8/Uw5pkI8q.yBgfekRZ.va4OG', 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '1', 'Robert', 'Christ', 'robert@gmail.com', 0, 0, NULL, '9944556688', NULL, NULL, 'rindia@123', 1, 1, 1, '2014-12-01 12:32:43', '2014-11-30 09:02:43'),
(24, '1', 'Farooq', 'Hasan', 'hasan@gmail.com', 0, 0, NULL, '9988774455', NULL, NULL, '$2a$13$jfCFupChqLMLVT3FJssE8OeeOymKGj9uWfE911B46VcY47ut9sQQC', 0, 1, 1, '2014-12-01 12:36:40', '2014-12-16 02:26:56'),
(25, '1', 'Mahindra', 'Zydus', 'mahindra.mj@gmail.com', 0, 0, '192.168.145.1', '9988776655', NULL, NULL, '$2a$13$LY5DVw39JNnQT4RSBxgTLeUl73zjnFFYp3JlcBDJvX1Eg0mNBN0l6', 1, 1, 1, '2014-12-04 12:01:22', '2014-12-03 08:31:48'),
(26, '1', 'Rehman', 'Sayid', 'rehman@gmail.com', 0, 1, NULL, '9988556655', NULL, NULL, '$2a$13$joUNxE1r6X7NbxzK62wOE.CGYK2T6V.4M0Te8dALRCIJdS7Z/wTA.', 1, 0, 1, '2014-12-14 13:23:36', '2014-12-13 09:53:36'),
(27, '1', 'Rahul', 'Arora', 'rahul@gmail.com', 0, 0, NULL, '9988556655', NULL, NULL, '$2a$13$Rye9hlWKbzMuELqdmM/bNuSqQMDtPWYjB48ipR.1mLPbMROup4zf6', 1, 0, 1, '2014-12-14 13:38:15', '2014-12-13 10:08:15'),
(28, '1', 'Thomson', 'Cook', 'thomson@gmail.com', 108, 1, NULL, '9988998899', NULL, NULL, '$2a$13$GQcdjxQWrc6afQIMLIgC4.wRwNnIRgom4AIfeBvRFiXMtkhVrimvq', 1, 1, 1, '2014-12-17 06:55:18', '2014-12-16 03:25:18'),
(29, '1', 'Baris', 'Baker', 'boris@gmail.com', 109, 1, NULL, '9999999999', NULL, NULL, '$2a$13$LGdLba5/P1sJXYTyZBhWNu95gdwn6Rw9IClGgXjS.tFiFwp74GhRG', 1, 1, 1, '2014-12-17 07:49:25', '2014-12-16 04:19:25'),
(30, '1', 'rai', 'sen', 'rai@gmail.com', 0, 1, '115.241.119.81', '9988445566', NULL, NULL, '$2a$13$BfxmUmO9IUWGb/QwSOkBRuJI5f.z5y/iwgucYCC7VCXFBTwTczI/K', 1, 1, 1, '2014-12-30 07:59:52', '2014-12-29 04:29:52'),
(31, '0', 'narender', 'reddy', 'narenderdesiging@gmail.com', 0, 1, '49.204.49.102', '8759460002', NULL, NULL, '$2a$13$wWVEO8TFA3ZVBKXBQhX1S.IjyQKxW3tAKaxiUfdScrMSfEGDf7pLS', 1, 1, 1, '2014-12-30 17:48:53', '2014-12-29 14:18:52'),
(33, '0', 'ayeesha', 'palagiri', 'ayeesha.palagiri@gmail.com', 0, 1, '49.204.49.102', '8795120004', NULL, NULL, '$2a$13$grEdCA4ZX.lxCm9HezvL8O/b0D6AHxsdJitkecjWnD2WC/4QJdht2', 1, 1, 1, '2015-01-05 12:06:46', '2015-01-07 12:07:02'),
(35, '0', 'aisha', 'palagiri', 'ayeesha.palagiri@gmail.com', 111, 1, '49.204.49.102', '8759572001', NULL, NULL, '$2a$13$KopERYJgt3sVMnMeDNz7XO6sRaANIXxmpjiFwsgx0eHqXZgSU/OFy', 1, 1, 0, '2015-01-08 18:23:54', '2015-01-07 14:53:54'),
(36, '1', 'ayeesga', 'g', 'ayeesha@rsoftindia.com', 0, 1, '49.204.49.102', '8901234567', NULL, NULL, '$2a$13$ojIHOHR8lu.MUbxPA70Di.zd/MbEfOTL6wGMJPwgpzGVzxi0oi0Ti', 1, 1, 1, '2015-02-02 15:54:02', '2015-02-01 12:24:03'),
(37, '1', 'ayeesga', 'g', 'ayeesha@rsoftindia.com', 0, 1, '49.204.49.102', '8901234567', NULL, NULL, '$2a$13$gjP6.q4dvtRSbmHqzskXW.LRMFnCIyxYCk8DvpakssBObncq0nqxi', 1, 1, 1, '2015-02-02 15:54:45', '2015-02-01 12:24:45');

-- --------------------------------------------------------

--
-- Table structure for table `r_customer_address`
--

CREATE TABLE IF NOT EXISTS `r_customer_address` (
`id_customer_address` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `telephone` varchar(30) NOT NULL,
  `company` varchar(100) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(150) NOT NULL,
  `id_state` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `postcode` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_customer_address`
--

INSERT INTO `r_customer_address` (`id_customer_address`, `id_customer`, `firstname`, `lastname`, `telephone`, `company`, `address_1`, `address_2`, `city`, `id_state`, `id_country`, `postcode`) VALUES
(67, 7, 'conternt', 'sdsdfg', '664323344', 'bdgsfdsg', '', '', 'hyd', 1475, 99, '500068'),
(68, 7, '', '', '', 'narender', '', '', '', 1, 1, ''),
(84, 22, 'suresh', 'babu', '9949600120', 'rsoft', 'miyapur', 'madhapur', 'hyderabad', 1476, 99, '500049'),
(85, 22, 'harish', 'babu', '9848750094', 'infosys', 'motinagar', 'panjagutta', 'hyderabad', 1476, 99, '500001'),
(86, 23, '1', '1', '1', '1', '1', '1', '1', 1476, 99, '1'),
(87, 23, '2', '2', '2', '2', '2', '2', '2', 1476, 99, '2'),
(106, 1, 'suresh', 'babu', '988778899', '', 'Miyapur', '', 'Hyderabad', 4055, 99, '500049'),
(107, 1, 'Teja', 'Mehar', '9988998899', '', 'Bombay Night Colony', 'Bahar Road', 'Bombay', 1493, 99, '503020'),
(108, 28, 'Thoson', 'Cook', '9900990099', 'Rsoft', 'Bangkok', 'Palaka', 'Pakka City', 519, 34, '500049'),
(109, 29, 'Boris', 'Baker', '9988776655', 'Infosys', 'California', 'Park street', 'California', 3954, 222, '998899'),
(110, 1, 'Stephen', 'Fleming', '9999999999', 'Infosys', 'Miyapur', 'Hyderabad', 'Hyderabad', 4055, 99, '500049'),
(111, 35, '', '', '', '', '', '', '', 1476, 99, '');

-- --------------------------------------------------------

--
-- Table structure for table `r_customer_group`
--

CREATE TABLE IF NOT EXISTS `r_customer_group` (
`id_customer_group` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_customer_group`
--

INSERT INTO `r_customer_group` (`id_customer_group`, `status`) VALUES
(1, 1),
(2, 1),
(3, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `r_customer_group_description`
--

CREATE TABLE IF NOT EXISTS `r_customer_group_description` (
`id_customer_group` int(11) NOT NULL,
  `id_language` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_customer_group_description`
--

INSERT INTO `r_customer_group_description` (`id_customer_group`, `id_language`, `name`) VALUES
(1, 1, 'Default'),
(1, 2, 'Default'),
(2, 1, 'Whole Sale'),
(2, 2, 'Whole Sale'),
(3, 1, 'Retailer'),
(3, 2, 'Retailer'),
(8, 1, 'Buyer'),
(8, 2, 'Default customer');

-- --------------------------------------------------------

--
-- Table structure for table `r_custom_url`
--

CREATE TABLE IF NOT EXISTS `r_custom_url` (
`id_custom_url` int(11) NOT NULL,
  `type` varchar(100) COLLATE utf8_bin NOT NULL,
  `string` varchar(255) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=809 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_custom_url`
--

INSERT INTO `r_custom_url` (`id_custom_url`, `type`, `string`, `id`) VALUES
(146, 'page', 'About-us', 15),
(227, 'category', 'clothing', 4700),
(277, 'page', 'privacy-policy', 12),
(281, 'page', 'refund-policy', 11),
(425, 'product', '1234', 193),
(558, 'page', 'welcome', 10),
(663, 'page', 'terms-&-conditions', 13),
(685, 'page', 'best-selling-brands', 16),
(727, 'category', 'apple', 70),
(731, 'product', 'apple-iphone-6', 225),
(738, 'product', 'apple-iphone-5s-gold--with-16-gb-', 226),
(739, 'category', 'samsung', 71),
(742, 'product', 'samsung-galaxy-s6', 227),
(746, 'product', 'the-3-mistakes-of-my-life', 228),
(751, 'category', 'audio-&-mp3-players', 73),
(752, 'category', 'men', 62),
(753, 'category', 'blackberry', 74),
(754, 'category', 'women', 63),
(755, 'product', 'blackberry-z3-black', 229),
(757, 'category', 'jewellery', 65),
(761, 'category', 'kitchen', 68),
(762, 'category', 'books', 69),
(764, 'category', 'jewellery-sets', 75),
(766, 'product', 'atasi-international-nusia-alloy-jewel-set--white-', 233),
(770, 'product', 'canon-eos-1200d', 235),
(772, 'product', 'touchstone-alloy-jewel-set--multicolor-', 234),
(773, 'product', 'canon-eos-1200d_product_236', 236),
(777, 'category', 'casual-shirts', 78),
(779, 'product', 'nikon-coolpix_product_239', 239),
(780, 'product', 'nikon-coolpix-product-238', 238),
(782, 'product', 'nikon-coolpix', 237),
(785, 'product', 'playing-it-my-way', 241),
(786, 'product', 'long-walk-to-freedom', 242),
(787, 'product', 'gandhi-an-autobiography', 243),
(792, 'product', 'phosphorus-slate-grey-colour-shirt', 240),
(793, 'product', 'galaxy-grand-prime', 246),
(794, 'product', 'galaxy-s5', 245),
(795, 'product', 'taanz-solid-purple-casual-shirt', 244),
(796, 'product', 'galaxy-s-duos-3', 247),
(797, 'product', 'galaxy-core-prime', 248),
(798, 'product', 'samsung-galaxy-core-ii', 231),
(799, 'product', 'samsung-galaxy-e5', 232),
(800, 'product', 'samsung-galaxy-grand', 230),
(803, 'product', 'galaxy-ace-nxt', 249),
(805, 'category', 'nikon', 77),
(806, 'category', 'canon', 76),
(807, 'category', 'mobiles', 61),
(808, 'category', 'electronic', 67);

-- --------------------------------------------------------

--
-- Table structure for table `r_email_template`
--

CREATE TABLE IF NOT EXISTS `r_email_template` (
`id_email_template` int(11) NOT NULL,
  `html` text,
  `keywords` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_email_template`
--

INSERT INTO `r_email_template` (`id_email_template`, `html`, `keywords`, `date_created`, `date_modified`) VALUES
(1, '1', '%store_name%', '0000-00-00 00:00:00', '2015-03-29 22:07:58'),
(2, '1', '%username%,%password%,%customer_name%', '0000-00-00 00:00:00', '2015-03-29 22:08:10'),
(3, '1', '%customer_name%', '0000-00-00 00:00:00', '2014-12-13 09:46:59'),
(4, '1', '%customer_name%', '0000-00-00 00:00:00', '2014-12-16 03:33:14'),
(6, '1', '%message%,%customer_name%', '0000-00-00 00:00:00', '2014-12-18 02:52:31'),
(7, '1', '%username%,%password%', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '1', '%username%,%password%', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `r_email_template_description`
--

CREATE TABLE IF NOT EXISTS `r_email_template_description` (
  `id_email_template` int(11) NOT NULL DEFAULT '0',
  `id_language` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_email_template_description`
--

INSERT INTO `r_email_template_description` (`id_email_template`, `id_language`, `title`, `subject`, `description`) VALUES
(1, 1, 'Customer Order Mail', '%store_name%- Order Placed Successfully!!', '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/1999/REC-html401-19991224/strict.dtd">\r\n<html>\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<title><?php\r\necho $title;\r\n?></title>\r\n\r\n</head>\r\n<body>\r\n<div id="" style="width: 680px; color: #000000;	font-family: Arial, Helvetica, sans-serif; font-size: 12px;line-height:13px;">\r\n<a href="<?php echo $store_url; ?>" title="<?php echo $store_name; ?> "><img src="<?php echo $logo;?>" alt="<?php echo $store_name; ?>" id="" style="margin-bottom: 0px;text-align:center;"/></a>\r\n  <p><?php\r\necho "Thank you for your interest in our products. Your order has been received and will be processed once payment has been confirmed";\r\n?></p>\r\n  <?php\r\nif ($customer_id) {\r\n?>\r\n  <p><?php\r\n    echo "To view your order <a href=''".$link."'' target=''_blank'' style=''color: #378DC1;	text-decoration: underline;	cursor: pointer;''>click here</a>";\r\n?></p>\r\n  <?php\r\n}\r\n?>\r\n  <?php\r\nif ($download) {\r\n?>\r\n  <p><?php\r\n    echo "Once your payment has been confirmed you can click on the link below to access your downloadable products:";\r\n?></p>\r\n  <p><a href="<?php\r\n    echo $download;\r\n?>" style="color: #378DC1;	text-decoration: underline;	cursor: pointer;"><?php\r\n    echo $download;\r\n?></a></p>\r\n  <?php\r\n}\r\n?>\r\n <table style="border-collapse: collapse;	width: 100%;	border-top: 1px solid #DDDDDD;	border-left: 1px solid #DDDDDD;	margin-bottom: 15px; border-bottom: 1px solid #DDDDDD; border-right: 1px solid #DDDDDD;">\r\n    <thead>\r\n      <tr>\r\n        <td class="" style=" background-color: #EFEFEF;	padding: 0px 5px; border-right: 1px solid #DDDDDD; font-weight:bold;padding:7px;"><?php echo ''Product'';?></td>\r\n        <td class="" style=" background-color: #EFEFEF;	padding: 0px 5px; border-right: 1px solid #DDDDDD; font-weight:bold;padding:7px;"><?php echo ''Model''; ?></td>\r\n        <td class="" style=" background-color: #EFEFEF;	padding: 0px 5px; border-right: 1px solid #DDDDDD; font-weight:bold;padding:7px;"><?php echo ''Quantity''; ?></td>\r\n        <td class="" style=" background-color: #EFEFEF;	padding: 0px 5px; border-right: 1px solid #DDDDDD; font-weight:bold;padding:7px;"><?php echo ''Price''; ?></td>\r\n   		<td class="" style=" background-color: #EFEFEF;	padding: 0px 5px; border-right: 1px solid #DDDDDD; font-weight:bold;padding:7px;"><?php echo ''Total''; ?></td>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n      <?php\r\nforeach ($products as $product) {\r\n?>\r\n      <tr>\r\n        <td class="" style="border-right: 1px solid #DDDDDD;	border-bottom: 1px solid #DDDDDD;text-align: left;	padding: 7px;"><?php\r\n    echo $product[''name''];\r\n?>\r\n          <?php\r\n    foreach ($product[''option''] as $option) {\r\n?>\r\n          <br />\r\n           <small> - <?php\r\n        echo $option[''name''];\r\n?>: <?php\r\n        echo $option[''value''];\r\n?></small>\r\n          <?php\r\n    }\r\n?></td>\r\n        <td class="" style="border-right: 1px solid #DDDDDD;	border-bottom: 1px solid #DDDDDD; text-align: left;	padding: 7px;"><?php\r\n    echo $product[''model''];\r\n?></td>\r\n        <td class="" style="border-right: 1px solid #DDDDDD;	border-bottom: 1px solid #DDDDDD; text-align: right;padding: 7px;" ><?php\r\n    echo $product[''quantity''];\r\n?></td>\r\n        <td class="" style="border-right: 1px solid #DDDDDD;	border-bottom: 1px solid #DDDDDD; text-align: right;padding: 7px;" ><?php\r\n    echo $product[''price''];\r\n?></td>\r\n        <td class="" style="border-right: 1px solid #DDDDDD;	border-bottom: 1px solid #DDDDDD; text-align: right;padding: 7px;" ><?php\r\n    echo $product[''total''];\r\n?></td>\r\n      </tr>\r\n      <?php\r\n}\r\n?>\r\n    </tbody>\r\n    <tfoot  style="border-bottom:1px solid #ddd; ">\r\n      <?php\r\nforeach ($totals as $total) {\r\n?>\r\n      <tr>\r\n        <td colspan="4" class="" style="text-align: right;	padding: 7px; border-bottom:1px solid #ddd;border-right:1px solid #ddd;"><b><?php\r\n    echo $_SESSION[''TObj'']->_($total[''title'']);\r\n?></b></td>\r\n        <td class="" style="text-align: right; padding: 7px;border-bottom:1px solid #ddd;border-right:1px solid #ddd;"><?php\r\n    echo $total[''text''];\r\n?></td>\r\n      </tr>\r\n      <?php\r\n}\r\n?>\r\n    </tfoot>\r\n  </table>\r\n  <table class="" style="border-collapse: collapse;	width: 100%; margin-bottom: 15px;  border:1px solid #DDDDDD;">\r\n    <thead>\r\n      <tr>\r\n        <td class="" colspan="2" style="text-align: left;	padding: 7px; background-color: #EFEFEF; border:1px solid #DDDDDD; font-weight:bold;"><?php\r\necho ''Order Details'';\r\n?></td>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n      <tr>\r\n        <td class="" style="text-align: left; padding: 7px; border-right:1px solid #DDDDDD;font-weight:bold; "><?php if ($invoice_no) { ?>\r\n          <b><?php\r\n    echo ''Invoice No.:''; ?></b> <?php\r\n    echo $invoice_no;\r\n?><br />\r\n          <?php\r\n}\r\n?>\r\n          <b><?php\r\necho ''Order No:'';\r\n?></b> <?php\r\necho $order_id;\r\n?><br />\r\n          <b><?php\r\necho ''Order Placed On:'';\r\n?></b> <?php\r\necho $date_added;\r\n?><br />\r\n          <b><?php\r\necho ''Payment Method:'';\r\n?></b> <?php\r\necho $payment_method;\r\n?></td>\r\n        <td class="left" style="text-align: left;	padding: 7px; "><b><?php\r\necho ''Email:'';\r\n?></b> <?php\r\necho $email;\r\n?><br />\r\n          <b><?php\r\necho ''Telephone:'';\r\n?></b> <?php\r\necho $telephone;\r\n?><br />\r\n          <?php\r\nif ($shipping_method) {\r\n?>\r\n          <b><?php\r\n    echo ''Shipping Method:'';\r\n?></b> <?php\r\n    echo $shipping_method;\r\n?>\r\n          <?php\r\n}\r\n?>\r\n        </td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n  <table class="" style="border-collapse: collapse;	width: 100%;	border-top: 1px solid #DDDDDD;	border-left: 1px solid #DDDDDD;	margin-bottom: 10px;">\r\n    <thead>\r\n      <tr>\r\n        <td class="left" style="text-align: left;	padding: 7px; border-right:1px solid #DDDDDD;background:#efefef; border:1px solid #ddd; font-weight:bold;"><?php echo ''Payment Address''; ?></td>\r\n        <?php if ($shipping_address) {\r\n?>\r\n        <td class="left" style="text-align: left; padding: 7px; background:#efefef;border:1px solid #ddd; font-weight:bold;"><?php    echo ''Shipping Address''; ?></td>\r\n        <?php\r\n}\r\n?>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n      <tr>\r\n        <td class="" style="text-align: left;	padding: 7px; border-right:1px solid #ddd; border-bottom:1px solid #ddd; font-weight:bold;"><?php echo $payment_address; ?></td>\r\n        <?php if ($shipping_address) { ?>        \r\n        <td class="" style="text-align: left;	padding: 7px; border-right:1px solid #ddd; border-bottom:1px solid #ddd; "><?php   echo $shipping_address; ?></td>\r\n        <?php\r\n}\r\n?>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n  <table align="left" width="100%"  style="margin-bottom:15px;">\r\n  <tr>\r\n  	<td align="left" style="float:left;"><p><?php\r\necho ''Please reply to this email if you have any questions.'';\r\n?></p></td>\r\n<td align="right" style=" float:right; text-align:right;"><p><?php\r\necho ''Powered By <a href="http://www.cartnex.org" target="_blank" style="color: #378DC1;\r\n	text-decoration: underline;\r\n	cursor: pointer" >Cartnex</a>.'';\r\n?></p></td>\r\n</tr>\r\n  </table>\r\n</div>\r\n</body>\r\n</html>'),
(1, 2, 'Customer Order Mail', '%store_name%- Order Placed Successfully!!', '<table class="table">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style="font-size:28px">Hi {firstname} {lastname},</span><br />\r\n			<span style="font-size:16px">Thank you for shopping with {shop_name}!</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:#f8f8f8">\r\n			<table class="table" style="width:100%">\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p>Order {order_name}&nbsp;-&nbsp;Awaiting check payment</p>\r\n						<span style="color:#777">Your order with the reference <span style="color:#333"><strong>{order_name}</strong></span> has been placed successfully and will be <strong>shipped as soon as we receive your payment</strong>. </span></td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:#f8f8f8">\r\n			<table class="table" style="width:100%">\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>\r\n						<p>You have selected to pay by check.</p>\r\n						<span style="color:#777">Here are the bank details for your check:<br />\r\n						<span style="color:#333"><strong>Amount:</strong></span> {total_paid}<br />\r\n						<span style="color:#333"><strong>Payable to the order of:</strong></span> {cheque_name}<br />\r\n						<span style="color:#333"><strong>Please mail your check to:</strong></span> {cheque_address_html} </span></td>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>You can review your order and download your invoice from the <a href="http://localhost/prestashop/mails/en/%7Bhistory_url%7D" style="color:#337ff1">&quot;Order history&quot;</a> section of your customer account by clicking <a href="http://localhost/prestashop/mails/en/%7Bmy_account_url%7D" style="color:#337ff1">&quot;My account&quot;</a> on our shop.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>If you have a guest account, you can follow your order via the <a href="http://localhost/prestashop/mails/en/%7Bguest_tracking_url%7D" style="color:#337ff1">&quot;Guest Tracking&quot;</a> section on our shop.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(2, 1, 'Customer Registraion Welcome Mail (General)', 'Welcome to %store_name%!!', '<p>Dear Customer,</p>\r\n\r\n<p>Thanks for registering in <a href="%store_url%" target="_blank">%store_name%</a> . Your account has now been created and you can log in by using your email address and password @ <a href="%store_customer_login_url%" target="_blank">%store_name%</a></p>\r\n\r\n<p>Thanks,</p>\r\n\r\n<p>%store_name%.</p>\r\n'),
(2, 2, 'Customer Registraion Welcome Mail (General)', 'Welcome to %store_name%!!', '<table class="table table-mail" style="-moz-box-shadow:0 0 5px #afafaf; -o-box-shadow:0 0 5px #afafaf; -webkit-box-shadow:0 0 5px #afafaf; box-shadow:0 0 5px #afafaf; filter:progid:DXImageTransform.Microsoft.Shadow(color=#afafaf,Direction=134,Strength=5); margin-top:10px; width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:20px">&nbsp;</td>\r\n			<td>\r\n			<table class="table" style="width:100%">\r\n				<tbody>\r\n					<tr>\r\n						<td><a href="http://localhost/prestashop/mails/en/%7Bshop_url%7D" style="color:#337ff1" title="{shop_name}"><img alt="{shop_name}" src="http://localhost/prestashop/mails/en/%7Bshop_logo%7D" /> </a></td>\r\n					</tr>\r\n					<tr>\r\n						<td><span style="font-size:28px">Hi {firstname} {lastname},</span><br />\r\n						<span style="font-size:16px">Thank you for shopping with {shop_name}!</span></td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background-color:#f8f8f8">\r\n						<table class="table" style="width:100%">\r\n							<tbody>\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n									<td>\r\n									<p>Order {order_name}&nbsp;-&nbsp;Awaiting check payment</p>\r\n									<span style="color:#777">Your order with the reference <span style="color:#333"><strong>{order_name}</strong></span> has been placed successfully and will be <strong>shipped as soon as we receive your payment</strong>. </span></td>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background-color:#f8f8f8">\r\n						<table class="table" style="width:100%">\r\n							<tbody>\r\n								<tr>\r\n									<td>&nbsp;</td>\r\n									<td>\r\n									<p>You have selected to pay by check.</p>\r\n									<span style="color:#777">Here are the bank details for your check:<br />\r\n									<span style="color:#333"><strong>Amount:</strong></span> {total_paid}<br />\r\n									<span style="color:#333"><strong>Payable to the order of:</strong></span> {cheque_name}<br />\r\n									<span style="color:#333"><strong>Please mail your check to:</strong></span> {cheque_address_html} </span></td>\r\n									<td>&nbsp;</td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td>You can review your order and download your invoice from the <a href="http://localhost/prestashop/mails/en/%7Bhistory_url%7D" style="color:#337ff1">&quot;Order history&quot;</a> section of your customer account by clicking <a href="http://localhost/prestashop/mails/en/%7Bmy_account_url%7D" style="color:#337ff1">&quot;My account&quot;</a> on our shop.</td>\r\n					</tr>\r\n					<tr>\r\n						<td>If you have a guest account, you can follow your order via the <a href="http://localhost/prestashop/mails/en/%7Bguest_tracking_url%7D" style="color:#337ff1">&quot;Guest Tracking&quot;</a> section on our shop.</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n					</tr>\r\n					<tr>\r\n						<td><a href="http://localhost/prestashop/mails/en/%7Bshop_url%7D" style="color:#337ff1">{shop_name}</a> powered by sporanzo</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n			<td style="width:20px">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(3, 1, 'Customer Registraion Welcome Mail (Awaiting Approval)', '%store_name% : Awaiting Approval!!', '<p>Dear Customer,</p>\r\n\r\n<p>Your account is pending for verification. Once approved we will send a mail with login details.</p>\r\n\r\n<p>Thanks for visiting.</p>\r\n\r\n<p>Thanks,</p>\r\n\r\n<p>%store_name%</p>\r\n'),
(3, 2, 'Customer Registraion Welcome Mail (Awaiting Approval)', 'Cartnex Order No:%order_id%', '<p>&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD HTML 4.01//EN&quot; &quot;http://www.w3.org/TR/1999/REC-html401-19991224/strict.dtd&quot;&gt;<br />\r\n&lt;html&gt;<br />\r\n&lt;head&gt;<br />\r\n&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;<br />\r\n&lt;title&gt;&lt;?php<br />\r\necho $title;<br />\r\n?&gt;&lt;/title&gt;<br />\r\n&lt;style type=&quot;text/css&quot;&gt;<br />\r\nbody {<br />\r\n&nbsp;&nbsp; &nbsp;color: #000000;<br />\r\n&nbsp;&nbsp; &nbsp;font-family: Arial, Helvetica, sans-serif;<br />\r\n}<br />\r\nbody, td, th, input, textarea, select, a {<br />\r\n&nbsp;&nbsp; &nbsp;font-size: 12px;<br />\r\n}<br />\r\np {<br />\r\n&nbsp;&nbsp; &nbsp;margin-top: 0px;<br />\r\n&nbsp;&nbsp; &nbsp;margin-bottom: 20px;<br />\r\n}<br />\r\na, a:visited, a b {<br />\r\n&nbsp;&nbsp; &nbsp;color: #378DC1;<br />\r\n&nbsp;&nbsp; &nbsp;text-decoration: underline;<br />\r\n&nbsp;&nbsp; &nbsp;cursor: pointer;<br />\r\n}<br />\r\na:hover {<br />\r\n&nbsp;&nbsp; &nbsp;text-decoration: none;<br />\r\n}<br />\r\na img {<br />\r\n&nbsp;&nbsp; &nbsp;border: none;<br />\r\n}<br />\r\n#container {<br />\r\n&nbsp;&nbsp; &nbsp;width: 680px;<br />\r\n}<br />\r\n#logo {<br />\r\n&nbsp;&nbsp; &nbsp;margin-bottom: 20px;<br />\r\n}<br />\r\ntable.list {<br />\r\n&nbsp;&nbsp; &nbsp;border-collapse: collapse;<br />\r\n&nbsp;&nbsp; &nbsp;width: 100%;<br />\r\n&nbsp;&nbsp; &nbsp;border-top: 1px solid #DDDDDD;<br />\r\n&nbsp;&nbsp; &nbsp;border-left: 1px solid #DDDDDD;<br />\r\n&nbsp;&nbsp; &nbsp;margin-bottom: 20px;<br />\r\n}<br />\r\ntable.list td {<br />\r\n&nbsp;&nbsp; &nbsp;border-right: 1px solid #DDDDDD;<br />\r\n&nbsp;&nbsp; &nbsp;border-bottom: 1px solid #DDDDDD;<br />\r\n}<br />\r\ntable.list thead td {<br />\r\n&nbsp;&nbsp; &nbsp;background-color: #EFEFEF;<br />\r\n&nbsp;&nbsp; &nbsp;padding: 0px 5px;<br />\r\n}<br />\r\ntable.list thead td a, .list thead td {<br />\r\n&nbsp;&nbsp; &nbsp;text-decoration: none;<br />\r\n&nbsp;&nbsp; &nbsp;color: #222222;<br />\r\n&nbsp;&nbsp; &nbsp;font-weight: bold;<br />\r\n}<br />\r\ntable.list tbody td a {<br />\r\n&nbsp;&nbsp; &nbsp;text-decoration: underline;<br />\r\n}<br />\r\ntable.list tbody td {<br />\r\n&nbsp;&nbsp; &nbsp;vertical-align: top;<br />\r\n&nbsp;&nbsp; &nbsp;padding: 0px 5px;<br />\r\n}<br />\r\ntable.list .left {<br />\r\n&nbsp;&nbsp; &nbsp;text-align: left;<br />\r\n&nbsp;&nbsp; &nbsp;padding: 7px;<br />\r\n}<br />\r\ntable.list .right {<br />\r\n&nbsp;&nbsp; &nbsp;text-align: right;<br />\r\n&nbsp;&nbsp; &nbsp;padding: 7px;<br />\r\n}<br />\r\ntable.list .center {<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n&nbsp;&nbsp; &nbsp;padding: 7px;<br />\r\n}<br />\r\n&lt;/style&gt;<br />\r\n&lt;/head&gt;<br />\r\n&lt;body&gt;<br />\r\n&lt;div id=&quot;container&quot;&gt;&lt;a href=&quot;&lt;?php<br />\r\necho $store_url;<br />\r\n?&gt;&quot; title=&quot;&lt;?php<br />\r\necho $store_name;<br />\r\n?&gt;&quot;&gt;&lt;img src=&quot;&lt;?php<br />\r\necho $logo;<br />\r\n?&gt;&quot; alt=&quot;&lt;?php<br />\r\necho $store_name;<br />\r\n?&gt;&quot; id=&quot;logo&quot; /&gt;&lt;/a&gt;<br />\r\n&nbsp; &lt;p&gt;&lt;?php<br />\r\necho &quot;Thank you for your interest in our products. Your order has been received and will be processed once payment has been confirmed&quot;;<br />\r\n?&gt;&lt;/p&gt;<br />\r\n&nbsp; &lt;?php<br />\r\nif ($customer_id) {<br />\r\n?&gt;<br />\r\n&nbsp; &lt;p&gt;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo &quot;To view your order click on the link below:&quot;;<br />\r\n?&gt;&lt;/p&gt;<br />\r\n&nbsp; &lt;p&gt;&lt;a href=&quot;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo $link;<br />\r\n?&gt;&quot;&gt;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo $link;<br />\r\n?&gt;&lt;/a&gt;&lt;/p&gt;<br />\r\n&nbsp; &lt;?php<br />\r\n}<br />\r\n?&gt;<br />\r\n&nbsp; &lt;?php<br />\r\nif ($download) {<br />\r\n?&gt;<br />\r\n&nbsp; &lt;p&gt;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo &quot;Once your payment has been confirmed you can click on the link below to access your downloadable products:&quot;;<br />\r\n?&gt;&lt;/p&gt;<br />\r\n&nbsp; &lt;p&gt;&lt;a href=&quot;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo $download;<br />\r\n?&gt;&quot;&gt;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo $download;<br />\r\n?&gt;&lt;/a&gt;&lt;/p&gt;<br />\r\n&nbsp; &lt;?php<br />\r\n}<br />\r\n?&gt;<br />\r\n&nbsp; &lt;table class=&quot;list&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;thead&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;left&quot; colspan=&quot;2&quot;&gt;&lt;?php<br />\r\necho &#39;Order Details&#39;;<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;/thead&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;tbody&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;left&quot;&gt;&lt;?php<br />\r\nif ($invoice_no) {<br />\r\n?&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;b&gt;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo &#39;Invoice No.:&#39;;<br />\r\n?&gt;&lt;/b&gt; &lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo $invoice_no;<br />\r\n?&gt;&lt;br /&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;?php<br />\r\n}<br />\r\n?&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;b&gt;&lt;?php<br />\r\necho &#39;Order ID:&#39;;<br />\r\n?&gt;&lt;/b&gt; &lt;?php<br />\r\necho $order_id;<br />\r\n?&gt;&lt;br /&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;b&gt;&lt;?php<br />\r\necho &#39;Date Added:&#39;;<br />\r\n?&gt;&lt;/b&gt; &lt;?php<br />\r\necho $date_added;<br />\r\n?&gt;&lt;br /&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;b&gt;&lt;?php<br />\r\necho &#39;Payment Method:&#39;;<br />\r\n?&gt;&lt;/b&gt; &lt;?php<br />\r\necho $payment_method;<br />\r\n?&gt;&lt;br /&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;?php<br />\r\nif ($shipping_method) {<br />\r\n?&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;b&gt;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo &#39;Shipping Method:&#39;;<br />\r\n?&gt;&lt;/b&gt; &lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo $shipping_method;<br />\r\n?&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;?php<br />\r\n}<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;left&quot;&gt;&lt;b&gt;&lt;?php<br />\r\necho &#39;Email:&#39;;<br />\r\n?&gt;&lt;/b&gt; &lt;?php<br />\r\necho $email;<br />\r\n?&gt;&lt;br /&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;b&gt;&lt;?php<br />\r\necho &#39;Telephone:&#39;;<br />\r\n?&gt;&lt;/b&gt; &lt;?php<br />\r\necho $telephone;<br />\r\n?&gt;&lt;br /&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;b&gt;&lt;?php<br />\r\necho &#39;IP Address:&#39;;<br />\r\n?&gt;&lt;/b&gt; &lt;?php<br />\r\necho $ip;<br />\r\n?&gt;&lt;br /&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;/tbody&gt;<br />\r\n&nbsp; &lt;/table&gt;<br />\r\n&nbsp; &lt;table class=&quot;list&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;thead&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;left&quot;&gt;&lt;?php<br />\r\necho &#39;Payment Address&#39;;<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;?php<br />\r\nif ($shipping_address) {<br />\r\n?&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;left&quot;&gt;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo &#39;Shipping Address&#39;;<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;?php<br />\r\n}<br />\r\n?&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;/thead&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;tbody&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;left&quot;&gt;&lt;?php<br />\r\necho $payment_address;<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;?php<br />\r\nif ($shipping_address) {<br />\r\n?&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;left&quot;&gt;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo $shipping_address;<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;?php<br />\r\n}<br />\r\n?&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;/tbody&gt;<br />\r\n&nbsp; &lt;/table&gt;<br />\r\n&nbsp; &lt;table class=&quot;list&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;thead&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;left&quot;&gt;&lt;?php<br />\r\necho &#39;Product&#39;;<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;left&quot;&gt;&lt;?php<br />\r\necho &#39;Model&#39;;<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;right&quot;&gt;&lt;?php<br />\r\necho &#39;Quantity&#39;;<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;right&quot;&gt;&lt;?php<br />\r\necho &#39;Price&#39;;<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;right&quot;&gt;&lt;?php<br />\r\necho &#39;Total&#39;;<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;/thead&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;tbody&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;?php<br />\r\nforeach ($products as $product) {<br />\r\n?&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;left&quot;&gt;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo $product[&#39;name&#39;];<br />\r\n?&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; foreach ($product[&#39;option&#39;] as $option) {<br />\r\n?&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;br /&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;small&gt; - &lt;?php<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo $option[&#39;name&#39;];<br />\r\n?&gt;: &lt;?php<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo $option[&#39;value&#39;];<br />\r\n?&gt;&lt;/small&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; }<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;left&quot;&gt;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo $product[&#39;model&#39;];<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;right&quot;&gt;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo $product[&#39;quantity&#39;];<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;right&quot;&gt;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo $product[&#39;price&#39;];<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;right&quot;&gt;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo $product[&#39;total&#39;];<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;?php<br />\r\n}<br />\r\n?&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;/tbody&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;tfoot&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;?php<br />\r\nforeach ($totals as $total) {<br />\r\n?&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td colspan=&quot;4&quot; class=&quot;right&quot;&gt;&lt;b&gt;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo $_SESSION[&#39;TObj&#39;]-&gt;_($total[&#39;title&#39;]);<br />\r\n?&gt;&lt;/b&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td class=&quot;right&quot;&gt;&lt;?php<br />\r\n&nbsp;&nbsp;&nbsp; echo $total[&#39;text&#39;];<br />\r\n?&gt;&lt;/td&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/tr&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;?php<br />\r\n}<br />\r\n?&gt;<br />\r\n&nbsp;&nbsp;&nbsp; &lt;/tfoot&gt;<br />\r\n&nbsp; &lt;/table&gt;<br />\r\n&nbsp; &lt;p&gt;&lt;?php<br />\r\necho &#39;Please reply to this email if you have any questions.&#39;;<br />\r\n?&gt;&lt;/p&gt;<br />\r\n&nbsp; &lt;p&gt;&lt;?php<br />\r\necho &#39;Powered By &lt;a href=&quot;http://www.sporanzo.com&quot;&gt;Sporanzo&lt;/a&gt;.&#39;;<br />\r\n?&gt;&lt;/p&gt;<br />\r\n&lt;/div&gt;<br />\r\n&lt;/body&gt;<br />\r\n&lt;/html&gt;</p>\r\n'),
(4, 1, 'Customer Registraion Welcome Mail (Successfull Approval)', 'Welcome to %store_name%!!', '<p>Dear Customer,</p>\r\n\r\n<p>Thanks for registering in <a href="%store_url%" target="_blank">%store_name%</a> . Your account has now been created and you can log in by using your email address and password @ <a href="%store_customer_login_url%" target="_blank">%store_name%</a></p>\r\n\r\n<p>Thanks,</p>\r\n\r\n<p>%store_name%.</p>\r\n'),
(4, 2, 'Customer Registraion Welcome Mail (Successfull Approval)', 'Order Update', '<p>Welcome to Sporanzo!!</p>\r\n'),
(6, 1, 'Order Status - Processing', '%store_name% : Order is in Process!!', '<p>Dear Customer,</p>\r\n\r\n<p>Your order is in process.Will be delivered in 2 or 3 days.</p>\r\n\r\n<p>%message%</p>\r\n\r\n<p>Thanks,</p>\r\n\r\n<p>%store_name%</p>\r\n'),
(6, 2, 'Order Status-Processed', '', ''),
(7, 1, 'Customer Forgot Password Mail', '%store_name%  Forgot password??', '<p>Dear Customer,</p>\r\n\r\n<p>&nbsp;Your Login Details for <a href="%store_url%" target=''_blank'' >%store_name%</a> is:</p>\r\n\r\n<p>&nbsp;Username : %username%</p>\r\n\r\n<p>Password : %password%</p>\r\n\r\n<p>Thanks,</p>\r\n\r\n<p>%store_name%.</p>\r\n'),
(7, 2, 'Customer Forgot Password Mail', '%store_name% Admin Login Password!!', '<p>Dear User,</p>\r\n\r\n<p>Your login password is %password%.</p>\r\n\r\n<p>Thanks,</p>\r\n\r\n<p>%store_name%.</p>\r\n'),
(8, 1, 'Admin Forgot Password Mail', '%store_name% - Forgot password??', '<p>Dear User,</p>\r\n\r\n<p>&nbsp;Your Login Details for <a href="%store_url%" target="_blank">%store_name%</a> is:</p>\r\n\r\n<p>&nbsp;Username : %username%</p>\r\n\r\n<p>Password : %password%</p>\r\n\r\n<p>Thanks,</p>\r\n\r\n<p>%store_name%.</p>\r\n'),
(8, 2, 'Admin Forgot Password Mail', '%store_name% - Your Account has been activated!', '<p>Welcome and thank you for registering at %store_name%!. Your account has now been created and you can log in by using your email address and password by visiting our website or at the following URL:<a href="http://www.toysgift.buildoshop.co.uk/public/js/fckeditor/editor/%store_customer_login_url%" target="_blank">click here</a> Upon logging in, you will be able to view your orders,returns and edit your account information.</p>\r\n\r\n<p>Thanks,</p>\r\n\r\n<p>%store_name%.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `r_filter`
--

CREATE TABLE IF NOT EXISTS `r_filter` (
`id_filter` int(11) NOT NULL,
  `id` int(11) NOT NULL COMMENT '0:price,1:brands,2:discount',
  `type` varchar(10) NOT NULL COMMENT 'general,option,attribute',
  `sort_order` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_filter`
--

INSERT INTO `r_filter` (`id_filter`, `id`, `type`, `sort_order`) VALUES
(17, 0, 'general', 1),
(18, 1, 'general', 2),
(19, 2, 'general', 3),
(52, 0, 'general', 1),
(53, 1, 'general', 2),
(54, 0, 'general', 1),
(55, 1, 'general', 2),
(56, 34, 'option', 3),
(57, 35, 'option', 4),
(58, 10, 'attribute', 0),
(61, 0, 'general', 0),
(62, 1, 'general', 0),
(63, 10, 'attribute', 0),
(66, 0, 'general', 1),
(67, 1, 'general', 2),
(68, 34, 'option', 4),
(69, 35, 'option', 5),
(70, 10, 'attribute', 3),
(86, 0, 'general', 1),
(87, 1, 'general', 2),
(88, 34, 'option', 5),
(89, 35, 'option', 4),
(90, 10, 'attribute', 3),
(95, 0, 'general', 1),
(96, 1, 'general', 2),
(97, 34, 'option', 3),
(98, 35, 'option', 4),
(99, 4, 'attribute', 5),
(100, 15, 'attribute', 6),
(101, 0, 'general', 1),
(102, 1, 'general', 2),
(103, 4, 'attribute', 3),
(104, 15, 'attribute', 4),
(105, 0, 'general', 1),
(106, 1, 'general', 2),
(115, 0, 'general', 1),
(116, 1, 'general', 2),
(117, 40, 'option', 1),
(118, 0, 'general', 1),
(119, 1, 'general', 2),
(124, 0, 'general', 1),
(125, 1, 'general', 2),
(126, 0, 'general', 1),
(127, 1, 'general', 2),
(128, 34, 'option', 0),
(129, 4, 'attribute', 0),
(130, 15, 'attribute', 0),
(131, 0, 'general', 1),
(132, 1, 'general', 2),
(133, 4, 'attribute', 3),
(134, 15, 'attribute', 4);

-- --------------------------------------------------------

--
-- Table structure for table `r_language`
--

CREATE TABLE IF NOT EXISTS `r_language` (
`id_language` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` char(2) NOT NULL,
  `sort_order` int(3) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_language`
--

INSERT INTO `r_language` (`id_language`, `name`, `code`, `sort_order`, `status`, `date_modified`) VALUES
(1, 'English', 'en', 1, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `r_length_class`
--

CREATE TABLE IF NOT EXISTS `r_length_class` (
`length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_length_class`
--

INSERT INTO `r_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000'),
(6, '1.00000000');

-- --------------------------------------------------------

--
-- Table structure for table `r_length_class_description`
--

CREATE TABLE IF NOT EXISTS `r_length_class_description` (
`length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8_bin NOT NULL,
  `unit` varchar(4) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_length_class_description`
--

INSERT INTO `r_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'None', '1'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(6, 1, 'Centimeter', 'cm');

-- --------------------------------------------------------

--
-- Table structure for table `r_manufacturer`
--

CREATE TABLE IF NOT EXISTS `r_manufacturer` (
`id_manufacturer` int(10) NOT NULL,
  `sort_order` tinyint(2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_manufacturer`
--

INSERT INTO `r_manufacturer` (`id_manufacturer`, `sort_order`, `status`, `image`, `date_created`, `date_modified`) VALUES
(73, 1, 1, 'brand_Apple__1427714115.png', '2015-03-30 11:15:15', '2015-03-30 11:15:15'),
(74, 2, 1, 'brand_Samsung_73_1427714155.png', '2015-03-30 11:15:55', '2015-03-30 11:15:55'),
(75, 3, 1, 'brand_Blackberry_74_1427714186.png', '2015-03-30 11:16:26', '2015-03-30 11:16:26'),
(76, 4, 1, 'brand_basics-life_75_1427717869.png', '2015-03-30 12:17:49', '2015-03-30 12:17:49'),
(77, 1, 1, 'brand_Canon_76_1427718224.png', '2015-03-30 12:23:44', '2015-03-30 12:23:44'),
(78, 5, 1, 'brand_nikon_77_1427718284.png', '2015-03-30 12:24:44', '2015-03-30 12:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `r_manufacturer_description`
--

CREATE TABLE IF NOT EXISTS `r_manufacturer_description` (
`id_manufacturer_description` int(10) NOT NULL,
  `id_manufacturer` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `meta_title` varchar(100) DEFAULT NULL,
  `meta_keywords` varchar(100) DEFAULT NULL,
  `meta_description` varchar(100) DEFAULT NULL,
  `id_language` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_manufacturer_description`
--

INSERT INTO `r_manufacturer_description` (`id_manufacturer_description`, `id_manufacturer`, `name`, `meta_title`, `meta_keywords`, `meta_description`, `id_language`) VALUES
(126, 73, 'Apple', 'apple', 'apple', '<p>apple</p>\r\n', 1),
(127, 73, 'Apple', 'apple', 'apple', '<p>apple</p>\r\n', 2),
(128, 74, 'Samsung', 'Samsung', 'Samsung', '', 1),
(129, 74, 'Samsung', 'Samsung', 'Samsung', '', 2),
(130, 75, 'Blackberry ', '', '', '', 1),
(131, 75, 'Blackberry ', '', '', '', 2),
(132, 76, 'basics life', 'basics life', 'basics life', '', 1),
(133, 76, 'basics life', 'basics life', 'basics life', '', 2),
(134, 77, 'Canon', 'canon', 'canon', '<p>canon</p>\r\n', 1),
(135, 77, 'Canon', 'canon', 'canon', '<p>canon</p>\r\n', 2),
(136, 78, 'nikon', 'nikon', 'nikon', '', 1),
(137, 78, 'nikon', 'nikon', 'nikon', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `r_newsletter_template`
--

CREATE TABLE IF NOT EXISTS `r_newsletter_template` (
`newsletter_template_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_sent` datetime NOT NULL,
  `sent` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_option`
--

CREATE TABLE IF NOT EXISTS `r_option` (
`id_option` int(11) NOT NULL,
  `type` varchar(32) COLLATE utf8_bin NOT NULL,
  `additional` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'offer,discount',
  `sort_order` int(3) NOT NULL,
  `dependent_option` tinyint(1) NOT NULL,
  `child` mediumint(9) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_option`
--

INSERT INTO `r_option` (`id_option`, `type`, `additional`, `sort_order`, `dependent_option`, `child`, `date_modified`) VALUES
(34, 'checkbox', '', 1, 0, 0, '0000-00-00 00:00:00'),
(35, 'radio', '', 0, 0, 0, '0000-00-00 00:00:00'),
(36, 'textarea', '', 3, 0, 0, '0000-00-00 00:00:00'),
(37, 'date', '', 5, 0, 0, '0000-00-00 00:00:00'),
(38, 'time', '', 4, 0, 0, '0000-00-00 00:00:00'),
(39, 'datetime', '', 6, 0, 0, '0000-00-00 00:00:00'),
(40, 'select', '', 2, 0, 0, '0000-00-00 00:00:00'),
(41, 'select', '', 1, 0, 0, '0000-00-00 00:00:00'),
(42, 'file', '', 3, 0, 0, '0000-00-00 00:00:00'),
(43, 'file', '', 4, 0, 0, '0000-00-00 00:00:00'),
(46, 'radio', '', 0, 0, 0, '2014-10-16 15:08:33');

-- --------------------------------------------------------

--
-- Table structure for table `r_option_description`
--

CREATE TABLE IF NOT EXISTS `r_option_description` (
  `id_option` int(11) NOT NULL,
  `id_language` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_option_description`
--

INSERT INTO `r_option_description` (`id_option`, `id_language`, `name`) VALUES
(34, 1, 'Color'),
(34, 2, 'Color'),
(35, 1, 'Size'),
(35, 2, 'Size'),
(36, 1, 'Comments'),
(36, 2, 'Comments'),
(37, 1, 'Date'),
(37, 2, 'Date'),
(38, 1, 'Time'),
(38, 2, 'Time'),
(39, 1, 'Date & Time'),
(39, 2, 'Date & Time'),
(40, 1, 'Android v4.3 OS'),
(40, 2, 'Android v4.3 OS'),
(41, 1, 'Fabric'),
(41, 2, 'Fabric'),
(42, 1, 'Upload Catalog'),
(42, 2, 'Upload Catalog'),
(43, 1, 'Upload Image'),
(43, 2, 'Upload Image'),
(46, 1, 'Types of Borders'),
(46, 2, 'Types of Borders');

-- --------------------------------------------------------

--
-- Table structure for table `r_option_value`
--

CREATE TABLE IF NOT EXISTS `r_option_value` (
`id_option_value` int(11) NOT NULL,
  `id_option` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8_bin NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_option_value`
--

INSERT INTO `r_option_value` (`id_option_value`, `id_option`, `image`, `sort_order`) VALUES
(88, 34, '', 2),
(89, 34, '', 1),
(90, 34, '', 0),
(91, 35, '', 1),
(92, 35, '', 2),
(93, 35, '', 3),
(94, 40, '', 1),
(95, 40, '', 2),
(96, 40, '', 3),
(97, 40, '', 4),
(98, 41, '', 1),
(99, 41, '', 2),
(100, 41, '', 3),
(101, 46, '', 1),
(102, 46, '', 0),
(103, 46, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `r_option_value_description`
--

CREATE TABLE IF NOT EXISTS `r_option_value_description` (
  `id_option_value` int(11) NOT NULL,
  `id_language` int(11) NOT NULL,
  `id_option` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_option_value_description`
--

INSERT INTO `r_option_value_description` (`id_option_value`, `id_language`, `id_option`, `name`) VALUES
(88, 1, 34, 'Red'),
(88, 2, 34, 'Red'),
(89, 1, 34, 'Blue'),
(89, 2, 34, 'Blue'),
(90, 1, 34, 'Green'),
(90, 2, 34, 'Green'),
(91, 1, 35, 'S'),
(91, 2, 35, 'S'),
(92, 1, 35, 'M'),
(92, 2, 35, 'M'),
(93, 1, 35, 'L'),
(93, 2, 35, 'L'),
(94, 1, 40, 'Android v4.3 OS'),
(94, 2, 40, 'Android v4.3 OS'),
(95, 1, 40, 'Android v4.2 OS'),
(95, 2, 40, 'Android v4.2 OS'),
(96, 1, 40, 'Android v4.1 OS'),
(96, 2, 40, 'Android v4.1 OS'),
(97, 1, 40, 'Android v4.0 OS'),
(97, 2, 40, 'Android v4.0 OS'),
(98, 1, 41, 'Cotton'),
(98, 2, 41, 'Cotton'),
(99, 1, 41, 'Woolen'),
(99, 2, 41, 'Woolen'),
(100, 1, 41, 'Polyster'),
(100, 2, 41, 'Polyster'),
(101, 1, 46, 'Gomi '),
(101, 2, 46, 'Gomi '),
(102, 1, 46, 'Paraspet '),
(102, 2, 46, 'Paraspet '),
(103, 1, 46, 'Gaadi'),
(103, 2, 46, 'Gaadi');

-- --------------------------------------------------------

--
-- Table structure for table `r_order`
--

CREATE TABLE IF NOT EXISTS `r_order` (
`id_order` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `invoice_prefix` varchar(30) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_customer_group` tinyint(4) NOT NULL,
  `customer_group` varchar(150) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email_address` varchar(150) NOT NULL,
  `message` varchar(500) NOT NULL,
  `delivery_firstname` varchar(100) NOT NULL,
  `delivery_lastname` varchar(100) NOT NULL,
  `delivery_company` varchar(100) DEFAULT NULL,
  `delivery_address_1` varchar(255) NOT NULL,
  `delivery_address_2` varchar(255) NOT NULL,
  `delivery_city` varchar(150) NOT NULL,
  `delivery_postcode` varchar(50) NOT NULL,
  `delivery_state` varchar(100) DEFAULT NULL,
  `id_state_delivery` int(11) NOT NULL,
  `delivery_country` varchar(100) NOT NULL,
  `id_country_delivery` tinyint(1) NOT NULL,
  `shipping_method` varchar(100) NOT NULL,
  `shipping_method_code` varchar(30) NOT NULL,
  `billing_firstname` varchar(100) NOT NULL,
  `billing_lastname` varchar(100) NOT NULL,
  `billing_company` varchar(100) DEFAULT NULL,
  `billing_address_1` varchar(255) NOT NULL,
  `billing_address_2` varchar(255) NOT NULL,
  `billing_city` varchar(100) NOT NULL,
  `billing_postcode` varchar(50) NOT NULL,
  `billing_state` varchar(100) NOT NULL,
  `billing_country` varchar(100) NOT NULL,
  `id_state_billing` int(11) NOT NULL,
  `id_country_billing` int(11) NOT NULL,
  `payment_method` varchar(150) NOT NULL,
  `payment_method_code` varchar(30) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_created` datetime DEFAULT NULL,
  `id_order_status` int(5) NOT NULL,
  `order_status_name` varchar(100) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `total` decimal(20,4) NOT NULL,
  `id_language` tinyint(4) NOT NULL,
  `language_code` char(4) NOT NULL,
  `currency` char(3) DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_order`
--

INSERT INTO `r_order` (`id_order`, `invoice_no`, `invoice_prefix`, `id_customer`, `id_customer_group`, `customer_group`, `firstname`, `lastname`, `telephone`, `email_address`, `message`, `delivery_firstname`, `delivery_lastname`, `delivery_company`, `delivery_address_1`, `delivery_address_2`, `delivery_city`, `delivery_postcode`, `delivery_state`, `id_state_delivery`, `delivery_country`, `id_country_delivery`, `shipping_method`, `shipping_method_code`, `billing_firstname`, `billing_lastname`, `billing_company`, `billing_address_1`, `billing_address_2`, `billing_city`, `billing_postcode`, `billing_state`, `billing_country`, `id_state_billing`, `id_country_billing`, `payment_method`, `payment_method_code`, `date_modified`, `date_created`, `id_order_status`, `order_status_name`, `ip_address`, `total`, `id_language`, `language_code`, `currency`, `currency_value`) VALUES
(1, 0, '', 1, 3, 'Retailer', 'James', 'Katrick', '9988776655', 'james.katrick@gmail.com', '', 'Teja', 'Mehar', '', 'Bombay Night Colony', 'Bahar Road', 'Bombay', '503020', 'Maharashtra', 1493, 'India', 99, 'Flat Rate Shipping(Best Way)', 'FLAT-FLAT', 'Teja', 'Mehar', '', 'Bombay Night Colony', '0', 'Bombay', '503020', 'Maharashtra', 'India', 1493, 99, 'Cash On Delivery', 'COD', '2014-12-02 04:42:09', '2014-12-03 08:12:09', 0, '', '192.168.145.1', '500.0000', 1, 'en', 'USD', '1.000000'),
(2, 0, '', 1, 3, 'Retailer', 'James', 'Katrick', '9988776655', 'james.katrick@gmail.com', '', 'Teja', 'Mehar', '', 'Bombay Night Colony', 'Bahar Road', 'Bombay', '503020', 'Maharashtra', 1493, 'India', 99, 'Flat Rate Shipping(Best Way)', 'FLAT-FLAT', 'Teja', 'Mehar', '', 'Bombay Night Colony', '0', 'Bombay', '503020', 'Maharashtra', 'India', 1493, 99, 'Cash On Delivery', 'COD', '2014-12-02 04:42:11', '2014-12-03 08:12:11', 0, '', '192.168.145.1', '500.0000', 1, 'en', 'USD', '1.000000'),
(3, 0, '', 1, 3, 'Retailer', 'James', 'Katrick', '9988776655', 'james.katrick@gmail.com', '', 'Teja', 'Mehar', '', 'Bombay Night Colony', 'Bahar Road', 'Bombay', '503020', 'Maharashtra', 1493, 'India', 99, 'Flat Rate Shipping(Best Way)', 'FLAT-FLAT', 'Teja', 'Mehar', '', 'Bombay Night Colony', '0', 'Bombay', '503020', 'Maharashtra', 'India', 1493, 99, 'Cash On Delivery', 'COD', '2014-12-02 04:43:13', '2014-12-03 08:13:13', 0, '', '192.168.145.1', '500.0000', 1, 'en', 'USD', '1.000000'),
(4, 0, '', 1, 3, 'Retailer', 'James', 'Katrick', '9988776655', 'james.katrick@gmail.com', '', 'Teja', 'Mehar', '', 'Bombay Night Colony', 'Bahar Road', 'Bombay', '503020', 'Maharashtra', 1493, 'India', 99, 'Flat Rate Shipping(Best Way)', 'FLAT-FLAT', 'Teja', 'Mehar', '', 'Bombay Night Colony', '0', 'Bombay', '503020', 'Maharashtra', 'India', 1493, 99, 'Cash On Delivery', 'COD', '2014-12-02 04:49:57', '2014-12-03 08:19:57', 0, '', '192.168.145.1', '500.0000', 1, 'en', 'USD', '1.000000'),
(8, 0, '', 1, 3, 'Retailer', 'James', 'Katrick', '9988776655', 'james.katrick@gmail.com', '', 'Teja', 'Mehar', '', 'Bombay Night Colony', 'Bahar Road', 'Bombay', '503020', 'Maharashtra', 1493, 'India', 99, 'Flat Rate Shipping(Best Way)', 'FLAT-FLAT', 'suresh', 'babu', '', 'Miyapur', '', 'Hyderabad', '500049', 'Telangana', 'India', 4055, 99, 'Cash On Delivery', 'COD', '2014-12-13 08:52:33', '2014-12-14 12:22:33', 0, '', '115.242.231.78', '505.0000', 1, 'en', 'USD', '1.000000'),
(9, 0, '', 1, 3, 'Retailer', 'James', 'Katrick', '9988776655', 'james.katrick@gmail.com', '', 'Teja', 'Mehar', '', 'Bombay Night Colony', 'Bahar Road', 'Bombay', '503020', 'Maharashtra', 1493, 'India', 99, 'Flat Rate Shipping(Best Way)', 'FLAT-FLAT', 'suresh', 'babu', '', 'Miyapur', '', 'Hyderabad', '500049', 'Telangana', 'India', 4055, 99, 'Cash On Delivery', 'COD', '2014-12-13 10:01:27', '2014-12-14 13:31:27', 0, '', '115.241.102.148', '505.0000', 1, 'en', 'USD', '1.000000'),
(10, 0, '', 1, 3, 'Retailer', 'James', 'Katrick', '9988776655', 'james.katrick@gmail.com', '', 'Teja', 'Mehar', '', 'Bombay Night Colony', 'Bahar Road', 'Bombay', '503020', 'Maharashtra', 1493, 'India', 99, 'Flat Rate Shipping(Best Way)', 'FLAT-FLAT', 'suresh', 'babu', '', 'Miyapur', '', 'Hyderabad', '500049', 'Telangana', 'India', 4055, 99, 'Cash On Delivery', 'COD', '2014-12-13 11:41:42', '2014-12-14 15:11:42', 0, '', '115.241.102.148', '505.0000', 1, 'en', 'USD', '1.000000'),
(14, 0, '', 1, 3, 'Retailer', 'James', 'Katrick', '9988776655', 'james.katrick@gmail.com', '', 'Teja', 'Mehar', '', 'Bombay Night Colony', 'Bahar Road', 'Bombay', '503020', 'Maharashtra', 1493, 'India', 99, 'Flat Rate Shipping(Best Way)', 'FLAT-FLAT', 'suresh', 'babu', '', 'Miyapur', '', 'Hyderabad', '500049', 'Telangana', 'India', 4055, 99, 'Cash On Delivery', 'COD', '2014-12-27 16:43:39', '2014-12-28 20:13:39', 0, '', '115.241.30.242', '495.0000', 1, 'en', 'USD', '1.000000'),
(15, 0, '', 1, 3, 'Retailer', 'James', 'Katrick', '9988776655', 'james.katrick@gmail.com', '', 'Teja', 'Mehar', '', 'Bombay Night Colony', 'Bahar Road', 'Bombay', '503020', 'Maharashtra', 1493, 'India', 99, 'Flat Rate Shipping(Best Way)', 'FLAT-FLAT', 'suresh', 'babu', '', 'Miyapur', '', 'Hyderabad', '500049', 'Telangana', 'India', 4055, 99, 'Cash On Delivery', 'COD', '2014-12-27 16:43:47', '2014-12-28 20:13:47', 0, '', '115.241.30.242', '495.0000', 1, 'en', 'USD', '1.000000'),
(16, 0, '', 1, 3, 'Retailer', 'James', 'Katrick', '9988776655', 'james.katrick@gmail.com', '', 'Teja', 'Mehar', '', 'Bombay Night Colony', 'Bahar Road', 'Bombay', '503020', 'Maharashtra', 1493, 'India', 99, 'Flat Rate Shipping(Best Way)', 'FLAT-FLAT', 'suresh', 'babu', '', 'Miyapur', '', 'Hyderabad', '500049', 'Telangana', 'India', 4055, 99, 'Cash On Delivery', 'COD', '2014-12-27 16:44:19', '2014-12-28 20:14:19', 0, '', '115.241.30.242', '495.0000', 1, 'en', 'USD', '1.000000'),
(18, 0, '', 1, 3, 'Retailer', 'James', 'Katrick', '9988776655', 'james.katrick@gmail.com', '', 'Teja', 'Mehar', '', 'Bombay Night Colony', 'Bahar Road', 'Bombay', '503020', 'Maharashtra', 1493, 'India', 99, 'Flat Rate Shipping(Best Way)', 'FLAT-FLAT', 'suresh', 'babu', '', 'Miyapur', '', 'Hyderabad', '500049', 'Telangana', 'India', 4055, 99, 'Cash On Delivery', 'COD', '2014-12-27 16:54:41', '2014-12-28 20:24:41', 0, '', '192.168.145.1', '495.0000', 1, 'en', 'USD', '1.000000'),
(19, 0, '', 1, 3, 'Retailer', 'James', 'Katrick', '9988776655', 'james.katrick@gmail.com', '', 'Teja', 'Mehar', '', 'Bombay Night Colony', 'Bahar Road', 'Bombay', '503020', 'Maharashtra', 1493, 'India', 99, 'Flat Rate Shipping(Best Way)', 'FLAT-FLAT', 'suresh', 'babu', '', 'Miyapur', '', 'Hyderabad', '500049', 'Telangana', 'India', 4055, 99, 'Cash On Delivery', 'COD', '2014-12-27 17:02:50', '2014-12-28 20:32:50', 0, '', '192.168.145.1', '495.0000', 1, 'en', 'USD', '1.000000'),
(24, 0, '', 1, 3, 'Retailer', 'James', 'Katrick', '9988776655', 'james.katrick@gmail.com', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 'suresh', 'babu', '', 'Miyapur', '', 'Hyderabad', '500049', 'Telangana', 'India', 4055, 99, 'Cash On Delivery', 'COD', '2014-12-27 19:37:32', '2014-12-28 23:07:32', 0, '', '115.242.247.85', '1000.0000', 1, 'en', 'USD', '1.000000'),
(25, 0, '', 0, 1, 'Default', 'billing[firstname]', 'billing[lastname]', 'billing[telephone]', 'example@example.com', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 'billing[firstname]', 'billing[lastname]', 'billing[company]', 'billing[address_1]', 'billing[address_2]', 'billing[city]', '500049', 'Telangana', 'India', 4055, 99, 'Cash On Delivery', 'COD', '2014-12-27 19:48:58', '2014-12-28 23:18:58', 0, '', '115.242.247.85', '1000.0000', 1, 'en', 'USD', '1.000000'),
(27, 0, '', 0, 1, 'Default', 'Paras', 'Mambre', '9988998899', 'mambre@gmail.com', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 'Paras', 'Mambre', 'Yob.com', 'flat no 205,rv hamo apptment', '', 'hyderabad', '500049', 'County Fermanagh', 'United Kingdom', 3952, 222, 'Cash On Delivery', 'COD', '2014-12-28 08:57:26', '2014-12-29 12:27:26', 0, '', '192.168.145.1', '1000.0000', 1, 'en', 'USD', '1.000000'),
(33, 0, '', 0, 1, 'Default', 'narender', 'reedy', '9963716731', 'narendra@rsoftindia.com', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 'narender', 'reedy', '', 'hydberabad', '', 'hydberabad', '500068', 'Telangana', 'India', 4055, 99, 'Cash On Delivery', 'COD', '2015-01-05 00:37:48', '2015-01-05 14:37:48', 0, '', '49.204.49.102', '389.0000', 1, 'en', 'USD', '1.000000'),
(34, 0, '', 0, 1, 'Default', 'narender', 'reedy', '9963716731', 'narendra@rsoftindia.com', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 'narender', 'reedy', '', 'hydberabad', '', 'hydberabad', '500068', 'Telangana', 'India', 4055, 99, 'Cash On Delivery', 'COD', '2015-01-05 00:38:08', '2015-01-05 14:38:08', 0, '', '49.204.49.102', '389.0000', 1, 'en', 'USD', '1.000000'),
(35, 0, '', 0, 1, 'Default', 'narender', 'reedy', '9963716731', 'narendra@rsoftindia.com', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 'narender', 'reedy', '', 'hydberabad', '', 'hydberabad', '500068', 'Telangana', 'India', 4055, 99, 'Cash On Delivery', 'COD', '2015-01-05 00:38:08', '2015-01-05 14:38:08', 0, '', '49.204.49.102', '389.0000', 1, 'en', 'USD', '1.000000'),
(42, 1, 'INV_', 0, 1, 'Default', 'Micheal', 'Hemsmith', '9988776655', 'sureshbabu.kokkonda@gmail.com', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 'Micheal', 'Hemsmith', '', 'Jublee Hills', '', 'Hyderabad', '500003', 'Telangana', 'India', 4055, 99, 'Cash On Delivery', 'COD', '2015-03-31 01:57:33', '2015-03-31 15:57:32', 2, 'Pending', '49.204.49.102', '43.0000', 1, 'en', 'USD', '1.000000'),
(43, 2, 'INV_', 0, 1, 'Default', 'George', 'Washington', '9988776655', 'suresh.k@smartmonk.co', '', '', '', '', '', '', '', '', '', 0, '', 0, '', '', 'George', 'Washington', '', 'Jublee Hills', '', 'Hyderabad', '500003', 'Telangana', 'India', 4055, 99, 'Cash On Delivery', 'COD', '2015-03-31 03:26:51', '2015-03-31 17:26:49', 2, 'Pending', '49.204.49.102', '59.0000', 1, 'en', 'USD', '1.000000');

-- --------------------------------------------------------

--
-- Table structure for table `r_order_history`
--

CREATE TABLE IF NOT EXISTS `r_order_history` (
`id_order_history` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_order_status` int(11) NOT NULL,
  `order_status_name` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL,
  `notified_by_customer` tinyint(1) DEFAULT '0',
  `message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_order_history`
--

INSERT INTO `r_order_history` (`id_order_history`, `id_order`, `id_order_status`, `order_status_name`, `date_created`, `notified_by_customer`, `message`) VALUES
(32, 42, 2, 'Pending', '2015-03-31 15:57:33', 1, NULL),
(33, 43, 2, 'Pending', '2015-03-31 17:26:51', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `r_order_product`
--

CREATE TABLE IF NOT EXISTS `r_order_product` (
`id_order_product` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `model` varchar(30) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `unit_price` decimal(15,4) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `tax` decimal(15,4) NOT NULL,
  `quantity` int(2) NOT NULL,
  `has_download` tinyint(1) NOT NULL,
  `download_filename` varchar(100) NOT NULL,
  `download_mask` varchar(100) NOT NULL,
  `download_remaining_count` tinyint(4) NOT NULL,
  `download_expiry_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_order_product`
--

INSERT INTO `r_order_product` (`id_order_product`, `id_order`, `id_product`, `model`, `name`, `unit_price`, `total`, `tax`, `quantity`, `has_download`, `download_filename`, `download_mask`, `download_remaining_count`, `download_expiry_date`) VALUES
(1, 1, 139, 'Red-1022', 'Red Top', '500.0000', '500.0000', '0.0000', 1, 0, '', '', 0, '2014-12-03'),
(2, 2, 139, 'Red-1022', 'Red Top', '500.0000', '500.0000', '0.0000', 1, 0, '', '', 0, '2014-12-03'),
(3, 3, 139, 'Red-1022', 'Red Top', '500.0000', '500.0000', '0.0000', 1, 0, '', '', 0, '2014-12-03'),
(4, 4, 139, 'Red-1022', 'Red Top', '500.0000', '500.0000', '0.0000', 1, 0, '', '', 0, '2014-12-03'),
(8, 8, 139, 'Red-1022', 'Red Top', '500.0000', '500.0000', '0.0000', 1, 0, '', '', 0, '2014-12-14'),
(9, 9, 139, 'Red-1022', 'Red Top', '500.0000', '500.0000', '0.0000', 1, 0, '', '', 0, '2014-12-14'),
(10, 10, 139, 'Red-1022', 'Red Top', '500.0000', '500.0000', '0.0000', 1, 0, '', '', 0, '2014-12-14'),
(15, 14, 139, 'Red-1022', 'Red Top', '500.0000', '500.0000', '0.0000', 1, 0, '', '', 0, '2014-12-28'),
(16, 15, 139, 'Red-1022', 'Red Top', '500.0000', '500.0000', '0.0000', 1, 0, '', '', 0, '2014-12-28'),
(17, 16, 139, 'Red-1022', 'Red Top', '500.0000', '500.0000', '0.0000', 1, 0, '', '', 0, '2014-12-28'),
(19, 18, 139, 'Red-1022', 'Red Top', '500.0000', '500.0000', '0.0000', 1, 0, '', '', 0, '2014-12-28'),
(20, 19, 139, 'Red-1022', 'Red Top', '500.0000', '500.0000', '0.0000', 1, 0, '', '', 0, '2014-12-28'),
(25, 24, 149, 'N9000', 'Samsung Galaxy ..', '1000.0000', '1000.0000', '0.0000', 1, 0, '', '', 0, '2014-12-28'),
(26, 25, 149, 'N9000', 'Samsung Galaxy ..', '1000.0000', '1000.0000', '0.0000', 1, 0, '', '', 0, '2014-12-28'),
(28, 27, 149, 'N9000', 'Samsung Galaxy ..', '1000.0000', '1000.0000', '0.0000', 1, 0, '', '', 0, '2014-12-29'),
(35, 33, 151, '141072ROYAL BLUE', 'Men''s Round Nec..', '389.0000', '389.0000', '0.0000', 1, 0, '', '', 0, '2015-01-05'),
(36, 34, 151, '141072ROYAL BLUE', 'Men''s Round Nec..', '389.0000', '389.0000', '0.0000', 1, 0, '', '', 0, '2015-01-05'),
(37, 35, 151, '141072ROYAL BLUE', 'Men''s Round Nec..', '389.0000', '389.0000', '0.0000', 1, 0, '', '', 0, '2015-01-05'),
(44, 42, 233, 'Nusia Alloy ', ' Atasi Internat..', '43.0000', '43.0000', '0.0000', 1, 0, '', '', 0, '2015-03-31'),
(45, 43, 240, 'Mandarin', 'Phosphorus Slat..', '59.0000', '59.0000', '0.0000', 1, 0, '', '', 0, '2015-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `r_order_product_option`
--

CREATE TABLE IF NOT EXISTS `r_order_product_option` (
`id_order_product_option` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_order_product` int(11) NOT NULL,
  `id_product_option` int(11) NOT NULL,
  `id_product_option_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `value` varchar(500) COLLATE utf8_bin NOT NULL,
  `type` varchar(32) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_order_product_option`
--

INSERT INTO `r_order_product_option` (`id_order_product_option`, `id_order`, `id_order_product`, `id_product_option`, `id_product_option_value`, `name`, `value`, `type`) VALUES
(6, 33, 35, 628, 146, 'Size', 'M', 'radio'),
(7, 33, 35, 627, 145, 'Color', 'Blue', 'checkbox'),
(8, 34, 36, 628, 146, 'Size', 'M', 'radio'),
(9, 34, 36, 627, 145, 'Color', 'Blue', 'checkbox'),
(10, 35, 37, 628, 146, 'Size', 'M', 'radio'),
(11, 35, 37, 627, 145, 'Color', 'Blue', 'checkbox');

-- --------------------------------------------------------

--
-- Table structure for table `r_order_status`
--

CREATE TABLE IF NOT EXISTS `r_order_status` (
`id_order_status` int(11) NOT NULL,
  `id_language` int(11) NOT NULL DEFAULT '1',
  `name` varchar(32) NOT NULL,
  `color` varchar(32) NOT NULL,
  `id_email_template` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_order_status`
--

INSERT INTO `r_order_status` (`id_order_status`, `id_language`, `name`, `color`, `id_email_template`) VALUES
(1, 1, 'Completed', '#29c939', 5),
(1, 2, 'Completed', 'green', 0),
(2, 1, 'Pending', '#095dff', 5),
(2, 2, 'fareed', 'ffffff', 5),
(3, 1, 'Cancelled', '#ff2567', 3),
(3, 2, 'Cancelled', '#ff4545', 3),
(4, 1, 'Processing', '#7a4242', 8),
(4, 2, 'Processing', '#7a4242', 2),
(8, 1, 'Denied', '#1bf0e3', 6),
(8, 2, 'Denied', '#b07a7a', 6);

-- --------------------------------------------------------

--
-- Table structure for table `r_order_total`
--

CREATE TABLE IF NOT EXISTS `r_order_total` (
`id_order_total` int(10) unsigned NOT NULL,
  `id_order` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `code` varchar(32) NOT NULL,
  `sort_order` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_order_total`
--

INSERT INTO `r_order_total` (`id_order_total`, `id_order`, `title`, `text`, `value`, `code`, `sort_order`) VALUES
(1, 1, 'Sub Total : ', '$500.00', '500.0000', 'SUBTOTAL', 3),
(2, 2, 'Sub Total : ', '$500.00', '500.0000', 'SUBTOTAL', 3),
(3, 3, 'Sub Total : ', '$500.00', '500.0000', 'SUBTOTAL', 3),
(4, 4, 'Sub Total : ', '$500.00', '500.0000', 'SUBTOTAL', 3),
(14, 8, 'Sub Total : ', '$500.00', '500.0000', 'SUBTOTAL', 3),
(15, 8, 'Flat Rate Shipping(Best Way)', '$5.00', '5.0000', 'SHIPPING', 2),
(16, 8, 'Total : ', '$505.00', '505.0000', 'TOTAL', 1),
(17, 9, 'Sub Total : ', '$500.00', '500.0000', 'SUBTOTAL', 3),
(18, 9, 'Flat Rate Shipping(Best Way)', '$5.00', '5.0000', 'SHIPPING', 2),
(19, 9, 'Total : ', '$505.00', '505.0000', 'TOTAL', 1),
(20, 10, 'Sub Total : ', '$500.00', '500.0000', 'SUBTOTAL', 3),
(21, 10, 'Flat Rate Shipping(Best Way)', '$5.00', '5.0000', 'SHIPPING', 2),
(22, 10, 'Total : ', '$505.00', '505.0000', 'TOTAL', 1),
(35, 18, 'Coupon (abcdef): ', '$-10.00', '-10.0000', 'COUPON', 1),
(36, 18, 'Sub Total : ', '$500.00', '500.0000', 'SUBTOTAL', 3),
(37, 18, 'Flat Rate Shipping(Best Way)', '$5.00', '5.0000', 'SHIPPING', 2),
(38, 18, 'Total : ', '$495.00', '495.0000', 'TOTAL', 1),
(39, 19, 'Coupon (abcdef): ', '$-10.00', '-10.0000', 'COUPON', 1),
(40, 19, 'Flat Rate Shipping(Best Way)', '$5.00', '5.0000', 'SHIPPING', 2),
(41, 19, 'Sub Total : ', '$500.00', '500.0000', 'SUBTOTAL', 3),
(42, 19, 'Total : ', '$495.00', '495.0000', 'TOTAL', 1),
(59, 24, 'Sub Total : ', '$1,000.00', '1000.0000', 'SUBTOTAL', 1),
(60, 24, 'Total : ', '$1,000.00', '1000.0000', 'TOTAL', 4),
(61, 25, 'Sub Total : ', '$1,000.00', '1000.0000', 'SUBTOTAL', 1),
(62, 25, 'Total : ', '$1,000.00', '1000.0000', 'TOTAL', 4),
(65, 27, 'Sub Total : ', '$1,000.00', '1000.0000', 'SUBTOTAL', 1),
(66, 27, 'Total : ', '$1,000.00', '1000.0000', 'TOTAL', 4),
(78, 33, 'Sub Total : ', '$389.00', '389.0000', 'SUBTOTAL', 1),
(79, 33, 'Total : ', '$389.00', '389.0000', 'TOTAL', 4),
(80, 34, 'Sub Total : ', '$389.00', '389.0000', 'SUBTOTAL', 1),
(81, 34, 'Total : ', '$389.00', '389.0000', 'TOTAL', 4),
(82, 35, 'Sub Total : ', '$389.00', '389.0000', 'SUBTOTAL', 1),
(83, 35, 'Total : ', '$389.00', '389.0000', 'TOTAL', 4),
(97, 42, 'Sub Total : ', '$43.00', '43.0000', 'SUBTOTAL', 1),
(98, 42, 'Total : ', '$43.00', '43.0000', 'TOTAL', 4),
(99, 43, 'Sub Total : ', '$59.00', '59.0000', 'SUBTOTAL', 1),
(100, 43, 'Total : ', '$59.00', '59.0000', 'TOTAL', 4);

-- --------------------------------------------------------

--
-- Table structure for table `r_page`
--

CREATE TABLE IF NOT EXISTS `r_page` (
`id_page` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_page`
--

INSERT INTO `r_page` (`id_page`, `status`, `sort_order`, `date_created`, `date_modified`) VALUES
(3, 1, 1, '2014-04-26 16:54:47', '2014-04-26 16:54:47'),
(4, 1, 2, '2014-04-26 17:02:13', '2014-04-26 17:02:13'),
(5, 1, 3, '2014-04-26 17:03:58', '2014-04-26 17:03:58'),
(10, 1, -1, '2014-05-30 15:31:01', '2014-08-17 18:08:29'),
(11, 1, 2, '2014-05-30 15:31:21', '2014-07-03 12:36:11'),
(12, 1, 2, '2014-05-30 15:31:35', '2014-07-03 12:17:44'),
(13, 1, NULL, '2014-05-30 15:31:59', '2014-12-14 18:00:11'),
(15, 1, 1, '2014-06-25 17:11:14', '2014-06-25 17:16:57'),
(16, 1, 2, '2014-06-25 17:19:40', '2014-12-31 03:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `r_page_description`
--

CREATE TABLE IF NOT EXISTS `r_page_description` (
  `id_page` int(11) NOT NULL DEFAULT '0',
  `title` varchar(150) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(150) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `id_language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_page_description`
--

INSERT INTO `r_page_description` (`id_page`, `title`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `id_language`) VALUES
(10, 'Welcome to Cart Nex!!', '<p>Get Registered!!</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; Enjoy the World Best Ecommerce experience!!</p>\r\n', '', '', '', 1),
(10, ' 	Welcome', '', '', '', '', 2),
(11, 'Refund Policy', '<h2 style="font-style:normal; text-align:start">Dummy text: Its function as a filler or as a tool for comparing the visual impression of different typefaces</h2>\r\n\r\n<p style="text-align:justify">Dummy text is text that is used in the publishing industry or by web designers to occupy the space which will later be filled with &#39;real&#39; content. This is required when, for example, the final text is not yet available. Dummy text is also known as &#39;fill text&#39;. It is said that song composers of the past used dummy texts as lyrics when writing melodies in order to have a &#39;ready-made&#39; text to sing with the melody. Dummy texts have been in use by typesetters since the 16th century.</p>\r\n\r\n<h2 style="font-style:normal; text-align:start">The usefulness of nonsensical content</h2>\r\n\r\n<p style="text-align:justify">Dummy text is also used to demonstrate the appearance of different typefaces and layouts, and in general the content of dummy text is nonsensical. Due to its widespread use as filler text for layouts, non-readability is of great importance: human perception is tuned to recognize certain patterns and repetitions in texts. If the distribution of letters and &#39;words&#39; is random, the reader will not be distracted from making a neutral judgement on the visual impact and readability of the typefaces (typography), or the distribution of text on the page (layout or type area). For this reason, dummy text usually consists of a more or less random series of words or syllables. This prevents repetitive patterns from impairing the overall visual impression and facilitates the comparison of different typefaces. Furthermore, it is advantageous when the dummy text is relatively realistic so that the layout impression of the final publication is not compromised.</p>\r\n', '', '', '', 1),
(11, ' 	Checkout', '', '', '', '', 2),
(12, 'Privacy Policy', '<h2 style="font-style:normal; text-align:start">Dummy text: Its function as a filler or as a tool for comparing the visual impression of different typefaces</h2>\r\n\r\n<p style="text-align:justify">Dummy text is text that is used in the publishing industry or by web designers to occupy the space which will later be filled with &#39;real&#39; content. This is required when, for example, the final text is not yet available. Dummy text is also known as &#39;fill text&#39;. It is said that song composers of the past used dummy texts as lyrics when writing melodies in order to have a &#39;ready-made&#39; text to sing with the melody. Dummy texts have been in use by typesetters since the 16th century.</p>\r\n\r\n<h2 style="font-style:normal; text-align:start">The usefulness of nonsensical content</h2>\r\n\r\n<p style="text-align:justify">Dummy text is also used to demonstrate the appearance of different typefaces and layouts, and in general the content of dummy text is nonsensical. Due to its widespread use as filler text for layouts, non-readability is of great importance: human perception is tuned to recognize certain patterns and repetitions in texts. If the distribution of letters and &#39;words&#39; is random, the reader will not be distracted from making a neutral judgement on the visual impact and readability of the typefaces (typography), or the distribution of text on the page (layout or type area). For this reason, dummy text usually consists of a more or less random series of words or syllables. This prevents repetitive patterns from impairing the overall visual impression and facilitates the comparison of different typefaces. Furthermore, it is advantageous when the dummy text is relatively realistic so that the layout impression of the final publication is not compromised.</p>\r\n', '', '', '', 1),
(12, ' 	Security', '', '', '', '', 2),
(13, 'Terms & Conditions', '<h2 style="font-style:normal; text-align:start">Comming Soon!!&nbsp;</h2>\r\n', '', '', '', 1),
(13, 'Terms & Conditions', 'in spanish', '', '', '', 2),
(15, 'About', '<p><em>Sporanzo</em> is most advanced Ecommerce online store and shopping cart solutions providers in India for all sized businesses at very competitive prices</p>\r\n', 'About us', 'About us', 'About us', 1),
(15, 'About', '<p><em>Sporanzo</em> is most advanced Ecommerce online store and shopping cart solutions providers in India for all sized businesses at very competitive prices</p>\r\n', 'About us', 'About us', 'About us', 2),
(16, 'Best Selling Brands', '<p>&nbsp;Coming Soon!! working fine</p>\r\n', 'Best Selling Brands', 'Best ', 'Best Selling Brands', 1),
(16, 'Best Selling Brands', '<p>&nbsp;Coming Soon!!</p>\r\n', 'Best Selling Brands', 'Best Selling Brands', 'Best Selling Brands', 2);

-- --------------------------------------------------------

--
-- Table structure for table `r_product`
--

CREATE TABLE IF NOT EXISTS `r_product` (
`id_product` int(11) NOT NULL,
  `quantity` int(4) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `price` decimal(15,4) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `date_product_available` date DEFAULT NULL,
  `weight` decimal(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `id_tax_class` int(11) NOT NULL,
  `id_stock_status` int(11) NOT NULL,
  `id_manufacturer` int(11) DEFAULT NULL,
  `minimum_quantity` smallint(6) NOT NULL,
  `subtract_stock` tinyint(4) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `shipping_required` tinyint(1) NOT NULL,
  `length` decimal(15,8) NOT NULL,
  `width` decimal(15,8) NOT NULL,
  `height` decimal(15,8) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `download_status` tinyint(1) NOT NULL,
  `download_filename` varchar(100) NOT NULL,
  `download_mask` varchar(100) NOT NULL,
  `download_allowed_count` tinyint(4) NOT NULL,
  `download_allowed_days` tinyint(4) NOT NULL,
  `sort_order` tinyint(1) NOT NULL,
  `viewed` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_product`
--

INSERT INTO `r_product` (`id_product`, `quantity`, `model`, `image`, `price`, `date_created`, `date_modified`, `date_product_available`, `weight`, `status`, `id_tax_class`, `id_stock_status`, `id_manufacturer`, `minimum_quantity`, `subtract_stock`, `sku`, `shipping_required`, `length`, `width`, `height`, `upc`, `download_status`, `download_filename`, `download_mask`, `download_allowed_count`, `download_allowed_days`, `sort_order`, `viewed`) VALUES
(225, 1, '2016', 'product_Apple-iphone-6-225_1427714748.jpeg', '740.0000', '2015-03-30 11:19:40', '2015-03-30 11:26:13', '2015-03-29', '0.00000000', 1, 0, 3, 73, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 1, 5),
(226, 1, '5s', 'product_Apple-iPhone-5S-Gold--with-16-GB--_1427715070.jpeg', '600.0000', '2015-03-30 11:31:10', '2015-03-30 11:31:56', '2015-03-29', '0.00000000', 1, 0, 3, 73, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 2, 3),
(227, 1, 's6', 'product_Samsung-Galaxy-S6-_1427715792.jpg', '650.0000', '2015-03-30 11:43:12', '2015-03-30 11:43:12', '2015-03-29', '0.00000000', 1, 0, 2, 74, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 1, 1),
(228, 1, '2nd Edition', 'product_The-3-Mistakes-of-My-Life-_1427716126.jpg', '3.0000', '2015-03-30 11:48:46', '2015-03-30 11:50:12', '2015-03-29', '0.00000000', 1, 0, 2, 0, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 0, 3),
(229, 1, 'Z3', 'product_Blackberry-Z3-Black-_1427716994.jpg', '200.0000', '2015-03-30 12:03:14', '2015-03-30 12:03:14', '2015-03-29', '0.00000000', 1, 0, 2, 75, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 1, 0),
(230, 1, ' Galaxy ', 'product_Samsung-Galaxy-Grand-_1427717234.jpg', '239.4000', '2015-03-30 12:07:14', '2015-03-30 13:11:41', '2015-03-29', '0.00000000', 1, 0, 2, 74, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 18, 2),
(231, 1, 'Galaxy', 'product_Samsung-Galaxy-Core-II-_1427717412.jpg', '90.0000', '2015-03-30 12:10:12', '2015-03-30 13:11:04', '2015-03-29', '0.00000000', 1, 0, 2, 74, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 11, 1),
(232, 1, 'E5', 'product_Samsung-Galaxy-E5-_1427717598.jpg', '300.0000', '2015-03-30 12:13:18', '2015-03-30 13:11:29', '2015-03-29', '0.00000000', 1, 0, 2, 74, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 19, 0),
(233, 0, 'Nusia Alloy ', 'product_Atasi-International-Nusia-Alloy-Jewel-Set--White--_1427718400.jpeg', '43.0000', '2015-03-30 12:26:40', '2015-03-30 12:26:40', '2015-03-30', '0.00000000', 1, 4, 2, 0, 1, 1, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 0, 3),
(234, 1, 'BBNSG924-02A--M ', 'product_Touchstone-Alloy-Jewel-Set--Multicolor--_1427718694.jpeg', '53.0000', '2015-03-30 12:31:34', '2015-03-30 12:33:06', '2015-03-30', '300.00000000', 1, 4, 2, 73, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 1, 1),
(235, 1, '1200D', 'product_Canon-EOS-1200D-_1427718711.jpg', '499.8900', '2015-03-30 12:31:51', '2015-03-30 12:31:51', '2015-03-29', '0.00000000', 1, 0, 2, 77, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 1, 1),
(236, 1, '1200D', 'product_Canon-EOS-1200D-_1427718839.jpg', '412.7600', '2015-03-30 12:33:59', '2015-03-30 12:33:59', '2015-03-29', '0.00000000', 1, 0, 2, 77, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 2, 1),
(237, 1, 'S2800', 'product_Nikon-Coolpix-_1427719138.jpg', '75.0000', '2015-03-30 12:38:58', '2015-03-30 12:45:48', '2015-03-29', '0.00000000', 1, 0, 2, 78, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 1, 4),
(238, 1, 'L29', 'product_Nikon-Coolpix-_1427719248.jpg', '55.6600', '2015-03-30 12:40:48', '2015-03-30 12:44:57', '2015-03-29', '0.00000000', 1, 0, 2, 78, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 2, 0),
(239, 1, 'L330', 'product_Nikon-Coolpix-_1427719424.jpg', '200.8900', '2015-03-30 12:43:44', '2015-03-30 12:43:44', '2015-03-29', '0.00000000', 1, 0, 2, 78, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 0, 1),
(240, 1, 'Mandarin', 'product_Phosphorus-Slate-Grey-Colour-Shirt-_1427719613.jpg', '59.0000', '2015-03-30 12:46:53', '2015-03-30 13:04:08', '2015-03-30', '0.00000000', 1, 4, 2, 0, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 0, 4),
(241, 1, 'My Autobiography', 'product_Playing-It-My-Way-_1427719781.jpg', '60.0000', '2015-03-30 12:49:41', '2015-03-30 12:50:14', '2015-03-29', '0.00000000', 1, 0, 2, 0, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 2, 2),
(242, 1, 'Autobiography ', 'product_Long-Walk-to-Freedom-_1427720011.jpg', '15.0000', '2015-03-30 12:53:31', '2015-03-30 12:53:31', '2015-03-29', '0.00000000', 1, 0, 2, 0, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 4, 0),
(243, 1, ' Autobiography', 'product_Gandhi-An-Autobiography-_1427720121.jpg', '56.0000', '2015-03-30 12:55:21', '2015-03-30 12:55:21', '2015-03-29', '0.00000000', 1, 0, 2, 0, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 5, 0),
(244, 20, 'Mandarin ', 'product_Taanz-Solid-Purple-Casual-Shirt-_1427720240.jpg', '62.0000', '2015-03-30 12:57:20', '2015-03-30 13:06:21', '2015-03-30', '0.00000000', 1, 4, 2, 73, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 1, 1),
(245, 1, '4G', 'product_Galaxy-S5-245_1427720745.jpg', '560.8900', '2015-03-30 13:03:03', '2015-03-30 13:05:45', '2015-03-29', '0.00000000', 1, 0, 2, 74, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 7, 2),
(246, 1, 'SM-G530H', 'product_Galaxy-Grand-Prime-_1427720704.jpg', '345.0000', '2015-03-30 13:05:04', '2015-03-30 13:05:04', '2015-03-29', '0.00000000', 1, 0, 2, 74, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 8, 0),
(247, 1, 'SM-G313HU', 'product_Galaxy-S-Duos-3-_1427720850.jpg', '350.9900', '2015-03-30 13:07:30', '2015-03-30 13:07:30', '2015-03-29', '0.00000000', 1, 0, 2, 74, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 9, 0),
(248, 1, 'SM-G360H', 'product_Galaxy-Core-Prime-_1427721015.jpg', '234.9900', '2015-03-30 13:10:15', '2015-03-30 13:10:15', '2015-03-29', '0.00000000', 1, 0, 3, 74, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 10, 0),
(249, 1, ' Ace NXT', 'product_Galaxy-Ace-NXT-_1427721158.jpg', '200.0000', '2015-03-30 13:12:38', '2015-04-01 14:53:06', '2015-03-29', '0.00000000', 1, 0, 2, 74, 1, 0, '', 0, '0.00000000', '0.00000000', '0.00000000', '', 0, '', '', 0, 0, 15, 0),
(250, 2, '2016', '5.png', '250000.0000', '2016-05-01 00:00:00', '2016-05-01 00:00:00', '2016-05-01', '55.00000000', 1, 0, 80, 98, 10, 0, '1', 0, '120.00000000', '40.00000000', '564.00000000', '0', 0, '5_pic_1.jpg', '0', 2, 7, 1, 0),
(251, 1, '2016', '', '32000.0000', '2016-05-01 00:00:00', '2016-05-01 00:00:00', '2016-05-01', '80.00000000', 1, 1, 1, 22, 70, 0, '1', 1, '130.00000000', '60.00000000', '40.00000000', '1', 1, '2_pic_1.jpg', '1', 2, 3, 1, 1),
(252, 10, '2016', '', '250000.0000', '2016-05-01 00:00:00', '2016-05-01 00:00:00', '2016-05-01', '80.00000000', 1, 1, 1, 1, 10, 5, '1', 1, '24.00000000', '8.00000000', '5.00000000', '1', 1, '1pic2.jpg', '1', 2, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `r_product_attribute`
--

CREATE TABLE IF NOT EXISTS `r_product_attribute` (
  `id_product` int(11) NOT NULL,
  `id_attribute` int(11) NOT NULL,
  `id_language` int(11) NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_product_attribute`
--

INSERT INTO `r_product_attribute` (`id_product`, `id_attribute`, `id_language`, `text`) VALUES
(234, 6, 1, ''),
(234, 6, 2, ''),
(234, 42, 1, ''),
(234, 42, 2, ''),
(240, 79, 1, 'Mandarin Collar'),
(240, 79, 2, 'Mandarin Collar'),
(240, 80, 1, ' 1-POCKET'),
(240, 80, 2, ' 1-POCKET'),
(240, 81, 1, ' Regular'),
(240, 81, 2, ' Regular'),
(240, 82, 1, ' Grey'),
(240, 82, 2, ' Grey'),
(240, 83, 1, ' MACHINE WASH WITH LIKE COLOURS, WARM IRON IF REQUIRED'),
(240, 83, 2, ' MACHINE WASH WITH LIKE COLOURS, WARM IRON IF REQUIRED'),
(240, 84, 1, ' Solid'),
(240, 84, 2, ' Solid'),
(244, 77, 1, ' Cotton'),
(244, 77, 2, ' Cotton'),
(244, 78, 1, ' Full Sleeves'),
(244, 78, 2, ' Full Sleeves'),
(244, 79, 1, 'COLLAR'),
(244, 79, 2, 'COLLAR'),
(244, 81, 1, 'Regular'),
(244, 81, 2, 'Regular'),
(244, 82, 1, 'Purple'),
(244, 82, 2, 'Purple'),
(244, 83, 1, 'Hand Wash Cold Water, Dry Naturally, Do Not Iron Imprint directly, Do not Bleach.'),
(244, 83, 2, 'Hand Wash Cold Water, Dry Naturally, Do Not Iron Imprint directly, Do not Bleach.'),
(244, 84, 1, ' Solid'),
(244, 84, 2, ' Solid');

-- --------------------------------------------------------

--
-- Table structure for table `r_product_category`
--

CREATE TABLE IF NOT EXISTS `r_product_category` (
  `id_product` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_product_category`
--

INSERT INTO `r_product_category` (`id_product`, `id_category`) VALUES
(139, 2),
(190, 2),
(191, 2),
(192, 2),
(193, 46),
(194, 2),
(195, 2),
(196, 2),
(197, 2),
(198, 2),
(199, 2),
(200, 2),
(201, 2),
(202, 2),
(203, 2),
(204, 2),
(205, 2),
(206, 2),
(207, 2),
(208, 2),
(209, 2),
(225, 70),
(226, 70),
(227, 71),
(228, 69),
(229, 74),
(230, 71),
(231, 71),
(232, 71),
(233, 75),
(234, 75),
(235, 76),
(236, 76),
(237, 77),
(238, 77),
(239, 77),
(240, 78),
(241, 69),
(242, 69),
(243, 69),
(244, 78),
(245, 71),
(246, 71),
(247, 71),
(248, 71),
(249, 67);

-- --------------------------------------------------------

--
-- Table structure for table `r_product_description`
--

CREATE TABLE IF NOT EXISTS `r_product_description` (
`id_product` int(11) NOT NULL,
  `id_language` int(11) NOT NULL DEFAULT '1',
  `name` varchar(64) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(500) NOT NULL,
  `description` text,
  `download_label` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_product_description`
--

INSERT INTO `r_product_description` (`id_product`, `id_language`, `name`, `meta_keywords`, `meta_description`, `description`, `download_label`) VALUES
(1, 1, 'Fujifilm Finepix X100S Digital Camera - Black', '', '', '<p>FUJIFILM X100S, the successor to the FUJIFILM X100, inherits the X100&#39;s elegant design and high-performance lens, while evolving further to meet customer&#39;s demands with the introduction of a higher-definition Hybrid Viewfinder and a new sensor and processor.</p>\r\n', ''),
(1, 2, 'Fujifilm Finepix X100S Digital Camera - Black', '', '', '', ''),
(225, 1, 'Apple iphone 6', '', '', '<ul>\r\n	<li>11.93 cm (4.7) Touchscreen</li>\r\n	<li>A8 Chip with 64-bit Architecture and M8 Motion Co-processor</li>\r\n	<li>16 GB Memory</li>\r\n	<li>8 MP iSight Camera and 1.2 MP FaceTime HD Camera</li>\r\n	<li>Wi-Fi Enabled</li>\r\n	<li>Bluetooth Support</li>\r\n	<li>Full HD Recording</li>\r\n	<li>iOS 8</li>\r\n	<li>Pls Note shipping of color variant is subject to availability.</li>\r\n	<li>1 Year Brand Warranty</li>\r\n</ul>\r\n', ''),
(225, 2, 'Apple iphone 6', '', '', '', ''),
(226, 1, 'Apple iPhone 5S(Gold, with 16 GB)', '', '', '<ul>\r\n	<li>10 cm (4) Retina Display</li>\r\n	<li>A7 64 Bit Processor</li>\r\n	<li>16 GB Memory</li>\r\n	<li>8 MP iSight Camera and 1.2 MP FaceTime HD Camera</li>\r\n	<li>Nano SIM</li>\r\n	<li>iOS 7</li>\r\n	<li>Fingerprint Identity Sensor</li>\r\n	<li>WiFi</li>\r\n	<li>3G</li>\r\n	<li>Dual LED</li>\r\n	<li>1 Year Brand Warranty</li>\r\n</ul>\r\n', ''),
(226, 2, 'Apple iPhone 5S(Gold, with 16 GB)', '', '', '', ''),
(227, 1, 'Samsung Galaxy S6', '', '', '<ul>\r\n	<li>4G (LTE) - (Cat 6) 300 Mbps HSDPA</li>\r\n	<li>5.1-inch Super AMOLED Touchscreen</li>\r\n	<li>5 MP Secondary Camera</li>\r\n	<li>16 MP Primary Camera</li>\r\n	<li>2.1 GHz + 1.5 GHz Octa Core Processor</li>\r\n	<li>Android v5 (Lollipop) OS</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', ''),
(227, 2, 'Samsung Galaxy S6', '', '', '<ul>\r\n	<li>4G (LTE) - (Cat 6) 300 Mbps HSDPA</li>\r\n	<li>5.1-inch Super AMOLED Touchscreen</li>\r\n	<li>5 MP Secondary Camera</li>\r\n	<li>16 MP Primary Camera</li>\r\n	<li>2.1 GHz + 1.5 GHz Octa Core Processor</li>\r\n	<li>Android v5 (Lollipop) OS</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', ''),
(228, 1, 'The 3 Mistakes of My Life', '', '', '<p>The 3 Mistakes of My Life traces the lives of three close friends, Govind, Omi and Ishan, in Gujarat. It chronicles the delightful and tragic tale of these young men as they embark on a journey to find success in their lives and careers. Govind has forever cherished a dream of setting up his own business, while Omi and Ishaan have always been relatively laid back in life. Together they start a cricket shop. Instead of focusing on the business, Ishaan aspires to mentor a gifted batsman, Ali. Omi, on the other hand, is not very opportunistic and ambitious and his only aim in life is to be there for his friends and support them in all their endeavors. However, nothing comes easy in life especially when you are stuck in a city which is caught up in chaos and turmoil. To realize their dreams, the boys have to face the worst of the circumstances &ndash; communal riots, massive earthquake, religious politics, and above all they have to bear the brunt of all their mistakes. Will the boys be able to come out triumphant from this messy situation? Three Mistakes of My Life was adapted into a movie called Kai Po Che! which was directed by Abhishek Kapoor.</p>\r\n', ''),
(228, 2, 'The 3 Mistakes of My Life', '', '', '<p>The 3 Mistakes of My Life traces the lives of three close friends, Govind, Omi and Ishan, in Gujarat. It chronicles the delightful and tragic tale of these young men as they embark on a journey to find success in their lives and careers. Govind has forever cherished a dream of setting up his own business, while Omi and Ishaan have always been relatively laid back in life. Together they start a cricket shop. Instead of focusing on the business, Ishaan aspires to mentor a gifted batsman, Ali. Omi, on the other hand, is not very opportunistic and ambitious and his only aim in life is to be there for his friends and support them in all their endeavors. However, nothing comes easy in life especially when you are stuck in a city which is caught up in chaos and turmoil. To realize their dreams, the boys have to face the worst of the circumstances &ndash; communal riots, massive earthquake, religious politics, and above all they have to bear the brunt of all their mistakes. Will the boys be able to come out triumphant from this messy situation? Three Mistakes of My Life was adapted into a movie called Kai Po Che! which was directed by Abhishek Kapoor.</p>\r\n', ''),
(229, 1, 'Blackberry Z3 Black', '', '', '<ul>\r\n	<li>12.70 cm (5) Display</li>\r\n	<li>1.2GHz Dual Core processor</li>\r\n	<li>1.5 GB RAM and 8 GB ROM</li>\r\n	<li>5 MP Rear Camera and 1.1 MP Front</li>\r\n	<li>blackberry v10.2.1 Operating system</li>\r\n	<li>Single sim, Micro-sim</li>\r\n	<li>1 Year Brand Warranty</li>\r\n	<li>SUPC:&nbsp;SDL051657402</li>\r\n</ul>\r\n', ''),
(229, 2, 'Blackberry Z3 Black', '', '', '<ul>\r\n	<li>12.70 cm (5) Display</li>\r\n	<li>1.2GHz Dual Core processor</li>\r\n	<li>1.5 GB RAM and 8 GB ROM</li>\r\n	<li>5 MP Rear Camera and 1.1 MP Front</li>\r\n	<li>blackberry v10.2.1 Operating system</li>\r\n	<li>Single sim, Micro-sim</li>\r\n	<li>1 Year Brand Warranty</li>\r\n	<li>SUPC:&nbsp;SDL051657402</li>\r\n</ul>\r\n', ''),
(230, 1, 'Samsung Galaxy Grand ', '', '', '<ul>\r\n	<li>13.35 cm (5.25) HD Display</li>\r\n	<li>1.2 GHz Quad Processor Qualcomm</li>\r\n	<li>1.5 GB RAM and 16 GB ROM</li>\r\n	<li>2500 mAh Battery</li>\r\n	<li>Dual SIM Support</li>\r\n	<li>1 Year Brand Warranty</li>\r\n	<li>13 MP Rear Camera and 5 MP Front</li>\r\n	<li>Android v4.4(KitKat) Operating System</li>\r\n</ul>\r\n', ''),
(230, 2, 'Samsung Galaxy Grand ', '', '', '<ul>\r\n	<li>13.35 cm (5.25) HD Display</li>\r\n	<li>1.2 GHz Quad Processor Qualcomm</li>\r\n	<li>1.5 GB RAM and 16 GB ROM</li>\r\n	<li>2500 mAh Battery</li>\r\n	<li>Dual SIM Support</li>\r\n	<li>1 Year Brand Warranty</li>\r\n	<li>13 MP Rear Camera and 5 MP Front</li>\r\n	<li>Android v4.4(KitKat) Operating System</li>\r\n</ul>\r\n', ''),
(231, 1, 'Samsung Galaxy Core II', '', '', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Sim : Dual Sim</li>\r\n	<li>Cpu : Quad-core 1.2 GHz</li>\r\n	<li>Primary : 5 Megapixels</li>\r\n	<li>Os Version : Android OS, v4.4.2 (KitKat)</li>\r\n	<li>Ram : 786 MB</li>\r\n	<li>Processor : Quad-core</li>\r\n	<li>Wi-Fi : Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot</li>\r\n	<li>Secondary : VGA</li>\r\n	<li>Fm Radio : Yes</li>\r\n	<li>Battery Type : Li-Ion</li>\r\n</ul>\r\n', ''),
(231, 2, 'Samsung Galaxy Core II', '', '', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Sim : Dual Sim</li>\r\n	<li>Cpu : Quad-core 1.2 GHz</li>\r\n	<li>Primary : 5 Megapixels</li>\r\n	<li>Os Version : Android OS, v4.4.2 (KitKat)</li>\r\n	<li>Ram : 786 MB</li>\r\n	<li>Processor : Quad-core</li>\r\n	<li>Wi-Fi : Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot</li>\r\n	<li>Secondary : VGA</li>\r\n	<li>Fm Radio : Yes</li>\r\n	<li>Battery Type : Li-Ion</li>\r\n</ul>\r\n', ''),
(232, 1, 'Samsung Galaxy E5', '', '', '<ul>\r\n	<li>5 Inches HD Amoled Display</li>\r\n	<li>8 MP Camera</li>\r\n	<li>1.5 GB RAM and 16 GB ROM</li>\r\n	<li>1.2 GHz Quad Core Processor</li>\r\n	<li>Android OS, v4.4.4 (KitKat)</li>\r\n	<li>2400 mAh Battery</li>\r\n	<li>1 year Warranty</li>\r\n</ul>\r\n', ''),
(232, 2, 'Samsung Galaxy E5', '', '', '<ul>\r\n	<li>5 Inches HD Amoled Display</li>\r\n	<li>8 MP Camera</li>\r\n	<li>1.5 GB RAM and 16 GB ROM</li>\r\n	<li>1.2 GHz Quad Core Processor</li>\r\n	<li>Android OS, v4.4.4 (KitKat)</li>\r\n	<li>2400 mAh Battery</li>\r\n	<li>1 year Warranty</li>\r\n</ul>\r\n', ''),
(233, 1, ' Atasi International Nusia Alloy Jewel Set (White) ', '', '', '<p>diamond look necklace with simple yet rich taste</p>\r\n', ''),
(233, 2, ' Atasi International Nusia Alloy Jewel Set (White) ', '', '', '<p>diamond look necklace with simple yet rich taste</p>\r\n', ''),
(234, 1, ' Touchstone Alloy Jewel Set (Multicolor) ', '', '', '', ''),
(234, 2, ' Touchstone Alloy Jewel Set (Multicolor) ', '', '', '', ''),
(235, 1, 'Canon EOS 1200D', '', '', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Free Introductory workshop on photography by Canon</li>\r\n	<li>18 Megapixel</li>\r\n	<li>EF-S 18-55mm ISII Lens Kit</li>\r\n	<li>ISO 100-ISO 6400 Sensitivity</li>\r\n	<li>CMOS Image Sensor</li>\r\n	<li>3 inch LCD Screen</li>\r\n</ul>\r\n', ''),
(235, 2, 'Canon EOS 1200D', '', '', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Free Introductory workshop on photography by Canon</li>\r\n	<li>18 Megapixel</li>\r\n	<li>EF-S 18-55mm ISII Lens Kit</li>\r\n	<li>ISO 100-ISO 6400 Sensitivity</li>\r\n	<li>CMOS Image Sensor</li>\r\n	<li>3 inch LCD Screen</li>\r\n</ul>\r\n', ''),
(236, 1, 'Canon EOS 1200D', '', '', '<ul>\r\n	<li>18 Megapixel</li>\r\n	<li>Body Only</li>\r\n	<li>ISO 100-ISO 6400 Sensitivity</li>\r\n	<li>CMOS Image Sensor</li>\r\n	<li>3 inch LCD Screen</li>\r\n	<li>1/4000 Second to 30 Second Shutter Speed</li>\r\n	<li>Digic 4 Image Processing Engine</li>\r\n	<li>1080p Full HD Recording</li>\r\n</ul>\r\n', ''),
(236, 2, 'Canon EOS 1200D', '', '', '<ul>\r\n	<li>18 Megapixel</li>\r\n	<li>Body Only</li>\r\n	<li>ISO 100-ISO 6400 Sensitivity</li>\r\n	<li>CMOS Image Sensor</li>\r\n	<li>3 inch LCD Screen</li>\r\n	<li>1/4000 Second to 30 Second Shutter Speed</li>\r\n	<li>Digic 4 Image Processing Engine</li>\r\n	<li>1080p Full HD Recording</li>\r\n</ul>\r\n', ''),
(237, 1, 'Nikon Coolpix', '', '', '<ul>\r\n	<li>2 Year Nikon India Warranty</li>\r\n	<li>20.2 Megapixel</li>\r\n	<li>26X Optical Zoom</li>\r\n	<li>3 inch TFT LCD Screen</li>\r\n	<li>ISO 80-1600 Sensitivity</li>\r\n	<li>1/2.3 Inch CCD Image Sensor</li>\r\n	<li>4X Digital Zoom</li>\r\n	<li>Expeed C2 Image Sensor</li>\r\n</ul>\r\n', ''),
(237, 2, 'Nikon Coolpix', '', '', '', ''),
(238, 1, 'Nikon Coolpix', '', '', '<ul>\r\n	<li>2 Year Nikon India Warranty</li>\r\n	<li>16.1 Megapixel</li>\r\n	<li>5X Optical Zoom</li>\r\n	<li>2.7 inch TFT LCD Screen</li>\r\n</ul>\r\n', ''),
(238, 2, 'Nikon Coolpix', '', '', '<ul>\r\n	<li>2 Year Nikon India Warranty</li>\r\n	<li>16.1 Megapixel</li>\r\n	<li>5X Optical Zoom</li>\r\n	<li>2.7 inch TFT LCD Screen</li>\r\n</ul>\r\n', ''),
(239, 1, 'Nikon Coolpix ', '', '', '<ul>\r\n	<li>2 Year Nikon India Warranty</li>\r\n	<li>20.2 Megapixel</li>\r\n	<li>ISO 80-1600 Sensitivity</li>\r\n	<li>1/2.3 Inch CCD Image Sensor</li>\r\n	<li>4X Digital Zoom</li>\r\n	<li>Expeed C2 Image Sensor</li>\r\n	<li>26X Optical Zoom</li>\r\n	<li>3 inch TFT LCD Screen</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n', ''),
(239, 2, 'Nikon Coolpix ', '', '', '<ul>\r\n	<li>2 Year Nikon India Warranty</li>\r\n	<li>20.2 Megapixel</li>\r\n	<li>ISO 80-1600 Sensitivity</li>\r\n	<li>1/2.3 Inch CCD Image Sensor</li>\r\n	<li>4X Digital Zoom</li>\r\n	<li>Expeed C2 Image Sensor</li>\r\n	<li>26X Optical Zoom</li>\r\n	<li>3 inch TFT LCD Screen</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n', ''),
(240, 1, 'Phosphorus Slate Grey Colour Shirt', 'Phosphorus Slate Grey Colour Shirt', 'Phosphorus Slate Grey Colour Shirt', '<p>Spruce up your cool and trendy look wearing this grey coloured shirt from the house of Phosphorus. Made of cotton, this casual shirt ensures maximum breathability all day long. Featuring regular fit, this shirt will look perfect when paired with beige coloured chinos.</p>\r\n', ''),
(240, 2, 'Phosphorus Slate Grey Colour Shirt', 'Phosphorus Slate Grey Colour Shirt', 'Phosphorus Slate Grey Colour Shirt', '<p>Spruce up your cool and trendy look wearing this grey coloured shirt from the house of Phosphorus. Made of cotton, this casual shirt ensures maximum breathability all day long. Featuring regular fit, this shirt will look perfect when paired with beige coloured chinos.</p>\r\n', ''),
(241, 1, 'Playing It My Way', '', '', '', ''),
(241, 2, 'Playing It My Way', '', '', '', ''),
(242, 1, 'Long Walk to Freedom', '', '', '<p>Nelson Mandela is one of the great moral and political leaders of our time: an international hero whose lifelong dedication to the fight against racial oppression in South Africa won him the Nobel Peace Prize and the presidency of his country.&nbsp;</p>\r\n', ''),
(242, 2, 'Long Walk to Freedom', '', '', '<p>Nelson Mandela is one of the great moral and political leaders of our time: an international hero whose lifelong dedication to the fight against racial oppression in South Africa won him the Nobel Peace Prize and the presidency of his country.&nbsp;</p>\r\n', ''),
(243, 1, 'Gandhi An Autobiography', '', '', '<p>Mohandas K. Gandhi is one of the most inspiring figures of our time. In his classic autobiography he recounts the story of his life and how he developed his concept of active nonviolent resistance, which propelled the Indian struggle for independence and countless other nonviolent struggles of the twentieth century.</p>\r\n', ''),
(243, 2, 'Gandhi An Autobiography', '', '', '<p>Mohandas K. Gandhi is one of the most inspiring figures of our time. In his classic autobiography he recounts the story of his life and how he developed his concept of active nonviolent resistance, which propelled the Indian struggle for independence and countless other nonviolent struggles of the twentieth century.</p>\r\n', ''),
(244, 1, 'Taanz Solid Purple Casual Shirt ', '', '', '<p>Strut your stuff as you adorn this casual shirt, in purple coloured, from the house of Taanz. With a comfortable stitch and sharp design, this regular-fit casual shirt is fashioned using cotton that makes it a delight for skin. For a quintessential utilitarian look, club this casual shirt with vintage jeans and leather moccasins.</p>\r\n', ''),
(244, 2, 'Taanz Solid Purple Casual Shirt ', '', '', '<p>Strut your stuff as you adorn this casual shirt, in purple coloured, from the house of Taanz. With a comfortable stitch and sharp design, this regular-fit casual shirt is fashioned using cotton that makes it a delight for skin. For a quintessential utilitarian look, club this casual shirt with vintage jeans and leather moccasins.</p>\r\n', ''),
(245, 1, 'Galaxy S5 ', '', '', '<p>Multi-SIM :Single-SIM<br />\r\nSIM size : Micro-SIM (3FF)<br />\r\ncamera 16 px<br />\r\nInfra :2G GSM, 3G WCDMA, 4G LTE FDD, 4G LTE</p>\r\n', ''),
(245, 2, 'Galaxy S5 ', '', '', '<p>Multi-SIM :Single-SIM<br />\r\nSIM size : Micro-SIM (3FF)<br />\r\ncamara 16 px<br />\r\nInfra :2G GSM, 3G WCDMA, 4G LTE FDD, 4G LTE</p>\r\n', ''),
(246, 1, 'Galaxy Grand Prime', '', '', '', ''),
(246, 2, 'Galaxy Grand Prime', '', '', '', ''),
(247, 1, 'Galaxy S Duos 3', '', '', '<p>&bull; Android Kit Kat 4.4.2&nbsp;<br />\r\n&bull; Updated Touch-wiz Essence UX&nbsp;<br />\r\n&bull; 14 Regional Languages&nbsp;<br />\r\n&bull; 1-Touch Multi-Tasking</p>\r\n', ''),
(247, 2, 'Galaxy S Duos 3', '', '', '<p>&bull; Android Kit Kat 4.4.2&nbsp;<br />\r\n&bull; Updated Touch-wiz Essence UX&nbsp;<br />\r\n&bull; 14 Regional Languages&nbsp;<br />\r\n&bull; 1-Touch Multi-Tasking</p>\r\n', ''),
(248, 1, 'Galaxy Core Prime', '', '', '<p>2G GSM : GSM850, GSM900, DCS1800, PCS1900</p>\r\n\r\n<p>SIM size : Micro-SIM (3FF)</p>\r\n\r\n<p>Bluetooth Profiles : A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP</p>\r\n', ''),
(248, 2, 'Galaxy Core Prime', '', '', '<p>2G GSM : GSM850, GSM900, DCS1800, PCS1900</p>\r\n\r\n<p>SIM size : Micro-SIM (3FF)</p>\r\n\r\n<p>Bluetooth Profiles : A2DP, AVRCP, DI, HFP, HID, HOGP, HSP, MAP, OPP, PAN, PBAP</p>\r\n', ''),
(249, 1, 'Galaxy Ace NXT', '', '', '', ''),
(249, 2, 'Galaxy Ace NXT', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `r_product_group`
--

CREATE TABLE IF NOT EXISTS `r_product_group` (
`id_product_group` int(11) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `display_in_listing` tinyint(1) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `set_title` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_product_group`
--

INSERT INTO `r_product_group` (`id_product_group`, `date_created`, `display_in_listing`, `date_modified`, `set_title`) VALUES
(1, '2014-07-17 14:51:49', 1, '2014-12-02 12:50:50', 'Similar Products'),
(4, '2014-10-17 16:11:04', 0, '2014-12-02 11:35:28', 'Electronic Products'),
(5, '2014-12-02 14:12:08', 0, '2014-12-02 14:12:08', 'You May Like These');

-- --------------------------------------------------------

--
-- Table structure for table `r_product_group_description`
--

CREATE TABLE IF NOT EXISTS `r_product_group_description` (
`id_product_group_description` int(11) NOT NULL,
  `id_product_group` int(11) NOT NULL,
  `lable` varchar(255) NOT NULL,
  `id_language` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_product_group_description`
--

INSERT INTO `r_product_group_description` (`id_product_group_description`, `id_product_group`, `lable`, `id_language`) VALUES
(1, 1, 'Similar Products', 1),
(2, 1, 'Similar Products', 2),
(7, 4, 'Electronics', 1),
(8, 4, 'Electronics', 2),
(9, 5, 'You may like these', 1),
(10, 5, 'You may like these', 2);

-- --------------------------------------------------------

--
-- Table structure for table `r_product_group_list`
--

CREATE TABLE IF NOT EXISTS `r_product_group_list` (
  `id_product_group` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_product_group_type`
--

CREATE TABLE IF NOT EXISTS `r_product_group_type` (
`id_product_group_type` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_product_group_type`
--

INSERT INTO `r_product_group_type` (`id_product_group_type`, `name`) VALUES
(1, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `r_product_image`
--

CREATE TABLE IF NOT EXISTS `r_product_image` (
`id_product_image` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_product_option_value` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `htmlcontent` text,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1061 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_product_image`
--

INSERT INTO `r_product_image` (`id_product_image`, `id_product`, `id_product_option_value`, `image`, `htmlcontent`, `sort_order`) VALUES
(1022, 225, 0, 'product_multi_Apple-iphone-6-225_0_1427714748.jpeg', NULL, 2),
(1024, 226, 0, 'product_multi_Apple-iPhone-5S-Gold--with-16-GB--226_0_1427715070.jpeg', NULL, 3),
(1025, 227, 0, 'product_multi_Samsung-Galaxy-S6-227_0_1427715792.jpg', NULL, 2),
(1026, 229, 0, 'product_multi_Blackberry-Z3-Black-229_0_1427716994.jpg', NULL, 0),
(1030, 233, 0, 'product_multi_Atasi-International-Nusia-Alloy-Jewel-Set--White--233_0_1427718400.jpeg', NULL, 0),
(1035, 234, 0, 'product_multi_Touchstone-Alloy-Jewel-Set--Multicolor--234_2_1427718694.jpeg', NULL, 0),
(1036, 234, 0, 'product_multi_Touchstone-Alloy-Jewel-Set--Multicolor--234_3_1427718694.jpeg', NULL, 0),
(1038, 239, 0, 'product_multi_Nikon-Coolpix-239_0_1427719424.jpg', NULL, 0),
(1039, 238, 0, 'product_multi_Nikon-Coolpix-238_0_1427719248.jpg', NULL, 0),
(1049, 240, 0, 'product_multi_Phosphorus-Slate-Grey-Colour-Shirt-240_2_1427719613.jpg', NULL, 0),
(1050, 240, 0, 'product_multi_Phosphorus-Slate-Grey-Colour-Shirt-240_3_1427719613.jpg', NULL, 1),
(1051, 246, 0, 'product_multi_Galaxy-Grand-Prime-246_0_1427720704.jpg', NULL, 0),
(1052, 245, 0, 'product_multi_Galaxy-S5-245_0_1427720583.jpg', NULL, 0),
(1053, 244, 0, 'product_multi_Taanz-Solid-Purple-Casual-Shirt-244_0_1427720240.jpg', NULL, 0),
(1054, 244, 0, 'product_multi_Taanz-Solid-Purple-Casual-Shirt-244_1_1427720240.jpg', NULL, 1),
(1055, 244, 0, 'product_multi_Taanz-Solid-Purple-Casual-Shirt-244_2_1427720240.jpg', NULL, 2),
(1056, 247, 0, 'product_multi_Galaxy-S-Duos-3-247_0_1427720850.jpg', NULL, 0),
(1057, 248, 0, 'product_multi_Galaxy-Core-Prime-248_0_1427721015.jpg', NULL, 0),
(1058, 231, 0, 'product_multi_Samsung-Galaxy-Core-II-231_0_1427717412.jpg', NULL, 0),
(1059, 232, 0, 'product_multi_Samsung-Galaxy-E5-232_0_1427717598.jpg', NULL, 0),
(1060, 230, 0, 'product_multi_Samsung-Galaxy-Grand-230_0_1427717234.jpg', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `r_product_option`
--

CREATE TABLE IF NOT EXISTS `r_product_option` (
`id_product_option` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_option` int(11) NOT NULL,
  `option_value` text COLLATE utf8_bin NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `r_product_option_value`
--

CREATE TABLE IF NOT EXISTS `r_product_option_value` (
`id_product_option_value` int(11) NOT NULL,
  `id_product_option` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_option` int(11) NOT NULL,
  `id_option_value` int(11) NOT NULL,
  `id_base_option_value` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) COLLATE utf8_bin NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) COLLATE utf8_bin NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `r_product_review`
--

CREATE TABLE IF NOT EXISTS `r_product_review` (
`id_review` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `customer_name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `read` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_product_review`
--

INSERT INTO `r_product_review` (`id_review`, `id_product`, `id_customer`, `customer_name`, `text`, `rating`, `date_created`, `date_modified`, `status`, `read`) VALUES
(4, 140, NULL, 'fareed', 'fareed here', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(5, 140, NULL, 'aisha', 'eee', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(7, 140, NULL, 'ayeesha', 'nice one................', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(8, 140, NULL, 'priyanka', 'tasty.........', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(9, 140, NULL, 'raghavendra', 'hi', 5, '2014-07-02 08:23:10', '2014-07-02 08:23:10', 1, 0),
(11, 140, NULL, 'Ayeesha', 'nice product...........', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(14, 140, NULL, '767677567', '76567657', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(16, 140, NULL, 'hari', 'good', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(17, 140, NULL, 'Fareed', 'Nice Collection', 5, '2014-07-10 08:11:10', '2014-07-10 08:11:10', 1, 0),
(20, 0, NULL, 'aisha', 'awesome', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(21, 0, NULL, 'ayeesha', 'awesome', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(22, 0, NULL, 'testing', 'hiiiiiiiiiiiiiiiii', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(23, 0, NULL, 'aisha', 'testing', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(26, 216, NULL, 'aisha', 'awesome', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(27, 0, NULL, 'hfdhg', 'trrrghghg', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(28, 140, NULL, 'Rahul Agarwal', 'Nice Product!!', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(29, 140, NULL, 'suresh', 'this is nice product', 4, '2014-12-21 19:17:32', '2014-12-21 19:17:32', 1, 0),
(30, 140, NULL, 'suresh', 'nice product.planning to buy', 5, '2014-12-22 01:55:06', '2014-12-22 01:55:06', 0, 0),
(31, 224, NULL, 'ayeesha', 'nice......', 4, '2014-12-31 16:17:12', '2014-12-31 16:17:12', 1, 0),
(32, 224, NULL, 'kaviha', 'nice..............', 4, '2015-01-05 12:55:32', '2015-01-05 12:55:32', 1, 0),
(33, 223, NULL, 'ggfgfdg', 'fdg gfd df hgfgfdh hfgfghgf', 4, '2015-01-08 14:52:36', '2015-01-08 14:52:36', 0, 0),
(34, 151, NULL, 'regrt', 'review', 5, '2015-01-08 16:27:38', '2015-01-08 16:27:38', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `r_product_reward`
--

CREATE TABLE IF NOT EXISTS `r_product_reward` (
`id_product_reward` int(11) NOT NULL,
  `id_product` int(11) NOT NULL DEFAULT '0',
  `id_customer_group` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `r_product_special`
--

CREATE TABLE IF NOT EXISTS `r_product_special` (
`id_product_special` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_customer_group` int(11) NOT NULL,
  `priority` int(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_region`
--

CREATE TABLE IF NOT EXISTS `r_region` (
`id_region` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_region`
--

INSERT INTO `r_region` (`id_region`, `name`, `description`, `date_created`, `date_modified`) VALUES
(1, 'United States Metro Cities For T', 'All the metro cities in US will come under this category', '2014-04-30 00:00:00', '2014-05-30 16:47:31'),
(2, 'India Metro Cities For Tax', 'All metros in india comes under this category', '2014-04-30 00:00:00', '0000-00-00 00:00:00'),
(12, 'Regions in South India', 'Regions in South India', '2014-06-25 18:03:24', '2014-06-25 18:13:30'),
(13, 'test', 'test', '2014-12-03 14:34:33', '2014-12-03 14:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `r_region_list`
--

CREATE TABLE IF NOT EXISTS `r_region_list` (
`id_region_list` int(11) NOT NULL,
  `id_region` int(11) DEFAULT NULL,
  `id_country` int(11) DEFAULT NULL,
  `id_state` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_region_list`
--

INSERT INTO `r_region_list` (`id_region_list`, `id_region`, `id_country`, `id_state`) VALUES
(20, 1, 18, 320),
(21, 1, 18, 321),
(22, 1, 99, 1476),
(23, 1, 99, 1477),
(24, 1, 222, 3951),
(25, 1, 222, 3952),
(71, 12, 99, 1476),
(72, 12, 99, 1489),
(73, 12, 99, 1490),
(74, 12, 99, 1491),
(75, 12, 99, 1499),
(76, 12, 99, 1503),
(77, 12, 99, 4055),
(81, 13, 99, 1476);

-- --------------------------------------------------------

--
-- Table structure for table `r_search_keyword`
--

CREATE TABLE IF NOT EXISTS `r_search_keyword` (
`id_search_keyword` int(11) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_search_keyword`
--

INSERT INTO `r_search_keyword` (`id_search_keyword`, `keyword`, `hits`) VALUES
(1, 'shoes', 12),
(2, 'blue shirt', 12),
(3, 'shirt', 3),
(4, 'blue', 1),
(5, 'samsung', 22);

-- --------------------------------------------------------

--
-- Table structure for table `r_state`
--

CREATE TABLE IF NOT EXISTS `r_state` (
`id_state` int(11) NOT NULL,
  `id_country` int(11) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4056 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_state`
--

INSERT INTO `r_state` (`id_state`, `id_country`, `name`, `code`, `status`, `date_modified`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1, '0000-00-00 00:00:00'),
(2, 1, 'Badghis', 'BDG', 1, '0000-00-00 00:00:00'),
(3, 1, 'Baghlan', 'BGL', 0, '0000-00-00 00:00:00'),
(4, 1, 'Balkh', 'BAL', 1, '0000-00-00 00:00:00'),
(5, 1, 'Bamian', 'BAM', 1, '0000-00-00 00:00:00'),
(6, 1, 'Farah', 'FRA', 1, '0000-00-00 00:00:00'),
(7, 1, 'Faryab', 'FYB', 1, '0000-00-00 00:00:00'),
(8, 1, 'Ghazni', 'GHA', 1, '0000-00-00 00:00:00'),
(9, 1, 'Ghowr', 'GHO', 1, '0000-00-00 00:00:00'),
(10, 1, 'Helmand', 'HEL', 1, '0000-00-00 00:00:00'),
(11, 1, 'Herat', 'HER', 1, '0000-00-00 00:00:00'),
(12, 1, 'Jowzjan', 'JOW', 1, '0000-00-00 00:00:00'),
(13, 1, 'Kabul', 'KAB', 1, '0000-00-00 00:00:00'),
(14, 1, 'Kandahar', 'KAN', 1, '0000-00-00 00:00:00'),
(15, 1, 'Kapisa', 'KAP', 1, '0000-00-00 00:00:00'),
(16, 1, 'Khost', 'KHO', 1, '0000-00-00 00:00:00'),
(17, 1, 'Konar', 'KNR', 1, '0000-00-00 00:00:00'),
(18, 1, 'Kondoz', 'KDZ', 1, '0000-00-00 00:00:00'),
(19, 1, 'Laghman', 'LAG', 1, '0000-00-00 00:00:00'),
(20, 1, 'Lowgar', 'LOW', 1, '0000-00-00 00:00:00'),
(21, 1, 'Nangrahar', 'NAN', 1, '0000-00-00 00:00:00'),
(22, 1, 'Nimruz', 'NIM', 1, '0000-00-00 00:00:00'),
(23, 1, 'Nurestan', 'NUR', 1, '0000-00-00 00:00:00'),
(24, 1, 'Oruzgan', 'ORU', 1, '0000-00-00 00:00:00'),
(25, 1, 'Paktia', 'PIA', 1, '0000-00-00 00:00:00'),
(26, 1, 'Paktika', 'PKA', 1, '0000-00-00 00:00:00'),
(27, 1, 'Parwan', 'PAR', 1, '0000-00-00 00:00:00'),
(28, 1, 'Samangan', 'SAM', 1, '0000-00-00 00:00:00'),
(29, 1, 'Sar-e Pol', 'SAR', 1, '0000-00-00 00:00:00'),
(30, 1, 'Takhar', 'TAK', 1, '0000-00-00 00:00:00'),
(31, 1, 'Wardak', 'WAR', 1, '0000-00-00 00:00:00'),
(32, 1, 'Zabol', 'ZAB', 1, '0000-00-00 00:00:00'),
(33, 2, 'Berat', 'BR', 1, '0000-00-00 00:00:00'),
(34, 2, 'Bulqize', 'BU', 1, '0000-00-00 00:00:00'),
(35, 2, 'Delvine', 'DL', 1, '0000-00-00 00:00:00'),
(36, 2, 'Devoll', 'DV', 1, '0000-00-00 00:00:00'),
(37, 2, 'Diber', 'DI', 1, '0000-00-00 00:00:00'),
(38, 2, 'Durres', 'DR', 1, '0000-00-00 00:00:00'),
(39, 2, 'Elbasan', 'EL', 1, '0000-00-00 00:00:00'),
(40, 2, 'Kolonje', 'ER', 1, '0000-00-00 00:00:00'),
(41, 2, 'Fier', 'FR', 1, '0000-00-00 00:00:00'),
(42, 2, 'Gjirokaster', 'GJ', 1, '0000-00-00 00:00:00'),
(43, 2, 'Gramsh', 'GR', 1, '0000-00-00 00:00:00'),
(44, 2, 'Has', 'HA', 1, '0000-00-00 00:00:00'),
(45, 2, 'Kavaje', 'KA', 1, '0000-00-00 00:00:00'),
(46, 2, 'Kurbin', 'KB', 1, '0000-00-00 00:00:00'),
(47, 2, 'Kucove', 'KC', 1, '0000-00-00 00:00:00'),
(48, 2, 'Korce', 'KO', 1, '0000-00-00 00:00:00'),
(49, 2, 'Kruje', 'KR', 1, '0000-00-00 00:00:00'),
(50, 2, 'Kukes', 'KU', 1, '0000-00-00 00:00:00'),
(51, 2, 'Librazhd', 'LB', 1, '0000-00-00 00:00:00'),
(52, 2, 'Lezhe', 'LE', 1, '0000-00-00 00:00:00'),
(53, 2, 'Lushnje', 'LU', 1, '0000-00-00 00:00:00'),
(54, 2, 'Malesi e Madhe', 'MM', 1, '0000-00-00 00:00:00'),
(55, 2, 'Mallakaster', 'MK', 1, '0000-00-00 00:00:00'),
(56, 2, 'Mat', 'MT', 1, '0000-00-00 00:00:00'),
(57, 2, 'Mirdite', 'MR', 1, '0000-00-00 00:00:00'),
(58, 2, 'Peqin', 'PQ', 1, '0000-00-00 00:00:00'),
(59, 2, 'Permet', 'PR', 1, '0000-00-00 00:00:00'),
(60, 2, 'Pogradec', 'PG', 1, '0000-00-00 00:00:00'),
(61, 2, 'Puke', 'PU', 1, '0000-00-00 00:00:00'),
(62, 2, 'Shkoder', 'SH', 1, '0000-00-00 00:00:00'),
(63, 2, 'Skrapar', 'SK', 1, '0000-00-00 00:00:00'),
(64, 2, 'Sarande', 'SR', 1, '0000-00-00 00:00:00'),
(65, 2, 'Tepelene', 'TE', 1, '0000-00-00 00:00:00'),
(66, 2, 'Tropoje', 'TP', 1, '0000-00-00 00:00:00'),
(67, 2, 'Tirane', 'TR', 1, '0000-00-00 00:00:00'),
(68, 2, 'Vlore', 'VL', 1, '0000-00-00 00:00:00'),
(69, 3, 'Adrar', 'ADR', 1, '0000-00-00 00:00:00'),
(70, 3, 'Ain Defla', 'ADE', 1, '0000-00-00 00:00:00'),
(71, 3, 'Ain Temouchent', 'ATE', 1, '0000-00-00 00:00:00'),
(72, 3, 'Alger', 'ALG', 1, '0000-00-00 00:00:00'),
(73, 3, 'Annaba', 'ANN', 1, '0000-00-00 00:00:00'),
(74, 3, 'Batna', 'BAT', 1, '0000-00-00 00:00:00'),
(75, 3, 'Bechar', 'BEC', 1, '0000-00-00 00:00:00'),
(76, 3, 'Bejaia', 'BEJ', 1, '0000-00-00 00:00:00'),
(77, 3, 'Biskra', 'BIS', 1, '0000-00-00 00:00:00'),
(78, 3, 'Blida', 'BLI', 1, '0000-00-00 00:00:00'),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1, '0000-00-00 00:00:00'),
(80, 3, 'Bouira', 'BOA', 1, '0000-00-00 00:00:00'),
(81, 3, 'Boumerdes', 'BMD', 1, '0000-00-00 00:00:00'),
(82, 3, 'Chlef', 'CHL', 1, '0000-00-00 00:00:00'),
(83, 3, 'Constantine', 'CON', 1, '0000-00-00 00:00:00'),
(84, 3, 'Djelfa', 'DJE', 1, '0000-00-00 00:00:00'),
(85, 3, 'El Bayadh', 'EBA', 1, '0000-00-00 00:00:00'),
(86, 3, 'El Oued', 'EOU', 1, '0000-00-00 00:00:00'),
(87, 3, 'El Tarf', 'ETA', 1, '0000-00-00 00:00:00'),
(88, 3, 'Ghardaia', 'GHA', 1, '0000-00-00 00:00:00'),
(89, 3, 'Guelma', 'GUE', 1, '0000-00-00 00:00:00'),
(90, 3, 'Illizi', 'ILL', 1, '0000-00-00 00:00:00'),
(91, 3, 'Jijel', 'JIJ', 1, '0000-00-00 00:00:00'),
(92, 3, 'Khenchela', 'KHE', 1, '0000-00-00 00:00:00'),
(93, 3, 'Laghouat', 'LAG', 1, '0000-00-00 00:00:00'),
(94, 3, 'Muaskar', 'MUA', 1, '0000-00-00 00:00:00'),
(95, 3, 'Medea', 'MED', 1, '0000-00-00 00:00:00'),
(96, 3, 'Mila', 'MIL', 1, '0000-00-00 00:00:00'),
(97, 3, 'Mostaganem', 'MOS', 1, '0000-00-00 00:00:00'),
(98, 3, 'M''Sila', 'MSI', 1, '0000-00-00 00:00:00'),
(99, 3, 'Naama', 'NAA', 1, '0000-00-00 00:00:00'),
(100, 3, 'Oran', 'ORA', 1, '0000-00-00 00:00:00'),
(101, 3, 'Ouargla', 'OUA', 1, '0000-00-00 00:00:00'),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1, '0000-00-00 00:00:00'),
(103, 3, 'Relizane', 'REL', 1, '0000-00-00 00:00:00'),
(104, 3, 'Saida', 'SAI', 1, '0000-00-00 00:00:00'),
(105, 3, 'Setif', 'SET', 1, '0000-00-00 00:00:00'),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1, '0000-00-00 00:00:00'),
(107, 3, 'Skikda', 'SKI', 1, '0000-00-00 00:00:00'),
(108, 3, 'Souk Ahras', 'SAH', 1, '0000-00-00 00:00:00'),
(109, 3, 'Tamanghasset', 'TAM', 1, '0000-00-00 00:00:00'),
(110, 3, 'Tebessa', 'TEB', 1, '0000-00-00 00:00:00'),
(111, 3, 'Tiaret', 'TIA', 1, '0000-00-00 00:00:00'),
(112, 3, 'Tindouf', 'TIN', 1, '0000-00-00 00:00:00'),
(113, 3, 'Tipaza', 'TIP', 1, '0000-00-00 00:00:00'),
(114, 3, 'Tissemsilt', 'TIS', 1, '0000-00-00 00:00:00'),
(115, 3, 'Tizi Ouzou', 'TOU', 1, '0000-00-00 00:00:00'),
(116, 3, 'Tlemcen', 'TLE', 1, '0000-00-00 00:00:00'),
(117, 4, 'Eastern', 'E', 1, '0000-00-00 00:00:00'),
(118, 4, 'Manu''a', 'M', 1, '0000-00-00 00:00:00'),
(119, 4, 'Rose Island', 'R', 1, '0000-00-00 00:00:00'),
(120, 4, 'Swains Island', 'S', 1, '0000-00-00 00:00:00'),
(121, 4, 'Western', 'W', 1, '0000-00-00 00:00:00'),
(122, 5, 'Andorra la Vella', 'ALV', 1, '0000-00-00 00:00:00'),
(123, 5, 'Canillo', 'CAN', 1, '0000-00-00 00:00:00'),
(124, 5, 'Encamp', 'ENC', 1, '0000-00-00 00:00:00'),
(125, 5, 'Escaldes-Engordany', 'ESE', 1, '0000-00-00 00:00:00'),
(126, 5, 'La Massana', 'LMA', 1, '0000-00-00 00:00:00'),
(127, 5, 'Ordino', 'ORD', 1, '0000-00-00 00:00:00'),
(128, 5, 'Sant Julia de Loria', 'SJL', 1, '0000-00-00 00:00:00'),
(129, 6, 'Bengo', 'BGO', 1, '0000-00-00 00:00:00'),
(130, 6, 'Benguela', 'BGU', 1, '0000-00-00 00:00:00'),
(131, 6, 'Bie', 'BIE', 1, '0000-00-00 00:00:00'),
(132, 6, 'Cabinda', 'CAB', 1, '0000-00-00 00:00:00'),
(133, 6, 'Cuando-Cubango', 'CCU', 1, '0000-00-00 00:00:00'),
(134, 6, 'Cuanza Norte', 'CNO', 1, '0000-00-00 00:00:00'),
(135, 6, 'Cuanza Sul', 'CUS', 1, '0000-00-00 00:00:00'),
(136, 6, 'Cunene', 'CNN', 1, '0000-00-00 00:00:00'),
(137, 6, 'Huambo', 'HUA', 1, '0000-00-00 00:00:00'),
(138, 6, 'Huila', 'HUI', 1, '0000-00-00 00:00:00'),
(139, 6, 'Luanda', 'LUA', 1, '0000-00-00 00:00:00'),
(140, 6, 'Lunda Norte', 'LNO', 1, '0000-00-00 00:00:00'),
(141, 6, 'Lunda Sul', 'LSU', 1, '0000-00-00 00:00:00'),
(142, 6, 'Malange', 'MAL', 1, '0000-00-00 00:00:00'),
(143, 6, 'Moxico', 'MOX', 1, '0000-00-00 00:00:00'),
(144, 6, 'Namibe', 'NAM', 1, '0000-00-00 00:00:00'),
(145, 6, 'Uige', 'UIG', 1, '0000-00-00 00:00:00'),
(146, 6, 'Zaire', 'ZAI', 1, '0000-00-00 00:00:00'),
(147, 9, 'Saint George', 'ASG', 1, '0000-00-00 00:00:00'),
(148, 9, 'Saint John', 'ASJ', 1, '0000-00-00 00:00:00'),
(149, 9, 'Saint Mary', 'ASM', 1, '0000-00-00 00:00:00'),
(150, 9, 'Saint Paul', 'ASL', 1, '0000-00-00 00:00:00'),
(151, 9, 'Saint Peter', 'ASR', 1, '0000-00-00 00:00:00'),
(152, 9, 'Saint Philip', 'ASH', 1, '0000-00-00 00:00:00'),
(153, 9, 'Barbuda', 'BAR', 1, '0000-00-00 00:00:00'),
(154, 9, 'Redonda', 'RED', 1, '0000-00-00 00:00:00'),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1, '0000-00-00 00:00:00'),
(156, 10, 'Buenos Aires', 'BA', 1, '0000-00-00 00:00:00'),
(157, 10, 'Catamarca', 'CA', 1, '0000-00-00 00:00:00'),
(158, 10, 'Chaco', 'CH', 1, '0000-00-00 00:00:00'),
(159, 10, 'Chubut', 'CU', 1, '0000-00-00 00:00:00'),
(160, 10, 'Cordoba', 'CO', 1, '0000-00-00 00:00:00'),
(161, 10, 'Corrientes', 'CR', 1, '0000-00-00 00:00:00'),
(162, 10, 'Distrito Federal', 'DF', 1, '0000-00-00 00:00:00'),
(163, 10, 'Entre Rios', 'ER', 1, '0000-00-00 00:00:00'),
(164, 10, 'Formosa', 'FO', 1, '0000-00-00 00:00:00'),
(165, 10, 'Jujuy', 'JU', 1, '0000-00-00 00:00:00'),
(166, 10, 'La Pampa', 'LP', 1, '0000-00-00 00:00:00'),
(167, 10, 'La Rioja', 'LR', 1, '0000-00-00 00:00:00'),
(168, 10, 'Mendoza', 'ME', 1, '0000-00-00 00:00:00'),
(169, 10, 'Misiones', 'MI', 1, '0000-00-00 00:00:00'),
(170, 10, 'Neuquen', 'NE', 1, '0000-00-00 00:00:00'),
(171, 10, 'Rio Negro', 'RN', 1, '0000-00-00 00:00:00'),
(172, 10, 'Salta', 'SA', 1, '0000-00-00 00:00:00'),
(173, 10, 'San Juan', 'SJ', 1, '0000-00-00 00:00:00'),
(174, 10, 'San Luis', 'SL', 1, '0000-00-00 00:00:00'),
(175, 10, 'Santa Cruz', 'SC', 1, '0000-00-00 00:00:00'),
(176, 10, 'Santa Fe', 'SF', 1, '0000-00-00 00:00:00'),
(177, 10, 'Santiago del Estero', 'SD', 1, '0000-00-00 00:00:00'),
(178, 10, 'Tierra del Fuego', 'TF', 1, '0000-00-00 00:00:00'),
(179, 10, 'Tucuman', 'TU', 1, '0000-00-00 00:00:00'),
(180, 11, 'Aragatsotn', 'AGT', 1, '0000-00-00 00:00:00'),
(181, 11, 'Ararat', 'ARR', 1, '0000-00-00 00:00:00'),
(182, 11, 'Armavir', 'ARM', 1, '0000-00-00 00:00:00'),
(183, 11, 'Geghark''unik''', 'GEG', 1, '0000-00-00 00:00:00'),
(184, 11, 'Kotayk''', 'KOT', 1, '0000-00-00 00:00:00'),
(185, 11, 'Lorri', 'LOR', 1, '0000-00-00 00:00:00'),
(186, 11, 'Shirak', 'SHI', 1, '0000-00-00 00:00:00'),
(187, 11, 'Syunik''', 'SYU', 1, '0000-00-00 00:00:00'),
(188, 11, 'Tavush', 'TAV', 1, '0000-00-00 00:00:00'),
(189, 11, 'Vayots'' Dzor', 'VAY', 1, '0000-00-00 00:00:00'),
(190, 11, 'Yerevan', 'YER', 1, '0000-00-00 00:00:00'),
(191, 13, 'Australian Capital Territory', 'ACT', 1, '0000-00-00 00:00:00'),
(192, 13, 'New South Wales', 'NSW', 1, '0000-00-00 00:00:00'),
(193, 13, 'Northern Territory', 'NT', 1, '0000-00-00 00:00:00'),
(194, 13, 'Queensland', 'QLD', 1, '0000-00-00 00:00:00'),
(195, 13, 'South Australia', 'SA', 1, '0000-00-00 00:00:00'),
(196, 13, 'Tasmania', 'TAS', 1, '0000-00-00 00:00:00'),
(197, 13, 'Victoria', 'VIC', 1, '0000-00-00 00:00:00'),
(198, 13, 'Western Australia', 'WA', 1, '0000-00-00 00:00:00'),
(199, 14, 'Burgenland', 'BUR', 1, '0000-00-00 00:00:00'),
(200, 14, 'Kärnten', 'KAR', 1, '0000-00-00 00:00:00'),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1, '0000-00-00 00:00:00'),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1, '0000-00-00 00:00:00'),
(203, 14, 'Salzburg', 'SAL', 1, '0000-00-00 00:00:00'),
(204, 14, 'Steiermark', 'STE', 1, '0000-00-00 00:00:00'),
(205, 14, 'Tirol', 'TIR', 1, '0000-00-00 00:00:00'),
(206, 14, 'Vorarlberg', 'VOR', 1, '0000-00-00 00:00:00'),
(207, 14, 'Wien', 'WIE', 1, '0000-00-00 00:00:00'),
(208, 15, 'Ali Bayramli', 'AB', 1, '0000-00-00 00:00:00'),
(209, 15, 'Abseron', 'ABS', 1, '0000-00-00 00:00:00'),
(210, 15, 'AgcabAdi', 'AGC', 1, '0000-00-00 00:00:00'),
(211, 15, 'Agdam', 'AGM', 1, '0000-00-00 00:00:00'),
(212, 15, 'Agdas', 'AGS', 1, '0000-00-00 00:00:00'),
(213, 15, 'Agstafa', 'AGA', 1, '0000-00-00 00:00:00'),
(214, 15, 'Agsu', 'AGU', 1, '0000-00-00 00:00:00'),
(215, 15, 'Astara', 'AST', 1, '0000-00-00 00:00:00'),
(216, 15, 'Baki', 'BA', 1, '0000-00-00 00:00:00'),
(217, 15, 'BabAk', 'BAB', 1, '0000-00-00 00:00:00'),
(218, 15, 'BalakAn', 'BAL', 1, '0000-00-00 00:00:00'),
(219, 15, 'BArdA', 'BAR', 1, '0000-00-00 00:00:00'),
(220, 15, 'Beylaqan', 'BEY', 1, '0000-00-00 00:00:00'),
(221, 15, 'Bilasuvar', 'BIL', 1, '0000-00-00 00:00:00'),
(222, 15, 'Cabrayil', 'CAB', 1, '0000-00-00 00:00:00'),
(223, 15, 'Calilabab', 'CAL', 1, '0000-00-00 00:00:00'),
(224, 15, 'Culfa', 'CUL', 1, '0000-00-00 00:00:00'),
(225, 15, 'Daskasan', 'DAS', 1, '0000-00-00 00:00:00'),
(226, 15, 'Davaci', 'DAV', 1, '0000-00-00 00:00:00'),
(227, 15, 'Fuzuli', 'FUZ', 1, '0000-00-00 00:00:00'),
(228, 15, 'Ganca', 'GA', 1, '0000-00-00 00:00:00'),
(229, 15, 'Gadabay', 'GAD', 1, '0000-00-00 00:00:00'),
(230, 15, 'Goranboy', 'GOR', 1, '0000-00-00 00:00:00'),
(231, 15, 'Goycay', 'GOY', 1, '0000-00-00 00:00:00'),
(232, 15, 'Haciqabul', 'HAC', 1, '0000-00-00 00:00:00'),
(233, 15, 'Imisli', 'IMI', 1, '0000-00-00 00:00:00'),
(234, 15, 'Ismayilli', 'ISM', 1, '0000-00-00 00:00:00'),
(235, 15, 'Kalbacar', 'KAL', 1, '0000-00-00 00:00:00'),
(236, 15, 'Kurdamir', 'KUR', 1, '0000-00-00 00:00:00'),
(237, 15, 'Lankaran', 'LA', 1, '0000-00-00 00:00:00'),
(238, 15, 'Lacin', 'LAC', 1, '0000-00-00 00:00:00'),
(239, 15, 'Lankaran', 'LAN', 1, '0000-00-00 00:00:00'),
(240, 15, 'Lerik', 'LER', 1, '0000-00-00 00:00:00'),
(241, 15, 'Masalli', 'MAS', 1, '0000-00-00 00:00:00'),
(242, 15, 'Mingacevir', 'MI', 1, '0000-00-00 00:00:00'),
(243, 15, 'Naftalan', 'NA', 1, '0000-00-00 00:00:00'),
(244, 15, 'Neftcala', 'NEF', 1, '0000-00-00 00:00:00'),
(245, 15, 'Oguz', 'OGU', 1, '0000-00-00 00:00:00'),
(246, 15, 'Ordubad', 'ORD', 1, '0000-00-00 00:00:00'),
(247, 15, 'Qabala', 'QAB', 1, '0000-00-00 00:00:00'),
(248, 15, 'Qax', 'QAX', 1, '0000-00-00 00:00:00'),
(249, 15, 'Qazax', 'QAZ', 1, '0000-00-00 00:00:00'),
(250, 15, 'Qobustan', 'QOB', 1, '0000-00-00 00:00:00'),
(251, 15, 'Quba', 'QBA', 1, '0000-00-00 00:00:00'),
(252, 15, 'Qubadli', 'QBI', 1, '0000-00-00 00:00:00'),
(253, 15, 'Qusar', 'QUS', 1, '0000-00-00 00:00:00'),
(254, 15, 'Saki', 'SA', 1, '0000-00-00 00:00:00'),
(255, 15, 'Saatli', 'SAT', 1, '0000-00-00 00:00:00'),
(256, 15, 'Sabirabad', 'SAB', 1, '0000-00-00 00:00:00'),
(257, 15, 'Sadarak', 'SAD', 1, '0000-00-00 00:00:00'),
(258, 15, 'Sahbuz', 'SAH', 1, '0000-00-00 00:00:00'),
(259, 15, 'Saki', 'SAK', 1, '0000-00-00 00:00:00'),
(260, 15, 'Salyan', 'SAL', 1, '0000-00-00 00:00:00'),
(261, 15, 'Sumqayit', 'SM', 1, '0000-00-00 00:00:00'),
(262, 15, 'Samaxi', 'SMI', 1, '0000-00-00 00:00:00'),
(263, 15, 'Samkir', 'SKR', 1, '0000-00-00 00:00:00'),
(264, 15, 'Samux', 'SMX', 1, '0000-00-00 00:00:00'),
(265, 15, 'Sarur', 'SAR', 1, '0000-00-00 00:00:00'),
(266, 15, 'Siyazan', 'SIY', 1, '0000-00-00 00:00:00'),
(267, 15, 'Susa', 'SS', 1, '0000-00-00 00:00:00'),
(268, 15, 'Susa', 'SUS', 1, '0000-00-00 00:00:00'),
(269, 15, 'Tartar', 'TAR', 1, '0000-00-00 00:00:00'),
(270, 15, 'Tovuz', 'TOV', 1, '0000-00-00 00:00:00'),
(271, 15, 'Ucar', 'UCA', 1, '0000-00-00 00:00:00'),
(272, 15, 'Xankandi', 'XA', 1, '0000-00-00 00:00:00'),
(273, 15, 'Xacmaz', 'XAC', 1, '0000-00-00 00:00:00'),
(274, 15, 'Xanlar', 'XAN', 1, '0000-00-00 00:00:00'),
(275, 15, 'Xizi', 'XIZ', 1, '0000-00-00 00:00:00'),
(276, 15, 'Xocali', 'XCI', 1, '0000-00-00 00:00:00'),
(277, 15, 'Xocavand', 'XVD', 1, '0000-00-00 00:00:00'),
(278, 15, 'Yardimli', 'YAR', 1, '0000-00-00 00:00:00'),
(279, 15, 'Yevlax', 'YEV', 1, '0000-00-00 00:00:00'),
(280, 15, 'Zangilan', 'ZAN', 1, '0000-00-00 00:00:00'),
(281, 15, 'Zaqatala', 'ZAQ', 1, '0000-00-00 00:00:00'),
(282, 15, 'Zardab', 'ZAR', 1, '0000-00-00 00:00:00'),
(283, 15, 'Naxcivan', 'NX', 1, '0000-00-00 00:00:00'),
(284, 16, 'Acklins', 'ACK', 1, '0000-00-00 00:00:00'),
(285, 16, 'Berry Islands', 'BER', 1, '0000-00-00 00:00:00'),
(286, 16, 'Bimini', 'BIM', 1, '0000-00-00 00:00:00'),
(287, 16, 'Black Point', 'BLK', 1, '0000-00-00 00:00:00'),
(288, 16, 'Cat Island', 'CAT', 1, '0000-00-00 00:00:00'),
(289, 16, 'Central Abaco', 'CAB', 1, '0000-00-00 00:00:00'),
(290, 16, 'Central Andros', 'CAN', 1, '0000-00-00 00:00:00'),
(291, 16, 'Central Eleuthera', 'CEL', 1, '0000-00-00 00:00:00'),
(292, 16, 'City of Freeport', 'FRE', 1, '0000-00-00 00:00:00'),
(293, 16, 'Crooked Island', 'CRO', 1, '0000-00-00 00:00:00'),
(294, 16, 'East Grand Bahama', 'EGB', 1, '0000-00-00 00:00:00'),
(295, 16, 'Exuma', 'EXU', 1, '0000-00-00 00:00:00'),
(296, 16, 'Grand Cay', 'GRD', 1, '0000-00-00 00:00:00'),
(297, 16, 'Harbour Island', 'HAR', 1, '0000-00-00 00:00:00'),
(298, 16, 'Hope Town', 'HOP', 1, '0000-00-00 00:00:00'),
(299, 16, 'Inagua', 'INA', 1, '0000-00-00 00:00:00'),
(300, 16, 'Long Island', 'LNG', 1, '0000-00-00 00:00:00'),
(301, 16, 'Mangrove Cay', 'MAN', 1, '0000-00-00 00:00:00'),
(302, 16, 'Mayaguana', 'MAY', 1, '0000-00-00 00:00:00'),
(303, 16, 'Moore''s Island', 'MOO', 1, '0000-00-00 00:00:00'),
(304, 16, 'North Abaco', 'NAB', 1, '0000-00-00 00:00:00'),
(305, 16, 'North Andros', 'NAN', 1, '0000-00-00 00:00:00'),
(306, 16, 'North Eleuthera', 'NEL', 1, '0000-00-00 00:00:00'),
(307, 16, 'Ragged Island', 'RAG', 1, '0000-00-00 00:00:00'),
(308, 16, 'Rum Cay', 'RUM', 1, '0000-00-00 00:00:00'),
(309, 16, 'San Salvador', 'SAL', 1, '0000-00-00 00:00:00'),
(310, 16, 'South Abaco', 'SAB', 1, '0000-00-00 00:00:00'),
(311, 16, 'South Andros', 'SAN', 1, '0000-00-00 00:00:00'),
(312, 16, 'South Eleuthera', 'SEL', 1, '0000-00-00 00:00:00'),
(313, 16, 'Spanish Wells', 'SWE', 1, '0000-00-00 00:00:00'),
(314, 16, 'West Grand Bahama', 'WGB', 1, '0000-00-00 00:00:00'),
(315, 17, 'Capital', 'CAP', 1, '0000-00-00 00:00:00'),
(316, 17, 'Central', 'CEN', 1, '0000-00-00 00:00:00'),
(317, 17, 'Muharraq', 'MUH', 1, '0000-00-00 00:00:00'),
(318, 17, 'Northern', 'NOR', 1, '0000-00-00 00:00:00'),
(319, 17, 'Southern', 'SOU', 1, '0000-00-00 00:00:00'),
(320, 18, 'Barisal', 'BAR', 1, '0000-00-00 00:00:00'),
(321, 18, 'Chittagong', 'CHI', 1, '0000-00-00 00:00:00'),
(322, 18, 'Dhaka', 'DHA', 1, '0000-00-00 00:00:00'),
(323, 18, 'Khulna', 'KHU', 1, '0000-00-00 00:00:00'),
(324, 18, 'Rajshahi', 'RAJ', 1, '0000-00-00 00:00:00'),
(325, 18, 'Sylhet', 'SYL', 1, '0000-00-00 00:00:00'),
(326, 19, 'Christ Church', 'CC', 1, '0000-00-00 00:00:00'),
(327, 19, 'Saint Andrew', 'AND', 1, '0000-00-00 00:00:00'),
(328, 19, 'Saint George', 'GEO', 1, '0000-00-00 00:00:00'),
(329, 19, 'Saint James', 'JAM', 1, '0000-00-00 00:00:00'),
(330, 19, 'Saint John', 'JOH', 1, '0000-00-00 00:00:00'),
(331, 19, 'Saint Joseph', 'JOS', 1, '0000-00-00 00:00:00'),
(332, 19, 'Saint Lucy', 'LUC', 1, '0000-00-00 00:00:00'),
(333, 19, 'Saint Michael', 'MIC', 1, '0000-00-00 00:00:00'),
(334, 19, 'Saint Peter', 'PET', 1, '0000-00-00 00:00:00'),
(335, 19, 'Saint Philip', 'PHI', 1, '0000-00-00 00:00:00'),
(336, 19, 'Saint Thomas', 'THO', 1, '0000-00-00 00:00:00'),
(337, 20, 'Brestskaya (Brest)', 'BR', 1, '0000-00-00 00:00:00'),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1, '0000-00-00 00:00:00'),
(339, 20, 'Horad Minsk', 'HM', 1, '0000-00-00 00:00:00'),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1, '0000-00-00 00:00:00'),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1, '0000-00-00 00:00:00'),
(342, 20, 'Minskaya', 'MI', 1, '0000-00-00 00:00:00'),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1, '0000-00-00 00:00:00'),
(344, 21, 'Antwerpen', 'VAN', 1, '0000-00-00 00:00:00'),
(345, 21, 'Brabant Wallon', 'WBR', 1, '0000-00-00 00:00:00'),
(346, 21, 'Hainaut', 'WHT', 1, '0000-00-00 00:00:00'),
(347, 21, 'Liège', 'WLG', 1, '0000-00-00 00:00:00'),
(348, 21, 'Limburg', 'VLI', 1, '0000-00-00 00:00:00'),
(349, 21, 'Luxembourg', 'WLX', 1, '0000-00-00 00:00:00'),
(350, 21, 'Namur', 'WNA', 1, '0000-00-00 00:00:00'),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1, '0000-00-00 00:00:00'),
(352, 21, 'Vlaams Brabant', 'VBR', 1, '0000-00-00 00:00:00'),
(353, 21, 'West-Vlaanderen', 'VWV', 1, '0000-00-00 00:00:00'),
(354, 22, 'Belize', 'BZ', 1, '0000-00-00 00:00:00'),
(355, 22, 'Cayo', 'CY', 1, '0000-00-00 00:00:00'),
(356, 22, 'Corozal', 'CR', 1, '0000-00-00 00:00:00'),
(357, 22, 'Orange Walk', 'OW', 1, '0000-00-00 00:00:00'),
(358, 22, 'Stann Creek', 'SC', 1, '0000-00-00 00:00:00'),
(359, 22, 'Toledo', 'TO', 1, '0000-00-00 00:00:00'),
(360, 23, 'Alibori', 'AL', 1, '0000-00-00 00:00:00'),
(361, 23, 'Atakora', 'AK', 1, '0000-00-00 00:00:00'),
(362, 23, 'Atlantique', 'AQ', 1, '0000-00-00 00:00:00'),
(363, 23, 'Borgou', 'BO', 1, '0000-00-00 00:00:00'),
(364, 23, 'Collines', 'CO', 1, '0000-00-00 00:00:00'),
(365, 23, 'Donga', 'DO', 1, '0000-00-00 00:00:00'),
(366, 23, 'Kouffo', 'KO', 1, '0000-00-00 00:00:00'),
(367, 23, 'Littoral', 'LI', 1, '0000-00-00 00:00:00'),
(368, 23, 'Mono', 'MO', 1, '0000-00-00 00:00:00'),
(369, 23, 'Oueme', 'OU', 1, '0000-00-00 00:00:00'),
(370, 23, 'Plateau', 'PL', 1, '0000-00-00 00:00:00'),
(371, 23, 'Zou', 'ZO', 1, '0000-00-00 00:00:00'),
(372, 24, 'Devonshire', 'DS', 1, '0000-00-00 00:00:00'),
(373, 24, 'Hamilton City', 'HC', 1, '0000-00-00 00:00:00'),
(374, 24, 'Hamilton', 'HA', 1, '0000-00-00 00:00:00'),
(375, 24, 'Paget', 'PG', 1, '0000-00-00 00:00:00'),
(376, 24, 'Pembroke', 'PB', 1, '0000-00-00 00:00:00'),
(377, 24, 'Saint George City', 'GC', 1, '0000-00-00 00:00:00'),
(378, 24, 'Saint George''s', 'SG', 1, '0000-00-00 00:00:00'),
(379, 24, 'Sandys', 'SA', 1, '0000-00-00 00:00:00'),
(380, 24, 'Smith''s', 'SM', 1, '0000-00-00 00:00:00'),
(381, 24, 'Southampton', 'SH', 1, '0000-00-00 00:00:00'),
(382, 24, 'Warwick', 'WA', 1, '0000-00-00 00:00:00'),
(383, 25, 'Bumthang', 'BUM', 1, '0000-00-00 00:00:00'),
(384, 25, 'Chukha', 'CHU', 1, '0000-00-00 00:00:00'),
(385, 25, 'Dagana', 'DAG', 1, '0000-00-00 00:00:00'),
(386, 25, 'Gasa', 'GAS', 1, '0000-00-00 00:00:00'),
(387, 25, 'Haa', 'HAA', 1, '0000-00-00 00:00:00'),
(388, 25, 'Lhuntse', 'LHU', 1, '0000-00-00 00:00:00'),
(389, 25, 'Mongar', 'MON', 1, '0000-00-00 00:00:00'),
(390, 25, 'Paro', 'PAR', 1, '0000-00-00 00:00:00'),
(391, 25, 'Pemagatshel', 'PEM', 1, '0000-00-00 00:00:00'),
(392, 25, 'Punakha', 'PUN', 1, '0000-00-00 00:00:00'),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1, '0000-00-00 00:00:00'),
(394, 25, 'Samtse', 'SAT', 1, '0000-00-00 00:00:00'),
(395, 25, 'Sarpang', 'SAR', 1, '0000-00-00 00:00:00'),
(396, 25, 'Thimphu', 'THI', 1, '0000-00-00 00:00:00'),
(397, 25, 'Trashigang', 'TRG', 1, '0000-00-00 00:00:00'),
(398, 25, 'Trashiyangste', 'TRY', 1, '0000-00-00 00:00:00'),
(399, 25, 'Trongsa', 'TRO', 1, '0000-00-00 00:00:00'),
(400, 25, 'Tsirang', 'TSI', 1, '0000-00-00 00:00:00'),
(401, 25, 'Wangdue Phodrang', 'WPH', 1, '0000-00-00 00:00:00'),
(402, 25, 'Zhemgang', 'ZHE', 1, '0000-00-00 00:00:00'),
(403, 26, 'Beni', 'BEN', 1, '0000-00-00 00:00:00'),
(404, 26, 'Chuquisaca', 'CHU', 1, '0000-00-00 00:00:00'),
(405, 26, 'Cochabamba', 'COC', 1, '0000-00-00 00:00:00'),
(406, 26, 'La Paz', 'LPZ', 1, '0000-00-00 00:00:00'),
(407, 26, 'Oruro', 'ORU', 1, '0000-00-00 00:00:00'),
(408, 26, 'Pando', 'PAN', 1, '0000-00-00 00:00:00'),
(409, 26, 'Potosi', 'POT', 1, '0000-00-00 00:00:00'),
(410, 26, 'Santa Cruz', 'SCZ', 1, '0000-00-00 00:00:00'),
(411, 26, 'Tarija', 'TAR', 1, '0000-00-00 00:00:00'),
(412, 27, 'Brcko district', 'BRO', 1, '0000-00-00 00:00:00'),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1, '0000-00-00 00:00:00'),
(414, 27, 'Posavski Kanton', 'FPO', 1, '0000-00-00 00:00:00'),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1, '0000-00-00 00:00:00'),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1, '0000-00-00 00:00:00'),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1, '0000-00-00 00:00:00'),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1, '0000-00-00 00:00:00'),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1, '0000-00-00 00:00:00'),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1, '0000-00-00 00:00:00'),
(421, 27, 'Kanton Sarajevo', 'FSA', 1, '0000-00-00 00:00:00'),
(422, 27, 'Zapadnobosanska', 'FZA', 1, '0000-00-00 00:00:00'),
(423, 27, 'Banja Luka', 'SBL', 1, '0000-00-00 00:00:00'),
(424, 27, 'Doboj', 'SDO', 1, '0000-00-00 00:00:00'),
(425, 27, 'Bijeljina', 'SBI', 1, '0000-00-00 00:00:00'),
(426, 27, 'Vlasenica', 'SVL', 1, '0000-00-00 00:00:00'),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1, '0000-00-00 00:00:00'),
(428, 27, 'Foca', 'SFO', 1, '0000-00-00 00:00:00'),
(429, 27, 'Trebinje', 'STR', 1, '0000-00-00 00:00:00'),
(430, 28, 'Central', 'CE', 1, '0000-00-00 00:00:00'),
(431, 28, 'Ghanzi', 'GH', 1, '0000-00-00 00:00:00'),
(432, 28, 'Kgalagadi', 'KD', 1, '0000-00-00 00:00:00'),
(433, 28, 'Kgatleng', 'KT', 1, '0000-00-00 00:00:00'),
(434, 28, 'Kweneng', 'KW', 1, '0000-00-00 00:00:00'),
(435, 28, 'Ngamiland', 'NG', 1, '0000-00-00 00:00:00'),
(436, 28, 'North East', 'NE', 1, '0000-00-00 00:00:00'),
(437, 28, 'North West', 'NW', 1, '0000-00-00 00:00:00'),
(438, 28, 'South East', 'SE', 1, '0000-00-00 00:00:00'),
(439, 28, 'Southern', 'SO', 1, '0000-00-00 00:00:00'),
(440, 30, 'Acre', 'AC', 1, '0000-00-00 00:00:00'),
(441, 30, 'Alagoas', 'AL', 1, '0000-00-00 00:00:00'),
(442, 30, 'Amapá', 'AP', 1, '0000-00-00 00:00:00'),
(443, 30, 'Amazonas', 'AM', 1, '0000-00-00 00:00:00'),
(444, 30, 'Bahia', 'BA', 1, '0000-00-00 00:00:00'),
(445, 30, 'Ceará', 'CE', 1, '0000-00-00 00:00:00'),
(446, 30, 'Distrito Federal', 'DF', 1, '0000-00-00 00:00:00'),
(447, 30, 'Espírito Santo', 'ES', 1, '0000-00-00 00:00:00'),
(448, 30, 'Goiás', 'GO', 1, '0000-00-00 00:00:00'),
(449, 30, 'Maranhão', 'MA', 1, '0000-00-00 00:00:00'),
(450, 30, 'Mato Grosso', 'MT', 1, '0000-00-00 00:00:00'),
(451, 30, 'Mato Grosso do Sul', 'MS', 1, '0000-00-00 00:00:00'),
(452, 30, 'Minas Gerais', 'MG', 1, '0000-00-00 00:00:00'),
(453, 30, 'Pará', 'PA', 1, '0000-00-00 00:00:00'),
(454, 30, 'Paraíba', 'PB', 1, '0000-00-00 00:00:00'),
(455, 30, 'Paraná', 'PR', 1, '0000-00-00 00:00:00'),
(456, 30, 'Pernambuco', 'PE', 1, '0000-00-00 00:00:00'),
(457, 30, 'Piauí', 'PI', 1, '0000-00-00 00:00:00'),
(458, 30, 'Rio de Janeiro', 'RJ', 1, '0000-00-00 00:00:00'),
(459, 30, 'Rio Grande do Norte', 'RN', 1, '0000-00-00 00:00:00'),
(460, 30, 'Rio Grande do Sul', 'RS', 1, '0000-00-00 00:00:00'),
(461, 30, 'Rondônia', 'RO', 1, '0000-00-00 00:00:00'),
(462, 30, 'Roraima', 'RR', 1, '0000-00-00 00:00:00'),
(463, 30, 'Santa Catarina', 'SC', 1, '0000-00-00 00:00:00'),
(464, 30, 'São Paulo', 'SP', 1, '0000-00-00 00:00:00'),
(465, 30, 'Sergipe', 'SE', 1, '0000-00-00 00:00:00'),
(466, 30, 'Tocantins', 'TO', 1, '0000-00-00 00:00:00'),
(467, 31, 'Peros Banhos', 'PB', 1, '0000-00-00 00:00:00'),
(468, 31, 'Salomon Islands', 'SI', 1, '0000-00-00 00:00:00'),
(469, 31, 'Nelsons Island', 'NI', 1, '0000-00-00 00:00:00'),
(470, 31, 'Three Brothers', 'TB', 1, '0000-00-00 00:00:00'),
(471, 31, 'Eagle Islands', 'EA', 1, '0000-00-00 00:00:00'),
(472, 31, 'Danger Island', 'DI', 1, '0000-00-00 00:00:00'),
(473, 31, 'Egmont Islands', 'EG', 1, '0000-00-00 00:00:00'),
(474, 31, 'Diego Garcia', 'DG', 1, '0000-00-00 00:00:00'),
(475, 32, 'Belait', 'BEL', 1, '0000-00-00 00:00:00'),
(476, 32, 'Brunei and Muara', 'BRM', 1, '0000-00-00 00:00:00'),
(477, 32, 'Temburong', 'TEM', 1, '0000-00-00 00:00:00'),
(478, 32, 'Tutong', 'TUT', 1, '0000-00-00 00:00:00'),
(479, 33, 'Blagoevgrad', '', 1, '0000-00-00 00:00:00'),
(480, 33, 'Burgas', '', 1, '0000-00-00 00:00:00'),
(481, 33, 'Dobrich', '', 1, '0000-00-00 00:00:00'),
(482, 33, 'Gabrovo', '', 1, '0000-00-00 00:00:00'),
(483, 33, 'Haskovo', '', 1, '0000-00-00 00:00:00'),
(484, 33, 'Kardjali', '', 1, '0000-00-00 00:00:00'),
(485, 33, 'Kyustendil', '', 1, '0000-00-00 00:00:00'),
(486, 33, 'Lovech', '', 1, '0000-00-00 00:00:00'),
(487, 33, 'Montana', '', 1, '0000-00-00 00:00:00'),
(488, 33, 'Pazardjik', '', 1, '0000-00-00 00:00:00'),
(489, 33, 'Pernik', '', 1, '0000-00-00 00:00:00'),
(490, 33, 'Pleven', '', 1, '0000-00-00 00:00:00'),
(491, 33, 'Plovdiv', '', 1, '0000-00-00 00:00:00'),
(492, 33, 'Razgrad', '', 1, '0000-00-00 00:00:00'),
(493, 33, 'Shumen', '', 1, '0000-00-00 00:00:00'),
(494, 33, 'Silistra', '', 1, '0000-00-00 00:00:00'),
(495, 33, 'Sliven', '', 1, '0000-00-00 00:00:00'),
(496, 33, 'Smolyan', '', 1, '0000-00-00 00:00:00'),
(497, 33, 'Sofia', '', 1, '0000-00-00 00:00:00'),
(498, 33, 'Sofia - town', '', 1, '0000-00-00 00:00:00'),
(499, 33, 'Stara Zagora', '', 1, '0000-00-00 00:00:00'),
(500, 33, 'Targovishte', '', 1, '0000-00-00 00:00:00'),
(501, 33, 'Varna', '', 1, '0000-00-00 00:00:00'),
(502, 33, 'Veliko Tarnovo', '', 1, '0000-00-00 00:00:00'),
(503, 33, 'Vidin', '', 1, '0000-00-00 00:00:00'),
(504, 33, 'Vratza', '', 1, '0000-00-00 00:00:00'),
(505, 33, 'Yambol', '', 1, '0000-00-00 00:00:00'),
(506, 34, 'Bale', 'BAL', 1, '0000-00-00 00:00:00'),
(507, 34, 'Bam', 'BAM', 1, '0000-00-00 00:00:00'),
(508, 34, 'Banwa', 'BAN', 1, '0000-00-00 00:00:00'),
(509, 34, 'Bazega', 'BAZ', 1, '0000-00-00 00:00:00'),
(510, 34, 'Bougouriba', 'BOR', 1, '0000-00-00 00:00:00'),
(511, 34, 'Boulgou', 'BLG', 1, '0000-00-00 00:00:00'),
(512, 34, 'Boulkiemde', 'BOK', 1, '0000-00-00 00:00:00'),
(513, 34, 'Comoe', 'COM', 1, '0000-00-00 00:00:00'),
(514, 34, 'Ganzourgou', 'GAN', 1, '0000-00-00 00:00:00'),
(515, 34, 'Gnagna', 'GNA', 1, '0000-00-00 00:00:00'),
(516, 34, 'Gourma', 'GOU', 1, '0000-00-00 00:00:00'),
(517, 34, 'Houet', 'HOU', 1, '0000-00-00 00:00:00'),
(518, 34, 'Ioba', 'IOA', 1, '0000-00-00 00:00:00'),
(519, 34, 'Kadiogo', 'KAD', 1, '0000-00-00 00:00:00'),
(520, 34, 'Kenedougou', 'KEN', 1, '0000-00-00 00:00:00'),
(521, 34, 'Komondjari', 'KOD', 1, '0000-00-00 00:00:00'),
(522, 34, 'Kompienga', 'KOP', 1, '0000-00-00 00:00:00'),
(523, 34, 'Kossi', 'KOS', 1, '0000-00-00 00:00:00'),
(524, 34, 'Koulpelogo', 'KOL', 1, '0000-00-00 00:00:00'),
(525, 34, 'Kouritenga', 'KOT', 1, '0000-00-00 00:00:00'),
(526, 34, 'Kourweogo', 'KOW', 1, '0000-00-00 00:00:00'),
(527, 34, 'Leraba', 'LER', 1, '0000-00-00 00:00:00'),
(528, 34, 'Loroum', 'LOR', 1, '0000-00-00 00:00:00'),
(529, 34, 'Mouhoun', 'MOU', 1, '0000-00-00 00:00:00'),
(530, 34, 'Nahouri', 'NAH', 1, '0000-00-00 00:00:00'),
(531, 34, 'Namentenga', 'NAM', 1, '0000-00-00 00:00:00'),
(532, 34, 'Nayala', 'NAY', 1, '0000-00-00 00:00:00'),
(533, 34, 'Noumbiel', 'NOU', 1, '0000-00-00 00:00:00'),
(534, 34, 'Oubritenga', 'OUB', 1, '0000-00-00 00:00:00'),
(535, 34, 'Oudalan', 'OUD', 1, '0000-00-00 00:00:00'),
(536, 34, 'Passore', 'PAS', 1, '0000-00-00 00:00:00'),
(537, 34, 'Poni', 'PON', 1, '0000-00-00 00:00:00'),
(538, 34, 'Sanguie', 'SAG', 1, '0000-00-00 00:00:00'),
(539, 34, 'Sanmatenga', 'SAM', 1, '0000-00-00 00:00:00'),
(540, 34, 'Seno', 'SEN', 1, '0000-00-00 00:00:00'),
(541, 34, 'Sissili', 'SIS', 1, '0000-00-00 00:00:00'),
(542, 34, 'Soum', 'SOM', 1, '0000-00-00 00:00:00'),
(543, 34, 'Sourou', 'SOR', 1, '0000-00-00 00:00:00'),
(544, 34, 'Tapoa', 'TAP', 1, '0000-00-00 00:00:00'),
(545, 34, 'Tuy', 'TUY', 1, '0000-00-00 00:00:00'),
(546, 34, 'Yagha', 'YAG', 1, '0000-00-00 00:00:00'),
(547, 34, 'Yatenga', 'YAT', 1, '0000-00-00 00:00:00'),
(548, 34, 'Ziro', 'ZIR', 1, '0000-00-00 00:00:00'),
(549, 34, 'Zondoma', 'ZOD', 1, '0000-00-00 00:00:00'),
(550, 34, 'Zoundweogo', 'ZOW', 1, '0000-00-00 00:00:00'),
(551, 35, 'Bubanza', 'BB', 1, '0000-00-00 00:00:00'),
(552, 35, 'Bujumbura', 'BJ', 1, '0000-00-00 00:00:00'),
(553, 35, 'Bururi', 'BR', 1, '0000-00-00 00:00:00'),
(554, 35, 'Cankuzo', 'CA', 1, '0000-00-00 00:00:00'),
(555, 35, 'Cibitoke', 'CI', 1, '0000-00-00 00:00:00'),
(556, 35, 'Gitega', 'GI', 1, '0000-00-00 00:00:00'),
(557, 35, 'Karuzi', 'KR', 1, '0000-00-00 00:00:00'),
(558, 35, 'Kayanza', 'KY', 1, '0000-00-00 00:00:00'),
(559, 35, 'Kirundo', 'KI', 1, '0000-00-00 00:00:00'),
(560, 35, 'Makamba', 'MA', 1, '0000-00-00 00:00:00'),
(561, 35, 'Muramvya', 'MU', 1, '0000-00-00 00:00:00'),
(562, 35, 'Muyinga', 'MY', 1, '0000-00-00 00:00:00'),
(563, 35, 'Mwaro', 'MW', 1, '0000-00-00 00:00:00'),
(564, 35, 'Ngozi', 'NG', 1, '0000-00-00 00:00:00'),
(565, 35, 'Rutana', 'RT', 1, '0000-00-00 00:00:00'),
(566, 35, 'Ruyigi', 'RY', 1, '0000-00-00 00:00:00'),
(567, 36, 'Phnom Penh', 'PP', 1, '0000-00-00 00:00:00'),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1, '0000-00-00 00:00:00'),
(569, 36, 'Pailin', 'PA', 1, '0000-00-00 00:00:00'),
(570, 36, 'Keb', 'KB', 1, '0000-00-00 00:00:00'),
(571, 36, 'Banteay Meanchey', 'BM', 1, '0000-00-00 00:00:00'),
(572, 36, 'Battambang', 'BA', 1, '0000-00-00 00:00:00'),
(573, 36, 'Kampong Cham', 'KM', 1, '0000-00-00 00:00:00'),
(574, 36, 'Kampong Chhnang', 'KN', 1, '0000-00-00 00:00:00'),
(575, 36, 'Kampong Speu', 'KU', 1, '0000-00-00 00:00:00'),
(576, 36, 'Kampong Som', 'KO', 1, '0000-00-00 00:00:00'),
(577, 36, 'Kampong Thom', 'KT', 1, '0000-00-00 00:00:00'),
(578, 36, 'Kampot', 'KP', 1, '0000-00-00 00:00:00'),
(579, 36, 'Kandal', 'KL', 1, '0000-00-00 00:00:00'),
(580, 36, 'Kaoh Kong', 'KK', 1, '0000-00-00 00:00:00'),
(581, 36, 'Kratie', 'KR', 1, '0000-00-00 00:00:00'),
(582, 36, 'Mondul Kiri', 'MK', 1, '0000-00-00 00:00:00'),
(583, 36, 'Oddar Meancheay', 'OM', 1, '0000-00-00 00:00:00'),
(584, 36, 'Pursat', 'PU', 1, '0000-00-00 00:00:00'),
(585, 36, 'Preah Vihear', 'PR', 1, '0000-00-00 00:00:00'),
(586, 36, 'Prey Veng', 'PG', 1, '0000-00-00 00:00:00'),
(587, 36, 'Ratanak Kiri', 'RK', 1, '0000-00-00 00:00:00'),
(588, 36, 'Siemreap', 'SI', 1, '0000-00-00 00:00:00'),
(589, 36, 'Stung Treng', 'ST', 1, '0000-00-00 00:00:00'),
(590, 36, 'Svay Rieng', 'SR', 1, '0000-00-00 00:00:00'),
(591, 36, 'Takeo', 'TK', 1, '0000-00-00 00:00:00'),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1, '0000-00-00 00:00:00'),
(593, 37, 'Centre', 'CEN', 1, '0000-00-00 00:00:00'),
(594, 37, 'East (Est)', 'EST', 1, '0000-00-00 00:00:00'),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1, '0000-00-00 00:00:00'),
(596, 37, 'Littoral', 'LIT', 1, '0000-00-00 00:00:00'),
(597, 37, 'North (Nord)', 'NOR', 1, '0000-00-00 00:00:00'),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1, '0000-00-00 00:00:00'),
(599, 37, 'West (Ouest)', 'OUE', 1, '0000-00-00 00:00:00'),
(600, 37, 'South (Sud)', 'SUD', 1, '0000-00-00 00:00:00'),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1, '0000-00-00 00:00:00'),
(602, 38, 'Alberta', 'AB', 1, '0000-00-00 00:00:00'),
(603, 38, 'British Columbia', 'BC', 1, '0000-00-00 00:00:00'),
(604, 38, 'Manitoba', 'MB', 1, '0000-00-00 00:00:00'),
(605, 38, 'New Brunswick', 'NB', 1, '0000-00-00 00:00:00'),
(606, 38, 'Newfoundland and Labrador', 'NL', 1, '0000-00-00 00:00:00'),
(607, 38, 'Northwest Territories', 'NT', 1, '0000-00-00 00:00:00'),
(608, 38, 'Nova Scotia', 'NS', 1, '0000-00-00 00:00:00'),
(609, 38, 'Nunavut', 'NU', 1, '0000-00-00 00:00:00'),
(610, 38, 'Ontario', 'ON', 1, '0000-00-00 00:00:00'),
(611, 38, 'Prince Edward Island', 'PE', 1, '0000-00-00 00:00:00'),
(612, 38, 'Qu&eacute;bec', 'QC', 1, '0000-00-00 00:00:00'),
(613, 38, 'Saskatchewan', 'SK', 1, '0000-00-00 00:00:00'),
(614, 38, 'Yukon Territory', 'YT', 1, '0000-00-00 00:00:00'),
(615, 39, 'Boa Vista', 'BV', 1, '0000-00-00 00:00:00'),
(616, 39, 'Brava', 'BR', 1, '0000-00-00 00:00:00'),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1, '0000-00-00 00:00:00'),
(618, 39, 'Maio', 'MA', 1, '0000-00-00 00:00:00'),
(619, 39, 'Mosteiros', 'MO', 1, '0000-00-00 00:00:00'),
(620, 39, 'Paul', 'PA', 1, '0000-00-00 00:00:00'),
(621, 39, 'Porto Novo', 'PN', 1, '0000-00-00 00:00:00'),
(622, 39, 'Praia', 'PR', 1, '0000-00-00 00:00:00'),
(623, 39, 'Ribeira Grande', 'RG', 1, '0000-00-00 00:00:00'),
(624, 39, 'Sal', 'SL', 1, '0000-00-00 00:00:00'),
(625, 39, 'Santa Catarina', 'CA', 1, '0000-00-00 00:00:00'),
(626, 39, 'Santa Cruz', 'CR', 1, '0000-00-00 00:00:00'),
(627, 39, 'Sao Domingos', 'SD', 1, '0000-00-00 00:00:00'),
(628, 39, 'Sao Filipe', 'SF', 1, '0000-00-00 00:00:00'),
(629, 39, 'Sao Nicolau', 'SN', 1, '0000-00-00 00:00:00'),
(630, 39, 'Sao Vicente', 'SV', 1, '0000-00-00 00:00:00'),
(631, 39, 'Tarrafal', 'TA', 1, '0000-00-00 00:00:00'),
(632, 40, 'Creek', 'CR', 1, '0000-00-00 00:00:00'),
(633, 40, 'Eastern', 'EA', 1, '0000-00-00 00:00:00'),
(634, 40, 'Midland', 'ML', 1, '0000-00-00 00:00:00'),
(635, 40, 'South Town', 'ST', 1, '0000-00-00 00:00:00'),
(636, 40, 'Spot Bay', 'SP', 1, '0000-00-00 00:00:00'),
(637, 40, 'Stake Bay', 'SK', 1, '0000-00-00 00:00:00'),
(638, 40, 'West End', 'WD', 1, '0000-00-00 00:00:00'),
(639, 40, 'Western', 'WN', 1, '0000-00-00 00:00:00'),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1, '0000-00-00 00:00:00'),
(641, 41, 'Basse-Kotto', 'BKO', 1, '0000-00-00 00:00:00'),
(642, 41, 'Haute-Kotto', 'HKO', 1, '0000-00-00 00:00:00'),
(643, 41, 'Haut-Mbomou', 'HMB', 1, '0000-00-00 00:00:00'),
(644, 41, 'Kemo', 'KEM', 1, '0000-00-00 00:00:00'),
(645, 41, 'Lobaye', 'LOB', 1, '0000-00-00 00:00:00'),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1, '0000-00-00 00:00:00'),
(647, 41, 'Mbomou', 'MBO', 1, '0000-00-00 00:00:00'),
(648, 41, 'Nana-Mambere', 'NMM', 1, '0000-00-00 00:00:00'),
(649, 41, 'Ombella-M''Poko', 'OMP', 1, '0000-00-00 00:00:00'),
(650, 41, 'Ouaka', 'OUK', 1, '0000-00-00 00:00:00'),
(651, 41, 'Ouham', 'OUH', 1, '0000-00-00 00:00:00'),
(652, 41, 'Ouham-Pende', 'OPE', 1, '0000-00-00 00:00:00'),
(653, 41, 'Vakaga', 'VAK', 1, '0000-00-00 00:00:00'),
(654, 41, 'Nana-Grebizi', 'NGR', 1, '0000-00-00 00:00:00'),
(655, 41, 'Sangha-Mbaere', 'SMB', 1, '0000-00-00 00:00:00'),
(656, 41, 'Bangui', 'BAN', 1, '0000-00-00 00:00:00'),
(657, 42, 'Batha', 'BA', 1, '0000-00-00 00:00:00'),
(658, 42, 'Biltine', 'BI', 1, '0000-00-00 00:00:00'),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1, '0000-00-00 00:00:00'),
(660, 42, 'Chari-Baguirmi', 'CB', 1, '0000-00-00 00:00:00'),
(661, 42, 'Guera', 'GU', 1, '0000-00-00 00:00:00'),
(662, 42, 'Kanem', 'KA', 1, '0000-00-00 00:00:00'),
(663, 42, 'Lac', 'LA', 1, '0000-00-00 00:00:00'),
(664, 42, 'Logone Occidental', 'LC', 1, '0000-00-00 00:00:00'),
(665, 42, 'Logone Oriental', 'LR', 1, '0000-00-00 00:00:00'),
(666, 42, 'Mayo-Kebbi', 'MK', 1, '0000-00-00 00:00:00'),
(667, 42, 'Moyen-Chari', 'MC', 1, '0000-00-00 00:00:00'),
(668, 42, 'Ouaddai', 'OU', 1, '0000-00-00 00:00:00'),
(669, 42, 'Salamat', 'SA', 1, '0000-00-00 00:00:00'),
(670, 42, 'Tandjile', 'TA', 1, '0000-00-00 00:00:00'),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1, '0000-00-00 00:00:00'),
(672, 43, 'Antofagasta', 'AN', 1, '0000-00-00 00:00:00'),
(673, 43, 'Araucania', 'AR', 1, '0000-00-00 00:00:00'),
(674, 43, 'Atacama', 'AT', 1, '0000-00-00 00:00:00'),
(675, 43, 'Bio-Bio', 'BI', 1, '0000-00-00 00:00:00'),
(676, 43, 'Coquimbo', 'CO', 1, '0000-00-00 00:00:00'),
(677, 43, 'Libertador General Bernardo O''Hi', 'LI', 1, '0000-00-00 00:00:00'),
(678, 43, 'Los Lagos', 'LL', 1, '0000-00-00 00:00:00'),
(679, 43, 'Magallanes y de la Antartica Chi', 'MA', 1, '0000-00-00 00:00:00'),
(680, 43, 'Maule', 'ML', 1, '0000-00-00 00:00:00'),
(681, 43, 'Region Metropolitana', 'RM', 1, '0000-00-00 00:00:00'),
(682, 43, 'Tarapaca', 'TA', 1, '0000-00-00 00:00:00'),
(683, 43, 'Valparaiso', 'VS', 1, '0000-00-00 00:00:00'),
(684, 44, 'Anhui', 'AN', 1, '0000-00-00 00:00:00'),
(685, 44, 'Beijing', 'BE', 1, '0000-00-00 00:00:00'),
(686, 44, 'Chongqing', 'CH', 1, '0000-00-00 00:00:00'),
(687, 44, 'Fujian', 'FU', 1, '0000-00-00 00:00:00'),
(688, 44, 'Gansu', 'GA', 1, '0000-00-00 00:00:00'),
(689, 44, 'Guangdong', 'GU', 1, '0000-00-00 00:00:00'),
(690, 44, 'Guangxi', 'GX', 1, '0000-00-00 00:00:00'),
(691, 44, 'Guizhou', 'GZ', 1, '0000-00-00 00:00:00'),
(692, 44, 'Hainan', 'HA', 1, '0000-00-00 00:00:00'),
(693, 44, 'Hebei', 'HB', 1, '0000-00-00 00:00:00'),
(694, 44, 'Heilongjiang', 'HL', 1, '0000-00-00 00:00:00'),
(695, 44, 'Henan', 'HE', 1, '0000-00-00 00:00:00'),
(696, 44, 'Hong Kong', 'HK', 1, '0000-00-00 00:00:00'),
(697, 44, 'Hubei', 'HU', 1, '0000-00-00 00:00:00'),
(698, 44, 'Hunan', 'HN', 1, '0000-00-00 00:00:00'),
(699, 44, 'Inner Mongolia', 'IM', 1, '0000-00-00 00:00:00'),
(700, 44, 'Jiangsu', 'JI', 1, '0000-00-00 00:00:00'),
(701, 44, 'Jiangxi', 'JX', 1, '0000-00-00 00:00:00'),
(702, 44, 'Jilin', 'JL', 1, '0000-00-00 00:00:00'),
(703, 44, 'Liaoning', 'LI', 1, '0000-00-00 00:00:00'),
(704, 44, 'Macau', 'MA', 1, '0000-00-00 00:00:00'),
(705, 44, 'Ningxia', 'NI', 1, '0000-00-00 00:00:00'),
(706, 44, 'Shaanxi', 'SH', 1, '0000-00-00 00:00:00'),
(707, 44, 'Shandong', 'SA', 1, '0000-00-00 00:00:00'),
(708, 44, 'Shanghai', 'SG', 1, '0000-00-00 00:00:00'),
(709, 44, 'Shanxi', 'SX', 1, '0000-00-00 00:00:00'),
(710, 44, 'Sichuan', 'SI', 1, '0000-00-00 00:00:00'),
(711, 44, 'Tianjin', 'TI', 1, '0000-00-00 00:00:00'),
(712, 44, 'Xinjiang', 'XI', 1, '0000-00-00 00:00:00'),
(713, 44, 'Yunnan', 'YU', 1, '0000-00-00 00:00:00'),
(714, 44, 'Zhejiang', 'ZH', 1, '0000-00-00 00:00:00'),
(715, 46, 'Direction Island', 'D', 1, '0000-00-00 00:00:00'),
(716, 46, 'Home Island', 'H', 1, '0000-00-00 00:00:00'),
(717, 46, 'Horsburgh Island', 'O', 1, '0000-00-00 00:00:00'),
(718, 46, 'South Island', 'S', 1, '0000-00-00 00:00:00'),
(719, 46, 'West Island', 'W', 1, '0000-00-00 00:00:00'),
(720, 47, 'Amazonas', 'AMZ', 1, '0000-00-00 00:00:00'),
(721, 47, 'Antioquia', 'ANT', 1, '0000-00-00 00:00:00'),
(722, 47, 'Arauca', 'ARA', 1, '0000-00-00 00:00:00'),
(723, 47, 'Atlantico', 'ATL', 1, '0000-00-00 00:00:00'),
(724, 47, 'Bogota D.C.', 'BDC', 1, '0000-00-00 00:00:00'),
(725, 47, 'Bolivar', 'BOL', 1, '0000-00-00 00:00:00'),
(726, 47, 'Boyaca', 'BOY', 1, '0000-00-00 00:00:00'),
(727, 47, 'Caldas', 'CAL', 1, '0000-00-00 00:00:00'),
(728, 47, 'Caqueta', 'CAQ', 1, '0000-00-00 00:00:00'),
(729, 47, 'Casanare', 'CAS', 1, '0000-00-00 00:00:00'),
(730, 47, 'Cauca', 'CAU', 1, '0000-00-00 00:00:00'),
(731, 47, 'Cesar', 'CES', 1, '0000-00-00 00:00:00'),
(732, 47, 'Choco', 'CHO', 1, '0000-00-00 00:00:00'),
(733, 47, 'Cordoba', 'COR', 1, '0000-00-00 00:00:00'),
(734, 47, 'Cundinamarca', 'CAM', 1, '0000-00-00 00:00:00'),
(735, 47, 'Guainia', 'GNA', 1, '0000-00-00 00:00:00'),
(736, 47, 'Guajira', 'GJR', 1, '0000-00-00 00:00:00'),
(737, 47, 'Guaviare', 'GVR', 1, '0000-00-00 00:00:00'),
(738, 47, 'Huila', 'HUI', 1, '0000-00-00 00:00:00'),
(739, 47, 'Magdalena', 'MAG', 1, '0000-00-00 00:00:00'),
(740, 47, 'Meta', 'MET', 1, '0000-00-00 00:00:00'),
(741, 47, 'Narino', 'NAR', 1, '0000-00-00 00:00:00'),
(742, 47, 'Norte de Santander', 'NDS', 1, '0000-00-00 00:00:00'),
(743, 47, 'Putumayo', 'PUT', 1, '0000-00-00 00:00:00'),
(744, 47, 'Quindio', 'QUI', 1, '0000-00-00 00:00:00'),
(745, 47, 'Risaralda', 'RIS', 1, '0000-00-00 00:00:00'),
(746, 47, 'San Andres y Providencia', 'SAP', 1, '0000-00-00 00:00:00'),
(747, 47, 'Santander', 'SAN', 1, '0000-00-00 00:00:00'),
(748, 47, 'Sucre', 'SUC', 1, '0000-00-00 00:00:00'),
(749, 47, 'Tolima', 'TOL', 1, '0000-00-00 00:00:00'),
(750, 47, 'Valle del Cauca', 'VDC', 1, '0000-00-00 00:00:00'),
(751, 47, 'Vaupes', 'VAU', 1, '0000-00-00 00:00:00'),
(752, 47, 'Vichada', 'VIC', 1, '0000-00-00 00:00:00'),
(753, 48, 'Grande Comore', 'G', 1, '0000-00-00 00:00:00'),
(754, 48, 'Anjouan', 'A', 1, '0000-00-00 00:00:00'),
(755, 48, 'Moheli', 'M', 1, '0000-00-00 00:00:00'),
(756, 49, 'Bouenza', 'BO', 1, '0000-00-00 00:00:00'),
(757, 49, 'Brazzaville', 'BR', 1, '0000-00-00 00:00:00'),
(758, 49, 'Cuvette', 'CU', 1, '0000-00-00 00:00:00'),
(759, 49, 'Cuvette-Ouest', 'CO', 1, '0000-00-00 00:00:00'),
(760, 49, 'Kouilou', 'KO', 1, '0000-00-00 00:00:00'),
(761, 49, 'Lekoumou', 'LE', 1, '0000-00-00 00:00:00'),
(762, 49, 'Likouala', 'LI', 1, '0000-00-00 00:00:00'),
(763, 49, 'Niari', 'NI', 1, '0000-00-00 00:00:00'),
(764, 49, 'Plateaux', 'PL', 1, '0000-00-00 00:00:00'),
(765, 49, 'Pool', 'PO', 1, '0000-00-00 00:00:00'),
(766, 49, 'Sangha', 'SA', 1, '0000-00-00 00:00:00'),
(767, 50, 'Pukapuka', 'PU', 1, '0000-00-00 00:00:00'),
(768, 50, 'Rakahanga', 'RK', 1, '0000-00-00 00:00:00'),
(769, 50, 'Manihiki', 'MK', 1, '0000-00-00 00:00:00'),
(770, 50, 'Penrhyn', 'PE', 1, '0000-00-00 00:00:00'),
(771, 50, 'Nassau Island', 'NI', 1, '0000-00-00 00:00:00'),
(772, 50, 'Surwarrow', 'SU', 1, '0000-00-00 00:00:00'),
(773, 50, 'Palmerston', 'PA', 1, '0000-00-00 00:00:00'),
(774, 50, 'Aitutaki', 'AI', 1, '0000-00-00 00:00:00'),
(775, 50, 'Manuae', 'MA', 1, '0000-00-00 00:00:00'),
(776, 50, 'Takutea', 'TA', 1, '0000-00-00 00:00:00'),
(777, 50, 'Mitiaro', 'MT', 1, '0000-00-00 00:00:00'),
(778, 50, 'Atiu', 'AT', 1, '0000-00-00 00:00:00'),
(779, 50, 'Mauke', 'MU', 1, '0000-00-00 00:00:00'),
(780, 50, 'Rarotonga', 'RR', 1, '0000-00-00 00:00:00'),
(781, 50, 'Mangaia', 'MG', 1, '0000-00-00 00:00:00'),
(782, 51, 'Alajuela', 'AL', 1, '0000-00-00 00:00:00'),
(783, 51, 'Cartago', 'CA', 1, '0000-00-00 00:00:00'),
(784, 51, 'Guanacaste', 'GU', 1, '0000-00-00 00:00:00'),
(785, 51, 'Heredia', 'HE', 1, '0000-00-00 00:00:00'),
(786, 51, 'Limon', 'LI', 1, '0000-00-00 00:00:00'),
(787, 51, 'Puntarenas', 'PU', 1, '0000-00-00 00:00:00'),
(788, 51, 'San Jose', 'SJ', 1, '0000-00-00 00:00:00'),
(789, 52, 'Abengourou', 'ABE', 1, '0000-00-00 00:00:00'),
(790, 52, 'Abidjan', 'ABI', 1, '0000-00-00 00:00:00'),
(791, 52, 'Aboisso', 'ABO', 1, '0000-00-00 00:00:00'),
(792, 52, 'Adiake', 'ADI', 1, '0000-00-00 00:00:00'),
(793, 52, 'Adzope', 'ADZ', 1, '0000-00-00 00:00:00'),
(794, 52, 'Agboville', 'AGB', 1, '0000-00-00 00:00:00'),
(795, 52, 'Agnibilekrou', 'AGN', 1, '0000-00-00 00:00:00'),
(796, 52, 'Alepe', 'ALE', 1, '0000-00-00 00:00:00'),
(797, 52, 'Bocanda', 'BOC', 1, '0000-00-00 00:00:00'),
(798, 52, 'Bangolo', 'BAN', 1, '0000-00-00 00:00:00'),
(799, 52, 'Beoumi', 'BEO', 1, '0000-00-00 00:00:00'),
(800, 52, 'Biankouma', 'BIA', 1, '0000-00-00 00:00:00'),
(801, 52, 'Bondoukou', 'BDK', 1, '0000-00-00 00:00:00'),
(802, 52, 'Bongouanou', 'BGN', 1, '0000-00-00 00:00:00'),
(803, 52, 'Bouafle', 'BFL', 1, '0000-00-00 00:00:00'),
(804, 52, 'Bouake', 'BKE', 1, '0000-00-00 00:00:00'),
(805, 52, 'Bouna', 'BNA', 1, '0000-00-00 00:00:00'),
(806, 52, 'Boundiali', 'BDL', 1, '0000-00-00 00:00:00'),
(807, 52, 'Dabakala', 'DKL', 1, '0000-00-00 00:00:00'),
(808, 52, 'Dabou', 'DBU', 1, '0000-00-00 00:00:00'),
(809, 52, 'Daloa', 'DAL', 1, '0000-00-00 00:00:00'),
(810, 52, 'Danane', 'DAN', 1, '0000-00-00 00:00:00'),
(811, 52, 'Daoukro', 'DAO', 1, '0000-00-00 00:00:00'),
(812, 52, 'Dimbokro', 'DIM', 1, '0000-00-00 00:00:00'),
(813, 52, 'Divo', 'DIV', 1, '0000-00-00 00:00:00'),
(814, 52, 'Duekoue', 'DUE', 1, '0000-00-00 00:00:00'),
(815, 52, 'Ferkessedougou', 'FER', 1, '0000-00-00 00:00:00'),
(816, 52, 'Gagnoa', 'GAG', 1, '0000-00-00 00:00:00'),
(817, 52, 'Grand-Bassam', 'GBA', 1, '0000-00-00 00:00:00'),
(818, 52, 'Grand-Lahou', 'GLA', 1, '0000-00-00 00:00:00'),
(819, 52, 'Guiglo', 'GUI', 1, '0000-00-00 00:00:00'),
(820, 52, 'Issia', 'ISS', 1, '0000-00-00 00:00:00'),
(821, 52, 'Jacqueville', 'JAC', 1, '0000-00-00 00:00:00'),
(822, 52, 'Katiola', 'KAT', 1, '0000-00-00 00:00:00'),
(823, 52, 'Korhogo', 'KOR', 1, '0000-00-00 00:00:00'),
(824, 52, 'Lakota', 'LAK', 1, '0000-00-00 00:00:00'),
(825, 52, 'Man', 'MAN', 1, '0000-00-00 00:00:00'),
(826, 52, 'Mankono', 'MKN', 1, '0000-00-00 00:00:00'),
(827, 52, 'Mbahiakro', 'MBA', 1, '0000-00-00 00:00:00'),
(828, 52, 'Odienne', 'ODI', 1, '0000-00-00 00:00:00'),
(829, 52, 'Oume', 'OUM', 1, '0000-00-00 00:00:00'),
(830, 52, 'Sakassou', 'SAK', 1, '0000-00-00 00:00:00'),
(831, 52, 'San-Pedro', 'SPE', 1, '0000-00-00 00:00:00'),
(832, 52, 'Sassandra', 'SAS', 1, '0000-00-00 00:00:00'),
(833, 52, 'Seguela', 'SEG', 1, '0000-00-00 00:00:00'),
(834, 52, 'Sinfra', 'SIN', 1, '0000-00-00 00:00:00'),
(835, 52, 'Soubre', 'SOU', 1, '0000-00-00 00:00:00'),
(836, 52, 'Tabou', 'TAB', 1, '0000-00-00 00:00:00'),
(837, 52, 'Tanda', 'TAN', 1, '0000-00-00 00:00:00'),
(838, 52, 'Tiebissou', 'TIE', 1, '0000-00-00 00:00:00'),
(839, 52, 'Tingrela', 'TIN', 1, '0000-00-00 00:00:00'),
(840, 52, 'Tiassale', 'TIA', 1, '0000-00-00 00:00:00'),
(841, 52, 'Touba', 'TBA', 1, '0000-00-00 00:00:00'),
(842, 52, 'Toulepleu', 'TLP', 1, '0000-00-00 00:00:00'),
(843, 52, 'Toumodi', 'TMD', 1, '0000-00-00 00:00:00'),
(844, 52, 'Vavoua', 'VAV', 1, '0000-00-00 00:00:00'),
(845, 52, 'Yamoussoukro', 'YAM', 1, '0000-00-00 00:00:00'),
(846, 52, 'Zuenoula', 'ZUE', 1, '0000-00-00 00:00:00'),
(847, 53, 'Bjelovar-Bilogora', 'BB', 1, '0000-00-00 00:00:00'),
(848, 53, 'City of Zagreb', 'CZ', 1, '0000-00-00 00:00:00'),
(849, 53, 'Dubrovnik-Neretva', 'DN', 1, '0000-00-00 00:00:00'),
(850, 53, 'Istra', 'IS', 1, '0000-00-00 00:00:00'),
(851, 53, 'Karlovac', 'KA', 1, '0000-00-00 00:00:00'),
(852, 53, 'Koprivnica-Krizevci', 'KK', 1, '0000-00-00 00:00:00'),
(853, 53, 'Krapina-Zagorje', 'KZ', 1, '0000-00-00 00:00:00'),
(854, 53, 'Lika-Senj', 'LS', 1, '0000-00-00 00:00:00'),
(855, 53, 'Medimurje', 'ME', 1, '0000-00-00 00:00:00'),
(856, 53, 'Osijek-Baranja', 'OB', 1, '0000-00-00 00:00:00'),
(857, 53, 'Pozega-Slavonia', 'PS', 1, '0000-00-00 00:00:00'),
(858, 53, 'Primorje-Gorski Kotar', 'PG', 1, '0000-00-00 00:00:00'),
(859, 53, 'Sibenik', 'SI', 1, '0000-00-00 00:00:00'),
(860, 53, 'Sisak-Moslavina', 'SM', 1, '0000-00-00 00:00:00'),
(861, 53, 'Slavonski Brod-Posavina', 'SB', 1, '0000-00-00 00:00:00'),
(862, 53, 'Split-Dalmatia', 'SD', 1, '0000-00-00 00:00:00'),
(863, 53, 'Varazdin', 'VA', 1, '0000-00-00 00:00:00'),
(864, 53, 'Virovitica-Podravina', 'VP', 1, '0000-00-00 00:00:00'),
(865, 53, 'Vukovar-Srijem', 'VS', 1, '0000-00-00 00:00:00'),
(866, 53, 'Zadar-Knin', 'ZK', 1, '0000-00-00 00:00:00'),
(867, 53, 'Zagreb', 'ZA', 1, '0000-00-00 00:00:00'),
(868, 54, 'Camaguey', 'CA', 1, '0000-00-00 00:00:00'),
(869, 54, 'Ciego de Avila', 'CD', 1, '0000-00-00 00:00:00'),
(870, 54, 'Cienfuegos', 'CI', 1, '0000-00-00 00:00:00'),
(871, 54, 'Ciudad de La Habana', 'CH', 1, '0000-00-00 00:00:00'),
(872, 54, 'Granma', 'GR', 1, '0000-00-00 00:00:00'),
(873, 54, 'Guantanamo', 'GU', 1, '0000-00-00 00:00:00'),
(874, 54, 'Holguin', 'HO', 1, '0000-00-00 00:00:00'),
(875, 54, 'Isla de la Juventud', 'IJ', 1, '0000-00-00 00:00:00'),
(876, 54, 'La Habana', 'LH', 1, '0000-00-00 00:00:00'),
(877, 54, 'Las Tunas', 'LT', 1, '0000-00-00 00:00:00'),
(878, 54, 'Matanzas', 'MA', 1, '0000-00-00 00:00:00'),
(879, 54, 'Pinar del Rio', 'PR', 1, '0000-00-00 00:00:00'),
(880, 54, 'Sancti Spiritus', 'SS', 1, '0000-00-00 00:00:00'),
(881, 54, 'Santiago de Cuba', 'SC', 1, '0000-00-00 00:00:00'),
(882, 54, 'Villa Clara', 'VC', 1, '0000-00-00 00:00:00'),
(883, 55, 'Famagusta', 'F', 1, '0000-00-00 00:00:00'),
(884, 55, 'Kyrenia', 'K', 1, '0000-00-00 00:00:00'),
(885, 55, 'Larnaca', 'A', 1, '0000-00-00 00:00:00'),
(886, 55, 'Limassol', 'I', 1, '0000-00-00 00:00:00'),
(887, 55, 'Nicosia', 'N', 1, '0000-00-00 00:00:00'),
(888, 55, 'Paphos', 'P', 1, '0000-00-00 00:00:00'),
(889, 56, 'Ústecký', 'U', 1, '0000-00-00 00:00:00'),
(890, 56, 'Jiho?eský', 'C', 1, '0000-00-00 00:00:00'),
(891, 56, 'Jihomoravský', 'B', 1, '0000-00-00 00:00:00'),
(892, 56, 'Karlovarský', 'K', 1, '0000-00-00 00:00:00'),
(893, 56, 'Královehradecký', 'H', 1, '0000-00-00 00:00:00'),
(894, 56, 'Liberecký', 'L', 1, '0000-00-00 00:00:00'),
(895, 56, 'Moravskoslezský', 'T', 1, '0000-00-00 00:00:00'),
(896, 56, 'Olomoucký', 'M', 1, '0000-00-00 00:00:00'),
(897, 56, 'Pardubický', 'E', 1, '0000-00-00 00:00:00'),
(898, 56, 'Plze?ský', 'P', 1, '0000-00-00 00:00:00'),
(899, 56, 'Praha', 'A', 1, '0000-00-00 00:00:00'),
(900, 56, 'St?edo?eský', 'S', 1, '0000-00-00 00:00:00'),
(901, 56, 'Vyso?ina', 'J', 1, '0000-00-00 00:00:00'),
(902, 56, 'Zlínský', 'Z', 1, '0000-00-00 00:00:00'),
(903, 57, 'Arhus', 'AR', 1, '0000-00-00 00:00:00'),
(904, 57, 'Bornholm', 'BH', 1, '0000-00-00 00:00:00'),
(905, 57, 'Copenhagen', 'CO', 1, '0000-00-00 00:00:00'),
(906, 57, 'Faroe Islands', 'FO', 1, '0000-00-00 00:00:00'),
(907, 57, 'Frederiksborg', 'FR', 1, '0000-00-00 00:00:00'),
(908, 57, 'Fyn', 'FY', 1, '0000-00-00 00:00:00'),
(909, 57, 'Kobenhavn', 'KO', 1, '0000-00-00 00:00:00'),
(910, 57, 'Nordjylland', 'NO', 1, '0000-00-00 00:00:00'),
(911, 57, 'Ribe', 'RI', 1, '0000-00-00 00:00:00'),
(912, 57, 'Ringkobing', 'RK', 1, '0000-00-00 00:00:00'),
(913, 57, 'Roskilde', 'RO', 1, '0000-00-00 00:00:00'),
(914, 57, 'Sonderjylland', 'SO', 1, '0000-00-00 00:00:00'),
(915, 57, 'Storstrom', 'ST', 1, '0000-00-00 00:00:00'),
(916, 57, 'Vejle', 'VK', 1, '0000-00-00 00:00:00'),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1, '0000-00-00 00:00:00'),
(918, 57, 'Viborg', 'VB', 1, '0000-00-00 00:00:00'),
(919, 58, '''Ali Sabih', 'S', 1, '0000-00-00 00:00:00'),
(920, 58, 'Dikhil', 'K', 1, '0000-00-00 00:00:00'),
(921, 58, 'Djibouti', 'J', 1, '0000-00-00 00:00:00'),
(922, 58, 'Obock', 'O', 1, '0000-00-00 00:00:00');
INSERT INTO `r_state` (`id_state`, `id_country`, `name`, `code`, `status`, `date_modified`) VALUES
(923, 58, 'Tadjoura', 'T', 1, '0000-00-00 00:00:00'),
(924, 59, 'Saint Andrew Parish', 'AND', 1, '0000-00-00 00:00:00'),
(925, 59, 'Saint David Parish', 'DAV', 1, '0000-00-00 00:00:00'),
(926, 59, 'Saint George Parish', 'GEO', 1, '0000-00-00 00:00:00'),
(927, 59, 'Saint John Parish', 'JOH', 1, '0000-00-00 00:00:00'),
(928, 59, 'Saint Joseph Parish', 'JOS', 1, '0000-00-00 00:00:00'),
(929, 59, 'Saint Luke Parish', 'LUK', 1, '0000-00-00 00:00:00'),
(930, 59, 'Saint Mark Parish', 'MAR', 1, '0000-00-00 00:00:00'),
(931, 59, 'Saint Patrick Parish', 'PAT', 1, '0000-00-00 00:00:00'),
(932, 59, 'Saint Paul Parish', 'PAU', 1, '0000-00-00 00:00:00'),
(933, 59, 'Saint Peter Parish', 'PET', 1, '0000-00-00 00:00:00'),
(934, 60, 'Distrito Nacional', 'DN', 1, '0000-00-00 00:00:00'),
(935, 60, 'Azua', 'AZ', 1, '0000-00-00 00:00:00'),
(936, 60, 'Baoruco', 'BC', 1, '0000-00-00 00:00:00'),
(937, 60, 'Barahona', 'BH', 1, '0000-00-00 00:00:00'),
(938, 60, 'Dajabon', 'DJ', 1, '0000-00-00 00:00:00'),
(939, 60, 'Duarte', 'DU', 1, '0000-00-00 00:00:00'),
(940, 60, 'Elias Pina', 'EL', 1, '0000-00-00 00:00:00'),
(941, 60, 'El Seybo', 'SY', 1, '0000-00-00 00:00:00'),
(942, 60, 'Espaillat', 'ET', 1, '0000-00-00 00:00:00'),
(943, 60, 'Hato Mayor', 'HM', 1, '0000-00-00 00:00:00'),
(944, 60, 'Independencia', 'IN', 1, '0000-00-00 00:00:00'),
(945, 60, 'La Altagracia', 'AL', 1, '0000-00-00 00:00:00'),
(946, 60, 'La Romana', 'RO', 1, '0000-00-00 00:00:00'),
(947, 60, 'La Vega', 'VE', 1, '0000-00-00 00:00:00'),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1, '0000-00-00 00:00:00'),
(949, 60, 'Monsenor Nouel', 'MN', 1, '0000-00-00 00:00:00'),
(950, 60, 'Monte Cristi', 'MC', 1, '0000-00-00 00:00:00'),
(951, 60, 'Monte Plata', 'MP', 1, '0000-00-00 00:00:00'),
(952, 60, 'Pedernales', 'PD', 1, '0000-00-00 00:00:00'),
(953, 60, 'Peravia (Bani)', 'PR', 1, '0000-00-00 00:00:00'),
(954, 60, 'Puerto Plata', 'PP', 1, '0000-00-00 00:00:00'),
(955, 60, 'Salcedo', 'SL', 1, '0000-00-00 00:00:00'),
(956, 60, 'Samana', 'SM', 1, '0000-00-00 00:00:00'),
(957, 60, 'Sanchez Ramirez', 'SH', 1, '0000-00-00 00:00:00'),
(958, 60, 'San Cristobal', 'SC', 1, '0000-00-00 00:00:00'),
(959, 60, 'San Jose de Ocoa', 'JO', 1, '0000-00-00 00:00:00'),
(960, 60, 'San Juan', 'SJ', 1, '0000-00-00 00:00:00'),
(961, 60, 'San Pedro de Macoris', 'PM', 1, '0000-00-00 00:00:00'),
(962, 60, 'Santiago', 'SA', 1, '0000-00-00 00:00:00'),
(963, 60, 'Santiago Rodriguez', 'ST', 1, '0000-00-00 00:00:00'),
(964, 60, 'Santo Domingo', 'SD', 1, '0000-00-00 00:00:00'),
(965, 60, 'Valverde', 'VA', 1, '0000-00-00 00:00:00'),
(966, 61, 'Aileu', 'AL', 1, '0000-00-00 00:00:00'),
(967, 61, 'Ainaro', 'AN', 1, '0000-00-00 00:00:00'),
(968, 61, 'Baucau', 'BA', 1, '0000-00-00 00:00:00'),
(969, 61, 'Bobonaro', 'BO', 1, '0000-00-00 00:00:00'),
(970, 61, 'Cova Lima', 'CO', 1, '0000-00-00 00:00:00'),
(971, 61, 'Dili', 'DI', 1, '0000-00-00 00:00:00'),
(972, 61, 'Ermera', 'ER', 1, '0000-00-00 00:00:00'),
(973, 61, 'Lautem', 'LA', 1, '0000-00-00 00:00:00'),
(974, 61, 'Liquica', 'LI', 1, '0000-00-00 00:00:00'),
(975, 61, 'Manatuto', 'MT', 1, '0000-00-00 00:00:00'),
(976, 61, 'Manufahi', 'MF', 1, '0000-00-00 00:00:00'),
(977, 61, 'Oecussi', 'OE', 1, '0000-00-00 00:00:00'),
(978, 61, 'Viqueque', 'VI', 1, '0000-00-00 00:00:00'),
(979, 62, 'Azuay', 'AZU', 1, '0000-00-00 00:00:00'),
(980, 62, 'Bolivar', 'BOL', 1, '0000-00-00 00:00:00'),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1, '0000-00-00 00:00:00'),
(982, 62, 'Carchi', 'CAR', 1, '0000-00-00 00:00:00'),
(983, 62, 'Chimborazo', 'CHI', 1, '0000-00-00 00:00:00'),
(984, 62, 'Cotopaxi', 'COT', 1, '0000-00-00 00:00:00'),
(985, 62, 'El Oro', 'EOR', 1, '0000-00-00 00:00:00'),
(986, 62, 'Esmeraldas', 'ESM', 1, '0000-00-00 00:00:00'),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1, '0000-00-00 00:00:00'),
(988, 62, 'Guayas', 'GUA', 1, '0000-00-00 00:00:00'),
(989, 62, 'Imbabura', 'IMB', 1, '0000-00-00 00:00:00'),
(990, 62, 'Loja', 'LOJ', 1, '0000-00-00 00:00:00'),
(991, 62, 'Los Rios', 'LRO', 1, '0000-00-00 00:00:00'),
(992, 62, 'Manab&iacute;', 'MAN', 1, '0000-00-00 00:00:00'),
(993, 62, 'Morona Santiago', 'MSA', 1, '0000-00-00 00:00:00'),
(994, 62, 'Napo', 'NAP', 1, '0000-00-00 00:00:00'),
(995, 62, 'Orellana', 'ORE', 1, '0000-00-00 00:00:00'),
(996, 62, 'Pastaza', 'PAS', 1, '0000-00-00 00:00:00'),
(997, 62, 'Pichincha', 'PIC', 1, '0000-00-00 00:00:00'),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1, '0000-00-00 00:00:00'),
(999, 62, 'Tungurahua', 'TUN', 1, '0000-00-00 00:00:00'),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1, '0000-00-00 00:00:00'),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1, '0000-00-00 00:00:00'),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1, '0000-00-00 00:00:00'),
(1003, 63, 'Al Buhayrah', 'BHY', 1, '0000-00-00 00:00:00'),
(1004, 63, 'Al Fayyum', 'FYM', 1, '0000-00-00 00:00:00'),
(1005, 63, 'Al Gharbiyah', 'GBY', 1, '0000-00-00 00:00:00'),
(1006, 63, 'Al Iskandariyah', 'IDR', 1, '0000-00-00 00:00:00'),
(1007, 63, 'Al Isma''iliyah', 'IML', 1, '0000-00-00 00:00:00'),
(1008, 63, 'Al Jizah', 'JZH', 1, '0000-00-00 00:00:00'),
(1009, 63, 'Al Minufiyah', 'MFY', 1, '0000-00-00 00:00:00'),
(1010, 63, 'Al Minya', 'MNY', 1, '0000-00-00 00:00:00'),
(1011, 63, 'Al Qahirah', 'QHR', 1, '0000-00-00 00:00:00'),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1, '0000-00-00 00:00:00'),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1, '0000-00-00 00:00:00'),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1, '0000-00-00 00:00:00'),
(1015, 63, 'As Suways', 'SWY', 1, '0000-00-00 00:00:00'),
(1016, 63, 'Aswan', 'ASW', 1, '0000-00-00 00:00:00'),
(1017, 63, 'Asyut', 'ASY', 1, '0000-00-00 00:00:00'),
(1018, 63, 'Bani Suwayf', 'BSW', 1, '0000-00-00 00:00:00'),
(1019, 63, 'Bur Sa''id', 'BSD', 1, '0000-00-00 00:00:00'),
(1020, 63, 'Dumyat', 'DMY', 1, '0000-00-00 00:00:00'),
(1021, 63, 'Janub Sina''', 'JNS', 1, '0000-00-00 00:00:00'),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1, '0000-00-00 00:00:00'),
(1023, 63, 'Matruh', 'MAT', 1, '0000-00-00 00:00:00'),
(1024, 63, 'Qina', 'QIN', 1, '0000-00-00 00:00:00'),
(1025, 63, 'Shamal Sina''', 'SHS', 1, '0000-00-00 00:00:00'),
(1026, 63, 'Suhaj', 'SUH', 1, '0000-00-00 00:00:00'),
(1027, 64, 'Ahuachapan', 'AH', 1, '0000-00-00 00:00:00'),
(1028, 64, 'Cabanas', 'CA', 1, '0000-00-00 00:00:00'),
(1029, 64, 'Chalatenango', 'CH', 1, '0000-00-00 00:00:00'),
(1030, 64, 'Cuscatlan', 'CU', 1, '0000-00-00 00:00:00'),
(1031, 64, 'La Libertad', 'LB', 1, '0000-00-00 00:00:00'),
(1032, 64, 'La Paz', 'PZ', 1, '0000-00-00 00:00:00'),
(1033, 64, 'La Union', 'UN', 1, '0000-00-00 00:00:00'),
(1034, 64, 'Morazan', 'MO', 1, '0000-00-00 00:00:00'),
(1035, 64, 'San Miguel', 'SM', 1, '0000-00-00 00:00:00'),
(1036, 64, 'San Salvador', 'SS', 1, '0000-00-00 00:00:00'),
(1037, 64, 'San Vicente', 'SV', 1, '0000-00-00 00:00:00'),
(1038, 64, 'Santa Ana', 'SA', 1, '0000-00-00 00:00:00'),
(1039, 64, 'Sonsonate', 'SO', 1, '0000-00-00 00:00:00'),
(1040, 64, 'Usulutan', 'US', 1, '0000-00-00 00:00:00'),
(1041, 65, 'Provincia Annobon', 'AN', 1, '0000-00-00 00:00:00'),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1, '0000-00-00 00:00:00'),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1, '0000-00-00 00:00:00'),
(1044, 65, 'Provincia Centro Sur', 'CS', 1, '0000-00-00 00:00:00'),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1, '0000-00-00 00:00:00'),
(1046, 65, 'Provincia Litoral', 'LI', 1, '0000-00-00 00:00:00'),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1, '0000-00-00 00:00:00'),
(1048, 66, 'Central (Maekel)', 'MA', 1, '0000-00-00 00:00:00'),
(1049, 66, 'Anseba (Keren)', 'KE', 1, '0000-00-00 00:00:00'),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1, '0000-00-00 00:00:00'),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1, '0000-00-00 00:00:00'),
(1052, 66, 'Southern (Debub)', 'DE', 1, '0000-00-00 00:00:00'),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1, '0000-00-00 00:00:00'),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1, '0000-00-00 00:00:00'),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1, '0000-00-00 00:00:00'),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1, '0000-00-00 00:00:00'),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1, '0000-00-00 00:00:00'),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1, '0000-00-00 00:00:00'),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1, '0000-00-00 00:00:00'),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1, '0000-00-00 00:00:00'),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1, '0000-00-00 00:00:00'),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1, '0000-00-00 00:00:00'),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1, '0000-00-00 00:00:00'),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1, '0000-00-00 00:00:00'),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1, '0000-00-00 00:00:00'),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1, '0000-00-00 00:00:00'),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1, '0000-00-00 00:00:00'),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1, '0000-00-00 00:00:00'),
(1069, 68, 'Afar', 'AF', 1, '0000-00-00 00:00:00'),
(1070, 68, 'Amhara', 'AH', 1, '0000-00-00 00:00:00'),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1, '0000-00-00 00:00:00'),
(1072, 68, 'Gambela', 'GB', 1, '0000-00-00 00:00:00'),
(1073, 68, 'Hariai', 'HR', 1, '0000-00-00 00:00:00'),
(1074, 68, 'Oromia', 'OR', 1, '0000-00-00 00:00:00'),
(1075, 68, 'Somali', 'SM', 1, '0000-00-00 00:00:00'),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1, '0000-00-00 00:00:00'),
(1077, 68, 'Tigray', 'TG', 1, '0000-00-00 00:00:00'),
(1078, 68, 'Addis Ababa', 'AA', 1, '0000-00-00 00:00:00'),
(1079, 68, 'Dire Dawa', 'DD', 1, '0000-00-00 00:00:00'),
(1080, 71, 'Central Division', 'C', 1, '0000-00-00 00:00:00'),
(1081, 71, 'Northern Division', 'N', 1, '0000-00-00 00:00:00'),
(1082, 71, 'Eastern Division', 'E', 1, '0000-00-00 00:00:00'),
(1083, 71, 'Western Division', 'W', 1, '0000-00-00 00:00:00'),
(1084, 71, 'Rotuma', 'R', 1, '0000-00-00 00:00:00'),
(1085, 72, 'Ahvenanmaan Laani', 'AL', 1, '0000-00-00 00:00:00'),
(1086, 72, 'Etela-Suomen Laani', 'ES', 1, '0000-00-00 00:00:00'),
(1087, 72, 'Ita-Suomen Laani', 'IS', 1, '0000-00-00 00:00:00'),
(1088, 72, 'Lansi-Suomen Laani', 'LS', 1, '0000-00-00 00:00:00'),
(1089, 72, 'Lapin Lanani', 'LA', 1, '0000-00-00 00:00:00'),
(1090, 72, 'Oulun Laani', 'OU', 1, '0000-00-00 00:00:00'),
(1114, 74, 'Ain', '01', 1, '0000-00-00 00:00:00'),
(1115, 74, 'Aisne', '02', 1, '0000-00-00 00:00:00'),
(1116, 74, 'Allier', '03', 1, '0000-00-00 00:00:00'),
(1117, 74, 'Alpes de Haute Provence', '04', 1, '0000-00-00 00:00:00'),
(1118, 74, 'Hautes-Alpes', '05', 1, '0000-00-00 00:00:00'),
(1119, 74, 'Alpes Maritimes', '06', 1, '0000-00-00 00:00:00'),
(1120, 74, 'Ard&egrave;che', '07', 1, '0000-00-00 00:00:00'),
(1121, 74, 'Ardennes', '08', 1, '0000-00-00 00:00:00'),
(1122, 74, 'Ari&egrave;ge', '09', 1, '0000-00-00 00:00:00'),
(1123, 74, 'Aube', '10', 1, '0000-00-00 00:00:00'),
(1124, 74, 'Aude', '11', 1, '0000-00-00 00:00:00'),
(1125, 74, 'Aveyron', '12', 1, '0000-00-00 00:00:00'),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1, '0000-00-00 00:00:00'),
(1127, 74, 'Calvados', '14', 1, '0000-00-00 00:00:00'),
(1128, 74, 'Cantal', '15', 1, '0000-00-00 00:00:00'),
(1129, 74, 'Charente', '16', 1, '0000-00-00 00:00:00'),
(1130, 74, 'Charente Maritime', '17', 1, '0000-00-00 00:00:00'),
(1131, 74, 'Cher', '18', 1, '0000-00-00 00:00:00'),
(1132, 74, 'Corr&egrave;ze', '19', 1, '0000-00-00 00:00:00'),
(1133, 74, 'Corse du Sud', '2A', 1, '0000-00-00 00:00:00'),
(1134, 74, 'Haute Corse', '2B', 1, '0000-00-00 00:00:00'),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1, '0000-00-00 00:00:00'),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1, '0000-00-00 00:00:00'),
(1137, 74, 'Creuse', '23', 1, '0000-00-00 00:00:00'),
(1138, 74, 'Dordogne', '24', 1, '0000-00-00 00:00:00'),
(1139, 74, 'Doubs', '25', 1, '0000-00-00 00:00:00'),
(1140, 74, 'Dr&ocirc;me', '26', 1, '0000-00-00 00:00:00'),
(1141, 74, 'Eure', '27', 1, '0000-00-00 00:00:00'),
(1142, 74, 'Eure et Loir', '28', 1, '0000-00-00 00:00:00'),
(1143, 74, 'Finist&egrave;re', '29', 1, '0000-00-00 00:00:00'),
(1144, 74, 'Gard', '30', 1, '0000-00-00 00:00:00'),
(1145, 74, 'Haute Garonne', '31', 1, '0000-00-00 00:00:00'),
(1146, 74, 'Gers', '32', 1, '0000-00-00 00:00:00'),
(1147, 74, 'Gironde', '33', 1, '0000-00-00 00:00:00'),
(1148, 74, 'H&eacute;rault', '34', 1, '0000-00-00 00:00:00'),
(1149, 74, 'Ille et Vilaine', '35', 1, '0000-00-00 00:00:00'),
(1150, 74, 'Indre', '36', 1, '0000-00-00 00:00:00'),
(1151, 74, 'Indre et Loire', '37', 1, '0000-00-00 00:00:00'),
(1152, 74, 'Is&eacute;re', '38', 1, '0000-00-00 00:00:00'),
(1153, 74, 'Jura', '39', 1, '0000-00-00 00:00:00'),
(1154, 74, 'Landes', '40', 1, '0000-00-00 00:00:00'),
(1155, 74, 'Loir et Cher', '41', 1, '0000-00-00 00:00:00'),
(1156, 74, 'Loire', '42', 1, '0000-00-00 00:00:00'),
(1157, 74, 'Haute Loire', '43', 1, '0000-00-00 00:00:00'),
(1158, 74, 'Loire Atlantique', '44', 1, '0000-00-00 00:00:00'),
(1159, 74, 'Loiret', '45', 1, '0000-00-00 00:00:00'),
(1160, 74, 'Lot', '46', 1, '0000-00-00 00:00:00'),
(1161, 74, 'Lot et Garonne', '47', 1, '0000-00-00 00:00:00'),
(1162, 74, 'Loz&egrave;re', '48', 1, '0000-00-00 00:00:00'),
(1163, 74, 'Maine et Loire', '49', 1, '0000-00-00 00:00:00'),
(1164, 74, 'Manche', '50', 1, '0000-00-00 00:00:00'),
(1165, 74, 'Marne', '51', 1, '0000-00-00 00:00:00'),
(1166, 74, 'Haute Marne', '52', 1, '0000-00-00 00:00:00'),
(1167, 74, 'Mayenne', '53', 1, '0000-00-00 00:00:00'),
(1168, 74, 'Meurthe et Moselle', '54', 1, '0000-00-00 00:00:00'),
(1169, 74, 'Meuse', '55', 1, '0000-00-00 00:00:00'),
(1170, 74, 'Morbihan', '56', 1, '0000-00-00 00:00:00'),
(1171, 74, 'Moselle', '57', 1, '0000-00-00 00:00:00'),
(1172, 74, 'Ni&egrave;vre', '58', 1, '0000-00-00 00:00:00'),
(1173, 74, 'Nord', '59', 1, '0000-00-00 00:00:00'),
(1174, 74, 'Oise', '60', 1, '0000-00-00 00:00:00'),
(1175, 74, 'Orne', '61', 1, '0000-00-00 00:00:00'),
(1176, 74, 'Pas de Calais', '62', 1, '0000-00-00 00:00:00'),
(1177, 74, 'Puy de D&ocirc;me', '63', 1, '0000-00-00 00:00:00'),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1, '0000-00-00 00:00:00'),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1, '0000-00-00 00:00:00'),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1, '0000-00-00 00:00:00'),
(1181, 74, 'Bas Rhin', '67', 1, '0000-00-00 00:00:00'),
(1182, 74, 'Haut Rhin', '68', 1, '0000-00-00 00:00:00'),
(1183, 74, 'Rh&ocirc;ne', '69', 1, '0000-00-00 00:00:00'),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1, '0000-00-00 00:00:00'),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1, '0000-00-00 00:00:00'),
(1186, 74, 'Sarthe', '72', 1, '0000-00-00 00:00:00'),
(1187, 74, 'Savoie', '73', 1, '0000-00-00 00:00:00'),
(1188, 74, 'Haute Savoie', '74', 1, '0000-00-00 00:00:00'),
(1189, 74, 'Paris', '75', 1, '0000-00-00 00:00:00'),
(1190, 74, 'Seine Maritime', '76', 1, '0000-00-00 00:00:00'),
(1191, 74, 'Seine et Marne', '77', 1, '0000-00-00 00:00:00'),
(1192, 74, 'Yvelines', '78', 1, '0000-00-00 00:00:00'),
(1193, 74, 'Deux S&egrave;vres', '79', 1, '0000-00-00 00:00:00'),
(1194, 74, 'Somme', '80', 1, '0000-00-00 00:00:00'),
(1195, 74, 'Tarn', '81', 1, '0000-00-00 00:00:00'),
(1196, 74, 'Tarn et Garonne', '82', 1, '0000-00-00 00:00:00'),
(1197, 74, 'Var', '83', 1, '0000-00-00 00:00:00'),
(1198, 74, 'Vaucluse', '84', 1, '0000-00-00 00:00:00'),
(1199, 74, 'Vend&eacute;e', '85', 1, '0000-00-00 00:00:00'),
(1200, 74, 'Vienne', '86', 1, '0000-00-00 00:00:00'),
(1201, 74, 'Haute Vienne', '87', 1, '0000-00-00 00:00:00'),
(1202, 74, 'Vosges', '88', 1, '0000-00-00 00:00:00'),
(1203, 74, 'Yonne', '89', 1, '0000-00-00 00:00:00'),
(1204, 74, 'Territoire de Belfort', '90', 1, '0000-00-00 00:00:00'),
(1205, 74, 'Essonne', '91', 1, '0000-00-00 00:00:00'),
(1206, 74, 'Hauts de Seine', '92', 1, '0000-00-00 00:00:00'),
(1207, 74, 'Seine St-Denis', '93', 1, '0000-00-00 00:00:00'),
(1208, 74, 'Val de Marne', '94', 1, '0000-00-00 00:00:00'),
(1209, 74, 'Val d''Oise', '95', 1, '0000-00-00 00:00:00'),
(1210, 76, 'Archipel des Marquises', 'M', 1, '0000-00-00 00:00:00'),
(1211, 76, 'Archipel des Tuamotu', 'T', 1, '0000-00-00 00:00:00'),
(1212, 76, 'Archipel des Tubuai', 'I', 1, '0000-00-00 00:00:00'),
(1213, 76, 'Iles du Vent', 'V', 1, '0000-00-00 00:00:00'),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1, '0000-00-00 00:00:00'),
(1215, 77, 'Iles Crozet', 'C', 1, '0000-00-00 00:00:00'),
(1216, 77, 'Iles Kerguelen', 'K', 1, '0000-00-00 00:00:00'),
(1217, 77, 'Ile Amsterdam', 'A', 1, '0000-00-00 00:00:00'),
(1218, 77, 'Ile Saint-Paul', 'P', 1, '0000-00-00 00:00:00'),
(1219, 77, 'Adelie Land', 'D', 1, '0000-00-00 00:00:00'),
(1220, 78, 'Estuaire', 'ES', 1, '0000-00-00 00:00:00'),
(1221, 78, 'Haut-Ogooue', 'HO', 1, '0000-00-00 00:00:00'),
(1222, 78, 'Moyen-Ogooue', 'MO', 1, '0000-00-00 00:00:00'),
(1223, 78, 'Ngounie', 'NG', 1, '0000-00-00 00:00:00'),
(1224, 78, 'Nyanga', 'NY', 1, '0000-00-00 00:00:00'),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1, '0000-00-00 00:00:00'),
(1226, 78, 'Ogooue-Lolo', 'OL', 1, '0000-00-00 00:00:00'),
(1227, 78, 'Ogooue-Maritime', 'OM', 1, '0000-00-00 00:00:00'),
(1228, 78, 'Woleu-Ntem', 'WN', 1, '0000-00-00 00:00:00'),
(1229, 79, 'Banjul', 'BJ', 1, '0000-00-00 00:00:00'),
(1230, 79, 'Basse', 'BS', 1, '0000-00-00 00:00:00'),
(1231, 79, 'Brikama', 'BR', 1, '0000-00-00 00:00:00'),
(1232, 79, 'Janjangbure', 'JA', 1, '0000-00-00 00:00:00'),
(1233, 79, 'Kanifeng', 'KA', 1, '0000-00-00 00:00:00'),
(1234, 79, 'Kerewan', 'KE', 1, '0000-00-00 00:00:00'),
(1235, 79, 'Kuntaur', 'KU', 1, '0000-00-00 00:00:00'),
(1236, 79, 'Mansakonko', 'MA', 1, '0000-00-00 00:00:00'),
(1237, 79, 'Lower River', 'LR', 1, '0000-00-00 00:00:00'),
(1238, 79, 'Central River', 'CR', 1, '0000-00-00 00:00:00'),
(1239, 79, 'North Bank', 'NB', 1, '0000-00-00 00:00:00'),
(1240, 79, 'Upper River', 'UR', 1, '0000-00-00 00:00:00'),
(1241, 79, 'Western', 'WE', 1, '0000-00-00 00:00:00'),
(1242, 80, 'Abkhazia', 'AB', 1, '0000-00-00 00:00:00'),
(1243, 80, 'Ajaria', 'AJ', 1, '0000-00-00 00:00:00'),
(1244, 80, 'Tbilisi', 'TB', 1, '0000-00-00 00:00:00'),
(1245, 80, 'Guria', 'GU', 1, '0000-00-00 00:00:00'),
(1246, 80, 'Imereti', 'IM', 1, '0000-00-00 00:00:00'),
(1247, 80, 'Kakheti', 'KA', 1, '0000-00-00 00:00:00'),
(1248, 80, 'Kvemo Kartli', 'KK', 1, '0000-00-00 00:00:00'),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1, '0000-00-00 00:00:00'),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1, '0000-00-00 00:00:00'),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1, '0000-00-00 00:00:00'),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1, '0000-00-00 00:00:00'),
(1253, 80, 'Shida Kartli', 'SK', 1, '0000-00-00 00:00:00'),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1, '0000-00-00 00:00:00'),
(1255, 81, 'Bayern', 'BAY', 1, '0000-00-00 00:00:00'),
(1256, 81, 'Berlin', 'BER', 1, '0000-00-00 00:00:00'),
(1257, 81, 'Brandenburg', 'BRG', 1, '0000-00-00 00:00:00'),
(1258, 81, 'Bremen', 'BRE', 1, '0000-00-00 00:00:00'),
(1259, 81, 'Hamburg', 'HAM', 1, '0000-00-00 00:00:00'),
(1260, 81, 'Hessen', 'HES', 1, '0000-00-00 00:00:00'),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1, '0000-00-00 00:00:00'),
(1262, 81, 'Niedersachsen', 'NDS', 1, '0000-00-00 00:00:00'),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1, '0000-00-00 00:00:00'),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1, '0000-00-00 00:00:00'),
(1265, 81, 'Saarland', 'SAR', 1, '0000-00-00 00:00:00'),
(1266, 81, 'Sachsen', 'SAS', 1, '0000-00-00 00:00:00'),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1, '0000-00-00 00:00:00'),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1, '0000-00-00 00:00:00'),
(1269, 81, 'Th&uuml;ringen', 'THE', 1, '0000-00-00 00:00:00'),
(1270, 82, 'Ashanti Region', 'AS', 1, '0000-00-00 00:00:00'),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1, '0000-00-00 00:00:00'),
(1272, 82, 'Central Region', 'CE', 1, '0000-00-00 00:00:00'),
(1273, 82, 'Eastern Region', 'EA', 1, '0000-00-00 00:00:00'),
(1274, 82, 'Greater Accra Region', 'GA', 1, '0000-00-00 00:00:00'),
(1275, 82, 'Northern Region', 'NO', 1, '0000-00-00 00:00:00'),
(1276, 82, 'Upper East Region', 'UE', 1, '0000-00-00 00:00:00'),
(1277, 82, 'Upper West Region', 'UW', 1, '0000-00-00 00:00:00'),
(1278, 82, 'Volta Region', 'VO', 1, '0000-00-00 00:00:00'),
(1279, 82, 'Western Region', 'WE', 1, '0000-00-00 00:00:00'),
(1280, 84, 'Attica', 'AT', 1, '0000-00-00 00:00:00'),
(1281, 84, 'Central Greece', 'CN', 1, '0000-00-00 00:00:00'),
(1282, 84, 'Central Macedonia', 'CM', 1, '0000-00-00 00:00:00'),
(1283, 84, 'Crete', 'CR', 1, '0000-00-00 00:00:00'),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1, '0000-00-00 00:00:00'),
(1285, 84, 'Epirus', 'EP', 1, '0000-00-00 00:00:00'),
(1286, 84, 'Ionian Islands', 'II', 1, '0000-00-00 00:00:00'),
(1287, 84, 'North Aegean', 'NA', 1, '0000-00-00 00:00:00'),
(1288, 84, 'Peloponnesos', 'PP', 1, '0000-00-00 00:00:00'),
(1289, 84, 'South Aegean', 'SA', 1, '0000-00-00 00:00:00'),
(1290, 84, 'Thessaly', 'TH', 1, '0000-00-00 00:00:00'),
(1291, 84, 'West Greece', 'WG', 1, '0000-00-00 00:00:00'),
(1292, 84, 'West Macedonia', 'WM', 1, '0000-00-00 00:00:00'),
(1293, 85, 'Avannaa', 'A', 1, '0000-00-00 00:00:00'),
(1294, 85, 'Tunu', 'T', 1, '0000-00-00 00:00:00'),
(1295, 85, 'Kitaa', 'K', 1, '0000-00-00 00:00:00'),
(1296, 86, 'Saint Andrew', 'A', 1, '0000-00-00 00:00:00'),
(1297, 86, 'Saint David', 'D', 1, '0000-00-00 00:00:00'),
(1298, 86, 'Saint George', 'G', 1, '0000-00-00 00:00:00'),
(1299, 86, 'Saint John', 'J', 1, '0000-00-00 00:00:00'),
(1300, 86, 'Saint Mark', 'M', 1, '0000-00-00 00:00:00'),
(1301, 86, 'Saint Patrick', 'P', 1, '0000-00-00 00:00:00'),
(1302, 86, 'Carriacou', 'C', 1, '0000-00-00 00:00:00'),
(1303, 86, 'Petit Martinique', 'Q', 1, '0000-00-00 00:00:00'),
(1304, 89, 'Alta Verapaz', 'AV', 1, '0000-00-00 00:00:00'),
(1305, 89, 'Baja Verapaz', 'BV', 1, '0000-00-00 00:00:00'),
(1306, 89, 'Chimaltenango', 'CM', 1, '0000-00-00 00:00:00'),
(1307, 89, 'Chiquimula', 'CQ', 1, '0000-00-00 00:00:00'),
(1308, 89, 'El Peten', 'PE', 1, '0000-00-00 00:00:00'),
(1309, 89, 'El Progreso', 'PR', 1, '0000-00-00 00:00:00'),
(1310, 89, 'El Quiche', 'QC', 1, '0000-00-00 00:00:00'),
(1311, 89, 'Escuintla', 'ES', 1, '0000-00-00 00:00:00'),
(1312, 89, 'Guatemala', 'GU', 1, '0000-00-00 00:00:00'),
(1313, 89, 'Huehuetenango', 'HU', 1, '0000-00-00 00:00:00'),
(1314, 89, 'Izabal', 'IZ', 1, '0000-00-00 00:00:00'),
(1315, 89, 'Jalapa', 'JA', 1, '0000-00-00 00:00:00'),
(1316, 89, 'Jutiapa', 'JU', 1, '0000-00-00 00:00:00'),
(1317, 89, 'Quetzaltenango', 'QZ', 1, '0000-00-00 00:00:00'),
(1318, 89, 'Retalhuleu', 'RE', 1, '0000-00-00 00:00:00'),
(1319, 89, 'Sacatepequez', 'ST', 1, '0000-00-00 00:00:00'),
(1320, 89, 'San Marcos', 'SM', 1, '0000-00-00 00:00:00'),
(1321, 89, 'Santa Rosa', 'SR', 1, '0000-00-00 00:00:00'),
(1322, 89, 'Solola', 'SO', 1, '0000-00-00 00:00:00'),
(1323, 89, 'Suchitepequez', 'SU', 1, '0000-00-00 00:00:00'),
(1324, 89, 'Totonicapan', 'TO', 1, '0000-00-00 00:00:00'),
(1325, 89, 'Zacapa', 'ZA', 1, '0000-00-00 00:00:00'),
(1326, 90, 'Conakry', 'CNK', 1, '0000-00-00 00:00:00'),
(1327, 90, 'Beyla', 'BYL', 1, '0000-00-00 00:00:00'),
(1328, 90, 'Boffa', 'BFA', 1, '0000-00-00 00:00:00'),
(1329, 90, 'Boke', 'BOK', 1, '0000-00-00 00:00:00'),
(1330, 90, 'Coyah', 'COY', 1, '0000-00-00 00:00:00'),
(1331, 90, 'Dabola', 'DBL', 1, '0000-00-00 00:00:00'),
(1332, 90, 'Dalaba', 'DLB', 1, '0000-00-00 00:00:00'),
(1333, 90, 'Dinguiraye', 'DGR', 1, '0000-00-00 00:00:00'),
(1334, 90, 'Dubreka', 'DBR', 1, '0000-00-00 00:00:00'),
(1335, 90, 'Faranah', 'FRN', 1, '0000-00-00 00:00:00'),
(1336, 90, 'Forecariah', 'FRC', 1, '0000-00-00 00:00:00'),
(1337, 90, 'Fria', 'FRI', 1, '0000-00-00 00:00:00'),
(1338, 90, 'Gaoual', 'GAO', 1, '0000-00-00 00:00:00'),
(1339, 90, 'Gueckedou', 'GCD', 1, '0000-00-00 00:00:00'),
(1340, 90, 'Kankan', 'KNK', 1, '0000-00-00 00:00:00'),
(1341, 90, 'Kerouane', 'KRN', 1, '0000-00-00 00:00:00'),
(1342, 90, 'Kindia', 'KND', 1, '0000-00-00 00:00:00'),
(1343, 90, 'Kissidougou', 'KSD', 1, '0000-00-00 00:00:00'),
(1344, 90, 'Koubia', 'KBA', 1, '0000-00-00 00:00:00'),
(1345, 90, 'Koundara', 'KDA', 1, '0000-00-00 00:00:00'),
(1346, 90, 'Kouroussa', 'KRA', 1, '0000-00-00 00:00:00'),
(1347, 90, 'Labe', 'LAB', 1, '0000-00-00 00:00:00'),
(1348, 90, 'Lelouma', 'LLM', 1, '0000-00-00 00:00:00'),
(1349, 90, 'Lola', 'LOL', 1, '0000-00-00 00:00:00'),
(1350, 90, 'Macenta', 'MCT', 1, '0000-00-00 00:00:00'),
(1351, 90, 'Mali', 'MAL', 1, '0000-00-00 00:00:00'),
(1352, 90, 'Mamou', 'MAM', 1, '0000-00-00 00:00:00'),
(1353, 90, 'Mandiana', 'MAN', 1, '0000-00-00 00:00:00'),
(1354, 90, 'Nzerekore', 'NZR', 1, '0000-00-00 00:00:00'),
(1355, 90, 'Pita', 'PIT', 1, '0000-00-00 00:00:00'),
(1356, 90, 'Siguiri', 'SIG', 1, '0000-00-00 00:00:00'),
(1357, 90, 'Telimele', 'TLM', 1, '0000-00-00 00:00:00'),
(1358, 90, 'Tougue', 'TOG', 1, '0000-00-00 00:00:00'),
(1359, 90, 'Yomou', 'YOM', 1, '0000-00-00 00:00:00'),
(1360, 91, 'Bafata Region', 'BF', 1, '0000-00-00 00:00:00'),
(1361, 91, 'Biombo Region', 'BB', 1, '0000-00-00 00:00:00'),
(1362, 91, 'Bissau Region', 'BS', 1, '0000-00-00 00:00:00'),
(1363, 91, 'Bolama Region', 'BL', 1, '0000-00-00 00:00:00'),
(1364, 91, 'Cacheu Region', 'CA', 1, '0000-00-00 00:00:00'),
(1365, 91, 'Gabu Region', 'GA', 1, '0000-00-00 00:00:00'),
(1366, 91, 'Oio Region', 'OI', 1, '0000-00-00 00:00:00'),
(1367, 91, 'Quinara Region', 'QU', 1, '0000-00-00 00:00:00'),
(1368, 91, 'Tombali Region', 'TO', 1, '0000-00-00 00:00:00'),
(1369, 92, 'Barima-Waini', 'BW', 1, '0000-00-00 00:00:00'),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1, '0000-00-00 00:00:00'),
(1371, 92, 'Demerara-Mahaica', 'DM', 1, '0000-00-00 00:00:00'),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1, '0000-00-00 00:00:00'),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1, '0000-00-00 00:00:00'),
(1374, 92, 'Mahaica-Berbice', 'MB', 1, '0000-00-00 00:00:00'),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1, '0000-00-00 00:00:00'),
(1376, 92, 'Potaro-Siparuni', 'PI', 1, '0000-00-00 00:00:00'),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1, '0000-00-00 00:00:00'),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1, '0000-00-00 00:00:00'),
(1379, 93, 'Artibonite', 'AR', 1, '0000-00-00 00:00:00'),
(1380, 93, 'Centre', 'CE', 1, '0000-00-00 00:00:00'),
(1381, 93, 'Grand''Anse', 'GA', 1, '0000-00-00 00:00:00'),
(1382, 93, 'Nord', 'ND', 1, '0000-00-00 00:00:00'),
(1383, 93, 'Nord-Est', 'NE', 1, '0000-00-00 00:00:00'),
(1384, 93, 'Nord-Ouest', 'NO', 1, '0000-00-00 00:00:00'),
(1385, 93, 'Ouest', 'OU', 1, '0000-00-00 00:00:00'),
(1386, 93, 'Sud', 'SD', 1, '0000-00-00 00:00:00'),
(1387, 93, 'Sud-Est', 'SE', 1, '0000-00-00 00:00:00'),
(1388, 94, 'Flat Island', 'F', 1, '0000-00-00 00:00:00'),
(1389, 94, 'McDonald Island', 'M', 1, '0000-00-00 00:00:00'),
(1390, 94, 'Shag Island', 'S', 1, '0000-00-00 00:00:00'),
(1391, 94, 'Heard Island', 'H', 1, '0000-00-00 00:00:00'),
(1392, 95, 'Atlantida', 'AT', 1, '0000-00-00 00:00:00'),
(1393, 95, 'Choluteca', 'CH', 1, '0000-00-00 00:00:00'),
(1394, 95, 'Colon', 'CL', 1, '0000-00-00 00:00:00'),
(1395, 95, 'Comayagua', 'CM', 1, '0000-00-00 00:00:00'),
(1396, 95, 'Copan', 'CP', 1, '0000-00-00 00:00:00'),
(1397, 95, 'Cortes', 'CR', 1, '0000-00-00 00:00:00'),
(1398, 95, 'El Paraiso', 'PA', 1, '0000-00-00 00:00:00'),
(1399, 95, 'Francisco Morazan', 'FM', 1, '0000-00-00 00:00:00'),
(1400, 95, 'Gracias a Dios', 'GD', 1, '0000-00-00 00:00:00'),
(1401, 95, 'Intibuca', 'IN', 1, '0000-00-00 00:00:00'),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1, '0000-00-00 00:00:00'),
(1403, 95, 'La Paz', 'PZ', 1, '0000-00-00 00:00:00'),
(1404, 95, 'Lempira', 'LE', 1, '0000-00-00 00:00:00'),
(1405, 95, 'Ocotepeque', 'OC', 1, '0000-00-00 00:00:00'),
(1406, 95, 'Olancho', 'OL', 1, '0000-00-00 00:00:00'),
(1407, 95, 'Santa Barbara', 'SB', 1, '0000-00-00 00:00:00'),
(1408, 95, 'Valle', 'VA', 1, '0000-00-00 00:00:00'),
(1409, 95, 'Yoro', 'YO', 1, '0000-00-00 00:00:00'),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1, '0000-00-00 00:00:00'),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1, '0000-00-00 00:00:00'),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1, '0000-00-00 00:00:00'),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1, '0000-00-00 00:00:00'),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1, '0000-00-00 00:00:00'),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1, '0000-00-00 00:00:00'),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1, '0000-00-00 00:00:00'),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1, '0000-00-00 00:00:00'),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1, '0000-00-00 00:00:00'),
(1419, 96, 'Islands New Territories', 'NIS', 1, '0000-00-00 00:00:00'),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1, '0000-00-00 00:00:00'),
(1421, 96, 'North New Territories', 'NNO', 1, '0000-00-00 00:00:00'),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1, '0000-00-00 00:00:00'),
(1423, 96, 'Sha Tin New Territories', 'NST', 1, '0000-00-00 00:00:00'),
(1424, 96, 'Tai Po New Territories', 'NTP', 1, '0000-00-00 00:00:00'),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1, '0000-00-00 00:00:00'),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1, '0000-00-00 00:00:00'),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1, '0000-00-00 00:00:00'),
(1428, 97, 'Bacs-Kiskun', 'BK', 1, '0000-00-00 00:00:00'),
(1429, 97, 'Baranya', 'BA', 1, '0000-00-00 00:00:00'),
(1430, 97, 'Bekes', 'BE', 1, '0000-00-00 00:00:00'),
(1431, 97, 'Bekescsaba', 'BS', 1, '0000-00-00 00:00:00'),
(1432, 97, 'Borsod-Abauj-Zemplen', 'BZ', 1, '0000-00-00 00:00:00'),
(1433, 97, 'Budapest', 'BU', 1, '0000-00-00 00:00:00'),
(1434, 97, 'Csongrad', 'CS', 1, '0000-00-00 00:00:00'),
(1435, 97, 'Debrecen', 'DE', 1, '0000-00-00 00:00:00'),
(1436, 97, 'Dunaujvaros', 'DU', 1, '0000-00-00 00:00:00'),
(1437, 97, 'Eger', 'EG', 1, '0000-00-00 00:00:00'),
(1438, 97, 'Fejer', 'FE', 1, '0000-00-00 00:00:00'),
(1439, 97, 'Gyor', 'GY', 1, '0000-00-00 00:00:00'),
(1440, 97, 'Gyor-Moson-Sopron', 'GM', 1, '0000-00-00 00:00:00'),
(1441, 97, 'Hajdu-Bihar', 'HB', 1, '0000-00-00 00:00:00'),
(1442, 97, 'Heves', 'HE', 1, '0000-00-00 00:00:00'),
(1443, 97, 'Hodmezovasarhely', 'HO', 1, '0000-00-00 00:00:00'),
(1444, 97, 'Jasz-Nagykun-Szolnok', 'JN', 1, '0000-00-00 00:00:00'),
(1445, 97, 'Kaposvar', 'KA', 1, '0000-00-00 00:00:00'),
(1446, 97, 'Kecskemet', 'KE', 1, '0000-00-00 00:00:00'),
(1447, 97, 'Komarom-Esztergom', 'KO', 1, '0000-00-00 00:00:00'),
(1448, 97, 'Miskolc', 'MI', 1, '0000-00-00 00:00:00'),
(1449, 97, 'Nagykanizsa', 'NA', 1, '0000-00-00 00:00:00'),
(1450, 97, 'Nograd', 'NO', 1, '0000-00-00 00:00:00'),
(1451, 97, 'Nyiregyhaza', 'NY', 1, '0000-00-00 00:00:00'),
(1452, 97, 'Pecs', 'PE', 1, '0000-00-00 00:00:00'),
(1453, 97, 'Pest', 'PS', 1, '0000-00-00 00:00:00'),
(1454, 97, 'Somogy', 'SO', 1, '0000-00-00 00:00:00'),
(1455, 97, 'Sopron', 'SP', 1, '0000-00-00 00:00:00'),
(1456, 97, 'Szabolcs-Szatmar-Bereg', 'SS', 1, '0000-00-00 00:00:00'),
(1457, 97, 'Szeged', 'SZ', 1, '0000-00-00 00:00:00'),
(1458, 97, 'Szekesfehervar', 'SE', 1, '0000-00-00 00:00:00'),
(1459, 97, 'Szolnok', 'SL', 1, '0000-00-00 00:00:00'),
(1460, 97, 'Szombathely', 'SM', 1, '0000-00-00 00:00:00'),
(1461, 97, 'Tatabanya', 'TA', 1, '0000-00-00 00:00:00'),
(1462, 97, 'Tolna', 'TO', 1, '0000-00-00 00:00:00'),
(1463, 97, 'Vas', 'VA', 1, '0000-00-00 00:00:00'),
(1464, 97, 'Veszprem', 'VE', 1, '0000-00-00 00:00:00'),
(1465, 97, 'Zala', 'ZA', 1, '0000-00-00 00:00:00'),
(1466, 97, 'Zalaegerszeg', 'ZZ', 1, '0000-00-00 00:00:00'),
(1467, 98, 'Austurland', 'AL', 1, '0000-00-00 00:00:00'),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1, '0000-00-00 00:00:00'),
(1469, 98, 'Norourland eystra', 'NE', 1, '0000-00-00 00:00:00'),
(1470, 98, 'Norourland vestra', 'NV', 1, '0000-00-00 00:00:00'),
(1471, 98, 'Suourland', 'SL', 1, '0000-00-00 00:00:00'),
(1472, 98, 'Suournes', 'SN', 1, '0000-00-00 00:00:00'),
(1473, 98, 'Vestfiroir', 'VF', 1, '0000-00-00 00:00:00'),
(1474, 98, 'Vesturland', 'VL', 1, '0000-00-00 00:00:00'),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1, '0000-00-00 00:00:00'),
(1476, 99, 'Andhra Pradesh', 'AP', 1, '0000-00-00 00:00:00'),
(1477, 99, 'Arunachal Pradesh', 'AR', 1, '0000-00-00 00:00:00'),
(1478, 99, 'Assam', 'AS', 1, '0000-00-00 00:00:00'),
(1479, 99, 'Bihar', 'BI', 1, '0000-00-00 00:00:00'),
(1480, 99, 'Chandigarh', 'CH', 1, '0000-00-00 00:00:00'),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1, '0000-00-00 00:00:00'),
(1482, 99, 'Daman and Diu', 'DM', 1, '0000-00-00 00:00:00'),
(1483, 99, 'Delhi', 'DE', 1, '0000-00-00 00:00:00'),
(1484, 99, 'Goa', 'GO', 1, '0000-00-00 00:00:00'),
(1485, 99, 'Gujarat', 'GU', 1, '0000-00-00 00:00:00'),
(1486, 99, 'Haryana', 'HA', 1, '0000-00-00 00:00:00'),
(1487, 99, 'Himachal Pradesh', 'HP', 1, '0000-00-00 00:00:00'),
(1488, 99, 'Jammu and Kashmir', 'JA', 1, '0000-00-00 00:00:00'),
(1489, 99, 'Karnataka', 'KA', 1, '0000-00-00 00:00:00'),
(1490, 99, 'Kerala', 'KE', 1, '0000-00-00 00:00:00'),
(1491, 99, 'Lakshadweep Islands', 'LI', 1, '0000-00-00 00:00:00'),
(1492, 99, 'Madhya Pradesh', 'MP', 1, '0000-00-00 00:00:00'),
(1493, 99, 'Maharashtra', 'MA', 1, '0000-00-00 00:00:00'),
(1494, 99, 'Manipur', 'MN', 1, '0000-00-00 00:00:00'),
(1495, 99, 'Meghalaya', 'ME', 1, '0000-00-00 00:00:00'),
(1496, 99, 'Mizoram', 'MI', 1, '0000-00-00 00:00:00'),
(1497, 99, 'Nagaland', 'NA', 1, '0000-00-00 00:00:00'),
(1498, 99, 'Orissa', 'OR', 1, '0000-00-00 00:00:00'),
(1499, 99, 'Pondicherry', 'PO', 1, '0000-00-00 00:00:00'),
(1500, 99, 'Punjab', 'PU', 1, '0000-00-00 00:00:00'),
(1501, 99, 'Rajasthan', 'RA', 1, '0000-00-00 00:00:00'),
(1502, 99, 'Sikkim', 'SI', 1, '0000-00-00 00:00:00'),
(1503, 99, 'Tamil Nadu', 'TN', 1, '0000-00-00 00:00:00'),
(1504, 99, 'Tripura', 'TR', 1, '0000-00-00 00:00:00'),
(1505, 99, 'Uttar Pradesh', 'UP', 1, '0000-00-00 00:00:00'),
(1506, 99, 'West Bengal', 'WB', 1, '0000-00-00 00:00:00'),
(1507, 100, 'Aceh', 'AC', 1, '0000-00-00 00:00:00'),
(1508, 100, 'Bali', 'BA', 1, '0000-00-00 00:00:00'),
(1509, 100, 'Banten', 'BT', 1, '0000-00-00 00:00:00'),
(1510, 100, 'Bengkulu', 'BE', 1, '0000-00-00 00:00:00'),
(1511, 100, 'BoDeTaBek', 'BD', 1, '0000-00-00 00:00:00'),
(1512, 100, 'Gorontalo', 'GO', 1, '0000-00-00 00:00:00'),
(1513, 100, 'Jakarta Raya', 'JK', 1, '0000-00-00 00:00:00'),
(1514, 100, 'Jambi', 'JA', 1, '0000-00-00 00:00:00'),
(1515, 100, 'Jawa Barat', 'JB', 1, '0000-00-00 00:00:00'),
(1516, 100, 'Jawa Tengah', 'JT', 1, '0000-00-00 00:00:00'),
(1517, 100, 'Jawa Timur', 'JI', 1, '0000-00-00 00:00:00'),
(1518, 100, 'Kalimantan Barat', 'KB', 1, '0000-00-00 00:00:00'),
(1519, 100, 'Kalimantan Selatan', 'KS', 1, '0000-00-00 00:00:00'),
(1520, 100, 'Kalimantan Tengah', 'KT', 1, '0000-00-00 00:00:00'),
(1521, 100, 'Kalimantan Timur', 'KI', 1, '0000-00-00 00:00:00'),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1, '0000-00-00 00:00:00'),
(1523, 100, 'Lampung', 'LA', 1, '0000-00-00 00:00:00'),
(1524, 100, 'Maluku', 'MA', 1, '0000-00-00 00:00:00'),
(1525, 100, 'Maluku Utara', 'MU', 1, '0000-00-00 00:00:00'),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1, '0000-00-00 00:00:00'),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1, '0000-00-00 00:00:00'),
(1528, 100, 'Papua', 'PA', 1, '0000-00-00 00:00:00'),
(1529, 100, 'Riau', 'RI', 1, '0000-00-00 00:00:00'),
(1530, 100, 'Sulawesi Selatan', 'SN', 1, '0000-00-00 00:00:00'),
(1531, 100, 'Sulawesi Tengah', 'ST', 1, '0000-00-00 00:00:00'),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1, '0000-00-00 00:00:00'),
(1533, 100, 'Sulawesi Utara', 'SA', 1, '0000-00-00 00:00:00'),
(1534, 100, 'Sumatera Barat', 'SB', 1, '0000-00-00 00:00:00'),
(1535, 100, 'Sumatera Selatan', 'SS', 1, '0000-00-00 00:00:00'),
(1536, 100, 'Sumatera Utara', 'SU', 1, '0000-00-00 00:00:00'),
(1537, 100, 'Yogyakarta', 'YO', 1, '0000-00-00 00:00:00'),
(1538, 101, 'Tehran', 'TEH', 1, '0000-00-00 00:00:00'),
(1539, 101, 'Qom', 'QOM', 1, '0000-00-00 00:00:00'),
(1540, 101, 'Markazi', 'MKZ', 1, '0000-00-00 00:00:00'),
(1541, 101, 'Qazvin', 'QAZ', 1, '0000-00-00 00:00:00'),
(1542, 101, 'Gilan', 'GIL', 1, '0000-00-00 00:00:00'),
(1543, 101, 'Ardabil', 'ARD', 1, '0000-00-00 00:00:00'),
(1544, 101, 'Zanjan', 'ZAN', 1, '0000-00-00 00:00:00'),
(1545, 101, 'East Azarbaijan', 'EAZ', 1, '0000-00-00 00:00:00'),
(1546, 101, 'West Azarbaijan', 'WEZ', 1, '0000-00-00 00:00:00'),
(1547, 101, 'Kurdistan', 'KRD', 1, '0000-00-00 00:00:00'),
(1548, 101, 'Hamadan', 'HMD', 1, '0000-00-00 00:00:00'),
(1549, 101, 'Kermanshah', 'KRM', 1, '0000-00-00 00:00:00'),
(1550, 101, 'Ilam', 'ILM', 1, '0000-00-00 00:00:00'),
(1551, 101, 'Lorestan', 'LRS', 1, '0000-00-00 00:00:00'),
(1552, 101, 'Khuzestan', 'KZT', 1, '0000-00-00 00:00:00'),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1, '0000-00-00 00:00:00'),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1, '0000-00-00 00:00:00'),
(1555, 101, 'Bushehr', 'BSH', 1, '0000-00-00 00:00:00'),
(1556, 101, 'Fars', 'FAR', 1, '0000-00-00 00:00:00'),
(1557, 101, 'Hormozgan', 'HRM', 1, '0000-00-00 00:00:00'),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1, '0000-00-00 00:00:00'),
(1559, 101, 'Kerman', 'KRB', 1, '0000-00-00 00:00:00'),
(1560, 101, 'Yazd', 'YZD', 1, '0000-00-00 00:00:00'),
(1561, 101, 'Esfahan', 'EFH', 1, '0000-00-00 00:00:00'),
(1562, 101, 'Semnan', 'SMN', 1, '0000-00-00 00:00:00'),
(1563, 101, 'Mazandaran', 'MZD', 1, '0000-00-00 00:00:00'),
(1564, 101, 'Golestan', 'GLS', 1, '0000-00-00 00:00:00'),
(1565, 101, 'North Khorasan', 'NKH', 1, '0000-00-00 00:00:00'),
(1566, 101, 'Razavi Khorasan', 'RKH', 1, '0000-00-00 00:00:00'),
(1567, 101, 'South Khorasan', 'SKH', 1, '0000-00-00 00:00:00'),
(1568, 102, 'Baghdad', 'BD', 1, '0000-00-00 00:00:00'),
(1569, 102, 'Salah ad Din', 'SD', 1, '0000-00-00 00:00:00'),
(1570, 102, 'Diyala', 'DY', 1, '0000-00-00 00:00:00'),
(1571, 102, 'Wasit', 'WS', 1, '0000-00-00 00:00:00'),
(1572, 102, 'Maysan', 'MY', 1, '0000-00-00 00:00:00'),
(1573, 102, 'Al Basrah', 'BA', 1, '0000-00-00 00:00:00'),
(1574, 102, 'Dhi Qar', 'DQ', 1, '0000-00-00 00:00:00'),
(1575, 102, 'Al Muthanna', 'MU', 1, '0000-00-00 00:00:00'),
(1576, 102, 'Al Qadisyah', 'QA', 1, '0000-00-00 00:00:00'),
(1577, 102, 'Babil', 'BB', 1, '0000-00-00 00:00:00'),
(1578, 102, 'Al Karbala', 'KB', 1, '0000-00-00 00:00:00'),
(1579, 102, 'An Najaf', 'NJ', 1, '0000-00-00 00:00:00'),
(1580, 102, 'Al Anbar', 'AB', 1, '0000-00-00 00:00:00'),
(1581, 102, 'Ninawa', 'NN', 1, '0000-00-00 00:00:00'),
(1582, 102, 'Dahuk', 'DH', 1, '0000-00-00 00:00:00'),
(1583, 102, 'Arbil', 'AL', 1, '0000-00-00 00:00:00'),
(1584, 102, 'At Ta''mim', 'TM', 1, '0000-00-00 00:00:00'),
(1585, 102, 'As Sulaymaniyah', 'SL', 1, '0000-00-00 00:00:00'),
(1586, 103, 'Carlow', 'CA', 1, '0000-00-00 00:00:00'),
(1587, 103, 'Cavan', 'CV', 1, '0000-00-00 00:00:00'),
(1588, 103, 'Clare', 'CL', 1, '0000-00-00 00:00:00'),
(1589, 103, 'Cork', 'CO', 1, '0000-00-00 00:00:00'),
(1590, 103, 'Donegal', 'DO', 1, '0000-00-00 00:00:00'),
(1591, 103, 'Dublin', 'DU', 1, '0000-00-00 00:00:00'),
(1592, 103, 'Galway', 'GA', 1, '0000-00-00 00:00:00'),
(1593, 103, 'Kerry', 'KE', 1, '0000-00-00 00:00:00'),
(1594, 103, 'Kildare', 'KI', 1, '0000-00-00 00:00:00'),
(1595, 103, 'Kilkenny', 'KL', 1, '0000-00-00 00:00:00'),
(1596, 103, 'Laois', 'LA', 1, '0000-00-00 00:00:00'),
(1597, 103, 'Leitrim', 'LE', 1, '0000-00-00 00:00:00'),
(1598, 103, 'Limerick', 'LI', 1, '0000-00-00 00:00:00'),
(1599, 103, 'Longford', 'LO', 1, '0000-00-00 00:00:00'),
(1600, 103, 'Louth', 'LU', 1, '0000-00-00 00:00:00'),
(1601, 103, 'Mayo', 'MA', 1, '0000-00-00 00:00:00'),
(1602, 103, 'Meath', 'ME', 1, '0000-00-00 00:00:00'),
(1603, 103, 'Monaghan', 'MO', 1, '0000-00-00 00:00:00'),
(1604, 103, 'Offaly', 'OF', 1, '0000-00-00 00:00:00'),
(1605, 103, 'Roscommon', 'RO', 1, '0000-00-00 00:00:00'),
(1606, 103, 'Sligo', 'SL', 1, '0000-00-00 00:00:00'),
(1607, 103, 'Tipperary', 'TI', 1, '0000-00-00 00:00:00'),
(1608, 103, 'Waterford', 'WA', 1, '0000-00-00 00:00:00'),
(1609, 103, 'Westmeath', 'WE', 1, '0000-00-00 00:00:00'),
(1610, 103, 'Wexford', 'WX', 1, '0000-00-00 00:00:00'),
(1611, 103, 'Wicklow', 'WI', 1, '0000-00-00 00:00:00'),
(1612, 104, 'Be''er Sheva', 'BS', 1, '0000-00-00 00:00:00'),
(1613, 104, 'Bika''at Hayarden', 'BH', 1, '0000-00-00 00:00:00'),
(1614, 104, 'Eilat and Arava', 'EA', 1, '0000-00-00 00:00:00'),
(1615, 104, 'Galil', 'GA', 1, '0000-00-00 00:00:00'),
(1616, 104, 'Haifa', 'HA', 1, '0000-00-00 00:00:00'),
(1617, 104, 'Jehuda Mountains', 'JM', 1, '0000-00-00 00:00:00'),
(1618, 104, 'Jerusalem', 'JE', 1, '0000-00-00 00:00:00'),
(1619, 104, 'Negev', 'NE', 1, '0000-00-00 00:00:00'),
(1620, 104, 'Semaria', 'SE', 1, '0000-00-00 00:00:00'),
(1621, 104, 'Sharon', 'SH', 1, '0000-00-00 00:00:00'),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1, '0000-00-00 00:00:00'),
(1643, 106, 'Clarendon Parish', 'CLA', 1, '0000-00-00 00:00:00'),
(1644, 106, 'Hanover Parish', 'HAN', 1, '0000-00-00 00:00:00'),
(1645, 106, 'Kingston Parish', 'KIN', 1, '0000-00-00 00:00:00'),
(1646, 106, 'Manchester Parish', 'MAN', 1, '0000-00-00 00:00:00'),
(1647, 106, 'Portland Parish', 'POR', 1, '0000-00-00 00:00:00'),
(1648, 106, 'Saint Andrew Parish', 'AND', 1, '0000-00-00 00:00:00'),
(1649, 106, 'Saint Ann Parish', 'ANN', 1, '0000-00-00 00:00:00'),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1, '0000-00-00 00:00:00'),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1, '0000-00-00 00:00:00'),
(1652, 106, 'Saint James Parish', 'JAM', 1, '0000-00-00 00:00:00'),
(1653, 106, 'Saint Mary Parish', 'MAR', 1, '0000-00-00 00:00:00'),
(1654, 106, 'Saint Thomas Parish', 'THO', 1, '0000-00-00 00:00:00'),
(1655, 106, 'Trelawny Parish', 'TRL', 1, '0000-00-00 00:00:00'),
(1656, 106, 'Westmoreland Parish', 'WML', 1, '0000-00-00 00:00:00'),
(1657, 107, 'Aichi', 'AI', 1, '0000-00-00 00:00:00'),
(1658, 107, 'Akita', 'AK', 1, '0000-00-00 00:00:00'),
(1659, 107, 'Aomori', 'AO', 1, '0000-00-00 00:00:00'),
(1660, 107, 'Chiba', 'CH', 1, '0000-00-00 00:00:00'),
(1661, 107, 'Ehime', 'EH', 1, '0000-00-00 00:00:00'),
(1662, 107, 'Fukui', 'FK', 1, '0000-00-00 00:00:00'),
(1663, 107, 'Fukuoka', 'FU', 1, '0000-00-00 00:00:00'),
(1664, 107, 'Fukushima', 'FS', 1, '0000-00-00 00:00:00'),
(1665, 107, 'Gifu', 'GI', 1, '0000-00-00 00:00:00'),
(1666, 107, 'Gumma', 'GU', 1, '0000-00-00 00:00:00'),
(1667, 107, 'Hiroshima', 'HI', 1, '0000-00-00 00:00:00'),
(1668, 107, 'Hokkaido', 'HO', 1, '0000-00-00 00:00:00'),
(1669, 107, 'Hyogo', 'HY', 1, '0000-00-00 00:00:00'),
(1670, 107, 'Ibaraki', 'IB', 1, '0000-00-00 00:00:00'),
(1671, 107, 'Ishikawa', 'IS', 1, '0000-00-00 00:00:00'),
(1672, 107, 'Iwate', 'IW', 1, '0000-00-00 00:00:00'),
(1673, 107, 'Kagawa', 'KA', 1, '0000-00-00 00:00:00'),
(1674, 107, 'Kagoshima', 'KG', 1, '0000-00-00 00:00:00'),
(1675, 107, 'Kanagawa', 'KN', 1, '0000-00-00 00:00:00'),
(1676, 107, 'Kochi', 'KO', 1, '0000-00-00 00:00:00'),
(1677, 107, 'Kumamoto', 'KU', 1, '0000-00-00 00:00:00'),
(1678, 107, 'Kyoto', 'KY', 1, '0000-00-00 00:00:00'),
(1679, 107, 'Mie', 'MI', 1, '0000-00-00 00:00:00'),
(1680, 107, 'Miyagi', 'MY', 1, '0000-00-00 00:00:00'),
(1681, 107, 'Miyazaki', 'MZ', 1, '0000-00-00 00:00:00'),
(1682, 107, 'Nagano', 'NA', 1, '0000-00-00 00:00:00'),
(1683, 107, 'Nagasaki', 'NG', 1, '0000-00-00 00:00:00'),
(1684, 107, 'Nara', 'NR', 1, '0000-00-00 00:00:00'),
(1685, 107, 'Niigata', 'NI', 1, '0000-00-00 00:00:00'),
(1686, 107, 'Oita', 'OI', 1, '0000-00-00 00:00:00'),
(1687, 107, 'Okayama', 'OK', 1, '0000-00-00 00:00:00'),
(1688, 107, 'Okinawa', 'ON', 1, '0000-00-00 00:00:00'),
(1689, 107, 'Osaka', 'OS', 1, '0000-00-00 00:00:00'),
(1690, 107, 'Saga', 'SA', 1, '0000-00-00 00:00:00'),
(1691, 107, 'Saitama', 'SI', 1, '0000-00-00 00:00:00'),
(1692, 107, 'Shiga', 'SH', 1, '0000-00-00 00:00:00'),
(1693, 107, 'Shimane', 'SM', 1, '0000-00-00 00:00:00'),
(1694, 107, 'Shizuoka', 'SZ', 1, '0000-00-00 00:00:00'),
(1695, 107, 'Tochigi', 'TO', 1, '0000-00-00 00:00:00'),
(1696, 107, 'Tokushima', 'TS', 1, '0000-00-00 00:00:00'),
(1697, 107, 'Tokyo', 'TK', 1, '0000-00-00 00:00:00'),
(1698, 107, 'Tottori', 'TT', 1, '0000-00-00 00:00:00'),
(1699, 107, 'Toyama', 'TY', 1, '0000-00-00 00:00:00'),
(1700, 107, 'Wakayama', 'WA', 1, '0000-00-00 00:00:00'),
(1701, 107, 'Yamagata', 'YA', 1, '0000-00-00 00:00:00'),
(1702, 107, 'Yamaguchi', 'YM', 1, '0000-00-00 00:00:00'),
(1703, 107, 'Yamanashi', 'YN', 1, '0000-00-00 00:00:00'),
(1704, 108, '''Amman', 'AM', 1, '0000-00-00 00:00:00'),
(1705, 108, 'Ajlun', 'AJ', 1, '0000-00-00 00:00:00'),
(1706, 108, 'Al ''Aqabah', 'AA', 1, '0000-00-00 00:00:00'),
(1707, 108, 'Al Balqa''', 'AB', 1, '0000-00-00 00:00:00'),
(1708, 108, 'Al Karak', 'AK', 1, '0000-00-00 00:00:00'),
(1709, 108, 'Al Mafraq', 'AL', 1, '0000-00-00 00:00:00'),
(1710, 108, 'At Tafilah', 'AT', 1, '0000-00-00 00:00:00'),
(1711, 108, 'Az Zarqa''', 'AZ', 1, '0000-00-00 00:00:00'),
(1712, 108, 'Irbid', 'IR', 1, '0000-00-00 00:00:00'),
(1713, 108, 'Jarash', 'JA', 1, '0000-00-00 00:00:00'),
(1714, 108, 'Ma''an', 'MA', 1, '0000-00-00 00:00:00'),
(1715, 108, 'Madaba', 'MD', 1, '0000-00-00 00:00:00'),
(1716, 109, 'Almaty', 'AL', 1, '0000-00-00 00:00:00'),
(1717, 109, 'Almaty City', 'AC', 1, '0000-00-00 00:00:00'),
(1718, 109, 'Aqmola', 'AM', 1, '0000-00-00 00:00:00'),
(1719, 109, 'Aqtobe', 'AQ', 1, '0000-00-00 00:00:00'),
(1720, 109, 'Astana City', 'AS', 1, '0000-00-00 00:00:00'),
(1721, 109, 'Atyrau', 'AT', 1, '0000-00-00 00:00:00'),
(1722, 109, 'Batys Qazaqstan', 'BA', 1, '0000-00-00 00:00:00'),
(1723, 109, 'Bayqongyr City', 'BY', 1, '0000-00-00 00:00:00'),
(1724, 109, 'Mangghystau', 'MA', 1, '0000-00-00 00:00:00'),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1, '0000-00-00 00:00:00'),
(1726, 109, 'Pavlodar', 'PA', 1, '0000-00-00 00:00:00'),
(1727, 109, 'Qaraghandy', 'QA', 1, '0000-00-00 00:00:00'),
(1728, 109, 'Qostanay', 'QO', 1, '0000-00-00 00:00:00'),
(1729, 109, 'Qyzylorda', 'QY', 1, '0000-00-00 00:00:00'),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1, '0000-00-00 00:00:00'),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1, '0000-00-00 00:00:00'),
(1732, 109, 'Zhambyl', 'ZH', 1, '0000-00-00 00:00:00'),
(1733, 110, 'Central', 'CE', 1, '0000-00-00 00:00:00'),
(1734, 110, 'Coast', 'CO', 1, '0000-00-00 00:00:00'),
(1735, 110, 'Eastern', 'EA', 1, '0000-00-00 00:00:00'),
(1736, 110, 'Nairobi Area', 'NA', 1, '0000-00-00 00:00:00'),
(1737, 110, 'North Eastern', 'NE', 1, '0000-00-00 00:00:00'),
(1738, 110, 'Nyanza', 'NY', 1, '0000-00-00 00:00:00'),
(1739, 110, 'Rift Valley', 'RV', 1, '0000-00-00 00:00:00'),
(1740, 110, 'Western', 'WE', 1, '0000-00-00 00:00:00'),
(1741, 111, 'Abaiang', 'AG', 1, '0000-00-00 00:00:00'),
(1742, 111, 'Abemama', 'AM', 1, '0000-00-00 00:00:00'),
(1743, 111, 'Aranuka', 'AK', 1, '0000-00-00 00:00:00'),
(1744, 111, 'Arorae', 'AO', 1, '0000-00-00 00:00:00'),
(1745, 111, 'Banaba', 'BA', 1, '0000-00-00 00:00:00'),
(1746, 111, 'Beru', 'BE', 1, '0000-00-00 00:00:00'),
(1747, 111, 'Butaritari', 'bT', 1, '0000-00-00 00:00:00'),
(1748, 111, 'Kanton', 'KA', 1, '0000-00-00 00:00:00'),
(1749, 111, 'Kiritimati', 'KR', 1, '0000-00-00 00:00:00'),
(1750, 111, 'Kuria', 'KU', 1, '0000-00-00 00:00:00'),
(1751, 111, 'Maiana', 'MI', 1, '0000-00-00 00:00:00'),
(1752, 111, 'Makin', 'MN', 1, '0000-00-00 00:00:00'),
(1753, 111, 'Marakei', 'ME', 1, '0000-00-00 00:00:00'),
(1754, 111, 'Nikunau', 'NI', 1, '0000-00-00 00:00:00'),
(1755, 111, 'Nonouti', 'NO', 1, '0000-00-00 00:00:00'),
(1756, 111, 'Onotoa', 'ON', 1, '0000-00-00 00:00:00'),
(1757, 111, 'Tabiteuea', 'TT', 1, '0000-00-00 00:00:00'),
(1758, 111, 'Tabuaeran', 'TR', 1, '0000-00-00 00:00:00'),
(1759, 111, 'Tamana', 'TM', 1, '0000-00-00 00:00:00'),
(1760, 111, 'Tarawa', 'TW', 1, '0000-00-00 00:00:00'),
(1761, 111, 'Teraina', 'TE', 1, '0000-00-00 00:00:00'),
(1762, 112, 'Chagang-do', 'CHA', 1, '0000-00-00 00:00:00'),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1, '0000-00-00 00:00:00'),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1, '0000-00-00 00:00:00'),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1, '0000-00-00 00:00:00'),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1, '0000-00-00 00:00:00'),
(1767, 112, 'Kangwon-do', 'KAN', 1, '0000-00-00 00:00:00'),
(1768, 112, 'P''yongan-bukto', 'PYB', 1, '0000-00-00 00:00:00'),
(1769, 112, 'P''yongan-namdo', 'PYN', 1, '0000-00-00 00:00:00'),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1, '0000-00-00 00:00:00'),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1, '0000-00-00 00:00:00'),
(1772, 112, 'P''yongyang Special City', 'PYO', 1, '0000-00-00 00:00:00'),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1, '0000-00-00 00:00:00'),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1, '0000-00-00 00:00:00'),
(1775, 113, 'Cheju-do', 'CD', 1, '0000-00-00 00:00:00'),
(1776, 113, 'Cholla-bukto', 'CB', 1, '0000-00-00 00:00:00'),
(1777, 113, 'Cholla-namdo', 'CN', 1, '0000-00-00 00:00:00'),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1, '0000-00-00 00:00:00'),
(1779, 113, 'Kangwon-do', 'KA', 1, '0000-00-00 00:00:00'),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1, '0000-00-00 00:00:00'),
(1781, 113, 'Kyonggi-do', 'KD', 1, '0000-00-00 00:00:00'),
(1782, 113, 'Kyongsang-bukto', 'KB', 1, '0000-00-00 00:00:00'),
(1783, 113, 'Kyongsang-namdo', 'KN', 1, '0000-00-00 00:00:00'),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1, '0000-00-00 00:00:00'),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1, '0000-00-00 00:00:00'),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1, '0000-00-00 00:00:00'),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1, '0000-00-00 00:00:00'),
(1788, 114, 'Al ''Asimah', 'AL', 1, '0000-00-00 00:00:00'),
(1789, 114, 'Al Ahmadi', 'AA', 1, '0000-00-00 00:00:00'),
(1790, 114, 'Al Farwaniyah', 'AF', 1, '0000-00-00 00:00:00'),
(1791, 114, 'Al Jahra''', 'AJ', 1, '0000-00-00 00:00:00'),
(1792, 114, 'Hawalli', 'HA', 1, '0000-00-00 00:00:00'),
(1793, 115, 'Bishkek', 'GB', 1, '0000-00-00 00:00:00'),
(1794, 115, 'Batken', 'B', 1, '0000-00-00 00:00:00'),
(1795, 115, 'Chu', 'C', 1, '0000-00-00 00:00:00'),
(1796, 115, 'Jalal-Abad', 'J', 1, '0000-00-00 00:00:00'),
(1797, 115, 'Naryn', 'N', 1, '0000-00-00 00:00:00'),
(1798, 115, 'Osh', 'O', 1, '0000-00-00 00:00:00'),
(1799, 115, 'Talas', 'T', 1, '0000-00-00 00:00:00'),
(1800, 115, 'Ysyk-Kol', 'Y', 1, '0000-00-00 00:00:00'),
(1801, 116, 'Vientiane', 'VT', 1, '0000-00-00 00:00:00'),
(1802, 116, 'Attapu', 'AT', 1, '0000-00-00 00:00:00'),
(1803, 116, 'Bokeo', 'BK', 1, '0000-00-00 00:00:00'),
(1804, 116, 'Bolikhamxai', 'BL', 1, '0000-00-00 00:00:00'),
(1805, 116, 'Champasak', 'CH', 1, '0000-00-00 00:00:00'),
(1806, 116, 'Houaphan', 'HO', 1, '0000-00-00 00:00:00'),
(1807, 116, 'Khammouan', 'KH', 1, '0000-00-00 00:00:00'),
(1808, 116, 'Louang Namtha', 'LM', 1, '0000-00-00 00:00:00'),
(1809, 116, 'Louangphabang', 'LP', 1, '0000-00-00 00:00:00'),
(1810, 116, 'Oudomxai', 'OU', 1, '0000-00-00 00:00:00'),
(1811, 116, 'Phongsali', 'PH', 1, '0000-00-00 00:00:00'),
(1812, 116, 'Salavan', 'SL', 1, '0000-00-00 00:00:00'),
(1813, 116, 'Savannakhet', 'SV', 1, '0000-00-00 00:00:00'),
(1814, 116, 'Vientiane', 'VI', 1, '0000-00-00 00:00:00'),
(1815, 116, 'Xaignabouli', 'XA', 1, '0000-00-00 00:00:00'),
(1816, 116, 'Xekong', 'XE', 1, '0000-00-00 00:00:00'),
(1817, 116, 'Xiangkhoang', 'XI', 1, '0000-00-00 00:00:00'),
(1818, 116, 'Xaisomboun', 'XN', 1, '0000-00-00 00:00:00'),
(1819, 117, 'Aizkraukles Rajons', 'AIZ', 1, '0000-00-00 00:00:00'),
(1820, 117, 'Aluksnes Rajons', 'ALU', 1, '0000-00-00 00:00:00'),
(1821, 117, 'Balvu Rajons', 'BAL', 1, '0000-00-00 00:00:00'),
(1822, 117, 'Bauskas Rajons', 'BAU', 1, '0000-00-00 00:00:00'),
(1823, 117, 'Cesu Rajons', 'CES', 1, '0000-00-00 00:00:00'),
(1824, 117, 'Daugavpils Rajons', 'DGR', 1, '0000-00-00 00:00:00'),
(1825, 117, 'Dobeles Rajons', 'DOB', 1, '0000-00-00 00:00:00'),
(1826, 117, 'Gulbenes Rajons', 'GUL', 1, '0000-00-00 00:00:00'),
(1827, 117, 'Jekabpils Rajons', 'JEK', 1, '0000-00-00 00:00:00'),
(1828, 117, 'Jelgavas Rajons', 'JGR', 1, '0000-00-00 00:00:00'),
(1829, 117, 'Kraslavas Rajons', 'KRA', 1, '0000-00-00 00:00:00'),
(1830, 117, 'Kuldigas Rajons', 'KUL', 1, '0000-00-00 00:00:00'),
(1831, 117, 'Liepajas Rajons', 'LPR', 1, '0000-00-00 00:00:00'),
(1832, 117, 'Limbazu Rajons', 'LIM', 1, '0000-00-00 00:00:00'),
(1833, 117, 'Ludzas Rajons', 'LUD', 1, '0000-00-00 00:00:00'),
(1834, 117, 'Madonas Rajons', 'MAD', 1, '0000-00-00 00:00:00');
INSERT INTO `r_state` (`id_state`, `id_country`, `name`, `code`, `status`, `date_modified`) VALUES
(1835, 117, 'Ogres Rajons', 'OGR', 1, '0000-00-00 00:00:00'),
(1836, 117, 'Preilu Rajons', 'PRE', 1, '0000-00-00 00:00:00'),
(1837, 117, 'Rezeknes Rajons', 'RZR', 1, '0000-00-00 00:00:00'),
(1838, 117, 'Rigas Rajons', 'RGR', 1, '0000-00-00 00:00:00'),
(1839, 117, 'Saldus Rajons', 'SAL', 1, '0000-00-00 00:00:00'),
(1840, 117, 'Talsu Rajons', 'TAL', 1, '0000-00-00 00:00:00'),
(1841, 117, 'Tukuma Rajons', 'TUK', 1, '0000-00-00 00:00:00'),
(1842, 117, 'Valkas Rajons', 'VLK', 1, '0000-00-00 00:00:00'),
(1843, 117, 'Valmieras Rajons', 'VLM', 1, '0000-00-00 00:00:00'),
(1844, 117, 'Ventspils Rajons', 'VSR', 1, '0000-00-00 00:00:00'),
(1845, 117, 'Daugavpils', 'DGV', 1, '0000-00-00 00:00:00'),
(1846, 117, 'Jelgava', 'JGV', 1, '0000-00-00 00:00:00'),
(1847, 117, 'Jurmala', 'JUR', 1, '0000-00-00 00:00:00'),
(1848, 117, 'Liepaja', 'LPK', 1, '0000-00-00 00:00:00'),
(1849, 117, 'Rezekne', 'RZK', 1, '0000-00-00 00:00:00'),
(1850, 117, 'Riga', 'RGA', 1, '0000-00-00 00:00:00'),
(1851, 117, 'Ventspils', 'VSL', 1, '0000-00-00 00:00:00'),
(1852, 119, 'Berea', 'BE', 1, '0000-00-00 00:00:00'),
(1853, 119, 'Butha-Buthe', 'BB', 1, '0000-00-00 00:00:00'),
(1854, 119, 'Leribe', 'LE', 1, '0000-00-00 00:00:00'),
(1855, 119, 'Mafeteng', 'MF', 1, '0000-00-00 00:00:00'),
(1856, 119, 'Maseru', 'MS', 1, '0000-00-00 00:00:00'),
(1857, 119, 'Mohale''s Hoek', 'MH', 1, '0000-00-00 00:00:00'),
(1858, 119, 'Mokhotlong', 'MK', 1, '0000-00-00 00:00:00'),
(1859, 119, 'Qacha''s Nek', 'QN', 1, '0000-00-00 00:00:00'),
(1860, 119, 'Quthing', 'QT', 1, '0000-00-00 00:00:00'),
(1861, 119, 'Thaba-Tseka', 'TT', 1, '0000-00-00 00:00:00'),
(1862, 120, 'Bomi', 'BI', 1, '0000-00-00 00:00:00'),
(1863, 120, 'Bong', 'BG', 1, '0000-00-00 00:00:00'),
(1864, 120, 'Grand Bassa', 'GB', 1, '0000-00-00 00:00:00'),
(1865, 120, 'Grand Cape Mount', 'CM', 1, '0000-00-00 00:00:00'),
(1866, 120, 'Grand Gedeh', 'GG', 1, '0000-00-00 00:00:00'),
(1867, 120, 'Grand Kru', 'GK', 1, '0000-00-00 00:00:00'),
(1868, 120, 'Lofa', 'LO', 1, '0000-00-00 00:00:00'),
(1869, 120, 'Margibi', 'MG', 1, '0000-00-00 00:00:00'),
(1870, 120, 'Maryland', 'ML', 1, '0000-00-00 00:00:00'),
(1871, 120, 'Montserrado', 'MS', 1, '0000-00-00 00:00:00'),
(1872, 120, 'Nimba', 'NB', 1, '0000-00-00 00:00:00'),
(1873, 120, 'River Cess', 'RC', 1, '0000-00-00 00:00:00'),
(1874, 120, 'Sinoe', 'SN', 1, '0000-00-00 00:00:00'),
(1875, 121, 'Ajdabiya', 'AJ', 1, '0000-00-00 00:00:00'),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1, '0000-00-00 00:00:00'),
(1877, 121, 'Al Fatih', 'FA', 1, '0000-00-00 00:00:00'),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1, '0000-00-00 00:00:00'),
(1879, 121, 'Al Jufrah', 'JU', 1, '0000-00-00 00:00:00'),
(1880, 121, 'Al Khums', 'KH', 1, '0000-00-00 00:00:00'),
(1881, 121, 'Al Kufrah', 'KU', 1, '0000-00-00 00:00:00'),
(1882, 121, 'An Nuqat al Khams', 'NK', 1, '0000-00-00 00:00:00'),
(1883, 121, 'Ash Shati''', 'AS', 1, '0000-00-00 00:00:00'),
(1884, 121, 'Awbari', 'AW', 1, '0000-00-00 00:00:00'),
(1885, 121, 'Az Zawiyah', 'ZA', 1, '0000-00-00 00:00:00'),
(1886, 121, 'Banghazi', 'BA', 1, '0000-00-00 00:00:00'),
(1887, 121, 'Darnah', 'DA', 1, '0000-00-00 00:00:00'),
(1888, 121, 'Ghadamis', 'GD', 1, '0000-00-00 00:00:00'),
(1889, 121, 'Gharyan', 'GY', 1, '0000-00-00 00:00:00'),
(1890, 121, 'Misratah', 'MI', 1, '0000-00-00 00:00:00'),
(1891, 121, 'Murzuq', 'MZ', 1, '0000-00-00 00:00:00'),
(1892, 121, 'Sabha', 'SB', 1, '0000-00-00 00:00:00'),
(1893, 121, 'Sawfajjin', 'SW', 1, '0000-00-00 00:00:00'),
(1894, 121, 'Surt', 'SU', 1, '0000-00-00 00:00:00'),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1, '0000-00-00 00:00:00'),
(1896, 121, 'Tarhunah', 'TH', 1, '0000-00-00 00:00:00'),
(1897, 121, 'Tubruq', 'TU', 1, '0000-00-00 00:00:00'),
(1898, 121, 'Yafran', 'YA', 1, '0000-00-00 00:00:00'),
(1899, 121, 'Zlitan', 'ZL', 1, '0000-00-00 00:00:00'),
(1900, 122, 'Vaduz', 'V', 1, '0000-00-00 00:00:00'),
(1901, 122, 'Schaan', 'A', 1, '0000-00-00 00:00:00'),
(1902, 122, 'Balzers', 'B', 1, '0000-00-00 00:00:00'),
(1903, 122, 'Triesen', 'N', 1, '0000-00-00 00:00:00'),
(1904, 122, 'Eschen', 'E', 1, '0000-00-00 00:00:00'),
(1905, 122, 'Mauren', 'M', 1, '0000-00-00 00:00:00'),
(1906, 122, 'Triesenberg', 'T', 1, '0000-00-00 00:00:00'),
(1907, 122, 'Ruggell', 'R', 1, '0000-00-00 00:00:00'),
(1908, 122, 'Gamprin', 'G', 1, '0000-00-00 00:00:00'),
(1909, 122, 'Schellenberg', 'L', 1, '0000-00-00 00:00:00'),
(1910, 122, 'Planken', 'P', 1, '0000-00-00 00:00:00'),
(1911, 123, 'Alytus', 'AL', 1, '0000-00-00 00:00:00'),
(1912, 123, 'Kaunas', 'KA', 1, '0000-00-00 00:00:00'),
(1913, 123, 'Klaipeda', 'KL', 1, '0000-00-00 00:00:00'),
(1914, 123, 'Marijampole', 'MA', 1, '0000-00-00 00:00:00'),
(1915, 123, 'Panevezys', 'PA', 1, '0000-00-00 00:00:00'),
(1916, 123, 'Siauliai', 'SI', 1, '0000-00-00 00:00:00'),
(1917, 123, 'Taurage', 'TA', 1, '0000-00-00 00:00:00'),
(1918, 123, 'Telsiai', 'TE', 1, '0000-00-00 00:00:00'),
(1919, 123, 'Utena', 'UT', 1, '0000-00-00 00:00:00'),
(1920, 123, 'Vilnius', 'VI', 1, '0000-00-00 00:00:00'),
(1921, 124, 'Diekirch', 'DD', 1, '0000-00-00 00:00:00'),
(1922, 124, 'Clervaux', 'DC', 1, '0000-00-00 00:00:00'),
(1923, 124, 'Redange', 'DR', 1, '0000-00-00 00:00:00'),
(1924, 124, 'Vianden', 'DV', 1, '0000-00-00 00:00:00'),
(1925, 124, 'Wiltz', 'DW', 1, '0000-00-00 00:00:00'),
(1926, 124, 'Grevenmacher', 'GG', 1, '0000-00-00 00:00:00'),
(1927, 124, 'Echternach', 'GE', 1, '0000-00-00 00:00:00'),
(1928, 124, 'Remich', 'GR', 1, '0000-00-00 00:00:00'),
(1929, 124, 'Luxembourg', 'LL', 1, '0000-00-00 00:00:00'),
(1930, 124, 'Capellen', 'LC', 1, '0000-00-00 00:00:00'),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1, '0000-00-00 00:00:00'),
(1932, 124, 'Mersch', 'LM', 1, '0000-00-00 00:00:00'),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1, '0000-00-00 00:00:00'),
(1934, 125, 'St. Anthony Parish', 'ANT', 1, '0000-00-00 00:00:00'),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1, '0000-00-00 00:00:00'),
(1936, 125, 'Cathedral Parish', 'CAT', 1, '0000-00-00 00:00:00'),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1, '0000-00-00 00:00:00'),
(1938, 127, 'Antananarivo', 'AN', 1, '0000-00-00 00:00:00'),
(1939, 127, 'Antsiranana', 'AS', 1, '0000-00-00 00:00:00'),
(1940, 127, 'Fianarantsoa', 'FN', 1, '0000-00-00 00:00:00'),
(1941, 127, 'Mahajanga', 'MJ', 1, '0000-00-00 00:00:00'),
(1942, 127, 'Toamasina', 'TM', 1, '0000-00-00 00:00:00'),
(1943, 127, 'Toliara', 'TL', 1, '0000-00-00 00:00:00'),
(1944, 128, 'Balaka', 'BLK', 1, '0000-00-00 00:00:00'),
(1945, 128, 'Blantyre', 'BLT', 1, '0000-00-00 00:00:00'),
(1946, 128, 'Chikwawa', 'CKW', 1, '0000-00-00 00:00:00'),
(1947, 128, 'Chiradzulu', 'CRD', 1, '0000-00-00 00:00:00'),
(1948, 128, 'Chitipa', 'CTP', 1, '0000-00-00 00:00:00'),
(1949, 128, 'Dedza', 'DDZ', 1, '0000-00-00 00:00:00'),
(1950, 128, 'Dowa', 'DWA', 1, '0000-00-00 00:00:00'),
(1951, 128, 'Karonga', 'KRG', 1, '0000-00-00 00:00:00'),
(1952, 128, 'Kasungu', 'KSG', 1, '0000-00-00 00:00:00'),
(1953, 128, 'Likoma', 'LKM', 1, '0000-00-00 00:00:00'),
(1954, 128, 'Lilongwe', 'LLG', 1, '0000-00-00 00:00:00'),
(1955, 128, 'Machinga', 'MCG', 1, '0000-00-00 00:00:00'),
(1956, 128, 'Mangochi', 'MGC', 1, '0000-00-00 00:00:00'),
(1957, 128, 'Mchinji', 'MCH', 1, '0000-00-00 00:00:00'),
(1958, 128, 'Mulanje', 'MLJ', 1, '0000-00-00 00:00:00'),
(1959, 128, 'Mwanza', 'MWZ', 1, '0000-00-00 00:00:00'),
(1960, 128, 'Mzimba', 'MZM', 1, '0000-00-00 00:00:00'),
(1961, 128, 'Ntcheu', 'NTU', 1, '0000-00-00 00:00:00'),
(1962, 128, 'Nkhata Bay', 'NKB', 1, '0000-00-00 00:00:00'),
(1963, 128, 'Nkhotakota', 'NKH', 1, '0000-00-00 00:00:00'),
(1964, 128, 'Nsanje', 'NSJ', 1, '0000-00-00 00:00:00'),
(1965, 128, 'Ntchisi', 'NTI', 1, '0000-00-00 00:00:00'),
(1966, 128, 'Phalombe', 'PHL', 1, '0000-00-00 00:00:00'),
(1967, 128, 'Rumphi', 'RMP', 1, '0000-00-00 00:00:00'),
(1968, 128, 'Salima', 'SLM', 1, '0000-00-00 00:00:00'),
(1969, 128, 'Thyolo', 'THY', 1, '0000-00-00 00:00:00'),
(1970, 128, 'Zomba', 'ZBA', 1, '0000-00-00 00:00:00'),
(1971, 129, 'Johor', 'JO', 1, '0000-00-00 00:00:00'),
(1972, 129, 'Kedah', 'KE', 1, '0000-00-00 00:00:00'),
(1973, 129, 'Kelantan', 'KL', 1, '0000-00-00 00:00:00'),
(1974, 129, 'Labuan', 'LA', 1, '0000-00-00 00:00:00'),
(1975, 129, 'Melaka', 'ME', 1, '0000-00-00 00:00:00'),
(1976, 129, 'Negeri Sembilan', 'NS', 1, '0000-00-00 00:00:00'),
(1977, 129, 'Pahang', 'PA', 1, '0000-00-00 00:00:00'),
(1978, 129, 'Perak', 'PE', 1, '0000-00-00 00:00:00'),
(1979, 129, 'Perlis', 'PR', 1, '0000-00-00 00:00:00'),
(1980, 129, 'Pulau Pinang', 'PP', 1, '0000-00-00 00:00:00'),
(1981, 129, 'Sabah', 'SA', 1, '0000-00-00 00:00:00'),
(1982, 129, 'Sarawak', 'SR', 1, '0000-00-00 00:00:00'),
(1983, 129, 'Selangor', 'SE', 1, '0000-00-00 00:00:00'),
(1984, 129, 'Terengganu', 'TE', 1, '0000-00-00 00:00:00'),
(1985, 129, 'Wilayah Persekutuan', 'WP', 1, '0000-00-00 00:00:00'),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1, '0000-00-00 00:00:00'),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1, '0000-00-00 00:00:00'),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1, '0000-00-00 00:00:00'),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1, '0000-00-00 00:00:00'),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1, '0000-00-00 00:00:00'),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1, '0000-00-00 00:00:00'),
(1992, 130, 'Faadhippolhu', 'FAA', 1, '0000-00-00 00:00:00'),
(1993, 130, 'Male Atoll', 'MAA', 1, '0000-00-00 00:00:00'),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1, '0000-00-00 00:00:00'),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1, '0000-00-00 00:00:00'),
(1996, 130, 'Felidhe Atoll', 'FEA', 1, '0000-00-00 00:00:00'),
(1997, 130, 'Mulaku Atoll', 'MUA', 1, '0000-00-00 00:00:00'),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1, '0000-00-00 00:00:00'),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1, '0000-00-00 00:00:00'),
(2000, 130, 'Kolhumadulu', 'KLH', 1, '0000-00-00 00:00:00'),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1, '0000-00-00 00:00:00'),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1, '0000-00-00 00:00:00'),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1, '0000-00-00 00:00:00'),
(2004, 130, 'Fua Mulaku', 'FMU', 1, '0000-00-00 00:00:00'),
(2005, 130, 'Addu', 'ADD', 1, '0000-00-00 00:00:00'),
(2006, 131, 'Gao', 'GA', 1, '0000-00-00 00:00:00'),
(2007, 131, 'Kayes', 'KY', 1, '0000-00-00 00:00:00'),
(2008, 131, 'Kidal', 'KD', 1, '0000-00-00 00:00:00'),
(2009, 131, 'Koulikoro', 'KL', 1, '0000-00-00 00:00:00'),
(2010, 131, 'Mopti', 'MP', 1, '0000-00-00 00:00:00'),
(2011, 131, 'Segou', 'SG', 1, '0000-00-00 00:00:00'),
(2012, 131, 'Sikasso', 'SK', 1, '0000-00-00 00:00:00'),
(2013, 131, 'Tombouctou', 'TB', 1, '0000-00-00 00:00:00'),
(2014, 131, 'Bamako Capital District', 'CD', 1, '0000-00-00 00:00:00'),
(2015, 132, 'Attard', 'ATT', 1, '0000-00-00 00:00:00'),
(2016, 132, 'Balzan', 'BAL', 1, '0000-00-00 00:00:00'),
(2017, 132, 'Birgu', 'BGU', 1, '0000-00-00 00:00:00'),
(2018, 132, 'Birkirkara', 'BKK', 1, '0000-00-00 00:00:00'),
(2019, 132, 'Birzebbuga', 'BRZ', 1, '0000-00-00 00:00:00'),
(2020, 132, 'Bormla', 'BOR', 1, '0000-00-00 00:00:00'),
(2021, 132, 'Dingli', 'DIN', 1, '0000-00-00 00:00:00'),
(2022, 132, 'Fgura', 'FGU', 1, '0000-00-00 00:00:00'),
(2023, 132, 'Floriana', 'FLO', 1, '0000-00-00 00:00:00'),
(2024, 132, 'Gudja', 'GDJ', 1, '0000-00-00 00:00:00'),
(2025, 132, 'Gzira', 'GZR', 1, '0000-00-00 00:00:00'),
(2026, 132, 'Gargur', 'GRG', 1, '0000-00-00 00:00:00'),
(2027, 132, 'Gaxaq', 'GXQ', 1, '0000-00-00 00:00:00'),
(2028, 132, 'Hamrun', 'HMR', 1, '0000-00-00 00:00:00'),
(2029, 132, 'Iklin', 'IKL', 1, '0000-00-00 00:00:00'),
(2030, 132, 'Isla', 'ISL', 1, '0000-00-00 00:00:00'),
(2031, 132, 'Kalkara', 'KLK', 1, '0000-00-00 00:00:00'),
(2032, 132, 'Kirkop', 'KRK', 1, '0000-00-00 00:00:00'),
(2033, 132, 'Lija', 'LIJ', 1, '0000-00-00 00:00:00'),
(2034, 132, 'Luqa', 'LUQ', 1, '0000-00-00 00:00:00'),
(2035, 132, 'Marsa', 'MRS', 1, '0000-00-00 00:00:00'),
(2036, 132, 'Marsaskala', 'MKL', 1, '0000-00-00 00:00:00'),
(2037, 132, 'Marsaxlokk', 'MXL', 1, '0000-00-00 00:00:00'),
(2038, 132, 'Mdina', 'MDN', 1, '0000-00-00 00:00:00'),
(2039, 132, 'Melliea', 'MEL', 1, '0000-00-00 00:00:00'),
(2040, 132, 'Mgarr', 'MGR', 1, '0000-00-00 00:00:00'),
(2041, 132, 'Mosta', 'MST', 1, '0000-00-00 00:00:00'),
(2042, 132, 'Mqabba', 'MQA', 1, '0000-00-00 00:00:00'),
(2043, 132, 'Msida', 'MSI', 1, '0000-00-00 00:00:00'),
(2044, 132, 'Mtarfa', 'MTF', 1, '0000-00-00 00:00:00'),
(2045, 132, 'Naxxar', 'NAX', 1, '0000-00-00 00:00:00'),
(2046, 132, 'Paola', 'PAO', 1, '0000-00-00 00:00:00'),
(2047, 132, 'Pembroke', 'PEM', 1, '0000-00-00 00:00:00'),
(2048, 132, 'Pieta', 'PIE', 1, '0000-00-00 00:00:00'),
(2049, 132, 'Qormi', 'QOR', 1, '0000-00-00 00:00:00'),
(2050, 132, 'Qrendi', 'QRE', 1, '0000-00-00 00:00:00'),
(2051, 132, 'Rabat', 'RAB', 1, '0000-00-00 00:00:00'),
(2052, 132, 'Safi', 'SAF', 1, '0000-00-00 00:00:00'),
(2053, 132, 'San Giljan', 'SGI', 1, '0000-00-00 00:00:00'),
(2054, 132, 'Santa Lucija', 'SLU', 1, '0000-00-00 00:00:00'),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1, '0000-00-00 00:00:00'),
(2056, 132, 'San Gwann', 'SGW', 1, '0000-00-00 00:00:00'),
(2057, 132, 'Santa Venera', 'SVE', 1, '0000-00-00 00:00:00'),
(2058, 132, 'Siggiewi', 'SIG', 1, '0000-00-00 00:00:00'),
(2059, 132, 'Sliema', 'SLM', 1, '0000-00-00 00:00:00'),
(2060, 132, 'Swieqi', 'SWQ', 1, '0000-00-00 00:00:00'),
(2061, 132, 'Ta Xbiex', 'TXB', 1, '0000-00-00 00:00:00'),
(2062, 132, 'Tarxien', 'TRX', 1, '0000-00-00 00:00:00'),
(2063, 132, 'Valletta', 'VLT', 1, '0000-00-00 00:00:00'),
(2064, 132, 'Xgajra', 'XGJ', 1, '0000-00-00 00:00:00'),
(2065, 132, 'Zabbar', 'ZBR', 1, '0000-00-00 00:00:00'),
(2066, 132, 'Zebbug', 'ZBG', 1, '0000-00-00 00:00:00'),
(2067, 132, 'Zejtun', 'ZJT', 1, '0000-00-00 00:00:00'),
(2068, 132, 'Zurrieq', 'ZRQ', 1, '0000-00-00 00:00:00'),
(2069, 132, 'Fontana', 'FNT', 1, '0000-00-00 00:00:00'),
(2070, 132, 'Ghajnsielem', 'GHJ', 1, '0000-00-00 00:00:00'),
(2071, 132, 'Gharb', 'GHR', 1, '0000-00-00 00:00:00'),
(2072, 132, 'Ghasri', 'GHS', 1, '0000-00-00 00:00:00'),
(2073, 132, 'Kercem', 'KRC', 1, '0000-00-00 00:00:00'),
(2074, 132, 'Munxar', 'MUN', 1, '0000-00-00 00:00:00'),
(2075, 132, 'Nadur', 'NAD', 1, '0000-00-00 00:00:00'),
(2076, 132, 'Qala', 'QAL', 1, '0000-00-00 00:00:00'),
(2077, 132, 'Victoria', 'VIC', 1, '0000-00-00 00:00:00'),
(2078, 132, 'San Lawrenz', 'SLA', 1, '0000-00-00 00:00:00'),
(2079, 132, 'Sannat', 'SNT', 1, '0000-00-00 00:00:00'),
(2080, 132, 'Xagra', 'ZAG', 1, '0000-00-00 00:00:00'),
(2081, 132, 'Xewkija', 'XEW', 1, '0000-00-00 00:00:00'),
(2082, 132, 'Zebbug', 'ZEB', 1, '0000-00-00 00:00:00'),
(2083, 133, 'Ailinginae', 'ALG', 1, '0000-00-00 00:00:00'),
(2084, 133, 'Ailinglaplap', 'ALL', 1, '0000-00-00 00:00:00'),
(2085, 133, 'Ailuk', 'ALK', 1, '0000-00-00 00:00:00'),
(2086, 133, 'Arno', 'ARN', 1, '0000-00-00 00:00:00'),
(2087, 133, 'Aur', 'AUR', 1, '0000-00-00 00:00:00'),
(2088, 133, 'Bikar', 'BKR', 1, '0000-00-00 00:00:00'),
(2089, 133, 'Bikini', 'BKN', 1, '0000-00-00 00:00:00'),
(2090, 133, 'Bokak', 'BKK', 1, '0000-00-00 00:00:00'),
(2091, 133, 'Ebon', 'EBN', 1, '0000-00-00 00:00:00'),
(2092, 133, 'Enewetak', 'ENT', 1, '0000-00-00 00:00:00'),
(2093, 133, 'Erikub', 'EKB', 1, '0000-00-00 00:00:00'),
(2094, 133, 'Jabat', 'JBT', 1, '0000-00-00 00:00:00'),
(2095, 133, 'Jaluit', 'JLT', 1, '0000-00-00 00:00:00'),
(2096, 133, 'Jemo', 'JEM', 1, '0000-00-00 00:00:00'),
(2097, 133, 'Kili', 'KIL', 1, '0000-00-00 00:00:00'),
(2098, 133, 'Kwajalein', 'KWJ', 1, '0000-00-00 00:00:00'),
(2099, 133, 'Lae', 'LAE', 1, '0000-00-00 00:00:00'),
(2100, 133, 'Lib', 'LIB', 1, '0000-00-00 00:00:00'),
(2101, 133, 'Likiep', 'LKP', 1, '0000-00-00 00:00:00'),
(2102, 133, 'Majuro', 'MJR', 1, '0000-00-00 00:00:00'),
(2103, 133, 'Maloelap', 'MLP', 1, '0000-00-00 00:00:00'),
(2104, 133, 'Mejit', 'MJT', 1, '0000-00-00 00:00:00'),
(2105, 133, 'Mili', 'MIL', 1, '0000-00-00 00:00:00'),
(2106, 133, 'Namorik', 'NMK', 1, '0000-00-00 00:00:00'),
(2107, 133, 'Namu', 'NAM', 1, '0000-00-00 00:00:00'),
(2108, 133, 'Rongelap', 'RGL', 1, '0000-00-00 00:00:00'),
(2109, 133, 'Rongrik', 'RGK', 1, '0000-00-00 00:00:00'),
(2110, 133, 'Toke', 'TOK', 1, '0000-00-00 00:00:00'),
(2111, 133, 'Ujae', 'UJA', 1, '0000-00-00 00:00:00'),
(2112, 133, 'Ujelang', 'UJL', 1, '0000-00-00 00:00:00'),
(2113, 133, 'Utirik', 'UTK', 1, '0000-00-00 00:00:00'),
(2114, 133, 'Wotho', 'WTH', 1, '0000-00-00 00:00:00'),
(2115, 133, 'Wotje', 'WTJ', 1, '0000-00-00 00:00:00'),
(2116, 135, 'Adrar', 'AD', 1, '0000-00-00 00:00:00'),
(2117, 135, 'Assaba', 'AS', 1, '0000-00-00 00:00:00'),
(2118, 135, 'Brakna', 'BR', 1, '0000-00-00 00:00:00'),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1, '0000-00-00 00:00:00'),
(2120, 135, 'Gorgol', 'GO', 1, '0000-00-00 00:00:00'),
(2121, 135, 'Guidimaka', 'GM', 1, '0000-00-00 00:00:00'),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1, '0000-00-00 00:00:00'),
(2123, 135, 'Hodh El Gharbi', 'HG', 1, '0000-00-00 00:00:00'),
(2124, 135, 'Inchiri', 'IN', 1, '0000-00-00 00:00:00'),
(2125, 135, 'Tagant', 'TA', 1, '0000-00-00 00:00:00'),
(2126, 135, 'Tiris Zemmour', 'TZ', 1, '0000-00-00 00:00:00'),
(2127, 135, 'Trarza', 'TR', 1, '0000-00-00 00:00:00'),
(2128, 135, 'Nouakchott', 'NO', 1, '0000-00-00 00:00:00'),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1, '0000-00-00 00:00:00'),
(2130, 136, 'Curepipe', 'CU', 1, '0000-00-00 00:00:00'),
(2131, 136, 'Port Louis', 'PU', 1, '0000-00-00 00:00:00'),
(2132, 136, 'Quatre Bornes', 'QB', 1, '0000-00-00 00:00:00'),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1, '0000-00-00 00:00:00'),
(2134, 136, 'Agalega Islands', 'AG', 1, '0000-00-00 00:00:00'),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1, '0000-00-00 00:00:00'),
(2136, 136, 'Rodrigues', 'RO', 1, '0000-00-00 00:00:00'),
(2137, 136, 'Black River', 'BL', 1, '0000-00-00 00:00:00'),
(2138, 136, 'Flacq', 'FL', 1, '0000-00-00 00:00:00'),
(2139, 136, 'Grand Port', 'GP', 1, '0000-00-00 00:00:00'),
(2140, 136, 'Moka', 'MO', 1, '0000-00-00 00:00:00'),
(2141, 136, 'Pamplemousses', 'PA', 1, '0000-00-00 00:00:00'),
(2142, 136, 'Plaines Wilhems', 'PW', 1, '0000-00-00 00:00:00'),
(2143, 136, 'Port Louis', 'PL', 1, '0000-00-00 00:00:00'),
(2144, 136, 'Riviere du Rempart', 'RR', 1, '0000-00-00 00:00:00'),
(2145, 136, 'Savanne', 'SA', 1, '0000-00-00 00:00:00'),
(2146, 138, 'Baja California Norte', 'BN', 1, '0000-00-00 00:00:00'),
(2147, 138, 'Baja California Sur', 'BS', 1, '0000-00-00 00:00:00'),
(2148, 138, 'Campeche', 'CA', 1, '0000-00-00 00:00:00'),
(2149, 138, 'Chiapas', 'CI', 1, '0000-00-00 00:00:00'),
(2150, 138, 'Chihuahua', 'CH', 1, '0000-00-00 00:00:00'),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1, '0000-00-00 00:00:00'),
(2152, 138, 'Colima', 'CL', 1, '0000-00-00 00:00:00'),
(2153, 138, 'Distrito Federal', 'DF', 1, '0000-00-00 00:00:00'),
(2154, 138, 'Durango', 'DU', 1, '0000-00-00 00:00:00'),
(2155, 138, 'Guanajuato', 'GA', 1, '0000-00-00 00:00:00'),
(2156, 138, 'Guerrero', 'GE', 1, '0000-00-00 00:00:00'),
(2157, 138, 'Hidalgo', 'HI', 1, '0000-00-00 00:00:00'),
(2158, 138, 'Jalisco', 'JA', 1, '0000-00-00 00:00:00'),
(2159, 138, 'Mexico', 'ME', 1, '0000-00-00 00:00:00'),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1, '0000-00-00 00:00:00'),
(2161, 138, 'Morelos', 'MO', 1, '0000-00-00 00:00:00'),
(2162, 138, 'Nayarit', 'NA', 1, '0000-00-00 00:00:00'),
(2163, 138, 'Nuevo Leon', 'NL', 1, '0000-00-00 00:00:00'),
(2164, 138, 'Oaxaca', 'OA', 1, '0000-00-00 00:00:00'),
(2165, 138, 'Puebla', 'PU', 1, '0000-00-00 00:00:00'),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1, '0000-00-00 00:00:00'),
(2167, 138, 'Quintana Roo', 'QR', 1, '0000-00-00 00:00:00'),
(2168, 138, 'San Luis Potosi', 'SA', 1, '0000-00-00 00:00:00'),
(2169, 138, 'Sinaloa', 'SI', 1, '0000-00-00 00:00:00'),
(2170, 138, 'Sonora', 'SO', 1, '0000-00-00 00:00:00'),
(2171, 138, 'Tabasco', 'TB', 1, '0000-00-00 00:00:00'),
(2172, 138, 'Tamaulipas', 'TM', 1, '0000-00-00 00:00:00'),
(2173, 138, 'Tlaxcala', 'TL', 1, '0000-00-00 00:00:00'),
(2174, 138, 'Veracruz-Llave', 'VE', 1, '0000-00-00 00:00:00'),
(2175, 138, 'Yucatan', 'YU', 1, '0000-00-00 00:00:00'),
(2176, 138, 'Zacatecas', 'ZA', 1, '0000-00-00 00:00:00'),
(2177, 139, 'Chuuk', 'C', 1, '0000-00-00 00:00:00'),
(2178, 139, 'Kosrae', 'K', 1, '0000-00-00 00:00:00'),
(2179, 139, 'Pohnpei', 'P', 1, '0000-00-00 00:00:00'),
(2180, 139, 'Yap', 'Y', 1, '0000-00-00 00:00:00'),
(2181, 140, 'Gagauzia', 'GA', 1, '0000-00-00 00:00:00'),
(2182, 140, 'Chisinau', 'CU', 1, '0000-00-00 00:00:00'),
(2183, 140, 'Balti', 'BA', 1, '0000-00-00 00:00:00'),
(2184, 140, 'Cahul', 'CA', 1, '0000-00-00 00:00:00'),
(2185, 140, 'Edinet', 'ED', 1, '0000-00-00 00:00:00'),
(2186, 140, 'Lapusna', 'LA', 1, '0000-00-00 00:00:00'),
(2187, 140, 'Orhei', 'OR', 1, '0000-00-00 00:00:00'),
(2188, 140, 'Soroca', 'SO', 1, '0000-00-00 00:00:00'),
(2189, 140, 'Tighina', 'TI', 1, '0000-00-00 00:00:00'),
(2190, 140, 'Ungheni', 'UN', 1, '0000-00-00 00:00:00'),
(2191, 140, 'St‚nga Nistrului', 'SN', 1, '0000-00-00 00:00:00'),
(2192, 141, 'Fontvieille', 'FV', 1, '0000-00-00 00:00:00'),
(2193, 141, 'La Condamine', 'LC', 1, '0000-00-00 00:00:00'),
(2194, 141, 'Monaco-Ville', 'MV', 1, '0000-00-00 00:00:00'),
(2195, 141, 'Monte-Carlo', 'MC', 1, '0000-00-00 00:00:00'),
(2196, 142, 'Ulanbaatar', '1', 1, '0000-00-00 00:00:00'),
(2197, 142, 'Orhon', '035', 1, '0000-00-00 00:00:00'),
(2198, 142, 'Darhan uul', '037', 1, '0000-00-00 00:00:00'),
(2199, 142, 'Hentiy', '039', 1, '0000-00-00 00:00:00'),
(2200, 142, 'Hovsgol', '041', 1, '0000-00-00 00:00:00'),
(2201, 142, 'Hovd', '043', 1, '0000-00-00 00:00:00'),
(2202, 142, 'Uvs', '046', 1, '0000-00-00 00:00:00'),
(2203, 142, 'Tov', '047', 1, '0000-00-00 00:00:00'),
(2204, 142, 'Selenge', '049', 1, '0000-00-00 00:00:00'),
(2205, 142, 'Suhbaatar', '051', 1, '0000-00-00 00:00:00'),
(2206, 142, 'Omnogovi', '053', 1, '0000-00-00 00:00:00'),
(2207, 142, 'Ovorhangay', '055', 1, '0000-00-00 00:00:00'),
(2208, 142, 'Dzavhan', '057', 1, '0000-00-00 00:00:00'),
(2209, 142, 'DundgovL', '059', 1, '0000-00-00 00:00:00'),
(2210, 142, 'Dornod', '061', 1, '0000-00-00 00:00:00'),
(2211, 142, 'Dornogov', '063', 1, '0000-00-00 00:00:00'),
(2212, 142, 'Govi-Sumber', '064', 1, '0000-00-00 00:00:00'),
(2213, 142, 'Govi-Altay', '065', 1, '0000-00-00 00:00:00'),
(2214, 142, 'Bulgan', '067', 1, '0000-00-00 00:00:00'),
(2215, 142, 'Bayanhongor', '069', 1, '0000-00-00 00:00:00'),
(2216, 142, 'Bayan-Olgiy', '071', 1, '0000-00-00 00:00:00'),
(2217, 142, 'Arhangay', '073', 1, '0000-00-00 00:00:00'),
(2218, 143, 'Saint Anthony', 'A', 1, '0000-00-00 00:00:00'),
(2219, 143, 'Saint Georges', 'G', 1, '0000-00-00 00:00:00'),
(2220, 143, 'Saint Peter', 'P', 1, '0000-00-00 00:00:00'),
(2221, 144, 'Agadir', 'AGD', 1, '0000-00-00 00:00:00'),
(2222, 144, 'Al Hoceima', 'HOC', 1, '0000-00-00 00:00:00'),
(2223, 144, 'Azilal', 'AZI', 1, '0000-00-00 00:00:00'),
(2224, 144, 'Beni Mellal', 'BME', 1, '0000-00-00 00:00:00'),
(2225, 144, 'Ben Slimane', 'BSL', 1, '0000-00-00 00:00:00'),
(2226, 144, 'Boulemane', 'BLM', 1, '0000-00-00 00:00:00'),
(2227, 144, 'Casablanca', 'CBL', 1, '0000-00-00 00:00:00'),
(2228, 144, 'Chaouen', 'CHA', 1, '0000-00-00 00:00:00'),
(2229, 144, 'El Jadida', 'EJA', 1, '0000-00-00 00:00:00'),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1, '0000-00-00 00:00:00'),
(2231, 144, 'Er Rachidia', 'ERA', 1, '0000-00-00 00:00:00'),
(2232, 144, 'Essaouira', 'ESS', 1, '0000-00-00 00:00:00'),
(2233, 144, 'Fes', 'FES', 1, '0000-00-00 00:00:00'),
(2234, 144, 'Figuig', 'FIG', 1, '0000-00-00 00:00:00'),
(2235, 144, 'Guelmim', 'GLM', 1, '0000-00-00 00:00:00'),
(2236, 144, 'Ifrane', 'IFR', 1, '0000-00-00 00:00:00'),
(2237, 144, 'Kenitra', 'KEN', 1, '0000-00-00 00:00:00'),
(2238, 144, 'Khemisset', 'KHM', 1, '0000-00-00 00:00:00'),
(2239, 144, 'Khenifra', 'KHN', 1, '0000-00-00 00:00:00'),
(2240, 144, 'Khouribga', 'KHO', 1, '0000-00-00 00:00:00'),
(2241, 144, 'Laayoune', 'LYN', 1, '0000-00-00 00:00:00'),
(2242, 144, 'Larache', 'LAR', 1, '0000-00-00 00:00:00'),
(2243, 144, 'Marrakech', 'MRK', 1, '0000-00-00 00:00:00'),
(2244, 144, 'Meknes', 'MKN', 1, '0000-00-00 00:00:00'),
(2245, 144, 'Nador', 'NAD', 1, '0000-00-00 00:00:00'),
(2246, 144, 'Ouarzazate', 'ORZ', 1, '0000-00-00 00:00:00'),
(2247, 144, 'Oujda', 'OUJ', 1, '0000-00-00 00:00:00'),
(2248, 144, 'Rabat-Sale', 'RSA', 1, '0000-00-00 00:00:00'),
(2249, 144, 'Safi', 'SAF', 1, '0000-00-00 00:00:00'),
(2250, 144, 'Settat', 'SET', 1, '0000-00-00 00:00:00'),
(2251, 144, 'Sidi Kacem', 'SKA', 1, '0000-00-00 00:00:00'),
(2252, 144, 'Tangier', 'TGR', 1, '0000-00-00 00:00:00'),
(2253, 144, 'Tan-Tan', 'TAN', 1, '0000-00-00 00:00:00'),
(2254, 144, 'Taounate', 'TAO', 1, '0000-00-00 00:00:00'),
(2255, 144, 'Taroudannt', 'TRD', 1, '0000-00-00 00:00:00'),
(2256, 144, 'Tata', 'TAT', 1, '0000-00-00 00:00:00'),
(2257, 144, 'Taza', 'TAZ', 1, '0000-00-00 00:00:00'),
(2258, 144, 'Tetouan', 'TET', 1, '0000-00-00 00:00:00'),
(2259, 144, 'Tiznit', 'TIZ', 1, '0000-00-00 00:00:00'),
(2260, 144, 'Ad Dakhla', 'ADK', 1, '0000-00-00 00:00:00'),
(2261, 144, 'Boujdour', 'BJD', 1, '0000-00-00 00:00:00'),
(2262, 144, 'Es Smara', 'ESM', 1, '0000-00-00 00:00:00'),
(2263, 145, 'Cabo Delgado', 'CD', 1, '0000-00-00 00:00:00'),
(2264, 145, 'Gaza', 'GZ', 1, '0000-00-00 00:00:00'),
(2265, 145, 'Inhambane', 'IN', 1, '0000-00-00 00:00:00'),
(2266, 145, 'Manica', 'MN', 1, '0000-00-00 00:00:00'),
(2267, 145, 'Maputo (city)', 'MC', 1, '0000-00-00 00:00:00'),
(2268, 145, 'Maputo', 'MP', 1, '0000-00-00 00:00:00'),
(2269, 145, 'Nampula', 'NA', 1, '0000-00-00 00:00:00'),
(2270, 145, 'Niassa', 'NI', 1, '0000-00-00 00:00:00'),
(2271, 145, 'Sofala', 'SO', 1, '0000-00-00 00:00:00'),
(2272, 145, 'Tete', 'TE', 1, '0000-00-00 00:00:00'),
(2273, 145, 'Zambezia', 'ZA', 1, '0000-00-00 00:00:00'),
(2274, 146, 'Ayeyarwady', 'AY', 1, '0000-00-00 00:00:00'),
(2275, 146, 'Bago', 'BG', 1, '0000-00-00 00:00:00'),
(2276, 146, 'Magway', 'MG', 1, '0000-00-00 00:00:00'),
(2277, 146, 'Mandalay', 'MD', 1, '0000-00-00 00:00:00'),
(2278, 146, 'Sagaing', 'SG', 1, '0000-00-00 00:00:00'),
(2279, 146, 'Tanintharyi', 'TN', 1, '0000-00-00 00:00:00'),
(2280, 146, 'Yangon', 'YG', 1, '0000-00-00 00:00:00'),
(2281, 146, 'Chin State', 'CH', 1, '0000-00-00 00:00:00'),
(2282, 146, 'Kachin State', 'KC', 1, '0000-00-00 00:00:00'),
(2283, 146, 'Kayah State', 'KH', 1, '0000-00-00 00:00:00'),
(2284, 146, 'Kayin State', 'KN', 1, '0000-00-00 00:00:00'),
(2285, 146, 'Mon State', 'MN', 1, '0000-00-00 00:00:00'),
(2286, 146, 'Rakhine State', 'RK', 1, '0000-00-00 00:00:00'),
(2287, 146, 'Shan State', 'SH', 1, '0000-00-00 00:00:00'),
(2288, 147, 'Caprivi', 'CA', 1, '0000-00-00 00:00:00'),
(2289, 147, 'Erongo', 'ER', 1, '0000-00-00 00:00:00'),
(2290, 147, 'Hardap', 'HA', 1, '0000-00-00 00:00:00'),
(2291, 147, 'Karas', 'KR', 1, '0000-00-00 00:00:00'),
(2292, 147, 'Kavango', 'KV', 1, '0000-00-00 00:00:00'),
(2293, 147, 'Khomas', 'KH', 1, '0000-00-00 00:00:00'),
(2294, 147, 'Kunene', 'KU', 1, '0000-00-00 00:00:00'),
(2295, 147, 'Ohangwena', 'OW', 1, '0000-00-00 00:00:00'),
(2296, 147, 'Omaheke', 'OK', 1, '0000-00-00 00:00:00'),
(2297, 147, 'Omusati', 'OT', 1, '0000-00-00 00:00:00'),
(2298, 147, 'Oshana', 'ON', 1, '0000-00-00 00:00:00'),
(2299, 147, 'Oshikoto', 'OO', 1, '0000-00-00 00:00:00'),
(2300, 147, 'Otjozondjupa', 'OJ', 1, '0000-00-00 00:00:00'),
(2301, 148, 'Aiwo', 'AO', 1, '0000-00-00 00:00:00'),
(2302, 148, 'Anabar', 'AA', 1, '0000-00-00 00:00:00'),
(2303, 148, 'Anetan', 'AT', 1, '0000-00-00 00:00:00'),
(2304, 148, 'Anibare', 'AI', 1, '0000-00-00 00:00:00'),
(2305, 148, 'Baiti', 'BA', 1, '0000-00-00 00:00:00'),
(2306, 148, 'Boe', 'BO', 1, '0000-00-00 00:00:00'),
(2307, 148, 'Buada', 'BU', 1, '0000-00-00 00:00:00'),
(2308, 148, 'Denigomodu', 'DE', 1, '0000-00-00 00:00:00'),
(2309, 148, 'Ewa', 'EW', 1, '0000-00-00 00:00:00'),
(2310, 148, 'Ijuw', 'IJ', 1, '0000-00-00 00:00:00'),
(2311, 148, 'Meneng', 'ME', 1, '0000-00-00 00:00:00'),
(2312, 148, 'Nibok', 'NI', 1, '0000-00-00 00:00:00'),
(2313, 148, 'Uaboe', 'UA', 1, '0000-00-00 00:00:00'),
(2314, 148, 'Yaren', 'YA', 1, '0000-00-00 00:00:00'),
(2315, 149, 'Bagmati', 'BA', 1, '0000-00-00 00:00:00'),
(2316, 149, 'Bheri', 'BH', 1, '0000-00-00 00:00:00'),
(2317, 149, 'Dhawalagiri', 'DH', 1, '0000-00-00 00:00:00'),
(2318, 149, 'Gandaki', 'GA', 1, '0000-00-00 00:00:00'),
(2319, 149, 'Janakpur', 'JA', 1, '0000-00-00 00:00:00'),
(2320, 149, 'Karnali', 'KA', 1, '0000-00-00 00:00:00'),
(2321, 149, 'Kosi', 'KO', 1, '0000-00-00 00:00:00'),
(2322, 149, 'Lumbini', 'LU', 1, '0000-00-00 00:00:00'),
(2323, 149, 'Mahakali', 'MA', 1, '0000-00-00 00:00:00'),
(2324, 149, 'Mechi', 'ME', 1, '0000-00-00 00:00:00'),
(2325, 149, 'Narayani', 'NA', 1, '0000-00-00 00:00:00'),
(2326, 149, 'Rapti', 'RA', 1, '0000-00-00 00:00:00'),
(2327, 149, 'Sagarmatha', 'SA', 1, '0000-00-00 00:00:00'),
(2328, 149, 'Seti', 'SE', 1, '0000-00-00 00:00:00'),
(2329, 150, 'Drenthe', 'DR', 1, '0000-00-00 00:00:00'),
(2330, 150, 'Flevoland', 'FL', 1, '0000-00-00 00:00:00'),
(2331, 150, 'Friesland', 'FR', 1, '0000-00-00 00:00:00'),
(2332, 150, 'Gelderland', 'GE', 1, '0000-00-00 00:00:00'),
(2333, 150, 'Groningen', 'GR', 1, '0000-00-00 00:00:00'),
(2334, 150, 'Limburg', 'LI', 1, '0000-00-00 00:00:00'),
(2335, 150, 'Noord Brabant', 'NB', 1, '0000-00-00 00:00:00'),
(2336, 150, 'Noord Holland', 'NH', 1, '0000-00-00 00:00:00'),
(2337, 150, 'Overijssel', 'OV', 1, '0000-00-00 00:00:00'),
(2338, 150, 'Utrecht', 'UT', 1, '0000-00-00 00:00:00'),
(2339, 150, 'Zeeland', 'ZE', 1, '0000-00-00 00:00:00'),
(2340, 150, 'Zuid Holland', 'ZH', 1, '0000-00-00 00:00:00'),
(2341, 152, 'Iles Loyaute', 'L', 1, '0000-00-00 00:00:00'),
(2342, 152, 'Nord', 'N', 1, '0000-00-00 00:00:00'),
(2343, 152, 'Sud', 'S', 1, '0000-00-00 00:00:00'),
(2344, 153, 'Auckland', 'AUK', 1, '0000-00-00 00:00:00'),
(2345, 153, 'Bay of Plenty', 'BOP', 1, '0000-00-00 00:00:00'),
(2346, 153, 'Canterbury', 'CAN', 1, '0000-00-00 00:00:00'),
(2347, 153, 'Coromandel', 'COR', 1, '0000-00-00 00:00:00'),
(2348, 153, 'Gisborne', 'GIS', 1, '0000-00-00 00:00:00'),
(2349, 153, 'Fiordland', 'FIO', 1, '0000-00-00 00:00:00'),
(2350, 153, 'Hawke''s Bay', 'HKB', 1, '0000-00-00 00:00:00'),
(2351, 153, 'Marlborough', 'MBH', 1, '0000-00-00 00:00:00'),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1, '0000-00-00 00:00:00'),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1, '0000-00-00 00:00:00'),
(2354, 153, 'Nelson', 'NSN', 1, '0000-00-00 00:00:00'),
(2355, 153, 'Northland', 'NTL', 1, '0000-00-00 00:00:00'),
(2356, 153, 'Otago', 'OTA', 1, '0000-00-00 00:00:00'),
(2357, 153, 'Southland', 'STL', 1, '0000-00-00 00:00:00'),
(2358, 153, 'Taranaki', 'TKI', 1, '0000-00-00 00:00:00'),
(2359, 153, 'Wellington', 'WGN', 1, '0000-00-00 00:00:00'),
(2360, 153, 'Waikato', 'WKO', 1, '0000-00-00 00:00:00'),
(2361, 153, 'Wairarapa', 'WAI', 1, '0000-00-00 00:00:00'),
(2362, 153, 'West Coast', 'WTC', 1, '0000-00-00 00:00:00'),
(2363, 154, 'Atlantico Norte', 'AN', 1, '0000-00-00 00:00:00'),
(2364, 154, 'Atlantico Sur', 'AS', 1, '0000-00-00 00:00:00'),
(2365, 154, 'Boaco', 'BO', 1, '0000-00-00 00:00:00'),
(2366, 154, 'Carazo', 'CA', 1, '0000-00-00 00:00:00'),
(2367, 154, 'Chinandega', 'CI', 1, '0000-00-00 00:00:00'),
(2368, 154, 'Chontales', 'CO', 1, '0000-00-00 00:00:00'),
(2369, 154, 'Esteli', 'ES', 1, '0000-00-00 00:00:00'),
(2370, 154, 'Granada', 'GR', 1, '0000-00-00 00:00:00'),
(2371, 154, 'Jinotega', 'JI', 1, '0000-00-00 00:00:00'),
(2372, 154, 'Leon', 'LE', 1, '0000-00-00 00:00:00'),
(2373, 154, 'Madriz', 'MD', 1, '0000-00-00 00:00:00'),
(2374, 154, 'Managua', 'MN', 1, '0000-00-00 00:00:00'),
(2375, 154, 'Masaya', 'MS', 1, '0000-00-00 00:00:00'),
(2376, 154, 'Matagalpa', 'MT', 1, '0000-00-00 00:00:00'),
(2377, 154, 'Nuevo Segovia', 'NS', 1, '0000-00-00 00:00:00'),
(2378, 154, 'Rio San Juan', 'RS', 1, '0000-00-00 00:00:00'),
(2379, 154, 'Rivas', 'RI', 1, '0000-00-00 00:00:00'),
(2380, 155, 'Agadez', 'AG', 1, '0000-00-00 00:00:00'),
(2381, 155, 'Diffa', 'DF', 1, '0000-00-00 00:00:00'),
(2382, 155, 'Dosso', 'DS', 1, '0000-00-00 00:00:00'),
(2383, 155, 'Maradi', 'MA', 1, '0000-00-00 00:00:00'),
(2384, 155, 'Niamey', 'NM', 1, '0000-00-00 00:00:00'),
(2385, 155, 'Tahoua', 'TH', 1, '0000-00-00 00:00:00'),
(2386, 155, 'Tillaberi', 'TL', 1, '0000-00-00 00:00:00'),
(2387, 155, 'Zinder', 'ZD', 1, '0000-00-00 00:00:00'),
(2388, 156, 'Abia', 'AB', 1, '0000-00-00 00:00:00'),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1, '0000-00-00 00:00:00'),
(2390, 156, 'Adamawa', 'AD', 1, '0000-00-00 00:00:00'),
(2391, 156, 'Akwa Ibom', 'AK', 1, '0000-00-00 00:00:00'),
(2392, 156, 'Anambra', 'AN', 1, '0000-00-00 00:00:00'),
(2393, 156, 'Bauchi', 'BC', 1, '0000-00-00 00:00:00'),
(2394, 156, 'Bayelsa', 'BY', 1, '0000-00-00 00:00:00'),
(2395, 156, 'Benue', 'BN', 1, '0000-00-00 00:00:00'),
(2396, 156, 'Borno', 'BO', 1, '0000-00-00 00:00:00'),
(2397, 156, 'Cross River', 'CR', 1, '0000-00-00 00:00:00'),
(2398, 156, 'Delta', 'DE', 1, '0000-00-00 00:00:00'),
(2399, 156, 'Ebonyi', 'EB', 1, '0000-00-00 00:00:00'),
(2400, 156, 'Edo', 'ED', 1, '0000-00-00 00:00:00'),
(2401, 156, 'Ekiti', 'EK', 1, '0000-00-00 00:00:00'),
(2402, 156, 'Enugu', 'EN', 1, '0000-00-00 00:00:00'),
(2403, 156, 'Gombe', 'GO', 1, '0000-00-00 00:00:00'),
(2404, 156, 'Imo', 'IM', 1, '0000-00-00 00:00:00'),
(2405, 156, 'Jigawa', 'JI', 1, '0000-00-00 00:00:00'),
(2406, 156, 'Kaduna', 'KD', 1, '0000-00-00 00:00:00'),
(2407, 156, 'Kano', 'KN', 1, '0000-00-00 00:00:00'),
(2408, 156, 'Katsina', 'KT', 1, '0000-00-00 00:00:00'),
(2409, 156, 'Kebbi', 'KE', 1, '0000-00-00 00:00:00'),
(2410, 156, 'Kogi', 'KO', 1, '0000-00-00 00:00:00'),
(2411, 156, 'Kwara', 'KW', 1, '0000-00-00 00:00:00'),
(2412, 156, 'Lagos', 'LA', 1, '0000-00-00 00:00:00'),
(2413, 156, 'Nassarawa', 'NA', 1, '0000-00-00 00:00:00'),
(2414, 156, 'Niger', 'NI', 1, '0000-00-00 00:00:00'),
(2415, 156, 'Ogun', 'OG', 1, '0000-00-00 00:00:00'),
(2416, 156, 'Ondo', 'ONG', 1, '0000-00-00 00:00:00'),
(2417, 156, 'Osun', 'OS', 1, '0000-00-00 00:00:00'),
(2418, 156, 'Oyo', 'OY', 1, '0000-00-00 00:00:00'),
(2419, 156, 'Plateau', 'PL', 1, '0000-00-00 00:00:00'),
(2420, 156, 'Rivers', 'RI', 1, '0000-00-00 00:00:00'),
(2421, 156, 'Sokoto', 'SO', 1, '0000-00-00 00:00:00'),
(2422, 156, 'Taraba', 'TA', 1, '0000-00-00 00:00:00'),
(2423, 156, 'Yobe', 'YO', 1, '0000-00-00 00:00:00'),
(2424, 156, 'Zamfara', 'ZA', 1, '0000-00-00 00:00:00'),
(2425, 159, 'Northern Islands', 'N', 1, '0000-00-00 00:00:00'),
(2426, 159, 'Rota', 'R', 1, '0000-00-00 00:00:00'),
(2427, 159, 'Saipan', 'S', 1, '0000-00-00 00:00:00'),
(2428, 159, 'Tinian', 'T', 1, '0000-00-00 00:00:00'),
(2429, 160, 'Akershus', 'AK', 1, '0000-00-00 00:00:00'),
(2430, 160, 'Aust-Agder', 'AA', 1, '0000-00-00 00:00:00'),
(2431, 160, 'Buskerud', 'BU', 1, '0000-00-00 00:00:00'),
(2432, 160, 'Finnmark', 'FM', 1, '0000-00-00 00:00:00'),
(2433, 160, 'Hedmark', 'HM', 1, '0000-00-00 00:00:00'),
(2434, 160, 'Hordaland', 'HL', 1, '0000-00-00 00:00:00'),
(2435, 160, 'More og Romdal', 'MR', 1, '0000-00-00 00:00:00'),
(2436, 160, 'Nord-Trondelag', 'NT', 1, '0000-00-00 00:00:00'),
(2437, 160, 'Nordland', 'NL', 1, '0000-00-00 00:00:00'),
(2438, 160, 'Ostfold', 'OF', 1, '0000-00-00 00:00:00'),
(2439, 160, 'Oppland', 'OP', 1, '0000-00-00 00:00:00'),
(2440, 160, 'Oslo', 'OL', 1, '0000-00-00 00:00:00'),
(2441, 160, 'Rogaland', 'RL', 1, '0000-00-00 00:00:00'),
(2442, 160, 'Sor-Trondelag', 'ST', 1, '0000-00-00 00:00:00'),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1, '0000-00-00 00:00:00'),
(2444, 160, 'Svalbard', 'SV', 1, '0000-00-00 00:00:00'),
(2445, 160, 'Telemark', 'TM', 1, '0000-00-00 00:00:00'),
(2446, 160, 'Troms', 'TR', 1, '0000-00-00 00:00:00'),
(2447, 160, 'Vest-Agder', 'VA', 1, '0000-00-00 00:00:00'),
(2448, 160, 'Vestfold', 'VF', 1, '0000-00-00 00:00:00'),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1, '0000-00-00 00:00:00'),
(2450, 161, 'Al Batinah', 'BA', 1, '0000-00-00 00:00:00'),
(2451, 161, 'Al Wusta', 'WU', 1, '0000-00-00 00:00:00'),
(2452, 161, 'Ash Sharqiyah', 'SH', 1, '0000-00-00 00:00:00'),
(2453, 161, 'Az Zahirah', 'ZA', 1, '0000-00-00 00:00:00'),
(2454, 161, 'Masqat', 'MA', 1, '0000-00-00 00:00:00'),
(2455, 161, 'Musandam', 'MU', 1, '0000-00-00 00:00:00'),
(2456, 161, 'Zufar', 'ZU', 1, '0000-00-00 00:00:00'),
(2457, 162, 'Balochistan', 'B', 1, '0000-00-00 00:00:00'),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1, '0000-00-00 00:00:00'),
(2459, 162, 'Islamabad Capital Territory', 'I', 1, '0000-00-00 00:00:00'),
(2460, 162, 'North-West Frontier', 'N', 1, '0000-00-00 00:00:00'),
(2461, 162, 'Punjab', 'P', 1, '0000-00-00 00:00:00'),
(2462, 162, 'Sindh', 'S', 1, '0000-00-00 00:00:00'),
(2463, 163, 'Aimeliik', 'AM', 1, '0000-00-00 00:00:00'),
(2464, 163, 'Airai', 'AR', 1, '0000-00-00 00:00:00'),
(2465, 163, 'Angaur', 'AN', 1, '0000-00-00 00:00:00'),
(2466, 163, 'Hatohobei', 'HA', 1, '0000-00-00 00:00:00'),
(2467, 163, 'Kayangel', 'KA', 1, '0000-00-00 00:00:00'),
(2468, 163, 'Koror', 'KO', 1, '0000-00-00 00:00:00'),
(2469, 163, 'Melekeok', 'ME', 1, '0000-00-00 00:00:00'),
(2470, 163, 'Ngaraard', 'NA', 1, '0000-00-00 00:00:00'),
(2471, 163, 'Ngarchelong', 'NG', 1, '0000-00-00 00:00:00'),
(2472, 163, 'Ngardmau', 'ND', 1, '0000-00-00 00:00:00'),
(2473, 163, 'Ngatpang', 'NT', 1, '0000-00-00 00:00:00'),
(2474, 163, 'Ngchesar', 'NC', 1, '0000-00-00 00:00:00'),
(2475, 163, 'Ngeremlengui', 'NR', 1, '0000-00-00 00:00:00'),
(2476, 163, 'Ngiwal', 'NW', 1, '0000-00-00 00:00:00'),
(2477, 163, 'Peleliu', 'PE', 1, '0000-00-00 00:00:00'),
(2478, 163, 'Sonsorol', 'SO', 1, '0000-00-00 00:00:00'),
(2479, 164, 'Bocas del Toro', 'BT', 1, '0000-00-00 00:00:00'),
(2480, 164, 'Chiriqui', 'CH', 1, '0000-00-00 00:00:00'),
(2481, 164, 'Cocle', 'CC', 1, '0000-00-00 00:00:00'),
(2482, 164, 'Colon', 'CL', 1, '0000-00-00 00:00:00'),
(2483, 164, 'Darien', 'DA', 1, '0000-00-00 00:00:00'),
(2484, 164, 'Herrera', 'HE', 1, '0000-00-00 00:00:00'),
(2485, 164, 'Los Santos', 'LS', 1, '0000-00-00 00:00:00'),
(2486, 164, 'Panama', 'PA', 1, '0000-00-00 00:00:00'),
(2487, 164, 'San Blas', 'SB', 1, '0000-00-00 00:00:00'),
(2488, 164, 'Veraguas', 'VG', 1, '0000-00-00 00:00:00'),
(2489, 165, 'Bougainville', 'BV', 1, '0000-00-00 00:00:00'),
(2490, 165, 'Central', 'CE', 1, '0000-00-00 00:00:00'),
(2491, 165, 'Chimbu', 'CH', 1, '0000-00-00 00:00:00'),
(2492, 165, 'Eastern Highlands', 'EH', 1, '0000-00-00 00:00:00'),
(2493, 165, 'East New Britain', 'EB', 1, '0000-00-00 00:00:00'),
(2494, 165, 'East Sepik', 'ES', 1, '0000-00-00 00:00:00'),
(2495, 165, 'Enga', 'EN', 1, '0000-00-00 00:00:00'),
(2496, 165, 'Gulf', 'GU', 1, '0000-00-00 00:00:00'),
(2497, 165, 'Madang', 'MD', 1, '0000-00-00 00:00:00'),
(2498, 165, 'Manus', 'MN', 1, '0000-00-00 00:00:00'),
(2499, 165, 'Milne Bay', 'MB', 1, '0000-00-00 00:00:00'),
(2500, 165, 'Morobe', 'MR', 1, '0000-00-00 00:00:00'),
(2501, 165, 'National Capital', 'NC', 1, '0000-00-00 00:00:00'),
(2502, 165, 'New Ireland', 'NI', 1, '0000-00-00 00:00:00'),
(2503, 165, 'Northern', 'NO', 1, '0000-00-00 00:00:00'),
(2504, 165, 'Sandaun', 'SA', 1, '0000-00-00 00:00:00'),
(2505, 165, 'Southern Highlands', 'SH', 1, '0000-00-00 00:00:00'),
(2506, 165, 'Western', 'WE', 1, '0000-00-00 00:00:00'),
(2507, 165, 'Western Highlands', 'WH', 1, '0000-00-00 00:00:00'),
(2508, 165, 'West New Britain', 'WB', 1, '0000-00-00 00:00:00'),
(2509, 166, 'Alto Paraguay', 'AG', 1, '0000-00-00 00:00:00'),
(2510, 166, 'Alto Parana', 'AN', 1, '0000-00-00 00:00:00'),
(2511, 166, 'Amambay', 'AM', 1, '0000-00-00 00:00:00'),
(2512, 166, 'Asuncion', 'AS', 1, '0000-00-00 00:00:00'),
(2513, 166, 'Boqueron', 'BO', 1, '0000-00-00 00:00:00'),
(2514, 166, 'Caaguazu', 'CG', 1, '0000-00-00 00:00:00'),
(2515, 166, 'Caazapa', 'CZ', 1, '0000-00-00 00:00:00'),
(2516, 166, 'Canindeyu', 'CN', 1, '0000-00-00 00:00:00'),
(2517, 166, 'Central', 'CE', 1, '0000-00-00 00:00:00'),
(2518, 166, 'Concepcion', 'CC', 1, '0000-00-00 00:00:00'),
(2519, 166, 'Cordillera', 'CD', 1, '0000-00-00 00:00:00'),
(2520, 166, 'Guaira', 'GU', 1, '0000-00-00 00:00:00'),
(2521, 166, 'Itapua', 'IT', 1, '0000-00-00 00:00:00'),
(2522, 166, 'Misiones', 'MI', 1, '0000-00-00 00:00:00'),
(2523, 166, 'Neembucu', 'NE', 1, '0000-00-00 00:00:00'),
(2524, 166, 'Paraguari', 'PA', 1, '0000-00-00 00:00:00'),
(2525, 166, 'Presidente Hayes', 'PH', 1, '0000-00-00 00:00:00'),
(2526, 166, 'San Pedro', 'SP', 1, '0000-00-00 00:00:00'),
(2527, 167, 'Amazonas', 'AM', 1, '0000-00-00 00:00:00'),
(2528, 167, 'Ancash', 'AN', 1, '0000-00-00 00:00:00'),
(2529, 167, 'Apurimac', 'AP', 1, '0000-00-00 00:00:00'),
(2530, 167, 'Arequipa', 'AR', 1, '0000-00-00 00:00:00'),
(2531, 167, 'Ayacucho', 'AY', 1, '0000-00-00 00:00:00'),
(2532, 167, 'Cajamarca', 'CJ', 1, '0000-00-00 00:00:00'),
(2533, 167, 'Callao', 'CL', 1, '0000-00-00 00:00:00'),
(2534, 167, 'Cusco', 'CU', 1, '0000-00-00 00:00:00'),
(2535, 167, 'Huancavelica', 'HV', 1, '0000-00-00 00:00:00'),
(2536, 167, 'Huanuco', 'HO', 1, '0000-00-00 00:00:00'),
(2537, 167, 'Ica', 'IC', 1, '0000-00-00 00:00:00'),
(2538, 167, 'Junin', 'JU', 1, '0000-00-00 00:00:00'),
(2539, 167, 'La Libertad', 'LD', 1, '0000-00-00 00:00:00'),
(2540, 167, 'Lambayeque', 'LY', 1, '0000-00-00 00:00:00'),
(2541, 167, 'Lima', 'LI', 1, '0000-00-00 00:00:00'),
(2542, 167, 'Loreto', 'LO', 1, '0000-00-00 00:00:00'),
(2543, 167, 'Madre de Dios', 'MD', 1, '0000-00-00 00:00:00'),
(2544, 167, 'Moquegua', 'MO', 1, '0000-00-00 00:00:00'),
(2545, 167, 'Pasco', 'PA', 1, '0000-00-00 00:00:00'),
(2546, 167, 'Piura', 'PI', 1, '0000-00-00 00:00:00'),
(2547, 167, 'Puno', 'PU', 1, '0000-00-00 00:00:00'),
(2548, 167, 'San Martin', 'SM', 1, '0000-00-00 00:00:00'),
(2549, 167, 'Tacna', 'TA', 1, '0000-00-00 00:00:00'),
(2550, 167, 'Tumbes', 'TU', 1, '0000-00-00 00:00:00'),
(2551, 167, 'Ucayali', 'UC', 1, '0000-00-00 00:00:00'),
(2552, 168, 'Abra', 'ABR', 1, '0000-00-00 00:00:00'),
(2553, 168, 'Agusan del Norte', 'ANO', 1, '0000-00-00 00:00:00'),
(2554, 168, 'Agusan del Sur', 'ASU', 1, '0000-00-00 00:00:00'),
(2555, 168, 'Aklan', 'AKL', 1, '0000-00-00 00:00:00'),
(2556, 168, 'Albay', 'ALB', 1, '0000-00-00 00:00:00'),
(2557, 168, 'Antique', 'ANT', 1, '0000-00-00 00:00:00'),
(2558, 168, 'Apayao', 'APY', 1, '0000-00-00 00:00:00'),
(2559, 168, 'Aurora', 'AUR', 1, '0000-00-00 00:00:00'),
(2560, 168, 'Basilan', 'BAS', 1, '0000-00-00 00:00:00'),
(2561, 168, 'Bataan', 'BTA', 1, '0000-00-00 00:00:00'),
(2562, 168, 'Batanes', 'BTE', 1, '0000-00-00 00:00:00'),
(2563, 168, 'Batangas', 'BTG', 1, '0000-00-00 00:00:00'),
(2564, 168, 'Biliran', 'BLR', 1, '0000-00-00 00:00:00'),
(2565, 168, 'Benguet', 'BEN', 1, '0000-00-00 00:00:00'),
(2566, 168, 'Bohol', 'BOL', 1, '0000-00-00 00:00:00'),
(2567, 168, 'Bukidnon', 'BUK', 1, '0000-00-00 00:00:00'),
(2568, 168, 'Bulacan', 'BUL', 1, '0000-00-00 00:00:00'),
(2569, 168, 'Cagayan', 'CAG', 1, '0000-00-00 00:00:00'),
(2570, 168, 'Camarines Norte', 'CNO', 1, '0000-00-00 00:00:00'),
(2571, 168, 'Camarines Sur', 'CSU', 1, '0000-00-00 00:00:00'),
(2572, 168, 'Camiguin', 'CAM', 1, '0000-00-00 00:00:00'),
(2573, 168, 'Capiz', 'CAP', 1, '0000-00-00 00:00:00'),
(2574, 168, 'Catanduanes', 'CAT', 1, '0000-00-00 00:00:00'),
(2575, 168, 'Cavite', 'CAV', 1, '0000-00-00 00:00:00'),
(2576, 168, 'Cebu', 'CEB', 1, '0000-00-00 00:00:00'),
(2577, 168, 'Compostela', 'CMP', 1, '0000-00-00 00:00:00'),
(2578, 168, 'Davao del Norte', 'DNO', 1, '0000-00-00 00:00:00'),
(2579, 168, 'Davao del Sur', 'DSU', 1, '0000-00-00 00:00:00'),
(2580, 168, 'Davao Oriental', 'DOR', 1, '0000-00-00 00:00:00'),
(2581, 168, 'Eastern Samar', 'ESA', 1, '0000-00-00 00:00:00'),
(2582, 168, 'Guimaras', 'GUI', 1, '0000-00-00 00:00:00'),
(2583, 168, 'Ifugao', 'IFU', 1, '0000-00-00 00:00:00'),
(2584, 168, 'Ilocos Norte', 'INO', 1, '0000-00-00 00:00:00'),
(2585, 168, 'Ilocos Sur', 'ISU', 1, '0000-00-00 00:00:00'),
(2586, 168, 'Iloilo', 'ILO', 1, '0000-00-00 00:00:00'),
(2587, 168, 'Isabela', 'ISA', 1, '0000-00-00 00:00:00'),
(2588, 168, 'Kalinga', 'KAL', 1, '0000-00-00 00:00:00'),
(2589, 168, 'Laguna', 'LAG', 1, '0000-00-00 00:00:00'),
(2590, 168, 'Lanao del Norte', 'LNO', 1, '0000-00-00 00:00:00'),
(2591, 168, 'Lanao del Sur', 'LSU', 1, '0000-00-00 00:00:00'),
(2592, 168, 'La Union', 'UNI', 1, '0000-00-00 00:00:00'),
(2593, 168, 'Leyte', 'LEY', 1, '0000-00-00 00:00:00'),
(2594, 168, 'Maguindanao', 'MAG', 1, '0000-00-00 00:00:00'),
(2595, 168, 'Marinduque', 'MRN', 1, '0000-00-00 00:00:00'),
(2596, 168, 'Masbate', 'MSB', 1, '0000-00-00 00:00:00'),
(2597, 168, 'Mindoro Occidental', 'MIC', 1, '0000-00-00 00:00:00'),
(2598, 168, 'Mindoro Oriental', 'MIR', 1, '0000-00-00 00:00:00'),
(2599, 168, 'Misamis Occidental', 'MSC', 1, '0000-00-00 00:00:00'),
(2600, 168, 'Misamis Oriental', 'MOR', 1, '0000-00-00 00:00:00'),
(2601, 168, 'Mountain', 'MOP', 1, '0000-00-00 00:00:00'),
(2602, 168, 'Negros Occidental', 'NOC', 1, '0000-00-00 00:00:00'),
(2603, 168, 'Negros Oriental', 'NOR', 1, '0000-00-00 00:00:00'),
(2604, 168, 'North Cotabato', 'NCT', 1, '0000-00-00 00:00:00'),
(2605, 168, 'Northern Samar', 'NSM', 1, '0000-00-00 00:00:00'),
(2606, 168, 'Nueva Ecija', 'NEC', 1, '0000-00-00 00:00:00'),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1, '0000-00-00 00:00:00'),
(2608, 168, 'Palawan', 'PLW', 1, '0000-00-00 00:00:00'),
(2609, 168, 'Pampanga', 'PMP', 1, '0000-00-00 00:00:00'),
(2610, 168, 'Pangasinan', 'PNG', 1, '0000-00-00 00:00:00'),
(2611, 168, 'Quezon', 'QZN', 1, '0000-00-00 00:00:00'),
(2612, 168, 'Quirino', 'QRN', 1, '0000-00-00 00:00:00'),
(2613, 168, 'Rizal', 'RIZ', 1, '0000-00-00 00:00:00'),
(2614, 168, 'Romblon', 'ROM', 1, '0000-00-00 00:00:00'),
(2615, 168, 'Samar', 'SMR', 1, '0000-00-00 00:00:00'),
(2616, 168, 'Sarangani', 'SRG', 1, '0000-00-00 00:00:00'),
(2617, 168, 'Siquijor', 'SQJ', 1, '0000-00-00 00:00:00'),
(2618, 168, 'Sorsogon', 'SRS', 1, '0000-00-00 00:00:00'),
(2619, 168, 'South Cotabato', 'SCO', 1, '0000-00-00 00:00:00'),
(2620, 168, 'Southern Leyte', 'SLE', 1, '0000-00-00 00:00:00'),
(2621, 168, 'Sultan Kudarat', 'SKU', 1, '0000-00-00 00:00:00'),
(2622, 168, 'Sulu', 'SLU', 1, '0000-00-00 00:00:00'),
(2623, 168, 'Surigao del Norte', 'SNO', 1, '0000-00-00 00:00:00'),
(2624, 168, 'Surigao del Sur', 'SSU', 1, '0000-00-00 00:00:00'),
(2625, 168, 'Tarlac', 'TAR', 1, '0000-00-00 00:00:00'),
(2626, 168, 'Tawi-Tawi', 'TAW', 1, '0000-00-00 00:00:00'),
(2627, 168, 'Zambales', 'ZBL', 1, '0000-00-00 00:00:00'),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1, '0000-00-00 00:00:00'),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1, '0000-00-00 00:00:00'),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1, '0000-00-00 00:00:00'),
(2631, 170, 'Dolnoslaskie', 'DO', 1, '0000-00-00 00:00:00'),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1, '0000-00-00 00:00:00'),
(2633, 170, 'Lodzkie', 'LO', 1, '0000-00-00 00:00:00'),
(2634, 170, 'Lubelskie', 'LL', 1, '0000-00-00 00:00:00'),
(2635, 170, 'Lubuskie', 'LU', 1, '0000-00-00 00:00:00'),
(2636, 170, 'Malopolskie', 'ML', 1, '0000-00-00 00:00:00'),
(2637, 170, 'Mazowieckie', 'MZ', 1, '0000-00-00 00:00:00'),
(2638, 170, 'Opolskie', 'OP', 1, '0000-00-00 00:00:00'),
(2639, 170, 'Podkarpackie', 'PP', 1, '0000-00-00 00:00:00'),
(2640, 170, 'Podlaskie', 'PL', 1, '0000-00-00 00:00:00'),
(2641, 170, 'Pomorskie', 'PM', 1, '0000-00-00 00:00:00'),
(2642, 170, 'Slaskie', 'SL', 1, '0000-00-00 00:00:00'),
(2643, 170, 'Swietokrzyskie', 'SW', 1, '0000-00-00 00:00:00'),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1, '0000-00-00 00:00:00'),
(2645, 170, 'Wielkopolskie', 'WP', 1, '0000-00-00 00:00:00'),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1, '0000-00-00 00:00:00'),
(2647, 198, 'Saint Pierre', 'P', 1, '0000-00-00 00:00:00'),
(2648, 198, 'Miquelon', 'M', 1, '0000-00-00 00:00:00'),
(2649, 171, 'A&ccedil;ores', 'AC', 1, '0000-00-00 00:00:00'),
(2650, 171, 'Aveiro', 'AV', 1, '0000-00-00 00:00:00'),
(2651, 171, 'Beja', 'BE', 1, '0000-00-00 00:00:00'),
(2652, 171, 'Braga', 'BR', 1, '0000-00-00 00:00:00'),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1, '0000-00-00 00:00:00'),
(2654, 171, 'Castelo Branco', 'CB', 1, '0000-00-00 00:00:00'),
(2655, 171, 'Coimbra', 'CO', 1, '0000-00-00 00:00:00'),
(2656, 171, '&Eacute;vora', 'EV', 1, '0000-00-00 00:00:00'),
(2657, 171, 'Faro', 'FA', 1, '0000-00-00 00:00:00'),
(2658, 171, 'Guarda', 'GU', 1, '0000-00-00 00:00:00'),
(2659, 171, 'Leiria', 'LE', 1, '0000-00-00 00:00:00'),
(2660, 171, 'Lisboa', 'LI', 1, '0000-00-00 00:00:00'),
(2661, 171, 'Madeira', 'ME', 1, '0000-00-00 00:00:00'),
(2662, 171, 'Portalegre', 'PO', 1, '0000-00-00 00:00:00'),
(2663, 171, 'Porto', 'PR', 1, '0000-00-00 00:00:00'),
(2664, 171, 'Santar&eacute;m', 'SA', 1, '0000-00-00 00:00:00'),
(2665, 171, 'Set&uacute;bal', 'SE', 1, '0000-00-00 00:00:00'),
(2666, 171, 'Viana do Castelo', 'VC', 1, '0000-00-00 00:00:00'),
(2667, 171, 'Vila Real', 'VR', 1, '0000-00-00 00:00:00'),
(2668, 171, 'Viseu', 'VI', 1, '0000-00-00 00:00:00'),
(2669, 173, 'Ad Dawhah', 'DW', 1, '0000-00-00 00:00:00'),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1, '0000-00-00 00:00:00'),
(2671, 173, 'Al Jumayliyah', 'JM', 1, '0000-00-00 00:00:00'),
(2672, 173, 'Al Khawr', 'KR', 1, '0000-00-00 00:00:00'),
(2673, 173, 'Al Wakrah', 'WK', 1, '0000-00-00 00:00:00'),
(2674, 173, 'Ar Rayyan', 'RN', 1, '0000-00-00 00:00:00'),
(2675, 173, 'Jarayan al Batinah', 'JB', 1, '0000-00-00 00:00:00'),
(2676, 173, 'Madinat ash Shamal', 'MS', 1, '0000-00-00 00:00:00'),
(2677, 173, 'Umm Sa''id', 'UD', 1, '0000-00-00 00:00:00'),
(2678, 173, 'Umm Salal', 'UL', 1, '0000-00-00 00:00:00'),
(2679, 175, 'Alba', 'AB', 1, '0000-00-00 00:00:00'),
(2680, 175, 'Arad', 'AR', 1, '0000-00-00 00:00:00'),
(2681, 175, 'Arges', 'AG', 1, '0000-00-00 00:00:00'),
(2682, 175, 'Bacau', 'BC', 1, '0000-00-00 00:00:00'),
(2683, 175, 'Bihor', 'BH', 1, '0000-00-00 00:00:00'),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1, '0000-00-00 00:00:00'),
(2685, 175, 'Botosani', 'BT', 1, '0000-00-00 00:00:00'),
(2686, 175, 'Brasov', 'BV', 1, '0000-00-00 00:00:00'),
(2687, 175, 'Braila', 'BR', 1, '0000-00-00 00:00:00'),
(2688, 175, 'Bucuresti', 'B', 1, '0000-00-00 00:00:00'),
(2689, 175, 'Buzau', 'BZ', 1, '0000-00-00 00:00:00'),
(2690, 175, 'Caras-Severin', 'CS', 1, '0000-00-00 00:00:00'),
(2691, 175, 'Calarasi', 'CL', 1, '0000-00-00 00:00:00'),
(2692, 175, 'Cluj', 'CJ', 1, '0000-00-00 00:00:00'),
(2693, 175, 'Constanta', 'CT', 1, '0000-00-00 00:00:00'),
(2694, 175, 'Covasna', 'CV', 1, '0000-00-00 00:00:00'),
(2695, 175, 'Dimbovita', 'DB', 1, '0000-00-00 00:00:00'),
(2696, 175, 'Dolj', 'DJ', 1, '0000-00-00 00:00:00'),
(2697, 175, 'Galati', 'GL', 1, '0000-00-00 00:00:00'),
(2698, 175, 'Giurgiu', 'GR', 1, '0000-00-00 00:00:00'),
(2699, 175, 'Gorj', 'GJ', 1, '0000-00-00 00:00:00'),
(2700, 175, 'Harghita', 'HR', 1, '0000-00-00 00:00:00'),
(2701, 175, 'Hunedoara', 'HD', 1, '0000-00-00 00:00:00'),
(2702, 175, 'Ialomita', 'IL', 1, '0000-00-00 00:00:00'),
(2703, 175, 'Iasi', 'IS', 1, '0000-00-00 00:00:00'),
(2704, 175, 'Ilfov', 'IF', 1, '0000-00-00 00:00:00'),
(2705, 175, 'Maramures', 'MM', 1, '0000-00-00 00:00:00'),
(2706, 175, 'Mehedinti', 'MH', 1, '0000-00-00 00:00:00'),
(2707, 175, 'Mures', 'MS', 1, '0000-00-00 00:00:00'),
(2708, 175, 'Neamt', 'NT', 1, '0000-00-00 00:00:00'),
(2709, 175, 'Olt', 'OT', 1, '0000-00-00 00:00:00'),
(2710, 175, 'Prahova', 'PH', 1, '0000-00-00 00:00:00'),
(2711, 175, 'Satu-Mare', 'SM', 1, '0000-00-00 00:00:00'),
(2712, 175, 'Salaj', 'SJ', 1, '0000-00-00 00:00:00'),
(2713, 175, 'Sibiu', 'SB', 1, '0000-00-00 00:00:00'),
(2714, 175, 'Suceava', 'SV', 1, '0000-00-00 00:00:00'),
(2715, 175, 'Teleorman', 'TR', 1, '0000-00-00 00:00:00'),
(2716, 175, 'Timis', 'TM', 1, '0000-00-00 00:00:00'),
(2717, 175, 'Tulcea', 'TL', 1, '0000-00-00 00:00:00'),
(2718, 175, 'Vaslui', 'VS', 1, '0000-00-00 00:00:00'),
(2719, 175, 'Valcea', 'VL', 1, '0000-00-00 00:00:00'),
(2720, 175, 'Vrancea', 'VN', 1, '0000-00-00 00:00:00'),
(2721, 176, 'Abakan', 'AB', 1, '0000-00-00 00:00:00'),
(2722, 176, 'Aginskoye', 'AG', 1, '0000-00-00 00:00:00'),
(2723, 176, 'Anadyr', 'AN', 1, '0000-00-00 00:00:00'),
(2724, 176, 'Arkahangelsk', 'AR', 1, '0000-00-00 00:00:00'),
(2725, 176, 'Astrakhan', 'AS', 1, '0000-00-00 00:00:00');
INSERT INTO `r_state` (`id_state`, `id_country`, `name`, `code`, `status`, `date_modified`) VALUES
(2726, 176, 'Barnaul', 'BA', 1, '0000-00-00 00:00:00'),
(2727, 176, 'Belgorod', 'BE', 1, '0000-00-00 00:00:00'),
(2728, 176, 'Birobidzhan', 'BI', 1, '0000-00-00 00:00:00'),
(2729, 176, 'Blagoveshchensk', 'BL', 1, '0000-00-00 00:00:00'),
(2730, 176, 'Bryansk', 'BR', 1, '0000-00-00 00:00:00'),
(2731, 176, 'Cheboksary', 'CH', 1, '0000-00-00 00:00:00'),
(2732, 176, 'Chelyabinsk', 'CL', 1, '0000-00-00 00:00:00'),
(2733, 176, 'Cherkessk', 'CR', 1, '0000-00-00 00:00:00'),
(2734, 176, 'Chita', 'CI', 1, '0000-00-00 00:00:00'),
(2735, 176, 'Dudinka', 'DU', 1, '0000-00-00 00:00:00'),
(2736, 176, 'Elista', 'EL', 1, '0000-00-00 00:00:00'),
(2737, 176, 'Gomo-Altaysk', 'GO', 1, '0000-00-00 00:00:00'),
(2738, 176, 'Gorno-Altaysk', 'GA', 1, '0000-00-00 00:00:00'),
(2739, 176, 'Groznyy', 'GR', 1, '0000-00-00 00:00:00'),
(2740, 176, 'Irkutsk', 'IR', 1, '0000-00-00 00:00:00'),
(2741, 176, 'Ivanovo', 'IV', 1, '0000-00-00 00:00:00'),
(2742, 176, 'Izhevsk', 'IZ', 1, '0000-00-00 00:00:00'),
(2743, 176, 'Kalinigrad', 'KA', 1, '0000-00-00 00:00:00'),
(2744, 176, 'Kaluga', 'KL', 1, '0000-00-00 00:00:00'),
(2745, 176, 'Kasnodar', 'KS', 1, '0000-00-00 00:00:00'),
(2746, 176, 'Kazan', 'KZ', 1, '0000-00-00 00:00:00'),
(2747, 176, 'Kemerovo', 'KE', 1, '0000-00-00 00:00:00'),
(2748, 176, 'Khabarovsk', 'KH', 1, '0000-00-00 00:00:00'),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1, '0000-00-00 00:00:00'),
(2750, 176, 'Kostroma', 'KO', 1, '0000-00-00 00:00:00'),
(2751, 176, 'Krasnodar', 'KR', 1, '0000-00-00 00:00:00'),
(2752, 176, 'Krasnoyarsk', 'KN', 1, '0000-00-00 00:00:00'),
(2753, 176, 'Kudymkar', 'KU', 1, '0000-00-00 00:00:00'),
(2754, 176, 'Kurgan', 'KG', 1, '0000-00-00 00:00:00'),
(2755, 176, 'Kursk', 'KK', 1, '0000-00-00 00:00:00'),
(2756, 176, 'Kyzyl', 'KY', 1, '0000-00-00 00:00:00'),
(2757, 176, 'Lipetsk', 'LI', 1, '0000-00-00 00:00:00'),
(2758, 176, 'Magadan', 'MA', 1, '0000-00-00 00:00:00'),
(2759, 176, 'Makhachkala', 'MK', 1, '0000-00-00 00:00:00'),
(2760, 176, 'Maykop', 'MY', 1, '0000-00-00 00:00:00'),
(2761, 176, 'Moscow', 'MO', 1, '0000-00-00 00:00:00'),
(2762, 176, 'Murmansk', 'MU', 1, '0000-00-00 00:00:00'),
(2763, 176, 'Nalchik', 'NA', 1, '0000-00-00 00:00:00'),
(2764, 176, 'Naryan Mar', 'NR', 1, '0000-00-00 00:00:00'),
(2765, 176, 'Nazran', 'NZ', 1, '0000-00-00 00:00:00'),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1, '0000-00-00 00:00:00'),
(2767, 176, 'Novgorod', 'NO', 1, '0000-00-00 00:00:00'),
(2768, 176, 'Novosibirsk', 'NV', 1, '0000-00-00 00:00:00'),
(2769, 176, 'Omsk', 'OM', 1, '0000-00-00 00:00:00'),
(2770, 176, 'Orel', 'OR', 1, '0000-00-00 00:00:00'),
(2771, 176, 'Orenburg', 'OE', 1, '0000-00-00 00:00:00'),
(2772, 176, 'Palana', 'PA', 1, '0000-00-00 00:00:00'),
(2773, 176, 'Penza', 'PE', 1, '0000-00-00 00:00:00'),
(2774, 176, 'Perm', 'PR', 1, '0000-00-00 00:00:00'),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1, '0000-00-00 00:00:00'),
(2776, 176, 'Petrozavodsk', 'PT', 1, '0000-00-00 00:00:00'),
(2777, 176, 'Pskov', 'PS', 1, '0000-00-00 00:00:00'),
(2778, 176, 'Rostov-na-Donu', 'RO', 1, '0000-00-00 00:00:00'),
(2779, 176, 'Ryazan', 'RY', 1, '0000-00-00 00:00:00'),
(2780, 176, 'Salekhard', 'SL', 1, '0000-00-00 00:00:00'),
(2781, 176, 'Samara', 'SA', 1, '0000-00-00 00:00:00'),
(2782, 176, 'Saransk', 'SR', 1, '0000-00-00 00:00:00'),
(2783, 176, 'Saratov', 'SV', 1, '0000-00-00 00:00:00'),
(2784, 176, 'Smolensk', 'SM', 1, '0000-00-00 00:00:00'),
(2785, 176, 'St. Petersburg', 'SP', 1, '0000-00-00 00:00:00'),
(2786, 176, 'Stavropol', 'ST', 1, '0000-00-00 00:00:00'),
(2787, 176, 'Syktyvkar', 'SY', 1, '0000-00-00 00:00:00'),
(2788, 176, 'Tambov', 'TA', 1, '0000-00-00 00:00:00'),
(2789, 176, 'Tomsk', 'TO', 1, '0000-00-00 00:00:00'),
(2790, 176, 'Tula', 'TU', 1, '0000-00-00 00:00:00'),
(2791, 176, 'Tura', 'TR', 1, '0000-00-00 00:00:00'),
(2792, 176, 'Tver', 'TV', 1, '0000-00-00 00:00:00'),
(2793, 176, 'Tyumen', 'TY', 1, '0000-00-00 00:00:00'),
(2794, 176, 'Ufa', 'UF', 1, '0000-00-00 00:00:00'),
(2795, 176, 'Ul''yanovsk', 'UL', 1, '0000-00-00 00:00:00'),
(2796, 176, 'Ulan-Ude', 'UU', 1, '0000-00-00 00:00:00'),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1, '0000-00-00 00:00:00'),
(2798, 176, 'Vladikavkaz', 'VL', 1, '0000-00-00 00:00:00'),
(2799, 176, 'Vladimir', 'VA', 1, '0000-00-00 00:00:00'),
(2800, 176, 'Vladivostok', 'VV', 1, '0000-00-00 00:00:00'),
(2801, 176, 'Volgograd', 'VG', 1, '0000-00-00 00:00:00'),
(2802, 176, 'Vologda', 'VD', 1, '0000-00-00 00:00:00'),
(2803, 176, 'Voronezh', 'VO', 1, '0000-00-00 00:00:00'),
(2804, 176, 'Vyatka', 'VY', 1, '0000-00-00 00:00:00'),
(2805, 176, 'Yakutsk', 'YA', 1, '0000-00-00 00:00:00'),
(2806, 176, 'Yaroslavl', 'YR', 1, '0000-00-00 00:00:00'),
(2807, 176, 'Yekaterinburg', 'YE', 1, '0000-00-00 00:00:00'),
(2808, 176, 'Yoshkar-Ola', 'YO', 1, '0000-00-00 00:00:00'),
(2809, 177, 'Butare', 'BU', 1, '0000-00-00 00:00:00'),
(2810, 177, 'Byumba', 'BY', 1, '0000-00-00 00:00:00'),
(2811, 177, 'Cyangugu', 'CY', 1, '0000-00-00 00:00:00'),
(2812, 177, 'Gikongoro', 'GK', 1, '0000-00-00 00:00:00'),
(2813, 177, 'Gisenyi', 'GS', 1, '0000-00-00 00:00:00'),
(2814, 177, 'Gitarama', 'GT', 1, '0000-00-00 00:00:00'),
(2815, 177, 'Kibungo', 'KG', 1, '0000-00-00 00:00:00'),
(2816, 177, 'Kibuye', 'KY', 1, '0000-00-00 00:00:00'),
(2817, 177, 'Kigali Rurale', 'KR', 1, '0000-00-00 00:00:00'),
(2818, 177, 'Kigali-ville', 'KV', 1, '0000-00-00 00:00:00'),
(2819, 177, 'Ruhengeri', 'RU', 1, '0000-00-00 00:00:00'),
(2820, 177, 'Umutara', 'UM', 1, '0000-00-00 00:00:00'),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1, '0000-00-00 00:00:00'),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1, '0000-00-00 00:00:00'),
(2823, 178, 'Saint George Basseterre', 'SGB', 1, '0000-00-00 00:00:00'),
(2824, 178, 'Saint George Gingerland', 'SGG', 1, '0000-00-00 00:00:00'),
(2825, 178, 'Saint James Windward', 'SJW', 1, '0000-00-00 00:00:00'),
(2826, 178, 'Saint John Capesterre', 'SJC', 1, '0000-00-00 00:00:00'),
(2827, 178, 'Saint John Figtree', 'SJF', 1, '0000-00-00 00:00:00'),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1, '0000-00-00 00:00:00'),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1, '0000-00-00 00:00:00'),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1, '0000-00-00 00:00:00'),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1, '0000-00-00 00:00:00'),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1, '0000-00-00 00:00:00'),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1, '0000-00-00 00:00:00'),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1, '0000-00-00 00:00:00'),
(2835, 179, 'Anse-la-Raye', 'AR', 1, '0000-00-00 00:00:00'),
(2836, 179, 'Castries', 'CA', 1, '0000-00-00 00:00:00'),
(2837, 179, 'Choiseul', 'CH', 1, '0000-00-00 00:00:00'),
(2838, 179, 'Dauphin', 'DA', 1, '0000-00-00 00:00:00'),
(2839, 179, 'Dennery', 'DE', 1, '0000-00-00 00:00:00'),
(2840, 179, 'Gros-Islet', 'GI', 1, '0000-00-00 00:00:00'),
(2841, 179, 'Laborie', 'LA', 1, '0000-00-00 00:00:00'),
(2842, 179, 'Micoud', 'MI', 1, '0000-00-00 00:00:00'),
(2843, 179, 'Praslin', 'PR', 1, '0000-00-00 00:00:00'),
(2844, 179, 'Soufriere', 'SO', 1, '0000-00-00 00:00:00'),
(2845, 179, 'Vieux-Fort', 'VF', 1, '0000-00-00 00:00:00'),
(2846, 180, 'Charlotte', 'C', 1, '0000-00-00 00:00:00'),
(2847, 180, 'Grenadines', 'R', 1, '0000-00-00 00:00:00'),
(2848, 180, 'Saint Andrew', 'A', 1, '0000-00-00 00:00:00'),
(2849, 180, 'Saint David', 'D', 1, '0000-00-00 00:00:00'),
(2850, 180, 'Saint George', 'G', 1, '0000-00-00 00:00:00'),
(2851, 180, 'Saint Patrick', 'P', 1, '0000-00-00 00:00:00'),
(2852, 181, 'A''ana', 'AN', 1, '0000-00-00 00:00:00'),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1, '0000-00-00 00:00:00'),
(2854, 181, 'Atua', 'AT', 1, '0000-00-00 00:00:00'),
(2855, 181, 'Fa''asaleleaga', 'FA', 1, '0000-00-00 00:00:00'),
(2856, 181, 'Gaga''emauga', 'GE', 1, '0000-00-00 00:00:00'),
(2857, 181, 'Gagaifomauga', 'GF', 1, '0000-00-00 00:00:00'),
(2858, 181, 'Palauli', 'PA', 1, '0000-00-00 00:00:00'),
(2859, 181, 'Satupa''itea', 'SA', 1, '0000-00-00 00:00:00'),
(2860, 181, 'Tuamasaga', 'TU', 1, '0000-00-00 00:00:00'),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1, '0000-00-00 00:00:00'),
(2862, 181, 'Vaisigano', 'VS', 1, '0000-00-00 00:00:00'),
(2863, 182, 'Acquaviva', 'AC', 1, '0000-00-00 00:00:00'),
(2864, 182, 'Borgo Maggiore', 'BM', 1, '0000-00-00 00:00:00'),
(2865, 182, 'Chiesanuova', 'CH', 1, '0000-00-00 00:00:00'),
(2866, 182, 'Domagnano', 'DO', 1, '0000-00-00 00:00:00'),
(2867, 182, 'Faetano', 'FA', 1, '0000-00-00 00:00:00'),
(2868, 182, 'Fiorentino', 'FI', 1, '0000-00-00 00:00:00'),
(2869, 182, 'Montegiardino', 'MO', 1, '0000-00-00 00:00:00'),
(2870, 182, 'Citta di San Marino', 'SM', 1, '0000-00-00 00:00:00'),
(2871, 182, 'Serravalle', 'SE', 1, '0000-00-00 00:00:00'),
(2872, 183, 'Sao Tome', 'S', 1, '0000-00-00 00:00:00'),
(2873, 183, 'Principe', 'P', 1, '0000-00-00 00:00:00'),
(2874, 184, 'Al Bahah', 'BH', 1, '0000-00-00 00:00:00'),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1, '0000-00-00 00:00:00'),
(2876, 184, 'Al Jawf', 'JF', 1, '0000-00-00 00:00:00'),
(2877, 184, 'Al Madinah', 'MD', 1, '0000-00-00 00:00:00'),
(2878, 184, 'Al Qasim', 'QS', 1, '0000-00-00 00:00:00'),
(2879, 184, 'Ar Riyad', 'RD', 1, '0000-00-00 00:00:00'),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1, '0000-00-00 00:00:00'),
(2881, 184, '''Asir', 'AS', 1, '0000-00-00 00:00:00'),
(2882, 184, 'Ha''il', 'HL', 1, '0000-00-00 00:00:00'),
(2883, 184, 'Jizan', 'JZ', 1, '0000-00-00 00:00:00'),
(2884, 184, 'Makkah', 'ML', 1, '0000-00-00 00:00:00'),
(2885, 184, 'Najran', 'NR', 1, '0000-00-00 00:00:00'),
(2886, 184, 'Tabuk', 'TB', 1, '0000-00-00 00:00:00'),
(2887, 185, 'Dakar', 'DA', 1, '0000-00-00 00:00:00'),
(2888, 185, 'Diourbel', 'DI', 1, '0000-00-00 00:00:00'),
(2889, 185, 'Fatick', 'FA', 1, '0000-00-00 00:00:00'),
(2890, 185, 'Kaolack', 'KA', 1, '0000-00-00 00:00:00'),
(2891, 185, 'Kolda', 'KO', 1, '0000-00-00 00:00:00'),
(2892, 185, 'Louga', 'LO', 1, '0000-00-00 00:00:00'),
(2893, 185, 'Matam', 'MA', 1, '0000-00-00 00:00:00'),
(2894, 185, 'Saint-Louis', 'SL', 1, '0000-00-00 00:00:00'),
(2895, 185, 'Tambacounda', 'TA', 1, '0000-00-00 00:00:00'),
(2896, 185, 'Thies', 'TH', 1, '0000-00-00 00:00:00'),
(2897, 185, 'Ziguinchor', 'ZI', 1, '0000-00-00 00:00:00'),
(2898, 186, 'Anse aux Pins', 'AP', 1, '0000-00-00 00:00:00'),
(2899, 186, 'Anse Boileau', 'AB', 1, '0000-00-00 00:00:00'),
(2900, 186, 'Anse Etoile', 'AE', 1, '0000-00-00 00:00:00'),
(2901, 186, 'Anse Louis', 'AL', 1, '0000-00-00 00:00:00'),
(2902, 186, 'Anse Royale', 'AR', 1, '0000-00-00 00:00:00'),
(2903, 186, 'Baie Lazare', 'BL', 1, '0000-00-00 00:00:00'),
(2904, 186, 'Baie Sainte Anne', 'BS', 1, '0000-00-00 00:00:00'),
(2905, 186, 'Beau Vallon', 'BV', 1, '0000-00-00 00:00:00'),
(2906, 186, 'Bel Air', 'BA', 1, '0000-00-00 00:00:00'),
(2907, 186, 'Bel Ombre', 'BO', 1, '0000-00-00 00:00:00'),
(2908, 186, 'Cascade', 'CA', 1, '0000-00-00 00:00:00'),
(2909, 186, 'Glacis', 'GL', 1, '0000-00-00 00:00:00'),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1, '0000-00-00 00:00:00'),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1, '0000-00-00 00:00:00'),
(2912, 186, 'La Digue', 'DG', 1, '0000-00-00 00:00:00'),
(2913, 186, 'La Riviere Anglaise', 'RA', 1, '0000-00-00 00:00:00'),
(2914, 186, 'Mont Buxton', 'MB', 1, '0000-00-00 00:00:00'),
(2915, 186, 'Mont Fleuri', 'MF', 1, '0000-00-00 00:00:00'),
(2916, 186, 'Plaisance', 'PL', 1, '0000-00-00 00:00:00'),
(2917, 186, 'Pointe La Rue', 'PR', 1, '0000-00-00 00:00:00'),
(2918, 186, 'Port Glaud', 'PG', 1, '0000-00-00 00:00:00'),
(2919, 186, 'Saint Louis', 'SL', 1, '0000-00-00 00:00:00'),
(2920, 186, 'Takamaka', 'TA', 1, '0000-00-00 00:00:00'),
(2921, 187, 'Eastern', 'E', 1, '0000-00-00 00:00:00'),
(2922, 187, 'Northern', 'N', 1, '0000-00-00 00:00:00'),
(2923, 187, 'Southern', 'S', 1, '0000-00-00 00:00:00'),
(2924, 187, 'Western', 'W', 1, '0000-00-00 00:00:00'),
(2925, 189, 'Banskobystrický', 'BA', 1, '0000-00-00 00:00:00'),
(2926, 189, 'Bratislavský', 'BR', 1, '0000-00-00 00:00:00'),
(2927, 189, 'Košický', 'KO', 1, '0000-00-00 00:00:00'),
(2928, 189, 'Nitriansky', 'NI', 1, '0000-00-00 00:00:00'),
(2929, 189, 'Prešovský', 'PR', 1, '0000-00-00 00:00:00'),
(2930, 189, 'Tren?iansky', 'TC', 1, '0000-00-00 00:00:00'),
(2931, 189, 'Trnavský', 'TV', 1, '0000-00-00 00:00:00'),
(2932, 189, 'Žilinský', 'ZI', 1, '0000-00-00 00:00:00'),
(2933, 191, 'Central', 'CE', 1, '0000-00-00 00:00:00'),
(2934, 191, 'Choiseul', 'CH', 1, '0000-00-00 00:00:00'),
(2935, 191, 'Guadalcanal', 'GC', 1, '0000-00-00 00:00:00'),
(2936, 191, 'Honiara', 'HO', 1, '0000-00-00 00:00:00'),
(2937, 191, 'Isabel', 'IS', 1, '0000-00-00 00:00:00'),
(2938, 191, 'Makira', 'MK', 1, '0000-00-00 00:00:00'),
(2939, 191, 'Malaita', 'ML', 1, '0000-00-00 00:00:00'),
(2940, 191, 'Rennell and Bellona', 'RB', 1, '0000-00-00 00:00:00'),
(2941, 191, 'Temotu', 'TM', 1, '0000-00-00 00:00:00'),
(2942, 191, 'Western', 'WE', 1, '0000-00-00 00:00:00'),
(2943, 192, 'Awdal', 'AW', 1, '0000-00-00 00:00:00'),
(2944, 192, 'Bakool', 'BK', 1, '0000-00-00 00:00:00'),
(2945, 192, 'Banaadir', 'BN', 1, '0000-00-00 00:00:00'),
(2946, 192, 'Bari', 'BR', 1, '0000-00-00 00:00:00'),
(2947, 192, 'Bay', 'BY', 1, '0000-00-00 00:00:00'),
(2948, 192, 'Galguduud', 'GA', 1, '0000-00-00 00:00:00'),
(2949, 192, 'Gedo', 'GE', 1, '0000-00-00 00:00:00'),
(2950, 192, 'Hiiraan', 'HI', 1, '0000-00-00 00:00:00'),
(2951, 192, 'Jubbada Dhexe', 'JD', 1, '0000-00-00 00:00:00'),
(2952, 192, 'Jubbada Hoose', 'JH', 1, '0000-00-00 00:00:00'),
(2953, 192, 'Mudug', 'MU', 1, '0000-00-00 00:00:00'),
(2954, 192, 'Nugaal', 'NU', 1, '0000-00-00 00:00:00'),
(2955, 192, 'Sanaag', 'SA', 1, '0000-00-00 00:00:00'),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1, '0000-00-00 00:00:00'),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1, '0000-00-00 00:00:00'),
(2958, 192, 'Sool', 'SL', 1, '0000-00-00 00:00:00'),
(2959, 192, 'Togdheer', 'TO', 1, '0000-00-00 00:00:00'),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1, '0000-00-00 00:00:00'),
(2961, 193, 'Eastern Cape', 'EC', 1, '0000-00-00 00:00:00'),
(2962, 193, 'Free State', 'FS', 1, '0000-00-00 00:00:00'),
(2963, 193, 'Gauteng', 'GT', 1, '0000-00-00 00:00:00'),
(2964, 193, 'KwaZulu-Natal', 'KN', 1, '0000-00-00 00:00:00'),
(2965, 193, 'Limpopo', 'LP', 1, '0000-00-00 00:00:00'),
(2966, 193, 'Mpumalanga', 'MP', 1, '0000-00-00 00:00:00'),
(2967, 193, 'North West', 'NW', 1, '0000-00-00 00:00:00'),
(2968, 193, 'Northern Cape', 'NC', 1, '0000-00-00 00:00:00'),
(2969, 193, 'Western Cape', 'WC', 1, '0000-00-00 00:00:00'),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1, '0000-00-00 00:00:00'),
(2971, 195, '&Aacute;lava', 'AL', 1, '0000-00-00 00:00:00'),
(2972, 195, 'Albacete', 'AB', 1, '0000-00-00 00:00:00'),
(2973, 195, 'Alicante', 'AC', 1, '0000-00-00 00:00:00'),
(2974, 195, 'Almeria', 'AM', 1, '0000-00-00 00:00:00'),
(2975, 195, 'Asturias', 'AS', 1, '0000-00-00 00:00:00'),
(2976, 195, '&Aacute;vila', 'AV', 1, '0000-00-00 00:00:00'),
(2977, 195, 'Badajoz', 'BJ', 1, '0000-00-00 00:00:00'),
(2978, 195, 'Baleares', 'IB', 1, '0000-00-00 00:00:00'),
(2979, 195, 'Barcelona', 'BA', 1, '0000-00-00 00:00:00'),
(2980, 195, 'Burgos', 'BU', 1, '0000-00-00 00:00:00'),
(2981, 195, 'C&aacute;ceres', 'CC', 1, '0000-00-00 00:00:00'),
(2982, 195, 'C&aacute;diz', 'CZ', 1, '0000-00-00 00:00:00'),
(2983, 195, 'Cantabria', 'CT', 1, '0000-00-00 00:00:00'),
(2984, 195, 'Castell&oacute;n', 'CL', 1, '0000-00-00 00:00:00'),
(2985, 195, 'Ceuta', 'CE', 1, '0000-00-00 00:00:00'),
(2986, 195, 'Ciudad Real', 'CR', 1, '0000-00-00 00:00:00'),
(2987, 195, 'C&oacute;rdoba', 'CD', 1, '0000-00-00 00:00:00'),
(2988, 195, 'Cuenca', 'CU', 1, '0000-00-00 00:00:00'),
(2989, 195, 'Girona', 'GI', 1, '0000-00-00 00:00:00'),
(2990, 195, 'Granada', 'GD', 1, '0000-00-00 00:00:00'),
(2991, 195, 'Guadalajara', 'GJ', 1, '0000-00-00 00:00:00'),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1, '0000-00-00 00:00:00'),
(2993, 195, 'Huelva', 'HL', 1, '0000-00-00 00:00:00'),
(2994, 195, 'Huesca', 'HS', 1, '0000-00-00 00:00:00'),
(2995, 195, 'Ja&eacute;n', 'JN', 1, '0000-00-00 00:00:00'),
(2996, 195, 'La Rioja', 'RJ', 1, '0000-00-00 00:00:00'),
(2997, 195, 'Las Palmas', 'PM', 1, '0000-00-00 00:00:00'),
(2998, 195, 'Leon', 'LE', 1, '0000-00-00 00:00:00'),
(2999, 195, 'Lleida', 'LL', 1, '0000-00-00 00:00:00'),
(3000, 195, 'Lugo', 'LG', 1, '0000-00-00 00:00:00'),
(3001, 195, 'Madrid', 'MD', 1, '0000-00-00 00:00:00'),
(3002, 195, 'Malaga', 'MA', 1, '0000-00-00 00:00:00'),
(3003, 195, 'Melilla', 'ML', 1, '0000-00-00 00:00:00'),
(3004, 195, 'Murcia', 'MU', 1, '0000-00-00 00:00:00'),
(3005, 195, 'Navarra', 'NV', 1, '0000-00-00 00:00:00'),
(3006, 195, 'Ourense', 'OU', 1, '0000-00-00 00:00:00'),
(3007, 195, 'Palencia', 'PL', 1, '0000-00-00 00:00:00'),
(3008, 195, 'Pontevedra', 'PO', 1, '0000-00-00 00:00:00'),
(3009, 195, 'Salamanca', 'SL', 1, '0000-00-00 00:00:00'),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1, '0000-00-00 00:00:00'),
(3011, 195, 'Segovia', 'SG', 1, '0000-00-00 00:00:00'),
(3012, 195, 'Sevilla', 'SV', 1, '0000-00-00 00:00:00'),
(3013, 195, 'Soria', 'SO', 1, '0000-00-00 00:00:00'),
(3014, 195, 'Tarragona', 'TA', 1, '0000-00-00 00:00:00'),
(3015, 195, 'Teruel', 'TE', 1, '0000-00-00 00:00:00'),
(3016, 195, 'Toledo', 'TO', 1, '0000-00-00 00:00:00'),
(3017, 195, 'Valencia', 'VC', 1, '0000-00-00 00:00:00'),
(3018, 195, 'Valladolid', 'VD', 1, '0000-00-00 00:00:00'),
(3019, 195, 'Vizcaya', 'VZ', 1, '0000-00-00 00:00:00'),
(3020, 195, 'Zamora', 'ZM', 1, '0000-00-00 00:00:00'),
(3021, 195, 'Zaragoza', 'ZR', 1, '0000-00-00 00:00:00'),
(3022, 196, 'Central', 'CE', 1, '0000-00-00 00:00:00'),
(3023, 196, 'Eastern', 'EA', 1, '0000-00-00 00:00:00'),
(3024, 196, 'North Central', 'NC', 1, '0000-00-00 00:00:00'),
(3025, 196, 'Northern', 'NO', 1, '0000-00-00 00:00:00'),
(3026, 196, 'North Western', 'NW', 1, '0000-00-00 00:00:00'),
(3027, 196, 'Sabaragamuwa', 'SA', 1, '0000-00-00 00:00:00'),
(3028, 196, 'Southern', 'SO', 1, '0000-00-00 00:00:00'),
(3029, 196, 'Uva', 'UV', 1, '0000-00-00 00:00:00'),
(3030, 196, 'Western', 'WE', 1, '0000-00-00 00:00:00'),
(3031, 197, 'Ascension', 'A', 1, '0000-00-00 00:00:00'),
(3032, 197, 'Saint Helena', 'S', 1, '0000-00-00 00:00:00'),
(3033, 197, 'Tristan da Cunha', 'T', 1, '0000-00-00 00:00:00'),
(3034, 199, 'A''ali an Nil', 'ANL', 1, '0000-00-00 00:00:00'),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1, '0000-00-00 00:00:00'),
(3036, 199, 'Al Buhayrat', 'BRT', 1, '0000-00-00 00:00:00'),
(3037, 199, 'Al Jazirah', 'JZR', 1, '0000-00-00 00:00:00'),
(3038, 199, 'Al Khartum', 'KRT', 1, '0000-00-00 00:00:00'),
(3039, 199, 'Al Qadarif', 'QDR', 1, '0000-00-00 00:00:00'),
(3040, 199, 'Al Wahdah', 'WDH', 1, '0000-00-00 00:00:00'),
(3041, 199, 'An Nil al Abyad', 'ANB', 1, '0000-00-00 00:00:00'),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1, '0000-00-00 00:00:00'),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1, '0000-00-00 00:00:00'),
(3044, 199, 'Bahr al Jabal', 'BJA', 1, '0000-00-00 00:00:00'),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1, '0000-00-00 00:00:00'),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1, '0000-00-00 00:00:00'),
(3047, 199, 'Gharb Darfur', 'GDA', 1, '0000-00-00 00:00:00'),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1, '0000-00-00 00:00:00'),
(3049, 199, 'Janub Darfur', 'JDA', 1, '0000-00-00 00:00:00'),
(3050, 199, 'Janub Kurdufan', 'JKU', 1, '0000-00-00 00:00:00'),
(3051, 199, 'Junqali', 'JQL', 1, '0000-00-00 00:00:00'),
(3052, 199, 'Kassala', 'KSL', 1, '0000-00-00 00:00:00'),
(3053, 199, 'Nahr an Nil', 'NNL', 1, '0000-00-00 00:00:00'),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1, '0000-00-00 00:00:00'),
(3055, 199, 'Shamal Darfur', 'SDA', 1, '0000-00-00 00:00:00'),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1, '0000-00-00 00:00:00'),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1, '0000-00-00 00:00:00'),
(3058, 199, 'Sinnar', 'SNR', 1, '0000-00-00 00:00:00'),
(3842, 105, 'Agrigento', 'AG', 1, '0000-00-00 00:00:00'),
(3843, 105, 'Alessandria', 'AL', 1, '0000-00-00 00:00:00'),
(3844, 105, 'Ancona', 'AN', 1, '0000-00-00 00:00:00'),
(3845, 105, 'Aosta', 'AO', 1, '0000-00-00 00:00:00'),
(3846, 105, 'Arezzo', 'AR', 1, '0000-00-00 00:00:00'),
(3847, 105, 'Ascoli Piceno', 'AP', 1, '0000-00-00 00:00:00'),
(3848, 105, 'Asti', 'AT', 1, '0000-00-00 00:00:00'),
(3849, 105, 'Avellino', 'AV', 1, '0000-00-00 00:00:00'),
(3850, 105, 'Bari', 'BA', 1, '0000-00-00 00:00:00'),
(3851, 105, 'Belluno', 'BL', 1, '0000-00-00 00:00:00'),
(3852, 105, 'Benevento', 'BN', 1, '0000-00-00 00:00:00'),
(3853, 105, 'Bergamo', 'BG', 1, '0000-00-00 00:00:00'),
(3854, 105, 'Biella', 'BI', 1, '0000-00-00 00:00:00'),
(3855, 105, 'Bologna', 'BO', 1, '0000-00-00 00:00:00'),
(3856, 105, 'Bolzano', 'BZ', 1, '0000-00-00 00:00:00'),
(3857, 105, 'Brescia', 'BS', 1, '0000-00-00 00:00:00'),
(3858, 105, 'Brindisi', 'BR', 1, '0000-00-00 00:00:00'),
(3859, 105, 'Cagliari', 'CA', 1, '0000-00-00 00:00:00'),
(3860, 105, 'Caltanissetta', 'CL', 1, '0000-00-00 00:00:00'),
(3861, 105, 'Campobasso', 'CB', 1, '0000-00-00 00:00:00'),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1, '0000-00-00 00:00:00'),
(3863, 105, 'Caserta', 'CE', 1, '0000-00-00 00:00:00'),
(3864, 105, 'Catania', 'CT', 1, '0000-00-00 00:00:00'),
(3865, 105, 'Catanzaro', 'CZ', 1, '0000-00-00 00:00:00'),
(3866, 105, 'Chieti', 'CH', 1, '0000-00-00 00:00:00'),
(3867, 105, 'Como', 'CO', 1, '0000-00-00 00:00:00'),
(3868, 105, 'Cosenza', 'CS', 1, '0000-00-00 00:00:00'),
(3869, 105, 'Cremona', 'CR', 1, '0000-00-00 00:00:00'),
(3870, 105, 'Crotone', 'KR', 1, '0000-00-00 00:00:00'),
(3871, 105, 'Cuneo', 'CN', 1, '0000-00-00 00:00:00'),
(3872, 105, 'Enna', 'EN', 1, '0000-00-00 00:00:00'),
(3873, 105, 'Ferrara', 'FE', 1, '0000-00-00 00:00:00'),
(3874, 105, 'Firenze', 'FI', 1, '0000-00-00 00:00:00'),
(3875, 105, 'Foggia', 'FG', 1, '0000-00-00 00:00:00'),
(3876, 105, 'Forli-Cesena', 'FC', 1, '0000-00-00 00:00:00'),
(3877, 105, 'Frosinone', 'FR', 1, '0000-00-00 00:00:00'),
(3878, 105, 'Genova', 'GE', 1, '0000-00-00 00:00:00'),
(3879, 105, 'Gorizia', 'GO', 1, '0000-00-00 00:00:00'),
(3880, 105, 'Grosseto', 'GR', 1, '0000-00-00 00:00:00'),
(3881, 105, 'Imperia', 'IM', 1, '0000-00-00 00:00:00'),
(3882, 105, 'Isernia', 'IS', 1, '0000-00-00 00:00:00'),
(3883, 105, 'L&#39;Aquila', 'AQ', 1, '0000-00-00 00:00:00'),
(3884, 105, 'La Spezia', 'SP', 1, '0000-00-00 00:00:00'),
(3885, 105, 'Latina', 'LT', 1, '0000-00-00 00:00:00'),
(3886, 105, 'Lecce', 'LE', 1, '0000-00-00 00:00:00'),
(3887, 105, 'Lecco', 'LC', 1, '0000-00-00 00:00:00'),
(3888, 105, 'Livorno', 'LI', 1, '0000-00-00 00:00:00'),
(3889, 105, 'Lodi', 'LO', 1, '0000-00-00 00:00:00'),
(3890, 105, 'Lucca', 'LU', 1, '0000-00-00 00:00:00'),
(3891, 105, 'Macerata', 'MC', 1, '0000-00-00 00:00:00'),
(3892, 105, 'Mantova', 'MN', 1, '0000-00-00 00:00:00'),
(3893, 105, 'Massa-Carrara', 'MS', 1, '0000-00-00 00:00:00'),
(3894, 105, 'Matera', 'MT', 1, '0000-00-00 00:00:00'),
(3895, 105, 'Medio Campidano', 'VS', 1, '0000-00-00 00:00:00'),
(3896, 105, 'Messina', 'ME', 1, '0000-00-00 00:00:00'),
(3897, 105, 'Milano', 'MI', 1, '0000-00-00 00:00:00'),
(3898, 105, 'Modena', 'MO', 1, '0000-00-00 00:00:00'),
(3899, 105, 'Napoli', 'NA', 1, '0000-00-00 00:00:00'),
(3900, 105, 'Novara', 'NO', 1, '0000-00-00 00:00:00'),
(3901, 105, 'Nuoro', 'NU', 1, '0000-00-00 00:00:00'),
(3902, 105, 'Ogliastra', 'OG', 1, '0000-00-00 00:00:00'),
(3903, 105, 'Olbia-Tempio', 'OT', 1, '0000-00-00 00:00:00'),
(3904, 105, 'Oristano', 'OR', 1, '0000-00-00 00:00:00'),
(3905, 105, 'Padova', 'PD', 1, '0000-00-00 00:00:00'),
(3906, 105, 'Palermo', 'PA', 1, '0000-00-00 00:00:00'),
(3907, 105, 'Parma', 'PR', 1, '0000-00-00 00:00:00'),
(3908, 105, 'Pavia', 'PV', 1, '0000-00-00 00:00:00'),
(3909, 105, 'Perugia', 'PG', 1, '0000-00-00 00:00:00'),
(3910, 105, 'Pesaro e Urbino', 'PU', 1, '0000-00-00 00:00:00'),
(3911, 105, 'Pescara', 'PE', 1, '0000-00-00 00:00:00'),
(3912, 105, 'Piacenza', 'PC', 1, '0000-00-00 00:00:00'),
(3913, 105, 'Pisa', 'PI', 1, '0000-00-00 00:00:00'),
(3914, 105, 'Pistoia', 'PT', 1, '0000-00-00 00:00:00'),
(3915, 105, 'Pordenone', 'PN', 1, '0000-00-00 00:00:00'),
(3916, 105, 'Potenza', 'PZ', 1, '0000-00-00 00:00:00'),
(3917, 105, 'Prato', 'PO', 1, '0000-00-00 00:00:00'),
(3918, 105, 'Ragusa', 'RG', 1, '0000-00-00 00:00:00'),
(3919, 105, 'Ravenna', 'RA', 1, '0000-00-00 00:00:00'),
(3920, 105, 'Reggio Calabria', 'RC', 1, '0000-00-00 00:00:00'),
(3921, 105, 'Reggio Emilia', 'RE', 1, '0000-00-00 00:00:00'),
(3922, 105, 'Rieti', 'RI', 1, '0000-00-00 00:00:00'),
(3923, 105, 'Rimini', 'RN', 1, '0000-00-00 00:00:00'),
(3924, 105, 'Roma', 'RM', 1, '0000-00-00 00:00:00'),
(3925, 105, 'Rovigo', 'RO', 1, '0000-00-00 00:00:00'),
(3926, 105, 'Salerno', 'SA', 1, '0000-00-00 00:00:00'),
(3927, 105, 'Sassari', 'SS', 1, '0000-00-00 00:00:00'),
(3928, 105, 'Savona', 'SV', 1, '0000-00-00 00:00:00'),
(3929, 105, 'Siena', 'SI', 1, '0000-00-00 00:00:00'),
(3930, 105, 'Siracusa', 'SR', 1, '0000-00-00 00:00:00'),
(3931, 105, 'Sondrio', 'SO', 1, '0000-00-00 00:00:00'),
(3932, 105, 'Taranto', 'TA', 1, '0000-00-00 00:00:00'),
(3933, 105, 'Teramo', 'TE', 1, '0000-00-00 00:00:00'),
(3934, 105, 'Terni', 'TR', 1, '0000-00-00 00:00:00'),
(3935, 105, 'Torino', 'TO', 1, '0000-00-00 00:00:00'),
(3936, 105, 'Trapani', 'TP', 1, '0000-00-00 00:00:00'),
(3937, 105, 'Trento', 'TN', 1, '0000-00-00 00:00:00'),
(3938, 105, 'Treviso', 'TV', 1, '0000-00-00 00:00:00'),
(3939, 105, 'Trieste', 'TS', 1, '0000-00-00 00:00:00'),
(3940, 105, 'Udine', 'UD', 1, '0000-00-00 00:00:00'),
(3941, 105, 'Varese', 'VA', 1, '0000-00-00 00:00:00'),
(3942, 105, 'Venezia', 'VE', 1, '0000-00-00 00:00:00'),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1, '0000-00-00 00:00:00'),
(3944, 105, 'Vercelli', 'VC', 1, '0000-00-00 00:00:00'),
(3945, 105, 'Verona', 'VR', 1, '0000-00-00 00:00:00'),
(3946, 105, 'Vibo Valentia', 'VV', 1, '0000-00-00 00:00:00'),
(3947, 105, 'Vicenza', 'VI', 1, '0000-00-00 00:00:00'),
(3948, 105, 'Viterbo', 'VT', 1, '0000-00-00 00:00:00'),
(3949, 222, 'County Antrim', 'ANT', 1, '0000-00-00 00:00:00'),
(3950, 222, 'County Armagh', 'ARM', 1, '0000-00-00 00:00:00'),
(3951, 222, 'County Down', 'DOW', 1, '0000-00-00 00:00:00'),
(3952, 222, 'County Fermanagh', 'FER', 1, '0000-00-00 00:00:00'),
(3953, 222, 'County Londonderry', 'LDY', 1, '0000-00-00 00:00:00'),
(3954, 222, 'County Tyrone', 'TYR', 1, '0000-00-00 00:00:00'),
(3955, 222, 'Cumbria', 'CMA', 1, '0000-00-00 00:00:00'),
(3956, 190, 'Pomurska', '1', 1, '0000-00-00 00:00:00'),
(3957, 190, 'Podravska', '2', 1, '0000-00-00 00:00:00'),
(3958, 190, 'Koroška', '3', 1, '0000-00-00 00:00:00'),
(3959, 190, 'Savinjska', '4', 1, '0000-00-00 00:00:00'),
(3960, 190, 'Zasavska', '5', 1, '0000-00-00 00:00:00'),
(3961, 190, 'Spodnjeposavska', '6', 1, '0000-00-00 00:00:00'),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1, '0000-00-00 00:00:00'),
(3963, 190, 'Osrednjeslovenska', '8', 1, '0000-00-00 00:00:00'),
(3964, 190, 'Gorenjska', '9', 1, '0000-00-00 00:00:00'),
(3965, 190, 'Notranjsko-kraška', '10', 1, '0000-00-00 00:00:00'),
(3966, 190, 'Goriška', '11', 1, '0000-00-00 00:00:00'),
(3967, 190, 'Obalno-kraška', '12', 1, '0000-00-00 00:00:00'),
(3968, 33, 'Ruse', '', 1, '0000-00-00 00:00:00'),
(3969, 101, 'Alborz', 'ALB', 1, '0000-00-00 00:00:00'),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1, '0000-00-00 00:00:00'),
(3971, 138, 'Aguascalientes', 'AG', 1, '0000-00-00 00:00:00'),
(3972, 222, 'Isle of Man', 'IOM', 1, '0000-00-00 00:00:00'),
(3973, 242, 'Andrijevica', '01', 1, '0000-00-00 00:00:00'),
(3974, 242, 'Bar', '02', 1, '0000-00-00 00:00:00'),
(3975, 242, 'Berane', '03', 1, '0000-00-00 00:00:00'),
(3976, 242, 'Bijelo Polje', '04', 1, '0000-00-00 00:00:00'),
(3977, 242, 'Budva', '05', 1, '0000-00-00 00:00:00'),
(3978, 242, 'Cetinje', '06', 1, '0000-00-00 00:00:00'),
(3979, 242, 'Danilovgrad', '07', 1, '0000-00-00 00:00:00'),
(3980, 242, 'Herceg-Novi', '08', 1, '0000-00-00 00:00:00'),
(3981, 242, 'Kolašin', '09', 1, '0000-00-00 00:00:00'),
(3982, 242, 'Kotor', '10', 1, '0000-00-00 00:00:00'),
(3983, 242, 'Mojkovac', '11', 1, '0000-00-00 00:00:00'),
(3984, 242, 'Nikši?', '12', 1, '0000-00-00 00:00:00'),
(3985, 242, 'Plav', '13', 1, '0000-00-00 00:00:00'),
(3986, 242, 'Pljevlja', '14', 1, '0000-00-00 00:00:00'),
(3987, 242, 'Plužine', '15', 1, '0000-00-00 00:00:00'),
(3988, 242, 'Podgorica', '16', 1, '0000-00-00 00:00:00'),
(3989, 242, 'Rožaje', '17', 1, '0000-00-00 00:00:00'),
(3990, 242, 'Šavnik', '18', 1, '0000-00-00 00:00:00'),
(3991, 242, 'Tivat', '19', 1, '0000-00-00 00:00:00'),
(3992, 242, 'Ulcinj', '20', 1, '0000-00-00 00:00:00'),
(3993, 242, 'Žabljak', '21', 1, '0000-00-00 00:00:00'),
(3994, 243, 'Belgrade', '00', 1, '0000-00-00 00:00:00'),
(3995, 243, 'North Ba?ka', '01', 1, '0000-00-00 00:00:00'),
(3996, 243, 'Central Banat', '02', 1, '0000-00-00 00:00:00'),
(3997, 243, 'North Banat', '03', 1, '0000-00-00 00:00:00'),
(3998, 243, 'South Banat', '04', 1, '0000-00-00 00:00:00'),
(3999, 243, 'West Ba?ka', '05', 1, '0000-00-00 00:00:00'),
(4000, 243, 'South Ba?ka', '06', 1, '0000-00-00 00:00:00'),
(4001, 243, 'Srem', '07', 1, '0000-00-00 00:00:00'),
(4002, 243, 'Ma?va', '08', 1, '0000-00-00 00:00:00'),
(4003, 243, 'Kolubara', '09', 1, '0000-00-00 00:00:00'),
(4004, 243, 'Podunavlje', '10', 1, '0000-00-00 00:00:00'),
(4005, 243, 'Brani?evo', '11', 1, '0000-00-00 00:00:00'),
(4006, 243, 'Šumadija', '12', 1, '0000-00-00 00:00:00'),
(4007, 243, 'Pomoravlje', '13', 1, '0000-00-00 00:00:00'),
(4008, 243, 'Bor', '14', 1, '0000-00-00 00:00:00'),
(4009, 243, 'Zaje?ar', '15', 1, '0000-00-00 00:00:00'),
(4010, 243, 'Zlatibor', '16', 1, '0000-00-00 00:00:00'),
(4011, 243, 'Moravica', '17', 1, '0000-00-00 00:00:00'),
(4012, 243, 'Raška', '18', 1, '0000-00-00 00:00:00'),
(4013, 243, 'Rasina', '19', 1, '0000-00-00 00:00:00'),
(4014, 243, 'Nišava', '20', 1, '0000-00-00 00:00:00'),
(4015, 243, 'Toplica', '21', 1, '0000-00-00 00:00:00'),
(4016, 243, 'Pirot', '22', 1, '0000-00-00 00:00:00'),
(4017, 243, 'Jablanica', '23', 1, '0000-00-00 00:00:00'),
(4018, 243, 'P?inja', '24', 1, '0000-00-00 00:00:00'),
(4019, 243, 'Kosovo', 'KM', 1, '0000-00-00 00:00:00'),
(4020, 245, 'Bonaire', 'BO', 1, '0000-00-00 00:00:00'),
(4021, 245, 'Saba', 'SA', 1, '0000-00-00 00:00:00'),
(4022, 245, 'Sint Eustatius', 'SE', 1, '0000-00-00 00:00:00'),
(4023, 248, 'Central Equatoria', 'EC', 1, '0000-00-00 00:00:00'),
(4024, 248, 'Eastern Equatoria', 'EE', 1, '0000-00-00 00:00:00'),
(4025, 248, 'Jonglei', 'JG', 1, '0000-00-00 00:00:00'),
(4026, 248, 'Lakes', 'LK', 1, '0000-00-00 00:00:00'),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1, '0000-00-00 00:00:00'),
(4028, 248, 'Unity', 'UY', 1, '0000-00-00 00:00:00'),
(4029, 248, 'Upper Nile', 'NU', 1, '0000-00-00 00:00:00'),
(4030, 248, 'Warrap', 'WR', 1, '0000-00-00 00:00:00'),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1, '0000-00-00 00:00:00'),
(4032, 248, 'Western Equatoria', 'EW', 1, '0000-00-00 00:00:00'),
(4033, 207, 'tajikistan', 'TJK', 1, '0000-00-00 00:00:00'),
(4034, 13, 'america', 'amc', 1, '0000-00-00 00:00:00'),
(4055, 99, 'Telangana State', 'TS', 1, '2015-03-31 16:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `r_stock_status`
--

CREATE TABLE IF NOT EXISTS `r_stock_status` (
`id_stock_status` int(11) NOT NULL,
  `id_language` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_stock_status`
--

INSERT INTO `r_stock_status` (`id_stock_status`, `id_language`, `name`, `date_modified`) VALUES
(2, 1, '2 - 4 Days', '0000-00-00 00:00:00'),
(3, 1, 'In Stock', '0000-00-00 00:00:00'),
(6, 1, 'Out of Stock', '0000-00-00 00:00:00'),
(6, 2, 'Out of Stock', '0000-00-00 00:00:00'),
(9, 1, 'Pre Order', '2014-11-26 08:46:14'),
(9, 2, 'stock over', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `r_tax_class`
--

CREATE TABLE IF NOT EXISTS `r_tax_class` (
`id_tax_class` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` longtext,
  `status` tinyint(1) DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_tax_class`
--

INSERT INTO `r_tax_class` (`id_tax_class`, `name`, `description`, `status`, `date_modified`) VALUES
(1, 'fareed', 'tax descrption', 0, '2014-12-02 11:19:24'),
(2, 'New Zealand Tax', 'Will be applied for all states in New Zealand', 0, '0000-00-00 00:00:00'),
(4, 'India Tax', 'Will be applied for all states in india', 1, '2015-01-04 13:00:06'),
(5, 'Telangana Tax', 'Applicable in Telanagana Region', 1, '0000-00-00 00:00:00'),
(7, 'South Indian Tax', 'will be applied for all regions belongs to south India', 1, '2014-12-27 19:41:25');

-- --------------------------------------------------------

--
-- Table structure for table `r_tax_class_rule`
--

CREATE TABLE IF NOT EXISTS `r_tax_class_rule` (
`id_tax_class_rule` int(11) NOT NULL,
  `id_tax_class` int(11) DEFAULT NULL,
  `rate` varchar(32) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL COMMENT 'PERCENT:percent,FIXED:fixed',
  `based_on` varchar(100) DEFAULT NULL COMMENT 'SHIPPING_ADDR=shipping address,PAYMENT_ADDR=payment address,STORE_ADDR=store address',
  `id_region` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_tax_class_rule`
--

INSERT INTO `r_tax_class_rule` (`id_tax_class_rule`, `id_tax_class`, `rate`, `type`, `based_on`, `id_region`) VALUES
(17, 2, '1.3', 'FIXED', 'STORE_ADDR', 1),
(18, 2, '1', 'FIXED', 'PAYMENT_ADDR', 2),
(36, 10, '10', 'PERCENT', 'STORE_ADDR', 2),
(37, 10, '10', 'FIXED', 'SHIPPING_ADDR', 1),
(38, 2, '1', 'FIXED', 'SHIPPING_ADDR', 2),
(39, 11, '20', 'FIXED', 'PAYMENT_ADDR', 2),
(40, 12, '20', 'PERCENT', 'PAYMENT_ADDR', 2),
(41, 13, '30', 'PERCENT', 'PAYMENT_ADDR', 1),
(42, 14, '', 'PERCENT', 'STORE_ADDR', 1),
(43, 14, '', 'PERCENT', 'STORE_ADDR', 1),
(46, 2, '', 'PERCENT', 'STORE_ADDR', 2),
(48, 4, '10', 'FIXED', 'SHIPPING_ADDR', 2),
(49, 4, '10', 'FIXED', 'PAYMENT_ADDR', 2),
(50, 5, '10', 'FIXED', 'SHIPPING_ADDR', 12),
(51, 7, '10', 'PERCENT', 'PAYMENT_ADDR', 12),
(52, 5, '5', 'PERCENT', 'SHIPPING_ADDR', 12);

-- --------------------------------------------------------

--
-- Table structure for table `r_tax_class_rule_description`
--

CREATE TABLE IF NOT EXISTS `r_tax_class_rule_description` (
  `id_tax_class_rule` int(11) NOT NULL DEFAULT '0',
  `id_tax_class` int(11) NOT NULL,
  `id_language` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_tax_class_rule_description`
--

INSERT INTO `r_tax_class_rule_description` (`id_tax_class_rule`, `id_tax_class`, `id_language`, `name`) VALUES
(15, 2, 1, 'tax rule 1 english'),
(15, 2, 2, 'tax rule 1'),
(16, 2, 1, 'tax rule 2 english'),
(16, 2, 2, 'tax rule 2'),
(36, 10, 1, '10 % tax Applicable'),
(36, 10, 2, '10 % tax Applicable'),
(37, 10, 1, 'Addition 10$ Applicable'),
(37, 10, 2, 'Addition 10$ Applicable'),
(38, 2, 1, '10 % tax Applicable'),
(38, 2, 2, '10 % tax Applicable'),
(39, 11, 1, 'shoes'),
(39, 11, 2, 'shoes'),
(40, 12, 1, 'baskets'),
(40, 12, 2, 'baskets'),
(41, 13, 1, 'jewellery'),
(41, 13, 2, 'jewellery'),
(42, 14, 1, '1'),
(42, 14, 2, '1'),
(43, 14, 1, '2'),
(43, 14, 2, '2'),
(46, 2, 1, 'flat 20% rate'),
(46, 2, 2, 'flat 20% rate'),
(48, 4, 1, 'acd'),
(48, 4, 2, 'acd'),
(49, 4, 1, 'far'),
(49, 4, 2, 'far'),
(50, 5, 1, 'Vat (10)'),
(50, 5, 2, 'Khammam'),
(51, 7, 1, 'South Indian Tax'),
(51, 7, 2, 'South Indian Tax'),
(52, 5, 1, 'Tax (5%)'),
(52, 5, 2, 'Tax (5%)');

-- --------------------------------------------------------

--
-- Table structure for table `r_voucher`
--

CREATE TABLE IF NOT EXISTS `r_voucher` (
`voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_bin NOT NULL,
  `from_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `from_email` varchar(96) COLLATE utf8_bin NOT NULL,
  `to_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `to_email` varchar(96) COLLATE utf8_bin NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_voucher`
--

INSERT INTO `r_voucher` (`voucher_id`, `order_id`, `code`, `from_name`, `from_email`, `to_name`, `to_email`, `message`, `amount`, `voucher_theme_id`, `status`, `date_added`) VALUES
(6, 0, '1348224273', 'from', 'from@gmail.com', 'to', 'to@gmail.com', 'r_voucher[message]', '100.0000', 6, 1, '2012-09-21 16:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `r_voucher_history`
--

CREATE TABLE IF NOT EXISTS `r_voucher_history` (
`voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `r_voucher_theme`
--

CREATE TABLE IF NOT EXISTS `r_voucher_theme` (
`voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_voucher_theme`
--

INSERT INTO `r_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(6, '3719_501512459859369_279557143_n4056_gvt_6.jpg'),
(7, '530243_352182414869071_1728705296_n9601_gvt_7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `r_voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `r_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `r_voucher_theme_description`
--

INSERT INTO `r_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday');

-- --------------------------------------------------------

--
-- Table structure for table `r_zone`
--

CREATE TABLE IF NOT EXISTS `r_zone` (
`id_zone` int(11) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_zone`
--

INSERT INTO `r_zone` (`id_zone`, `name`, `status`, `date_modified`) VALUES
(2, 'North America', 1, '0000-00-00 00:00:00'),
(3, 'Asia', 1, '0000-00-00 00:00:00'),
(4, 'Africa', 1, '0000-00-00 00:00:00'),
(5, 'Oceania', 1, '0000-00-00 00:00:00'),
(6, 'South America', 1, '0000-00-00 00:00:00'),
(7, 'Europe (out E.U)', 1, '0000-00-00 00:00:00'),
(8, 'Central America/Antilla', 1, '0000-00-00 00:00:00'),
(18, 'south coriea', 1, '0000-00-00 00:00:00'),
(19, 'Eastern Africa', 1, '0000-00-00 00:00:00'),
(23, ' 	Udine', 0, '0000-00-00 00:00:00'),
(24, ' 	Venezia', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `upphoto`
--

CREATE TABLE IF NOT EXISTS `upphoto` (
  `id_product` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upphoto`
--

INSERT INTO `upphoto` (`id_product`, `image`) VALUES
(235, '_Flash.png'),
(250, '143.png'),
(251, 'sony21.png'),
(252, '7.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'erwin', '52vMVsALx7MpVD9LxXyE2FkHn6PLUOKD', '21232f297a57a5a743894a0e4a801fc3', NULL, 'ewinregar69@gmail.com', 10, 1461911709, 1461911709),
(2, 'Admin', '52vMVsALx7MpVD9LxXyE2FkHn6PLUOKD', '21232f297a57a5a743894a0e4a801fc3', '', 'admin@regarcomm.com', 1, 20160503, 20160503),
(4, 'admin1', 'admin20160511', '8868a3f76c3d792904d831c44612a377c04a58c9', '2016admin', 'admin1@regarcomm.com', 1, 20160511, 20160511);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
 ADD PRIMARY KEY (`version`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_admin`
--
ALTER TABLE `r_admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `r_admin_activity_log`
--
ALTER TABLE `r_admin_activity_log`
 ADD PRIMARY KEY (`id_admin_log_history`), ADD KEY `idx_page_accessed_zen` (`page_accessed`), ADD KEY `idx_access_date_zen` (`access_date`), ADD KEY `idx_ip_zen` (`ip_address`);

--
-- Indexes for table `r_admin_log_history`
--
ALTER TABLE `r_admin_log_history`
 ADD PRIMARY KEY (`id_log`), ADD KEY `idx_page_accessed_zen` (`page_accessed`), ADD KEY `idx_access_date_zen` (`access_date`), ADD KEY `idx_ip_zen` (`ip_address`);

--
-- Indexes for table `r_admin_permissions`
--
ALTER TABLE `r_admin_permissions`
 ADD PRIMARY KEY (`id_admin_permission`);

--
-- Indexes for table `r_admin_role`
--
ALTER TABLE `r_admin_role`
 ADD PRIMARY KEY (`id_admin_role`);

--
-- Indexes for table `r_attribute`
--
ALTER TABLE `r_attribute`
 ADD PRIMARY KEY (`id_attribute`);

--
-- Indexes for table `r_attribute_description`
--
ALTER TABLE `r_attribute_description`
 ADD PRIMARY KEY (`id_attribute`,`id_language`);

--
-- Indexes for table `r_attribute_group`
--
ALTER TABLE `r_attribute_group`
 ADD PRIMARY KEY (`id_attribute_group`);

--
-- Indexes for table `r_attribute_group_description`
--
ALTER TABLE `r_attribute_group_description`
 ADD PRIMARY KEY (`id_attribute_group`,`id_language`);

--
-- Indexes for table `r_banner`
--
ALTER TABLE `r_banner`
 ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `r_banner_image`
--
ALTER TABLE `r_banner_image`
 ADD PRIMARY KEY (`id_banner_image`);

--
-- Indexes for table `r_banner_image_description`
--
ALTER TABLE `r_banner_image_description`
 ADD PRIMARY KEY (`id_banner_image`,`id_language`);

--
-- Indexes for table `r_category`
--
ALTER TABLE `r_category`
 ADD PRIMARY KEY (`id_category`), ADD KEY `idx_categories_parent_id` (`id_parent`);

--
-- Indexes for table `r_category_description`
--
ALTER TABLE `r_category_description`
 ADD PRIMARY KEY (`id_category`,`id_language`), ADD KEY `idx_categories_name` (`name`);

--
-- Indexes for table `r_category_filter`
--
ALTER TABLE `r_category_filter`
 ADD PRIMARY KEY (`id_category_filter`);

--
-- Indexes for table `r_configuration`
--
ALTER TABLE `r_configuration`
 ADD PRIMARY KEY (`id_configuration`);

--
-- Indexes for table `r_configuration_group`
--
ALTER TABLE `r_configuration_group`
 ADD PRIMARY KEY (`id_configuration_group`);

--
-- Indexes for table `r_country`
--
ALTER TABLE `r_country`
 ADD PRIMARY KEY (`id_country`);

--
-- Indexes for table `r_coupon`
--
ALTER TABLE `r_coupon`
 ADD PRIMARY KEY (`id_coupon`);

--
-- Indexes for table `r_coupon_history`
--
ALTER TABLE `r_coupon_history`
 ADD PRIMARY KEY (`id_coupon_history`);

--
-- Indexes for table `r_coupon_product`
--
ALTER TABLE `r_coupon_product`
 ADD PRIMARY KEY (`id_coupon_product`);

--
-- Indexes for table `r_currency`
--
ALTER TABLE `r_currency`
 ADD PRIMARY KEY (`id_currency`), ADD KEY `idx_currencies_code` (`code`);

--
-- Indexes for table `r_customer`
--
ALTER TABLE `r_customer`
 ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `r_customer_address`
--
ALTER TABLE `r_customer_address`
 ADD PRIMARY KEY (`id_customer_address`);

--
-- Indexes for table `r_customer_group`
--
ALTER TABLE `r_customer_group`
 ADD PRIMARY KEY (`id_customer_group`);

--
-- Indexes for table `r_customer_group_description`
--
ALTER TABLE `r_customer_group_description`
 ADD PRIMARY KEY (`id_customer_group`,`id_language`);

--
-- Indexes for table `r_custom_url`
--
ALTER TABLE `r_custom_url`
 ADD PRIMARY KEY (`id_custom_url`), ADD UNIQUE KEY `keyword` (`string`);

--
-- Indexes for table `r_email_template`
--
ALTER TABLE `r_email_template`
 ADD PRIMARY KEY (`id_email_template`);

--
-- Indexes for table `r_email_template_description`
--
ALTER TABLE `r_email_template_description`
 ADD PRIMARY KEY (`id_email_template`,`id_language`);

--
-- Indexes for table `r_filter`
--
ALTER TABLE `r_filter`
 ADD PRIMARY KEY (`id_filter`);

--
-- Indexes for table `r_language`
--
ALTER TABLE `r_language`
 ADD PRIMARY KEY (`id_language`), ADD KEY `IDX_LANGUAGES_NAME` (`name`);

--
-- Indexes for table `r_length_class`
--
ALTER TABLE `r_length_class`
 ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `r_length_class_description`
--
ALTER TABLE `r_length_class_description`
 ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `r_manufacturer`
--
ALTER TABLE `r_manufacturer`
 ADD PRIMARY KEY (`id_manufacturer`);

--
-- Indexes for table `r_manufacturer_description`
--
ALTER TABLE `r_manufacturer_description`
 ADD PRIMARY KEY (`id_manufacturer_description`);

--
-- Indexes for table `r_newsletter_template`
--
ALTER TABLE `r_newsletter_template`
 ADD PRIMARY KEY (`newsletter_template_id`);

--
-- Indexes for table `r_option`
--
ALTER TABLE `r_option`
 ADD PRIMARY KEY (`id_option`);

--
-- Indexes for table `r_option_description`
--
ALTER TABLE `r_option_description`
 ADD PRIMARY KEY (`id_option`,`id_language`);

--
-- Indexes for table `r_option_value`
--
ALTER TABLE `r_option_value`
 ADD PRIMARY KEY (`id_option_value`);

--
-- Indexes for table `r_option_value_description`
--
ALTER TABLE `r_option_value_description`
 ADD PRIMARY KEY (`id_option_value`,`id_language`);

--
-- Indexes for table `r_order`
--
ALTER TABLE `r_order`
 ADD PRIMARY KEY (`id_order`), ADD KEY `idx_orders_customers_id` (`id_customer`);

--
-- Indexes for table `r_order_history`
--
ALTER TABLE `r_order_history`
 ADD PRIMARY KEY (`id_order_history`), ADD KEY `idx_orders_status_history_orders_id` (`id_order`);

--
-- Indexes for table `r_order_product`
--
ALTER TABLE `r_order_product`
 ADD PRIMARY KEY (`id_order_product`), ADD KEY `idx_orders_products_orders_id` (`id_order`), ADD KEY `idx_orders_products_products_id` (`id_product`);

--
-- Indexes for table `r_order_product_option`
--
ALTER TABLE `r_order_product_option`
 ADD PRIMARY KEY (`id_order_product_option`);

--
-- Indexes for table `r_order_status`
--
ALTER TABLE `r_order_status`
 ADD PRIMARY KEY (`id_order_status`,`id_language`);

--
-- Indexes for table `r_order_total`
--
ALTER TABLE `r_order_total`
 ADD PRIMARY KEY (`id_order_total`), ADD KEY `idx_orders_total_orders_id` (`id_order`);

--
-- Indexes for table `r_page`
--
ALTER TABLE `r_page`
 ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `r_page_description`
--
ALTER TABLE `r_page_description`
 ADD PRIMARY KEY (`id_page`,`id_language`);

--
-- Indexes for table `r_product`
--
ALTER TABLE `r_product`
 ADD PRIMARY KEY (`id_product`), ADD KEY `idx_products_model` (`model`), ADD KEY `idx_products_date_added` (`date_created`);

--
-- Indexes for table `r_product_attribute`
--
ALTER TABLE `r_product_attribute`
 ADD PRIMARY KEY (`id_product`,`id_attribute`,`id_language`);

--
-- Indexes for table `r_product_category`
--
ALTER TABLE `r_product_category`
 ADD PRIMARY KEY (`id_product`,`id_category`);

--
-- Indexes for table `r_product_description`
--
ALTER TABLE `r_product_description`
 ADD PRIMARY KEY (`id_product`,`id_language`), ADD KEY `products_name` (`name`);

--
-- Indexes for table `r_product_group`
--
ALTER TABLE `r_product_group`
 ADD PRIMARY KEY (`id_product_group`);

--
-- Indexes for table `r_product_group_description`
--
ALTER TABLE `r_product_group_description`
 ADD PRIMARY KEY (`id_product_group_description`);

--
-- Indexes for table `r_product_group_type`
--
ALTER TABLE `r_product_group_type`
 ADD PRIMARY KEY (`id_product_group_type`);

--
-- Indexes for table `r_product_image`
--
ALTER TABLE `r_product_image`
 ADD PRIMARY KEY (`id_product_image`), ADD KEY `products_images_prodid` (`id_product`);

--
-- Indexes for table `r_product_option`
--
ALTER TABLE `r_product_option`
 ADD PRIMARY KEY (`id_product_option`);

--
-- Indexes for table `r_product_option_value`
--
ALTER TABLE `r_product_option_value`
 ADD PRIMARY KEY (`id_product_option_value`);

--
-- Indexes for table `r_product_review`
--
ALTER TABLE `r_product_review`
 ADD PRIMARY KEY (`id_review`), ADD KEY `idx_reviews_products_id` (`id_product`), ADD KEY `idx_reviews_customers_id` (`id_customer`);

--
-- Indexes for table `r_product_reward`
--
ALTER TABLE `r_product_reward`
 ADD PRIMARY KEY (`id_product_reward`);

--
-- Indexes for table `r_product_special`
--
ALTER TABLE `r_product_special`
 ADD PRIMARY KEY (`id_product_special`), ADD KEY `idx_specials_products_id` (`id_product`);

--
-- Indexes for table `r_region`
--
ALTER TABLE `r_region`
 ADD PRIMARY KEY (`id_region`);

--
-- Indexes for table `r_region_list`
--
ALTER TABLE `r_region_list`
 ADD PRIMARY KEY (`id_region_list`);

--
-- Indexes for table `r_search_keyword`
--
ALTER TABLE `r_search_keyword`
 ADD PRIMARY KEY (`id_search_keyword`);

--
-- Indexes for table `r_state`
--
ALTER TABLE `r_state`
 ADD PRIMARY KEY (`id_state`);

--
-- Indexes for table `r_stock_status`
--
ALTER TABLE `r_stock_status`
 ADD PRIMARY KEY (`id_stock_status`,`id_language`);

--
-- Indexes for table `r_tax_class`
--
ALTER TABLE `r_tax_class`
 ADD PRIMARY KEY (`id_tax_class`);

--
-- Indexes for table `r_tax_class_rule`
--
ALTER TABLE `r_tax_class_rule`
 ADD PRIMARY KEY (`id_tax_class_rule`);

--
-- Indexes for table `r_tax_class_rule_description`
--
ALTER TABLE `r_tax_class_rule_description`
 ADD PRIMARY KEY (`id_tax_class_rule`,`id_tax_class`,`id_language`);

--
-- Indexes for table `r_voucher`
--
ALTER TABLE `r_voucher`
 ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `r_voucher_history`
--
ALTER TABLE `r_voucher_history`
 ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `r_voucher_theme`
--
ALTER TABLE `r_voucher_theme`
 ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `r_voucher_theme_description`
--
ALTER TABLE `r_voucher_theme_description`
 ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `r_zone`
--
ALTER TABLE `r_zone`
 ADD PRIMARY KEY (`id_zone`);

--
-- Indexes for table `upphoto`
--
ALTER TABLE `upphoto`
 ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `email` (`email`), ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `r_admin`
--
ALTER TABLE `r_admin`
MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `r_admin_activity_log`
--
ALTER TABLE `r_admin_activity_log`
MODIFY `id_admin_log_history` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=175;
--
-- AUTO_INCREMENT for table `r_admin_log_history`
--
ALTER TABLE `r_admin_log_history`
MODIFY `id_log` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `r_admin_permissions`
--
ALTER TABLE `r_admin_permissions`
MODIFY `id_admin_permission` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=295;
--
-- AUTO_INCREMENT for table `r_admin_role`
--
ALTER TABLE `r_admin_role`
MODIFY `id_admin_role` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `r_attribute`
--
ALTER TABLE `r_attribute`
MODIFY `id_attribute` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `r_attribute_group`
--
ALTER TABLE `r_attribute_group`
MODIFY `id_attribute_group` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `r_banner`
--
ALTER TABLE `r_banner`
MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `r_banner_image`
--
ALTER TABLE `r_banner_image`
MODIFY `id_banner_image` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `r_category`
--
ALTER TABLE `r_category`
MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `r_category_filter`
--
ALTER TABLE `r_category_filter`
MODIFY `id_category_filter` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT for table `r_configuration`
--
ALTER TABLE `r_configuration`
MODIFY `id_configuration` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=448;
--
-- AUTO_INCREMENT for table `r_configuration_group`
--
ALTER TABLE `r_configuration_group`
MODIFY `id_configuration_group` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=200;
--
-- AUTO_INCREMENT for table `r_country`
--
ALTER TABLE `r_country`
MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=255;
--
-- AUTO_INCREMENT for table `r_coupon`
--
ALTER TABLE `r_coupon`
MODIFY `id_coupon` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `r_coupon_history`
--
ALTER TABLE `r_coupon_history`
MODIFY `id_coupon_history` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `r_coupon_product`
--
ALTER TABLE `r_coupon_product`
MODIFY `id_coupon_product` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `r_currency`
--
ALTER TABLE `r_currency`
MODIFY `id_currency` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `r_customer`
--
ALTER TABLE `r_customer`
MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `r_customer_address`
--
ALTER TABLE `r_customer_address`
MODIFY `id_customer_address` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `r_customer_group`
--
ALTER TABLE `r_customer_group`
MODIFY `id_customer_group` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `r_customer_group_description`
--
ALTER TABLE `r_customer_group_description`
MODIFY `id_customer_group` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `r_custom_url`
--
ALTER TABLE `r_custom_url`
MODIFY `id_custom_url` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=809;
--
-- AUTO_INCREMENT for table `r_email_template`
--
ALTER TABLE `r_email_template`
MODIFY `id_email_template` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `r_filter`
--
ALTER TABLE `r_filter`
MODIFY `id_filter` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT for table `r_language`
--
ALTER TABLE `r_language`
MODIFY `id_language` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `r_length_class`
--
ALTER TABLE `r_length_class`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `r_length_class_description`
--
ALTER TABLE `r_length_class_description`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `r_manufacturer`
--
ALTER TABLE `r_manufacturer`
MODIFY `id_manufacturer` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `r_manufacturer_description`
--
ALTER TABLE `r_manufacturer_description`
MODIFY `id_manufacturer_description` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `r_newsletter_template`
--
ALTER TABLE `r_newsletter_template`
MODIFY `newsletter_template_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `r_option`
--
ALTER TABLE `r_option`
MODIFY `id_option` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `r_option_value`
--
ALTER TABLE `r_option_value`
MODIFY `id_option_value` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `r_order`
--
ALTER TABLE `r_order`
MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `r_order_history`
--
ALTER TABLE `r_order_history`
MODIFY `id_order_history` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `r_order_product`
--
ALTER TABLE `r_order_product`
MODIFY `id_order_product` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `r_order_product_option`
--
ALTER TABLE `r_order_product_option`
MODIFY `id_order_product_option` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `r_order_status`
--
ALTER TABLE `r_order_status`
MODIFY `id_order_status` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `r_order_total`
--
ALTER TABLE `r_order_total`
MODIFY `id_order_total` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `r_page`
--
ALTER TABLE `r_page`
MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `r_product`
--
ALTER TABLE `r_product`
MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT for table `r_product_description`
--
ALTER TABLE `r_product_description`
MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=250;
--
-- AUTO_INCREMENT for table `r_product_group`
--
ALTER TABLE `r_product_group`
MODIFY `id_product_group` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `r_product_group_description`
--
ALTER TABLE `r_product_group_description`
MODIFY `id_product_group_description` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `r_product_group_type`
--
ALTER TABLE `r_product_group_type`
MODIFY `id_product_group_type` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `r_product_image`
--
ALTER TABLE `r_product_image`
MODIFY `id_product_image` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1061;
--
-- AUTO_INCREMENT for table `r_product_option`
--
ALTER TABLE `r_product_option`
MODIFY `id_product_option` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `r_product_option_value`
--
ALTER TABLE `r_product_option_value`
MODIFY `id_product_option_value` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `r_product_review`
--
ALTER TABLE `r_product_review`
MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `r_product_reward`
--
ALTER TABLE `r_product_reward`
MODIFY `id_product_reward` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `r_product_special`
--
ALTER TABLE `r_product_special`
MODIFY `id_product_special` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `r_region`
--
ALTER TABLE `r_region`
MODIFY `id_region` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `r_region_list`
--
ALTER TABLE `r_region_list`
MODIFY `id_region_list` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `r_search_keyword`
--
ALTER TABLE `r_search_keyword`
MODIFY `id_search_keyword` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `r_state`
--
ALTER TABLE `r_state`
MODIFY `id_state` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4056;
--
-- AUTO_INCREMENT for table `r_stock_status`
--
ALTER TABLE `r_stock_status`
MODIFY `id_stock_status` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `r_tax_class`
--
ALTER TABLE `r_tax_class`
MODIFY `id_tax_class` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `r_tax_class_rule`
--
ALTER TABLE `r_tax_class_rule`
MODIFY `id_tax_class_rule` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `r_voucher`
--
ALTER TABLE `r_voucher`
MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `r_voucher_history`
--
ALTER TABLE `r_voucher_history`
MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `r_voucher_theme`
--
ALTER TABLE `r_voucher_theme`
MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `r_zone`
--
ALTER TABLE `r_zone`
MODIFY `id_zone` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
