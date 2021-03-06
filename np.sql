-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 06:21 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `np`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_multi_sets`()
    DETERMINISTIC
begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext,
  `phone` longtext,
  `address` longtext,
  `email` longtext,
  `password` longtext,
  `role` varchar(10) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `phone`, `address`, `email`, `password`, `role`, `timestamp`) VALUES
(1, 'Mr. Master Admin', '', '', 'admin@newspaper.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1', '1445805671'),
(2, 'Mr. Accountant', '017', 'dhk', 'accountant@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '4', '1430737266'),
(3, 'Mr manager', '021525566', 'Niketon Dhaka', 'manager@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '6', '1433682938');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `banner_id` int(11) NOT NULL,
  `page` longtext,
  `place` longtext,
  `num` longtext,
  `status` longtext,
  `link` longtext
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `page`, `place`, `num`, `status`, `link`) VALUES
(1, 'home', 'after_slider', '1', 'ok', ''),
(2, 'home', 'after_slider', '2', 'ok', ''),
(3, 'home', 'after_slider', '3', 'ok', ''),
(4, 'home', 'after_slider', '4', '0', ''),
(5, 'home', 'after_featured', '1', '0', ''),
(6, 'home', 'after_featured', '2', '0', ''),
(7, 'home', 'after_featured', '3', '0', ''),
(8, 'home', 'after_featured', '4', '0', ''),
(9, 'home', 'after_search', '1', '0', ''),
(10, 'home', 'after_search', '2', '0', ''),
(11, 'home', 'after_search', '3', '0', ''),
(12, 'home', 'after_search', '4', '0', ''),
(13, 'home', 'after_category', '1', '0', ''),
(14, 'home', 'after_category', '2', '0', ''),
(15, 'home', 'after_category', '3', '0', ''),
(16, 'home', 'after_category', '4', '0', ''),
(17, 'home', 'after_latest', '1', '0', ''),
(18, 'home', 'after_popular', '1', '0', ''),
(19, 'home', 'after_most_viewed', '1', '0', ''),
(20, 'category', 'after_filters', '1', 'ok', ''),
(21, 'featured', 'after_most_sold', '1', '0', ''),
(22, 'featured', 'after_most_viewed', '1', '0', ''),
(23, 'vendor_home', 'after_filter', '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL,
  `category_name` longtext,
  `description` longtext
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`) VALUES
(1, 'Electronics', '0'),
(2, 'Automobile', '0'),
(4, 'Men', '0'),
(5, 'Kids', '0'),
(6, 'Digital Product', NULL),
(7, 'Example Category 2', NULL),
(8, 'Example Category 3', NULL),
(9, 'Example Category 4', NULL),
(10, 'Example Category 5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('233aac74b7bb79fa37c4889a2d7a8d73f2d30a94', '::1', 1446123636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363131343638333b74696d657374616d707c693a313434363132303634373b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a31363a224d722e204d61737465722041646d696e223b7469746c657c733a353a2261646d696e223b),
('3a226968ac57815fc9264e03ba77c3a4124c7df1', '192.168.1.100', 1446025472, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363032353432303b74696d657374616d707c693a313434363032353437323b7375726665725f696e666f7c733a36383a227b226d657373616765223a22707269766174652072616e6765222c227175657279223a223139322e3136382e312e313030222c22737461747573223a226661696c227d0a223b),
('4d8ca9a7468e55689e803656ae3c9b404e9035c7', '192.168.1.101', 1446025495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363032333433323b74696d657374616d707c693a313434363032353439353b7375726665725f696e666f7c733a36383a227b226d657373616765223a22707269766174652072616e6765222c227175657279223a223139322e3136382e312e313031222c22737461747573223a226661696c227d0a223b),
('5f5114a93e775381e75dace527ad8d76e82194c3', '::1', 1446139194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363133393139343b74696d657374616d707c693a313434363133393139343b),
('6bcb2aff62a98ca1a616ca734c37da9161c17879', '::1', 1446020011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363031393236373b74696d657374616d707c693a313434363032303031313b),
('7e2c3992ee6575819d5756dce3abb17de451d21b', '::1', 1446021656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363032303234363b74696d657374616d707c693a313434363032313635363b),
('8bc2dc4bb7650edea70d9496a8f9ccaafd1b20e3', '::1', 1446139192, ''),
('911da6d29395ba5a75cbb08065b3484b6e391091', '192.168.1.102', 1446034217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363033343231363b74696d657374616d707c693a313434363033343231363b7375726665725f696e666f7c733a36383a227b226d657373616765223a22707269766174652072616e6765222c227175657279223a223139322e3136382e312e313032222c22737461747573223a226661696c227d0a223b),
('a3e58085d5cd2342bb3c10899c75524bf1884251', '192.168.1.102', 1446034165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363033343136353b74696d657374616d707c693a313434363033343136353b7375726665725f696e666f7c733a36383a227b226d657373616765223a22707269766174652072616e6765222c227175657279223a223139322e3136382e312e313032222c22737461747573223a226661696c227d0a223b),
('dd50076d794a0eaf89d2649c7001c1676f4da06f', '192.168.1.102', 1446034687, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363033333939333b74696d657374616d707c693a313434363033343334363b7375726665725f696e666f7c733a36383a227b226d657373616765223a22707269766174652072616e6765222c227175657279223a223139322e3136382e312e313032222c22737461747573223a226661696c227d0a223b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a31363a224d722e204d61737465722041646d696e223b7469746c657c733a353a2261646d696e223b),
('ded9120338a3cc3f06579802785659fd270ad15f', '::1', 1446041773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434363034313436373b74696d657374616d707c693a313434363034313737333b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a31363a224d722e204d61737465722041646d696e223b7469746c657c733a353a2261646d696e223b);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `gallery_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` longtext NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `title`, `image`, `status`) VALUES
(1, 'Error maxime neque voluptatem Ratione vel non commodo ratione cillum ut molestiae veritatis quis', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE IF NOT EXISTS `general_settings` (
  `general_settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(1, 'system_name', 'dd'),
(2, 'system_email', 'admin@shop.com'),
(3, 'system_title', 'dd'),
(4, 'address', ''),
(5, 'phone', ''),
(6, 'language', 'english'),
(9, 'terms_conditions', ''),
(10, 'fb_appid', ''),
(11, 'fb_secret', ''),
(12, 'google_languages', '{}'),
(24, 'meta_description', ''),
(25, 'meta_keywords', ''),
(26, 'meta_author', 'ActiveItZone'),
(27, 'captcha_public', '6LdsXPQSAAAAALRQB-m8Irt6-2_s2t10QsVnndVN'),
(28, 'captcha_private', '6LdsXPQSAAAAAFEnxFqW9qkEU_vozvDvJFV67yho'),
(29, 'application_name', 'Super Shop'),
(30, 'client_id', ''),
(31, 'client_secret', ''),
(32, 'redirect_uri', ''),
(33, 'api_key', ''),
(44, 'contact_about', ''),
(39, 'contact_phone', ''),
(40, 'contact_email', ''),
(41, 'contact_website', ''),
(42, 'footer_text', '<p><br></p>'),
(43, 'footer_category', '["1","2"]'),
(38, 'contact_address', ''),
(45, 'admin_notification_sound', 'no'),
(46, 'admin_notification_volume', '10.00'),
(47, 'privacy_policy', ''),
(48, 'discus_id', 'activeittest'),
(49, 'home_notification_sound', 'ok'),
(50, 'homepage_notification_volume', '10.00'),
(51, 'fb_login_set', 'no'),
(52, 'g_login_set', 'no'),
(53, 'slider', 'no'),
(54, 'revisit_after', '2'),
(55, 'default_member_product_limit', '5'),
(56, 'fb_comment_api', ''),
(57, 'comment_type', 'disqus'),
(58, 'vendor_system', 'ok'),
(59, 'cache_time', '0'),
(60, 'file_folder', 'jfkfkiriwnfjkmskdcsdfas'),
(62, 'slides', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `word_id` int(11) NOT NULL,
  `word` longtext NOT NULL,
  `english` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `Bangla` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Spanish` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Arabic` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `French` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Chinese` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=956 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`) VALUES
(1, 'home', 'Home', 'বাড়ি', 'Hogar', 'الصفحة الرئيسية', 'Accueil', '家'),
(2, 'toggle_navigation', 'Toggle Navigation', 'টগল ন্যাভিগেশন', 'Activar Navegación', 'تبديل للملاحة', 'Basculer la navigation', '切换导航'),
(3, 'our_products', 'Our Products', 'আমাদের পণ্য', 'Nuestros Productos', 'منتجاتنا', 'Nos Produits', '我们的产品'),
(4, 'featured_product', 'Featured Product', 'বৈশিষ্ট্যযুক্ত পণ্য', 'Producto Destacado', 'المنتج المميز', 'Produit En Vedette', '特色产品'),
(5, 'see_more', 'See More', 'আরো দেখুন', 'Ver Más', 'شاهد المزيد', 'Voir Plus', '查看更多'),
(6, 'contact', 'Contact', 'যোগাযোগ', 'Contacto', 'اتصال', 'Contact', '联系'),
(7, 'search_product', 'Search Product', 'অনুসন্ধান পণ্য', 'Buscar Producto', 'البحث عن منتج', 'Recherche produit', '搜索产品'),
(8, 'choose_category', 'Choose Category', 'বিভাগ নির্বাচন করুন', 'Escoja una Categoría', 'اختر الفئة', 'Choisissez Catégorie', '选择类别'),
(9, 'choose_sub_category', 'Choose Sub Category', 'উপ বিভাগ চয়ন করুন', 'Elige categoría Sub', 'اختر الفئة الرئيسية', 'Choisissez Sous catégorie', '选择子类别'),
(10, 'latest_products', 'Latest Products', 'সাম্প্রতিক পণ্যসমূহ', 'Últimos Productos', 'أحدث المنتجات', 'Derniers produits', '最新产品'),
(11, 'most_sold', 'Most Sold', 'সবথেকে বেশি বিক্রিত', 'Lo más Vendido', 'الأكثر مبيعا', 'La plupart Vendu', '最畅销的'),
(12, 'most_viewed_products', 'Most Viewed Products', 'সর্বাধিক দেখা পণ্য', 'Productos más vistas', 'المنتجات الأكثر مشاهدة', 'Produits les plus consultés', '大多数浏览过的产品'),
(13, 'email_address', 'Email Address', 'এটি ইমেল ঠিকানা', 'Dirección De Correo Electrónico', 'عنوان البريد الإلكتروني', 'Adresse e-mail', '电子邮件地址'),
(14, 'subscribe', 'Subscribe', 'সদস্যতা', 'Suscribir', 'الاشتراك', 'S''abonner', '订阅'),
(15, 'categories', 'Categories', 'বিভাগ', 'Categorías', 'الفئات', 'Catégories', '分类'),
(16, 'useful_links', 'Useful Links', 'দরকারী লিংক', 'Enlaces Útiles', 'روابط مفيدة', 'Liens Utiles', '相关链接'),
(17, 'all_products', 'All Products', 'সব পণ্য', 'Todos Los Productos', 'جميع المنتجات', 'Tous Les Produits', '所有产品'),
(18, 'featured', 'Featured', 'বৈশিষ্ট্যযুক্ত', 'Destacado', 'ظهرت', 'Sélection', '精选'),
(19, 'contact_us', 'Contact Us', 'আমাদের সাথে যোগাযোগ করুন', 'Contáctenos', 'اتصل بنا', 'Contactez Nous', '联系我们'),
(20, 'phone', 'Phone', 'ফোন', 'Teléfono', 'هاتف', 'Téléphone', '电话'),
(21, 'website', 'Website', 'ওয়েবসাইট', 'Sitio web', 'الموقع', 'Site Internet', '网站'),
(22, 'email', 'Email', 'এটি ইমেল', 'Email', 'البريد الإلكتروني', 'Email', '电子邮件'),
(23, 'facebook', 'Facebook', 'ফেসবুক', 'Facebook', 'الفيسبوك', 'Facebook', 'Facebook的'),
(24, 'twitter', 'Twitter', 'টুইটার', 'Gorjeo', 'تغريد', 'Gazouillement', '推特'),
(25, 'google_plus', 'Google Plus', 'গুগল প্লাস', 'Google Plus', 'جوجل بلس', 'Google Plus', '谷歌加'),
(26, 'youtube', 'Youtube', 'ইউটিউব', 'Youtube', 'يوتيوب', 'Youtube', 'YouTube的'),
(27, 'all_rights_reserved', 'All Rights Reserved', 'সর্বস্বত্ব সংরক্ষিত', 'Todos Los Derechos Reservados', 'جميع الحقوق محفوظة', 'Tous Droits Réservés', '版权所有'),
(28, 'terms_&_condition', 'Terms & Condition', 'বিধি - নিষেধ এবং শর্তাবলী', 'Términos Y Condiciones', 'الشروط والأحكام', 'Termes &amp; Conditions', '条款及条件'),
(29, 'privacy_policy', 'Privacy Policy', 'গোপনীয়তা নীতি', 'Política De Privacidad', 'سياسة الخصوصية', 'Politique de confidentialité', '隐私政策'),
(30, 'product_added_to_cart', 'Product Added To Cart', 'পণ্য কার্ট যোগ', 'Producto añadido al carrito', 'أضيف المنتج للسلة', 'Produit ajouté au panier', '产品已加入购物车'),
(31, 'added_to_cart', 'Added To Cart', 'কার্ট যোগ', 'Añadido a la cesta', 'تم إضافته للسلة', 'Ajouté au panier', '添加到购物车'),
(32, 'product_quantity_exceed_availability!', 'Product Quantity Exceed Availability!', 'উত্পাদনের মোট পরিমানের সহজলভ্যতা অতিক্রম!', 'Producto Cantidad Exceed disponibles!', 'المنتج الكمية تتجاوز توافر!', 'Produit Quantité dépassera la disponibilité!', '产品数量超越空房！'),
(33, 'product_already_added_to_cart!', 'Product Already Added To Cart!', 'পণ্য ইতিমধ্যে কার্ট যোগ!', 'Ya Producto añadido a la cesta!', 'المنتج أضفت إلى السلة!', 'Produit Déjà ajouté au panier!', '产品已添加到购物车！'),
(34, 'product_added_to_wishlist', 'Product Added To Wishlist', 'পণ্য শুরুতেই যোগ', 'Producto añadido a la lista de deseos', 'أضيف المنتج الى قائمه التمني', 'Produit ajouté à la liste', '产品添加到收藏'),
(35, 'added_to_wishlist', 'Added To Wishlist', 'শুরুতেই যোগ', 'Añadido a Mis Favoritos', 'أضيف الى قائمة الامنيات', 'Ajouté à la liste', '添加到收藏'),
(36, 'adding_to_wishlist..', 'Adding To Wishlist..', 'লটারি যোগ ..', 'Agregando a Mis Favoritos ..', 'إضافة إلى قائمة الامنيات ..', 'Ajout dans la liste ..', '添加到收藏..'),
(37, 'product_removed_from_wishlist', 'Product Removed From Wishlist', 'পণ্য সাইফুল থেকে সরানো হয়েছে', 'Producto Fuera De Regalos', 'تمت إزالة المنتج من قائمة الامنيات', 'Produit retiré de la liste d''envies', '产品移出收藏'),
(38, 'product_rated_successfully', 'Product Rated Successfully', 'পণ্য সফলভাবে রেট', 'Producto puntuado', 'المنتج تقييمه بنجاح', 'Produit nominale succès', '产品额定成功'),
(39, 'product_rating_failed', 'Product Rating Failed', 'পণ্য নির্ধারণ ব্যর্থ', 'Calificación del producto Falló', 'تقييم المنتج فشل', 'Évaluation du produit Échec', '产品评分失败'),
(40, 'you_already_rated_this_product', 'You Already Rated This Product', 'যদি আপনি ইতিমধ্যেই এই পণ্য রেট', 'Ya has puntuado este producto', 'كنت إذا تقييمه هذا المنتج', 'Vous déjà évalué ce produit', '您已经评价过此产品'),
(41, 'working..', 'Working..', 'ওয়ার্কিং ..', 'Trabajo ..', 'العمل ..', 'De travail ..', '工作..'),
(42, 'you_already_subscribed', 'You Already Subscribed', 'আপনি ইতিমধ্যেই সদস্যতা', 'Usted ya Suscrito', 'كنت مشتركا بالفعل', 'Vous êtes déjà inscrit', '你已经订阅'),
(43, 'you_subscribed_successfully', 'You Subscribed Successfully', 'আপনি সফলভাবে সদস্যতা', 'Usted Suscrito con éxito', 'كنت قد اشتركت بنجاح', 'Vous avez souscrit avec succès', '您已成功订阅'),
(44, 'you_already_subscribed_thrice_from_this_browser', 'You Already Subscribed Thrice From This Browser', 'যদি আপনি ইতিমধ্যেই এই ব্রাউজার থেকে তিনবার সাবস্ক্রাইব', 'Usted ya Suscrito Thrice De Este Browser', 'كنت مشتركا بالفعل ثلاث مرات من هذا المتصفح', 'Vous êtes déjà inscrit trois fois depuis ce navigateur', '你已经订阅三次从这个浏览器'),
(45, 'logging_in..', 'Logging In..', 'লগ ইন ..', 'Iniciar Sesión ..', 'تسجيل الدخول ..', 'Connexion ..', '在登录..'),
(46, 'you_logged_in_successfully', 'You Logged In Successfully', 'আপনি সফলভাবে লগ ইন', 'Usted ha entrado en el éxito', 'لقد دخلت بنجاح', 'Vous êtes connecté avec succès', '你登录成功'),
(47, 'login_failed!_try_again!', 'Login Failed! Try Again!', 'লগইন ব্যর্থ! </font><font>আবার চেষ্টা করুন!', 'Error De Inicio De Sesion! </font><font>Inténtalo De Nuevo!', 'فشل تسجيل الدخول! </font><font>حاول مرة أخرى!', 'Échec De La Connexion! </font><font>Essaye Encore!', '登录失败！</font><font>再试一次！'),
(48, 'submitting..', 'Submitting..', 'জমা ..', 'Envío de ..', 'تقديم ..', 'Envoi ..', '提交..'),
(49, 'email_sent_successfully', 'Email Sent Successfully', 'এটি ইমেল সফলভাবে পাঠানো', 'Email Enviado Satisfactoriamente', 'البريد الإلكتروني المرسلة بنجاح', 'Courriel envoyé avec succès', '电子邮件发送成功'),
(50, 'email_does_not_exist!', 'Email Does Not Exist!', 'ইমেইলটির কোন অস্তিত্ব নেই!', 'Email no existe!', 'البريد الإلكتروني غير موجود!', 'Email ne existe pas!', '电子邮件不存在！'),
(51, 'email_sending_failed!_try_again', 'Email Sending Failed! Try Again', 'এটি ইমেল ব্যর্থ পাঠানোর! </font><font>আবার চেষ্টা করুন', 'Envío de correo electrónico Error! </font><font>Inténtalo De Nuevo', 'إرسال البريد الإلكتروني فشل! </font><font>حاول مرة أخرى', 'Email envoi a échoué! </font><font>Essaye Encore', '电子邮件发送失败！</font><font>再试一次'),
(52, 'logging_in', 'Logging In', 'লগ ইন', 'Iniciar Sesión', 'تسجيل الدخول', 'Connexion', '在登录'),
(53, 'adding_to_cart..', 'Adding To Cart..', 'কার্ট যোগ ..', 'Añadiendo al carro ..', 'إضافة إلى السلة ..', 'Ajout au panier ..', '添加到购物车..'),
(54, 'product_removed_from_cart', 'Product Removed From Cart', 'পণ্য কার্ট থেকে সরানো হয়েছে', 'Producto Fuera de la cesta', 'تمت إزالة المنتج من السلة', 'Produit retiré du panier', '产品移出车'),
(55, 'the_field_is_required', 'The Field Is Required', 'আপনি উত্তর দিবেন না', 'El campo es obligatorio', 'مطلوب الميدان', 'Le champ est obligatoire', '该字段是必须的'),
(56, 'logout', 'Logout', 'প্রস্থান', 'Cerrar Sesión', 'خروج', 'Se Déconnecter', '登出'),
(57, 'login', 'Login', 'লগইন', 'Iniciar Sesión', 'تسجيل الدخول', 'S''identifier', '登录'),
(58, 'register', 'Register', 'নিবন্ধন', 'Registrarse', 'تسجيل', 'Inscription', '注册'),
(59, 'sign_in', 'Sign In', 'প্রবেশ কর', 'Ingresar', 'تسجيل الدخول', 'S''inscrire', '签到'),
(60, 'do_not_have_account_?_click_', 'Do Not Have Account ? Click ', 'সেট ব্যবহার করা হয়নি? </font><font>দেখার জন্য ক্লিক করুন', 'No tiene cuenta? </font><font>Haga clic en', 'ليس لديك حساب؟ </font><font>انقر', 'Ne pas avoir un compte? </font><font>Cliquez', '没有帐户？</font><font>点击'),
(61, 'sign_up', 'Sign Up', 'নিবন্ধন করুন', 'Contratar', 'سجل', 'Signer', '签字'),
(62, 'add_to_cart', 'Add To Cart', 'কার্ট যোগ করুন', 'Añadir A La Cesta', 'أضف إلى السلة', 'Ajouter Au Panier', '添加到购物车'),
(63, 'to_registration_.', 'To Registration .', 'নিবন্ধন করুন.', 'Para inscripción.', 'إلى التسجيل.', 'Pour inscription.', '登记。'),
(64, 'password', 'Password', 'পাসওয়ার্ড', 'Contraseña', 'كلمة السر', 'Mot de passe', '密码'),
(65, 'forget_your_password_?', 'Forget Your Password ?', 'আপনার পাসওয়ার্ড ভুলে গেছেন?', 'Olvidaste Tu Contraseña?', 'نسيت كلمة المرور؟', 'Mot De Passe Oublié?', '忘记密码？'),
(66, 'log_in', 'Log In', 'আপনার যাত্রা শুরু করুন', 'Iniciar Sesión', 'تسجيل الدخول', 'S''identifier', '登录'),
(67, 'forgot_password', 'Forgot Password', 'পাসওয়ার্ড ভুলে গেছেন', 'Has Olvidado Tu Contraseña', 'نسيت كلمة المرور', 'Mot De Passe Oublié', '忘记密码'),
(68, 'submit', 'Submit', 'জমা দিন', 'Enviar', 'عرض', 'Soumettre', '提交'),
(69, 'close', 'Close', 'ঘনিষ্ঠ', 'Cerrar', 'قريب', 'Fermer', '关闭'),
(70, 'already_signed Up?_click', 'Already Signed Up? Click', 'ইতিমধ্যে সাইন আপ? </font><font>দেখার জন্য ক্লিক করুন', 'Ya está inscrito? </font><font>Haga clic en', 'توقيع بالفعل؟ </font><font>انقر', 'Déjà inscrit? </font><font>Cliquez', '已注册？</font><font>点击'),
(71, 'to_login_your_account', 'To Login Your Account', 'আপনার একাউন্টে লগইন করার জন্য', 'Para Entrar Tu Cuenta', 'لتسجيل الدخول إلى حسابك', 'Pour Connexion Votre compte', '要登录您的账户'),
(72, 'confirm_password', 'Confirm Password', 'পাসওয়ার্ড নিশ্চিত করুন', 'Confirmar Contraseña', 'تأكيد كلمة السر', 'Confirmez Le Mot De Passe', '确认密码'),
(73, 'your_first_name', 'Your First Name', 'তোমার নামের প্রথম অংশ', 'Su Nombre', 'الاسم الأول', 'Ton Prénom', '你的名字'),
(74, 'your_last_name', 'Your Last Name', 'তোমার শেষ নাম', 'Tu Apellido', 'اسمك الاخير', 'Votre Nom De Famille', '你的姓氏'),
(75, 'address_line_1', 'Address Line 1', 'ঠিকানা লেখার জায়গা 1', 'Dirección Línea 1', 'العنوان سطر 1', 'Adresse 1', '地址第一行'),
(76, 'address_line_2', 'Address Line 2', 'ঠিকানা লাইন ২', 'Dirección Línea 2', 'سطر العنوان 2', 'Adresse Ligne 2', '地址行2'),
(77, 'city', 'City', 'শহর', 'Ciudad', 'مدينة', 'Ville', '城市'),
(78, 'ZIP', 'ZIP', 'জিপ', 'Postal', 'ZIP', 'Postal', 'ZIP'),
(79, 'password_mismatched', 'Password Mismatched', 'পাসওয়ার্ড মিলছে না', 'Contraseña Mismatched', 'كلمة المرور غير متطابقة', 'Mot de passe Mismatched', '密码不匹配'),
(80, 'products', 'Products', 'পণ্য', 'Productos', 'المنتجات', 'Produits', '制品'),
(81, 'filter_by', 'Filter By', 'দ্বারা ফিল্টার', 'Filtrado Por', 'تصفية حسب', 'Filtrer Par', '过滤方式'),
(82, 'category', 'Category', 'শ্রেণী', 'Categoría', 'فئة', 'Catégorie', '类别'),
(83, 'price', 'Price', 'মূল্য', 'Precio', 'السعر', 'Prix', '价格'),
(84, 'results', 'Results', 'ফলাফল', 'Resultados', 'النتائج', 'Résultats', '结果'),
(85, 'sign_in_to_your_account', 'Sign In To Your Account', 'আপনার অ্যাকাউন্টে সাইন ইন করুন', 'Iniciar Sesión En Su Cuenta', 'تسجيل الدخول إلى حسابك', 'Connectez-vous à votre compte', '登录到您的帐户'),
(86, 'forget_password', 'Forget Password', 'পাসওয়ার্ড ভুলে', 'Contraseña Olvidada', 'نسيت كلمة المرور', 'Mot De Passe Oublié', '忘记密码'),
(87, 'email_sent_with_new_password!', 'Email Sent With New Password!', 'এটি ইমেল নতুন পাসওয়ার্ড দিয়ে পাঠানো হয়েছে!', 'Correo electrónico enviado con la nueva contraseña!', 'البريد الإلكتروني المرسلة وكلمة المرور الجديدة!', 'Email envoyé avec nouveau mot de passe!', '电子邮件发送的新密码！'),
(88, 'cancelled', 'Cancelled', 'বাতিল হয়েছে', 'Cancelado', 'إلغاء', 'Annulé', '取消'),
(89, 'this_field_is_required', 'This Field Is Required', 'ঘরটি অবশ্যই পূরণ করতে হবে', 'Este Campo Es Requerido', 'هذه الخانة مطلوبه', 'Ce Champ Est Obligatoire', '这是必填栏'),
(90, 'signing_in...', 'Signing In...', 'সাইন ইন ...', 'Firmar En ...', 'تسجيل الدخول ...', 'Connectez-Vous ...', '登录...'),
(91, 'new_password_sent_to_your_email', 'New Password Sent To Your Email', 'আপনার ইমেল প্রেরণ নতুন পাসওয়ার্ড', 'Nueva contraseña enviada a su correo electrónico', 'كلمة السر الجديدة المرسلة إلى البريد الإلكتروني الخاص بك', 'Nouveau mot de passe envoyé à votre e-mail', '发送到您的邮箱新密码'),
(92, 'login_failed!', 'Login Failed!', 'লগইন ব্যর্থ!', 'Error De Inicio De Sesion!', 'فشل تسجيل الدخول!', 'Échec De La Connexion!', '登录失败！'),
(93, 'wrong_e-mail_address!_try_again', 'Wrong E-mail Address! Try Again', 'ভুল ইমেইল ঠিকানা! </font><font>আবার চেষ্টা করুন', 'Mail E-mail! </font><font>Inténtalo De Nuevo', 'الخطأ عنوان البريد الإلكتروني! </font><font>حاول مرة أخرى', 'Mauvaise adresse e-mail! </font><font>Essaye Encore', '错误的电子邮件地址！</font><font>再试一次'),
(94, 'login_successful!', 'Login Successful!', 'সফল লগইন!', 'Inicio de sesión correcto!', 'دخول ناجح!', 'Connexion Réussie!', '登录成功！'),
(95, 'SUCCESS!', 'SUCCESS!', 'সাফল্য!', 'ÉXITO!', 'النجاح!', 'SUCCÈS!', '成功了！'),
(96, 'reset_password', 'Reset Password', 'পাসওয়ার্ড রিসেট করুন', 'Restablecer La Contraseña', 'إعادة تعيين كلمة المرور', 'Réinitialiser Le Mot De Passe', '重设密码'),
(97, 'visit_home_page', 'Visit Home Page', 'হোম পেজ দেখুন', 'Visita la página de Inicio', 'زيارة الصفحة الرئيسية', 'Visitez la page d''accueil', '访问主页'),
(98, 'profile', 'Profile', 'প্রোফাইল', 'Perfil', 'الملف الشخصي', 'Profil', '轮廓'),
(99, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড', 'Tablero', 'لوحة القيادة', 'Tableau de bord', '仪表盘'),
(100, '24_hours_stock', '24 Hours Stock', '24 ঘন্টা স্টক', '24 Horas de la', '24 ساعة المالية', '24 Heures Stock', '24小时股票'),
(101, '24_hours_sale', '24 Hours Sale', '24 ঘন্টা বিক্রয়', '24 Horas Venta', '24 ساعة بيع', '24 Heures Vente', '24小时销售'),
(102, '24_hours_destroy', '24 Hours Destroy', '24 ঘন্টা ধ্বংস', '24 Horas Destroy', '24 ساعة تدمير', '24 Heures Destroy', '24小时销毁'),
(103, 'pending_order_map', 'Pending Order Map', 'পেন্ডিং অর্ডারের ম্যাপ', 'Orden Pendiente Mapa', 'في انتظار ترتيب خريطة', 'Commande de cartes en attente', '挂单地图'),
(104, 'present_customer_live_on_your_store', 'Present Customer Live On Your Store', 'আপনার দোকান উপস্থিত গ্রাহক লাইভ', 'Presente en Vivo al cliente en su tienda', 'الحالي العملاء يعيشون على مخزن لديك', 'Présent en direct à la clientèle sur votre boutique', '目前客户住在你的店'),
(105, 'category_wise_monthly_stock', 'Category Wise Monthly Stock', 'বিভাগের বিজ্ঞ মাসিক স্টক', 'Categoría Wise Mensual Stock', 'فئة الحكيم المالية الشهرية', 'Catégorie Wise mensuel Stock', '明智类股票月刊'),
(106, 'category_wise_monthly_sale', 'Category Wise Monthly Sale', 'বিভাগের বিজ্ঞ মাসিক বিক্রয়', 'Categoría Wise Mensual Venta', 'الفئة بيع الحكيم شهري', 'Catégorie Wise vente mensuel', '分类明智每月销售'),
(107, 'category_wise_monthly_destroy', 'Category Wise Monthly Destroy', 'বিভাগের বিজ্ঞ মাসিক ধ্বংস', 'Categoría Wise Mensual Destroy', 'تدمير فئة الحكيم شهري', 'Détruisez Catégorie Wise mensuel', '分类明智每月销毁'),
(108, 'category_wise_monthly_grand_profit', 'Category Wise Monthly Grand Profit', 'বিভাগের বিজ্ঞ মাসিক গ্র্যান্ড লাভ', 'Categoría Wise Mensual Gran Beneficio', 'فئة الحكيم الشهرية الكبرى الربح', 'Catégorie Wise mensuel de Grand Profit', '分类明智每月利润大'),
(109, 'cost', 'Cost', 'মূল্য', 'Costo', 'كلفة', 'Coût', '费用'),
(110, 'value', 'Value', 'মান', 'Valor', 'قيمة', 'Valeur', '值'),
(111, 'loss', 'Loss', 'ক্ষতি', 'Pérdida', 'خسارة', 'Perte', '失利'),
(112, 'profit', 'Profit', 'লাভ', 'Beneficio', 'ربح', 'Bénéfice', '利润'),
(113, 'sub-category', 'Sub-category', 'উপ-বিভাগ', 'Sub-categoría', 'الفئة الفرعية', 'Sous-catégorie', '分类别'),
(114, 'brands', 'Brands', 'ব্লগ', 'Marcas', 'العلامات التجارية', 'Marques', '品牌'),
(115, 'product_stock', 'Product Stock', 'পণ্য স্টক', 'Stock del producto', 'الأسهم المنتج', 'Stock de produits', '产品库存'),
(116, 'sale', 'Sale', 'বিক্রয়', 'Venta', 'بيع', 'Vente', '卖'),
(117, 'reports', 'Reports', 'প্রতিবেদন', 'Informes', 'تقارير', 'Rapports', '报告'),
(118, 'product_compare', 'Product Compare', 'পণ্য তুলনা', 'Producto Comparar', 'المنتج قارن', 'Produit Comparer', '产品比较'),
(119, 'product_wishes', 'Product Wishes', 'পণ্য শুভেচ্ছা', 'Los deseos del producto', 'التمنيات المنتج', 'Voeux du produit', '产品愿望'),
(120, 'customers', 'Customers', 'গ্রাহকরা', 'Clientes', 'الزبائن', 'Clientèle', '客户'),
(121, 'create_new_page', 'Create New Page', 'নতুন পৃষ্ঠা তৈরি করুন', 'Crear nueva página', 'إنشاء صفحة جديدة', 'Créer une page', '创建新页面'),
(122, 'create_slider', 'Create Slider', 'স্লাইডার তৈরি করুন', 'Crear deslizante', 'إنشاء المتزلج', 'Créer Curseur', '创建滑块'),
(123, 'front_settings', 'Front Settings', 'ফ্রন্ট সেটিংস', 'Ajustes delanteros', 'إعدادات الأمامية', 'Réglages avant', '前方设置'),
(124, 'banner_settings', 'Banner Settings', 'ব্যানার সেটিংস', 'Ajustes Banner', 'إعدادات راية', 'Paramètres de Bannière', '横幅设置'),
(125, 'site_settings', 'Site Settings', 'সাইট সেটিংস', 'Configuración del sitio', 'إعدادات الموقع', 'Paramètres du site', '网站设置'),
(126, 'staffs', 'Staffs', 'কর্মীরা', 'Estados Mayores', 'الموظفين', 'Staffs', '工作人员'),
(127, 'all_staffs', 'All Staffs', 'সমস্ত লাঠি', 'Todos los Estados Mayores', 'كل الأركان', 'Tous les états-majors', '所有员工'),
(128, 'staff_permissions', 'Staff Permissions', 'স্টাফ অনুমতি', 'Permisos de los funcionarios', 'ضوابط الموظفين', 'Permission de personnel', '工作人员权限'),
(129, 'messaging', 'Messaging', 'মেসেজিং', 'Mensajería', 'الرسائل', 'Messagerie', '消息'),
(130, 'newsletters', 'Newsletters', 'নিউজ লেটার', 'Boletines', 'النشرات الإخبارية', 'Bulletins', '简讯'),
(131, 'contact_messages', 'Contact Messages', 'যোগাযোগ বার্তা', 'Contacto Mensajes', 'رسائل الاتصال', 'Contacts Messages', '联系信息'),
(132, 'language', 'Language', 'ভাষা', 'Idioma', 'لغة', 'Langue', '语言'),
(133, 'business_settings', 'Business Settings', 'ব্যবসায়ের সেটিংসের', 'Configuración de negocio', 'إعدادات التجارية', 'Réglages d''affaires', '商业环境'),
(134, 'manage_admin_profile', 'Manage Admin Profile', 'অ্যাডমিন প্রোফাইল গালাগাল প্রতিবেদন করো', 'Administrar perfil de administrador', 'إدارة الملف الشخصي ل admin', 'Gérer un profil administrateur', '管理管理员配置'),
(135, 'SEO_proggres', 'SEO Proggres', 'এসইও Proggres', 'SEO Proggres', 'SEO Proggres', 'SEO Proggres', 'SEO Proggres'),
(136, 'online_tutorial', 'Online Tutorial', 'অনলাইন টিউটোরিয়াল', 'Tutorial en línea', 'دروس عبر الإنترنت', 'Didacticiel en ligne', '在线教程'),
(137, 'checkout', 'Checkout', 'হোটেল হইতে বিদায়সময়', 'Revisa', 'الدفع', 'Check-Out', '查看'),
(138, 'deleted_successfully', 'Deleted Successfully', 'সফলভাবে মোছা হয়েছে', 'Eliminado correctamente', 'حذف بنجاح', 'Supprimé avec succès', '成功删除'),
(139, 'cancel', 'Cancel', 'বাতিল', 'Cancelar', 'إلغاء', 'Annuler', '取消'),
(140, 'required', 'Required', 'প্রয়োজনীয়', 'Necesario', 'مطلوب', 'Requis', '需要'),
(141, 'must_be_a_number', 'Must Be A Number', 'একটি সংখ্যা হতে হবে', 'Debe Ser Un Número', 'يجب أن يكون هناك عدد', 'Doit être un nombre', '必须是数字'),
(142, 'must_be_a_valid_email_address', 'Must Be A Valid Email Address', 'একটি বৈধ ইমেইল ঠিকানা আবশ্যক', 'Debe ser una dirección de correo electrónico válida', 'يجب أن يكون عنوان بريد إلكتروني صالح', 'Doit être une adresse e-mail valide', '必须是一个有效的E-Mail地址'),
(143, 'save', 'Save', 'সংরক্ষণ', 'Guardar', 'حفظ', 'Sauvegarder', '保存'),
(144, 'product_published!', 'Product Published!', 'পণ্য প্রকাশিত!', 'Producto Publicado!', 'المنتج النشر!', 'Publié produit!', '产品发布！'),
(145, 'product_unpublished!', 'Product Unpublished!', 'পণ্য অপ্রকাশিত!', 'Producto Inédito!', 'المنتج غير منشورة!', 'Produit inédit!', '产品未公布！'),
(146, 'product_featured!', 'Product Featured!', 'পণ্য দেখানো হয়েছে!', 'Producto Destacado!', 'منتج مميز!', 'Produit vedette!', '产品特色！'),
(147, 'product_unfeatured!', 'Product Unfeatured!', 'পণ্য Unfeatured!', 'Sin rasgos producto!', 'Unfeatured المنتج!', 'Unfeatured produit!', '产品Unfeatured！'),
(148, 'slider_published!', 'Slider Published!', 'স্লাইডার প্রকাশিত!', 'Deslizador Publicado!', 'المنزلق نشر!', 'Publié curseur!', '滑块发布！'),
(149, 'slider_unpublished!', 'Slider Unpublished!', 'স্লাইডার অপ্রকাশিত!', 'Deslizador Inédito!', 'التمرير غير منشورة!', 'Curseur inédit!', '滑块未公布！'),
(150, 'page_published!', 'Page Published!', 'পৃষ্ঠা প্রকাশিত!', 'Página Publicado!', 'الصفحة نشر!', 'Publié page!', '网页发布！'),
(151, 'page_unpublished!', 'Page Unpublished!', 'পাতা অপ্রকাশিত!', 'Página Inédito!', 'الصفحة غير منشورة!', 'Page inédite!', '页面未公布！'),
(152, 'notification_sound_enabled!', 'Notification Sound Enabled!', 'বিজ্ঞপ্তি সাউন্ড সক্ষম!', 'Notificación de sonido activado!', 'الإخطار الصوت المتعددة!', 'Notification sonore activé!', '通知启用声音！'),
(153, 'notification_sound_disabled!', 'Notification Sound Disabled!', 'বিজ্ঞপ্তি সাউন্ড নিষ্ক্রিয়!', 'Notificación de sonido discapacitados!', 'الإخطار الصوت معطل!', 'Notification sonore handicapés!', '通知声音残疾人！'),
(154, 'google_login_enabled!', 'Google Login Enabled!', 'গুগল লগ-ইন সক্রিয়!', 'Google Login Habilitado!', 'جوجل الدخول ممكن!', 'Google Connexion activé!', '谷歌登录启用！'),
(155, 'google_login_disabled!', 'Google Login Disabled!', 'গুগল লগইন অক্ষম!', 'Google Acceso de minusválidos!', 'جوجل تسجيل الدخول معطل!', 'Google Login Disabled!', '谷歌禁用登录！'),
(156, 'facebook_login_enabled!', 'Facebook Login Enabled!', 'ফেসবুক লগ-ইন সক্রিয়!', 'Facebook Login Habilitado!', 'الفيسبوك تسجيل الدخول ممكن!', 'Facebook Connexion activé!', 'Facebook的登录启用！'),
(157, 'facebook_login_disabled!', 'Facebook Login Disabled!', 'ফেসবুক লগইন অক্ষম!', 'Facebook Login discapacitados!', 'الفيسبوك تسجيل الدخول معطل!', 'Facebook Login Disabled!', 'Facebook的登录禁用！'),
(158, 'paypal_payment_disabled!', 'Paypal Payment Disabled!', 'পেপ্যাল ​​পেমেন্ট অক্ষম!', 'El pago de PayPal habilitado!', 'باي بال الدفع معطل!', 'Paiement Paypal désactivé!', '支付宝付款禁用！'),
(159, 'paypal_payment_enabled!', 'Paypal Payment Enabled!', 'পেপ্যাল ​​পেমেন্ট সক্ষম!', 'El pago de PayPal Habilitado!', 'باي بال الدفع المتعددة!', 'Paiement Paypal activé!', 'Paypal支付启用！'),
(160, 'manage_categories', 'Manage Categories', 'বিভাগ গালাগাল', 'Gestionar Categorías', 'إدارة الفئات', 'Gérer Les Catégories', '管理类别'),
(161, 'add_category', 'Add Category', 'বিভাগ যোগ করুন', 'Guardar Categoría', 'إضافة فئة', 'Ajouter Catégorie', '添加类别'),
(162, 'successfully_added!', 'Successfully Added!', 'সফলভাবে যোগ করা হয়েছে!', 'Con éxito Añadido!', 'واضاف بنجاح!', 'Ajouté avec succès!', '添加成功！'),
(163, 'create_category', 'Create Category', 'বিভাগ তৈরি করুন', 'Crear categoría', 'إنشاء الفئة', 'Créer une catégorie', '创建类别'),
(164, 'no', 'No', 'না', 'No', 'لا', 'Non', '没有'),
(165, 'name', 'Name', 'নাম', 'Nombre', 'اسم', 'Nom', '名字'),
(166, 'options', 'Options', 'বিকল্প', 'Opciones', 'خيارات', 'Options', '选项'),
(167, 'manage_sub_categories', 'Manage Sub Categories', 'উপ বিভাগ গালাগাল', 'Administrar Sub Categorías', 'إدارة الفئات الفرعية', 'Gérer Sous-catégories', '管理子分类'),
(168, 'add_sub-category', 'Add Sub-category', 'উপ-বিভাগ যোগ করুন', 'Añadir Sub-categoría', 'إضافة فئة الفرعية', 'Ajouter Sous-catégorie', '添加子类别'),
(169, 'create_sub_category', 'Create Sub Category', 'উপ বিভাগ তৈরি করুন', 'Crear Subcategoría', 'إنشاء التصنيف الفرعي', 'Créez Sous catégorie', '创建子类别'),
(170, 'sub_category', 'Sub Category', 'সাব বিভাগ', 'Sub Categoría', 'التصنيف الفرعي', 'Sous catégorie', '子类别'),
(171, 'manage_brands', 'Manage Brands', 'ব্র্যান্ড পরিচালনা', 'Administrar las marcas', 'إدارة العلامات التجارية', 'Gérer Marques', '管理品牌'),
(172, 'add_brand', 'Add Brand', 'ব্র্যান্ড যোগ', 'Añadir Marca', 'إضافة العلامة التجارية', 'Ajouter Marque', '添加品牌'),
(173, 'create_brand', 'Create Brand', 'ব্র্যান্ড তৈরি করুন', 'Crear Marca', 'إنشاء العلامة التجارية', 'Créer Marque', '创建品牌'),
(174, 'logo', 'Logo', 'লোগো', 'Logo', 'الشعار', 'Logo', '徽标'),
(175, 'brand', 'Brand', 'ব্র্যান্ড', 'Marca', 'علامة تجارية', 'Marque', '牌'),
(176, 'manage_product', 'Manage Product', 'পণ্য গালাগাল প্রতিবেদন করো', 'Manejo de Producto', 'إدارة المنتج', 'Gérer produit', '管理产品'),
(177, 'add_product', 'Add Product', 'পণ্য যোগ করুন', 'Añadir Producto', 'إضافة منتج', 'Ajouter un produit', '添加产品'),
(178, 'create_product', 'Create Product', 'পণ্য তৈরি করুন', 'Crear Producto', 'إنشاء المنتج', 'Créez produit', '创建产品'),
(179, 'back_to_product_list', 'Back To Product List', 'পিছনে পণ্য তালিকায়', 'Volver al listado de productos', 'الرجوع إلى قائمة المنتجات', 'Retour à la liste de produit', '返回产品列表'),
(180, 'image', 'Image', 'ভাবমূর্তি', 'Imagen', 'صورة', 'Image', '图像'),
(181, 'title', 'Title', 'খেতাব', 'Título', 'عنوان', 'Titre', '称号'),
(182, 'current_quantity', 'Current Quantity', 'বর্তমান পরিমাণ', 'Cantidad actual', 'الكمية الحالية', 'Quantité actuelle', '电流量'),
(183, 'publish', 'Publish', 'প্রকাশ করা', 'Publicar', 'نشر', 'Publier', '发布'),
(184, 'product', 'Product', 'পণ্য', 'Producto', 'المنتج', 'Produit', '产品'),
(185, 'quantity', 'Quantity', 'পরিমাণ', 'Cantidad', 'كمية', 'Quantité', '数量'),
(186, 'sale Price', 'Sale Price', 'বিক্রয় মূল্য', 'Precio De Venta', 'سعر البيع', 'Prix ​​De Vente', '销售价格'),
(187, 'creation Date', 'Creation Date', 'তৈরির তারিখ', 'Fecha De Creacion', 'تاريخ الإنشاء', 'Date De Création', '创建日期'),
(188, 'manage_banner', 'Manage Banner', 'ব্যানার গালাগাল প্রতিবেদন করো', 'Administrar Banner', 'إدارة راية', 'Gérer Bannière', '管理横幅'),
(189, 'homepage', 'Homepage', 'হোম পেজ', 'Página principal', 'الصفحة الرئيسية', 'Page d''accueil', '主页'),
(190, 'category_page', 'Category Page', 'বিভাগ পাতায় লেখা', 'Categoría Página', 'الفئة الصفحة', 'Catégorie page', '分类页'),
(191, 'featured_page', 'Featured Page', 'আলোচিত পাতা', 'Página Destacado', 'صفحة مميزة', 'Vedette page', '推荐页面'),
(192, 'after_slider', 'After Slider', 'স্লাইডার পর', 'Después deslizante', 'بعد المتزلج', 'Après Curseur', '后滑块'),
(193, 'select_banner_image', 'Select Banner Image', 'ব্যানার চিত্র নির্বাচন করুন', 'Seleccionar Imagen del Anuncio', 'حدد راية صورة', 'Sélectionnez Banner Image', '选择横幅图片'),
(194, 'link', 'Link', 'লিংক', 'Enlace', 'صلة', 'Lien', '链接'),
(195, 'updating..', 'Updating..', 'আপডেট ..', 'Actualizando ..', 'تحديث ..', 'Mise à jour ..', '更新..'),
(196, 'settings_updated!', 'Settings Updated!', 'সেটিংস আপডেট!', 'Ajustes Actualizado!', 'الإعدادات المحدثة!', 'Paramètres Mise à jour!', '设置更新！'),
(197, 'update', 'Update', 'আপডেট', 'Actualización', 'التحديث', 'Mise À Jour', '更新'),
(198, 'after_featured', 'After Featured', 'পরে বৈশিষ্ট্যযুক্ত', 'Después destacados', 'بعد مميزة', 'Après vedette', '精选后'),
(199, 'after_search', 'After Search', 'অনুসন্ধান পর', 'Después de Búsqueda', 'بعد البحث', 'Après Recherche', '经过搜索'),
(200, 'after_category', 'After Category', 'বিভাগ পরে', 'Después Categoría', 'بعد الفئة', 'Après Catégorie', '分类后，'),
(201, 'after_latest', 'After Latest', 'সর্বশেষ পর', 'Después reciente', 'بعد آخر', 'Après Dernières', '经过最新'),
(202, 'after_popular', 'After Popular', 'জনপ্রিয় পর', 'Después populares', 'بعد الشعبية', 'Après populaire', '之后人气'),
(203, 'after_most_viewed', 'After Most Viewed', 'সাম্প্রতিক পর', 'After Most Viewed', 'بعد الأكثر مشاهدة', 'Après plus consultés', '最受欢迎之后'),
(204, 'after_filters', 'After Filters', 'ফিল্টার পর', 'Después de Filtros', 'بعد الفلاتر', 'Après Filtres', '经过过滤器'),
(205, 'after_most_sold', 'After Most Sold', 'সবথেকে বেশি বিক্রিত পর', 'Después de más vendidos', 'بعد الأكثر مبيعا', 'Après les plus vendus', '最畅销的后'),
(206, 'banner_published!', 'Banner Published!', 'ব্যানার প্রকাশিত!', 'Banner Publicado!', 'راية نشر!', 'Bannière Publié!', '横幅发布！'),
(207, 'banner_unpublished!', 'Banner Unpublished!', 'ব্যানার অপ্রকাশিত!', 'Banner Inédito!', 'راية غير منشورة!', 'Bannière inédit!', '未公布的旗帜！'),
(208, 'manage_site', 'Manage Site', 'সাইট পরিচালনা', 'Administrar sitio', 'إدارة الموقع', 'Gérer le site', '管理网站'),
(209, 'general_settings', 'General Settings', 'সাধারণ সেটিংস', 'Configuración General', 'الإعدادات العامة', 'Réglages Généraux', '常规设置'),
(210, 'favicon', 'Favicon', 'ফেভিকন', 'Favicon', 'فافيكون', 'Favicon', '网站图标'),
(211, 'social_media', 'Social Media', 'সামাজিক মাধ্যম', 'Medio Social', 'وسائل التواصل الاجتماعي', 'Médias Sociaux', '社交媒体'),
(212, 'social_login_configuaration', 'Social Login Configuaration', 'সামাজিক প্রবেশ করুন Configuaration', 'Social Acceso de configuaration', 'تسجيل الدخول الاجتماعي Configuaration', 'Social Connexion configuaration', '社会登录Configuaration'),
(213, 'product_comment_settings', 'Product Comment Settings', 'পণ্য মন্তব্য সেটিংস', 'Configuración de producto Comentario', 'إعدادات المنتج تعليق', 'Produit Commentez Paramètres', '商品评论设置'),
(214, 'SEO', 'SEO', 'এসইও', 'SEO', 'SEO', 'SEO', '搜索引擎优化'),
(215, 'captcha_settings', 'Captcha Settings', 'ক্যাপচা সেটিংস', 'Ajustes Captcha', 'إعدادات CAPTCHA', 'Paramètres Captcha', '验证码设置'),
(216, 'home_page', 'Home Page', 'হোম পেজ', 'Home Page', 'الصفحة الرئيسية', 'Page d''accueil', '主页'),
(217, 'contact_page', 'Contact Page', 'যোগাযোগের পৃষ্ঠায়', 'Página de contacto', 'صفحة الاتصال', 'Page de contact', '联系方式页面'),
(218, 'footer', 'Footer', 'পাদলেখ', 'Pie de página', 'تذييل', 'Pied de page', '页脚'),
(219, 'system_name', 'System Name', 'সিস্টেম নাম', 'Nombre del sistema', 'اسم النظام', 'Name System', '系统名称'),
(220, 'system_email', 'System Email', 'সিস্টেম ইমেল', 'Sistema de Correo', 'نظام البريد الإلكتروني', 'Système Email', '电子邮件系统'),
(221, 'system_title', 'System Title', 'সিস্টেম শিরোনাম', 'Sistema Título', 'نظام العنوان', 'Système Titre', '系统标题'),
(222, 'admin_notification_sound', 'Admin Notification Sound', 'অ্যাডমিন বিজ্ঞপ্তি সাউন্ড', 'Sonido de notificación de administración', 'مشرف صوت الإعلام', 'Administrateur notification sonore', '管理员通知声音'),
(223, 'admin_notification_volume', 'Admin Notification Volume', 'অ্যাডমিন বিজ্ঞপ্তি ভলিউম', 'Volumen de Notificación de administración', 'مشرف إعلام حجم', 'Administrateur volume de la notification', '管理员通知音量'),
(224, 'Volume_:_', 'Volume : ', 'ভলিউম: ', 'Volumen: ', 'الصوت: ', 'Volume: ', '体积： '),
(225, 'homepage_notification_sound', 'Homepage Notification Sound', 'হোম পেজ বিজ্ঞপ্তি সাউন্ড', 'Notificación de sonido Página de inicio', 'الصفحة الرئيسية صوت الإعلام', 'Page d''accueil de notification sonore', '首页通知声音'),
(226, 'homepage_notification_volume', 'Homepage Notification Volume', 'হোম পেজ বিজ্ঞপ্তি ভলিউম', 'Volumen Notificación Homepage', 'الصفحة الرئيسية إعلام حجم', 'Page d''accueil Volume de notification', '首页通知音量'),
(227, 'saving', 'Saving', 'রক্ষা', 'Ahorro', 'إنقاذ', 'Économie', '节约'),
(228, 'home_category', 'Home Category', 'হোম বিভাগ', 'Inicio Categoría', 'home الفئة', 'Accueil Catégorie', '首页分类'),
(229, 'home_brands', 'Home Brands', 'হোম ব্র্যান্ড', 'Inicio Marcas', 'الرئيسية ماركات', 'Accueil Marques', '家居品牌'),
(230, 'manage_category_page', 'Manage Category Page', 'বিষয়শ্রেণী পাতা গালাগাল প্রতিবেদন করো', 'Administrar Categoría Página', 'إدارة الفئة الصفحة', 'Gérer Catégorie page', '管理分类页'),
(231, 'side_bar_position', 'Side Bar Position', 'সাইড বার অবস্থান', 'Barra lateral Posición', 'الجانب بار الوظيفة', 'Side Bar Position', '边栏位置'),
(232, 'upload_logo', 'Upload Logo', 'আপলোড লোগো', 'Subir Logo', 'تحميل الشعار', 'Upload Logo', '上传徽标'),
(233, 'drop_logos_to_upload', 'Drop Logos To Upload', 'আপলোড লোগো ছাড়ুন', 'Caída Logos Para Sube', 'إسقاط شعارات لتحميل', 'Déposez Logos Pour télécharger', '降标志上传'),
(234, 'or_click_to_pick_manually', 'Or Click To Pick Manually', 'অথবা ম্যানুয়ালি চয়ন করার জন্য ক্লিক করুন', 'O Haga clic para seleccionar manualmente', 'أو انقر لاختيار يدويا', 'Ou Cliquez sur pour choisir manuellement', '或点击手动选择'),
(235, 'all_logos', 'All Logos', 'সমস্ত প্রতীক', 'Todos los logos', 'كل الشعارات', 'Tous les Logos', '所有徽标'),
(236, 'select_logo', 'Select Logo', 'নির্বাচন লোগো', 'Seleccione Logo', 'حدد الشعار', 'Sélectionnez Logo', '选择标识'),
(237, 'place', 'Place', 'জায়গা', 'Lugar', 'مكان', 'Endroit', '地方'),
(238, 'admin_logo', 'Admin Logo', 'অ্যাডমিন লোগো', 'Logo de administración', 'المشرف الشعار', 'Administrateur Logo', '管理员标识'),
(239, 'successfully_selected!', 'Successfully Selected!', 'সফলভাবে নির্বাচিত!', 'Con éxito seleccionada!', 'مختارة بنجاح!', 'Sélectionné avec succès!', '成功入选！'),
(240, 'change', 'Change', 'পরিবর্তন', 'Cambio', 'تغيير', 'Changement', '变化'),
(241, 'homepage_header_logo', 'Homepage Header Logo', 'হোম পেজ শিরোলেখ লোগো', 'Página de inicio Logo Cabecera', 'الصفحة الرئيسية رأس الشعار', 'Accueil Logo Header', '首页页眉徽标'),
(242, 'homepage_footer_logo', 'Homepage Footer Logo', 'হোম পেজ পাদলেখ লোগো', 'Página de inicio Pie de página Logo', 'الصفحة الرئيسية تذييل شعار', 'Accueil Footer Logo', '网页页脚徽标'),
(243, 'select_favicon', 'Select Favicon', 'নির্বাচন ফেভিকন', 'Seleccione Favicon', 'حدد فافيكون', 'Sélectionnez Favicon', '选择网站图标'),
(244, 'social_links', 'Social Links', 'সামাজিক লিংক', 'Enlaces Sociales', 'الروابط الاجتماعية', 'Liens sociaux', '社会联系'),
(245, 'discus_settings', 'Discus Settings', 'চাকতি সেটিংস', 'Ajustes Discus', 'إعدادات رمي ​​القرص', 'Réglages Discus', '铁饼设置'),
(246, 'discus_ID', 'Discus ID', 'চাকতি আইডি', 'Discus ID', 'رمي القرص ID', 'Discus ID', '七彩ID'),
(247, 'facebook_login_settings', 'Facebook Login Settings', 'ফেসবুক লগইন সেটিংগুলি', 'Facebook Entrar Configuración', 'الفيسبوك تسجيل الدخول إعدادات', 'Facebook Paramètres de connexion', 'Facebook的登录设置'),
(248, 'status', 'Status', 'অবস্থা', 'Estado', 'حالة', 'Statut', '状态'),
(249, 'google+_login_settings', 'Google+ Login Settings', 'Google + লগইন সেটিংগুলি', 'Google+ Entrar Configuración', 'في Google+ الدخول إعدادات', 'Google+ Paramètres de connexion', 'Google+的登录设置'),
(250, 'public_key', 'Public Key', 'সর্বজনীন কী', 'Clave Pública', 'المفتاح العام', 'À clé publique', '公钥'),
(251, 'private_key', 'Private Key', 'ব্যক্তিগত কী', 'Clave Privada', 'مفتاح خاص', 'Clé privée', '私钥'),
(252, 'manage_search_engine_optimization', 'Manage Search Engine Optimization', 'সার্চ ইঞ্জিন অপ্টিমাইজেশান গালাগাল প্রতিবেদন করো', 'Administrar la optimización del Search Engine', 'إدارة محرك البحث الأمثل', 'Gérer Search Engine Optimization', '管理搜索引擎优化'),
(253, 'keywords', 'Keywords', 'মূলশব্দ', 'Palabras clave', 'الكلمات المفتاحية', 'Mots-clés', '关键词'),
(254, 'author', 'Author', 'লেখক', 'Autor', 'مؤلف', 'Auteur', '笔者'),
(255, 'description', 'Description', 'বিবরণ', 'Descripción', 'وصف', 'Description', '描述'),
(256, 'contact_address', 'Contact Address', 'যোগাযোগের ঠিকানা', 'Dirección De Contacto', 'عنوان الإتصال', 'Adresse De Contact', '联系地址'),
(257, 'contact_phone', 'Contact Phone', 'ফোনে যোগাযোগ', 'Teléfono De Contacto', 'الاتصال الهاتف', 'Numéro Du Contact', '联系电话'),
(258, 'contact_email', 'Contact Email', 'যোগাযোগের ই - মেইল', 'Email De Contacto', 'تواصل بالبريد الاكتروني', 'Email Du Contact', '联系人电子邮件'),
(259, 'contact_website', 'Contact Website', 'যোগাযোগ ওয়েবসাইট', 'Contacto Sitio web', 'الإتصال الموقع', 'Contact Site', '联系网站'),
(260, 'contact_about', 'Contact About', 'সম্পর্কে যোগাযোগ', 'Contacto Acerca', 'الاتصال عن', 'Contactez-propos', '联系关于'),
(261, 'footer_category', 'Footer Category', 'পাদলেখ বিভাগ', 'Pie de página Categoría', 'تذييل الفئة', 'Pied de page Catégorie', '页脚类别'),
(262, 'footer_text', 'Footer Text', 'পাদলেখ শিরোনাম', 'Texto De Pie De Página', 'تذييل النص', 'Pied de texte', '页脚文本'),
(263, 'really_want_to_delete_this_logo?', 'Really Want To Delete This Logo?', 'সত্যিই এই লোগো মুছে ফেলতে চান?', 'Realmente desea eliminar este logotipo?', 'حقا تريد حذف هذا الشعار؟', 'Vraiment de vouloir supprimer ce logo?', '真的要删除这个标志？'),
(264, 'manage_languages', 'Manage Languages', 'ভাষা পরিচালনা', 'Administrar Idiomas', 'إدارة اللغات', 'Gérer les langues', '管理语言'),
(265, 'add_language', 'Add Language', 'নতুন ভাষা যোগ করা', 'Agregar idioma', 'إضافة اللغة', 'Ajouter une langue', '添加语言'),
(266, 'add_new_word', 'Add New Word', 'নতুন শব্দ যোগ', 'Añadir nueva palabra', 'إضافة جديد وورد', 'Ajout d''un mot', '添加新词'),
(267, 'really_want_to_delete_this_language?', 'Really Want To Delete This Language?', 'সত্যিই এই ভাষা মুছে ফেলতে চান?', 'Realmente desea eliminar este idioma?', 'حقا تريد حذف هذه اللغة؟', 'Vraiment de vouloir supprimer cette langue?', '真的要删除这种语言？'),
(268, 'saving..', 'Saving..', 'সংরক্ষণ ..', 'Ahorrar ..', 'إنقاذ ..', 'Enregistrement ..', '节能..'),
(269, 'delete_language', 'Delete Language', 'ভাষা মুছে দিতে', 'Eliminar Idioma', 'حذف اللغة', 'Supprimer Langue', '删除语言'),
(270, 'select_language', 'Select Language', 'ভাষা নির্বাচন কর', 'Seleccione Idioma', 'اختار اللغة', 'Choisir La Langue', '选择语言'),
(271, 'word', 'Word', 'শব্দ', 'Palabra', 'كلمة', 'Mot', '字'),
(272, 'translation', 'Translation', 'অনুবাদ', 'Traducción', 'ترجمة', 'Traduction', '翻译'),
(273, 'updated!', 'Updated!', 'আপডেট করা হয়েছে!', 'Actualizado!', 'تحديث!', 'Mise à jour!', '更新！'),
(274, 'really_want_to_delete_this_word?', 'Really Want To Delete This Word?', 'সত্যিই এই শব্দ মুছে ফেলতে চান?', 'Realmente desea eliminar esta Palabra?', 'حقا تريد حذف هذه الكلمة؟', 'Vraiment de vouloir supprimer cette Parole?', '真的要删除这个字？'),
(275, 'delete', 'Delete', 'মুছে দিন', 'Borrar', 'حذف', 'Effacer', '删除'),
(276, 'translate', 'Translate', 'অনুবাদ করা', 'Traducir', 'ترجم', 'Traduire', '翻译'),
(277, 'save_all', 'Save All', 'সব সংরক্ষণ করুন', 'Salvar A Todos', 'احفظ الكل', 'Sauver Tous', '保存全部'),
(278, 'manage_profile', 'Manage Profile', 'প্রোফাইল গালাগাল প্রতিবেদন করো', 'Administrar perfil', 'إدارة الملف', 'Gérer le profil', '管理个人资料'),
(279, 'manage_details', 'Manage Details', 'বিস্তারিত গালাগাল প্রতিবেদন করো', 'Administrar Detalles', 'إدارة تفاصيل', 'Gérer Détails', '管理细则'),
(280, 'address', 'Address', 'ঠিকানা', 'Dirección', 'عنوان', 'Adresse', '地址'),
(281, 'profile_updated!', 'Profile Updated!', 'প্রোফাইল আপডেট!', 'Perfil Actualizado!', 'يتم تجديد!', 'Profil Mis À Jour!', '个人资料已更新！'),
(282, 'update_profile', 'Update Profile', 'হালনাগাদ প্রফাইল', 'Actualización Del Perfil', 'تحديث الملف', 'Mettre À Jour Le Profil', '更新个人资料'),
(283, 'change_password', 'Change Password', 'পাসওয়ার্ড পরিবর্তন করুন', 'Cambiar La Contraseña', 'تغيير كلمة المرور', 'Changer Le Mot De Passe', '更改密码'),
(284, 'current_password', 'Current Password', 'বর্তমান পাসওয়ার্ড', 'Contraseña Actual', 'كلمة السر الحالية', 'Mot De Passe Actuel', '当前密码'),
(285, 'new_password*', 'New Password*', 'নতুন পাসওয়ার্ড *', 'Nueva Contraseña *', 'كلمة سر جديدة *', 'Nouveau Mot De Passe *', '新密码*'),
(286, 'password_updated!', 'Password Updated!', 'পাসওয়ার্ড আপডেট করা হয়েছে!', 'Contraseña Actualizada!', 'كلمة التحديث!', 'Mot de passe Mise à jour!', '密码更新！'),
(287, 'update_password', 'Update Password', 'আপডেট পাসওয়ার্ড', 'Actualizar contraseña', 'تحديث كلمة المرور', 'Mise à jour le mot de passe', '更新密码'),
(288, 'incorrect_password!', 'Incorrect Password!', 'ভুল পাসওয়ার্ড৤!', 'Contraseña Incorrecta!', 'كلمة المرور غير صحيحة!', 'Mot De Passe Incorrect!', '密码不正确！'),
(289, 'manage_business_settings', 'Manage Business Settings', 'ব্যবসা সেটিংস পরিচালনা করুন', 'Administrar configuración de negocio', 'إدارة إعدادات الشركة', 'Gérer les paramètres commerciaux', '管理业务设置'),
(290, 'paypal_payment', 'Paypal Payment', 'পেপ্যাল ​​পেমেন্ট', 'Pago Paypal', 'باي بال الدفع', 'Paiement Paypal', '支付宝付款'),
(291, 'paypal_email', 'Paypal Email', 'PayPal এর ইমেইল', 'E-Mail De Paypal', 'باي بال البريد الإلكتروني', 'Paypal Email', '贝宝电子邮件'),
(292, 'paypal_account_type', 'Paypal Account Type', 'PayPal অ্যাকাউন্ট প্রকার', 'PayPal Tipo de cuenta', 'باي بال نوع الحساب', 'Type de compte Paypal', '贝宝账户类型'),
(293, 'currency_name', 'Currency Name', 'মুদ্রার নাম', 'Nombre moneda', 'اسم العملة', 'Nom de la devise', '货币名称'),
(294, 'currency_symbol', 'Currency Symbol', 'মুদ্রা প্রতীক', 'Símbolo de moneda', 'رمز العملة', 'Symbole monétaire', '货币符号'),
(295, 'shipping_cost_type', 'Shipping Cost Type', 'শিপিং খরচ প্রকার', 'Envios Tipo Costo', 'تكلفة الشحن نوع', 'Frais de port Type de coût', '运费类型'),
(296, 'product_wise', 'Product Wise', 'পণ্য প্রজ্ঞাময়', 'Sabio Producto', 'المنتج الحكيم', 'Wise Produit', '产品智者'),
(297, 'fixed', 'Fixed', 'স্থায়ী', 'Fijo', 'ثابت', 'Fixé', '固定'),
(298, 'shipping_cost_(If_fixed)', 'Shipping Cost (If Fixed)', 'শিপিং খরচ (সংশোধন করা হয়েছে যদি)', 'El coste de envío (Si Fijo)', 'تكلفة الشحن (إذا كان ثابت)', 'Coût de l''expédition (Si fixe)', '运费（如果固定）'),
(299, 'shipment_info', 'Shipment Info', 'চালান তথ্য', 'Envío Info', 'شحنة معلومات', 'Infos expédition', '出货信息'),
(300, 'FAQs', 'FAQs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী', 'Preguntas frecuentes', 'أسئلة وأجوبة', 'FAQs', '常见问题解答'),
(301, 'question', 'Question', 'প্রশ্ন', 'Pregunta', 'سؤال', 'Question', '题'),
(302, 'answer', 'Answer', 'উত্তর', 'Respuesta', 'إجابة', 'Répondre', '答案'),
(303, 'add_more_FAQs', 'Add More FAQs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী যোগ', 'Añadir Más preguntas frecuentes', 'إضافة المزيد من أسئلة وأجوبة', 'Ajouter Plus de FAQ', '添加更多常见问题解答'),
(304, 'send_newsletter', 'Send Newsletter', 'নিউজলেটার পাঠাতে', 'Enviar Newsletter', 'إرسال النشرة الإخبارية', 'Envoyer lettre', '发送新闻'),
(305, 'e-mails_(users)', 'E-mails (users)', 'ই-মেইল (ব্যবহারকারী)', 'Correos electrónicos (usuarios)', 'رسائل البريد الإلكتروني (المستخدمين)', 'E-mails (utilisateurs)', '电子邮件（用户）'),
(306, 'e-mails_(subscribers)', 'E-mails (subscribers)', 'ই-মেইল (সদস্য)', 'Correos electrónicos (usuarios registrados)', 'رسائل البريد الإلكتروني (مشترك)', 'E-mails (abonnés)', '电子邮件（用户）'),
(307, 'from_:_email_address', 'From : Email Address', 'থেকে: এটি ইমেল ঠিকানা', 'De: Dirección de correo electrónico', 'من: عنوان البريد الإلكتروني', 'De: Adresse électronique', '来自：电子邮件地址'),
(308, 'newsletter_subject', 'Newsletter Subject', 'নিউজলেটার বিষয়', 'Boletín Asunto', 'النشرة الموضوع', 'Lettre Sujet', '时事主题'),
(309, 'newsletter_content', 'Newsletter Content', 'নিউজলেটার বিষয়বস্তু', 'Boletín de contenido', 'النشرة المحتوى', 'Bulletin contenu', '通讯内容'),
(310, 'sending', 'Sending', 'পাঠানো', 'Enviando', 'إرسال', 'Envoi', '发出'),
(311, 'sent!', 'Sent!', 'পাঠানো হয়েছে!', 'Enviado!', 'أرسلت!', 'Envoyé!', '发送！'),
(312, 'send', 'Send', 'পাঠান', 'Enviar', 'إرسال', 'Envoyer', '发送'),
(313, 'subject', 'Subject', 'বিষয়', 'Tema', 'موضوع', 'Sujet', '学科'),
(314, 'date', 'Date', 'তারিখ', 'Fecha', 'تاريخ', 'Date', '日期'),
(315, 'message', 'Message', 'বার্তা', 'Mensaje', 'رسالة', 'Message', '信息'),
(316, 'date_time', 'Date Time', 'তারিখ সময়', 'Fecha Y Hora', 'التاريخ الوقت', 'Date Heure', '日期时间'),
(317, 'reply', 'Reply', 'উত্তর', 'Responder', 'رد', 'Répondre', '回复'),
(318, 'manage_staffs', 'Manage Staffs', 'কর্মীরা পরিচালনা', 'Administrar Estados Mayores', 'إدارة الأركان', 'Gérer Staffs', '管理职员'),
(319, 'add_staff', 'Add Staff', 'স্টাফ যোগ', 'Añadir Staff', 'إضافة للموظفين', 'Ajouter personnel', '增加员工'),
(320, 'create_admin', 'Create Admin', 'অ্যাডমিন তৈরি করুন', 'Crear administración', 'إنشاء الادارية', 'Créer Administrateur', '创建管理员'),
(321, 'role', 'Role', 'ভূমিকা', 'Papel', 'دور', 'Rôle', '角色'),
(322, 'edit_admin', 'Edit Admin', 'সম্পাদনা অ্যাডমিন', 'Editar administración', 'تحرير المشرف', 'Modifier Administrateur', '编辑管理'),
(323, 'successfully_edited!', 'Successfully Edited!', 'সফলভাবে সম্পাদিত হয়েছে!', 'Editado con éxito!', 'حرره بنجاح!', 'Edité avec succès!', '编辑成功！'),
(324, 'edit', 'Edit', 'সম্পাদন করা', 'Editar', 'تحرير', 'Éditer', '编辑'),
(325, 'sddress', 'Sddress', 'Sddress', 'Sddress', 'Sddress', 'Sddress', 'Sddress'),
(326, 'Manage_roles', 'Manage Roles', 'ভূমিকা গালাগাল প্রতিবেদন করো', 'Administrar funciones', 'إدارة الأدوار', 'Gérer les rôles', '管理角色'),
(327, 'add_role', 'Add Role', 'ভূমিকা যোগ', 'Añadir Rol', 'إضافة دور', 'Ajouter un rôle', '添加角色'),
(328, 'create_role', 'Create Role', 'ভূমিকা তৈরি করুন', 'Crear Rol', 'إنشاء دور', 'Créer un rôle', '创建角色'),
(329, 'back_to_role_list', 'Back To Role List', 'পিছনে ভূমিকা তালিকায়', 'Volver a la lista Rol', 'الرجوع إلى قائمة دور', 'Retour à la liste de Rôle', '返回角色列表'),
(330, 'edit_role', 'Edit Role', 'সম্পাদনা ভূমিকা', 'Editar Papel', 'تحرير الدور', 'Modifier Rôle', '编辑角色'),
(331, 'really_want_to_delete_this?', 'Really Want To Delete This?', 'সত্যিই এই মুছে ফেলতে চান?', 'Realmente desea eliminar este?', 'حقا تريد حذف هذا؟', 'Vraiment de vouloir supprimer ce?', '真的要删除吗？'),
(332, 'manage_slider', 'Manage Slider', 'স্লাইডার পরিচালনা', 'Administrar deslizante', 'إدارة المتزلج', 'Gérer Curseur', '管理滑块'),
(333, 'slider_list', 'Slider List', 'স্লাইডার তালিকা', 'Lista deslizante', 'قائمة المنزلق', 'Liste curseur', '滑块名单'),
(334, 'slider_serial', 'Slider Serial', 'স্লাইডার সিরিয়াল', 'Serial deslizante', 'المنزلق المسلسل', 'Curseur de série', '滑盖系列'),
(335, 'successfully_serialized!', 'Successfully Serialized!', 'সফলভাবে ধারাবাহিকভাবে!', 'Con éxito Serialized!', 'تسلسل بنجاح!', 'Sérialisé succès!', '成功连载！'),
(336, 'ID', 'ID', 'আইডি', 'Identificación', 'الهوية', 'ID', 'ID'),
(337, 'manage_page', 'Manage Page', 'পাতা গালাগাল প্রতিবেদন করো', 'Administrar Página', 'إدارة الصفحة', 'Gérer la page', '管理页面'),
(338, 'add_page', 'Add Page', 'পৃষ্ঠা যুক্ত করুন', 'Añadir Página', 'أضف الصفحة', 'Ajouter une page', '添加页面'),
(339, 'create_page', 'Create Page', 'পাতা তৈরি করুন', 'Crear Página', 'انشئ صفحة', 'Créer Une Page', '创建页'),
(340, 'back_to_page_list', 'Back To Page List', 'প্রথম পাতা তালিকায়', 'Volver a la lista Página', 'الرجوع إلى قائمة الصفحة', 'Retour à la liste de la page', '返回页面列表'),
(341, 'page_name', 'Page Name', 'পৃষ্ঠার নাম', 'Nombre De La Página', 'اسم الصفحة', 'Nom de la page', '页面名称'),
(342, 'page', 'Page', 'পৃষ্ঠা', 'Página', 'صفحة', 'Page', '页面'),
(343, 'sale_price', 'Sale Price', 'বিক্রয় মূল্য', 'Precio De Venta', 'سعر البيع', 'Prix ​​De Vente', '销售价格'),
(344, 'creation_date', 'Creation Date', 'তৈরির তারিখ', 'Fecha De Creacion', 'تاريخ الإنشاء', 'Date De Création', '创建日期'),
(345, 'page_title', 'Page Title', 'পাতা শিরোনাম', 'Título De La Página', 'عنوان الصفحة', 'Titre De La Page', '页面标题'),
(346, 'parmalink', 'Parmalink', 'Parmalink', 'Parmalink', 'Parmalink', 'Parmalink', 'Parmalink'),
(347, 'tags', 'Tags', 'ট্যাগ্স', 'Etiquetas', 'الكلمات', 'Mots clés', '标签'),
(348, 'number_of_page_parts', 'Number Of Page Parts', 'পাতা অংশ সংখ্যা', 'Número de las partes Page', 'عدد الأجزاء الصفحة', 'Nombre de pages Pièces', '页零件数量'),
(349, 'lets_start_to_create_your_page', 'Lets Start To Create Your Page', 'আপনার পৃষ্ঠা তৈরি করতে শুরু করি', 'Vamos a empezar a crear su página', 'يتيح البدء في إنشاء الصفحة الخاصة بك', 'Permet de commencer à créer votre page', '让我们开始创建你的页面'),
(350, 'parts', 'Parts', 'যন্ত্রাংশ', 'Partes', 'أجزاء', 'Parties', '零件'),
(351, 'reset', 'Reset', 'রিসেট', 'Reajustar', 'إعادة تعيين', 'Réinitialiser', '重置'),
(352, 'upload', 'Upload', 'আপলোড', 'Subir', 'تحميل', 'Télécharger', '上传'),
(353, 'select_size', 'Select Size', 'নির্বাচন আকার', 'Selecciona El Tamaño', 'حدد الحجم', 'Sélectionnez La Taille', '选择尺寸'),
(354, 'one-fourth', 'One-fourth', 'এক চতুর্থাংশ', 'Un cuarto', 'ربع', 'Un quart', '四分之一'),
(355, 'one-third', 'One-third', 'এক-তৃতীয়াংশ', 'Un tercio', 'ثلث', 'Un tiers', '三分之一'),
(356, 'half', 'Half', 'অর্ধেক', 'Mitad', 'نصف', 'Moitié', '半'),
(357, 'two-third', 'Two-third', 'দুই-তৃতীয়াংশ', 'Dos tercios', 'ثلثي', 'Deux tiers', '三分之二'),
(358, 'three-fourth', 'Three-fourth', 'তিন-চতুর্থাংশ', 'Tres cuartos', 'ثلاثة أرباع', 'Trois-quatrième', '三十四'),
(359, 'full', 'Full', 'পূর্ণ', 'Completo', 'كامل', 'Complet', '满'),
(360, 'select_type', 'Select Type', 'নির্বাচন করুন প্রকার', 'Seleccionar tipo', 'حدد نوع', 'Sélectionner le type', '选择类型'),
(361, 'content', 'Content', 'সন্তুষ্ট', 'Contenido', 'محتوى', 'Contenu', '内容'),
(362, 'widget', 'Widget', 'উইজেট', 'Widget', 'القطعة', 'Widget', '小工具'),
(363, 'most_viewed', 'Most Viewed', 'সর্বাধিক দেখা', 'Más Vistos', 'الأكثر مشاهدة', 'Le Plus Regardé', '最受关注'),
(364, 'not_more_than_4_columns!', 'Not More Than 4 Columns!', 'অনধিক 4 কলাম!', 'No más de 4 columnas!', 'لا يزيد على 4 أعمدة!', 'Pas plus de 4 colonnes!', '不超过4列！'),
(365, 'category_name', 'Category Name', 'নামের তালিকা', 'Nombre De La Categoría', 'اسم التصنيف', 'Nom De Catégorie', '分类名称'),
(366, 'edit_category', 'Edit Category', 'সম্পাদনা বিভাগ', 'Editar categoría', 'تحرير الفئة', 'Modifier une catégorie', '编辑类别'),
(367, 'sub-category_name', 'Sub-category Name', 'উপ-বিভাগ নাম', 'Sub-categoría Nombre', 'الفئة الفرعية اسم', 'Sous-catégorie Nom', '子类别名称'),
(368, 'edit_sub-category', 'Edit Sub-category', 'সম্পাদনা করুন উপ-বিভাগ', 'Editar Sub-categoría', 'تحرير التصنيف الفرعى-', 'Modifier la sous-catégorie', '编辑子类别'),
(369, 'brand_name', 'Brand Name', 'পরিচিতিমুলক নাম', 'Nombre De La Marca', 'اسم العلامة التجارية', 'Marque', '品牌'),
(370, 'brand_logo', 'Brand Logo', 'ব্র্যান্ড লোগো', 'Logotipo De La Marca', 'شعار العلامة التجارية', 'Logo De La Marque', '品牌标识'),
(371, 'select_brand_logo', 'Select Brand Logo', 'নির্বাচন ব্র্যান্ড লোগো', 'Seleccionar logo de la marca', 'حدد شعار العلامة التجارية', 'Sélectionnez une marque Logo', '选择品牌标识'),
(372, 'edit_brand', 'Edit Brand', 'সম্পাদনা করুন ব্র্যান্ড', 'Editar Marca', 'تحرير العلامة التجارية', 'Modifier Marque', '编辑品牌'),
(373, 'product_title', 'Product Title', 'পণ্য শিরোনাম', 'Título del producto', 'عنوان المنتج', 'Titre du produit', '产品名称'),
(374, 'unit', 'Unit', 'একক', 'Unidad', 'وحدة', 'Unité', '单元'),
(375, 'unit_(e.g._kg,_pc_etc.)', 'Unit (e.g. Kg, Pc Etc.)', 'ইউনিট (যেমন কেজি, পিসি ইত্যাদি)', 'Unidad (por ejemplo Kg, ordenador, etc.)', 'وحدة (مثلا كلغ، والكمبيوتر الخ.)', 'Unité (ex Kg, ordinateur, etc.)', '单位（如斤，PC等设备）'),
(376, 'purchase_price', 'Purchase Price', 'ক্রয় মূল্য', 'Precio De Compra', 'سعر الشراء', 'Prix ​​D''Achat', '购买价格'),
(377, 'shipping_cost', 'Shipping Cost', 'শিপিং খরচ', 'Costo De Envío', 'تكلفة الشحن', 'Frais De Port', '运输费'),
(378, 'product_tax', 'Product Tax', 'পণ্য ট্যাক্স', 'Fiscal Producto', 'الضريبة المنتج', 'Impôt sur le produit', '产品税'),
(379, 'product_discount', 'Product Discount', 'পণ্যের ডিসকাউন্ট', 'Descuento del producto', 'الخصم المنتج', 'Remise de produit', '产品折扣'),
(380, 'images', 'Images', 'ছবি', 'Imágenes', 'الصور', 'Images', '图片'),
(381, 'choose_file', 'Choose File', 'ফাইল পছন্দ কর', 'Elija El Archivo', 'اختر ملف', 'Choisissez Fichier', '选择文件'),
(382, 'color', 'Color', 'রঙ', 'Color', 'اللون', 'Couleur', '颜色'),
(383, 'add_more_colors', 'Add More Colors', 'আরো রঙ যোগ করুন', 'Añadir más colores', 'إضافة المزيد من الألوان', 'Ajouter plus de couleurs', '添加更多颜色');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`) VALUES
(384, 'if_you_need_more_field_for_your_product_,_please_click_here_for_more...', 'If You Need More Field For Your Product , Please Click Here For More...', 'আপনি আপনার পণ্যের জন্য আরো মাঠ প্রয়োজন হয়, তাহলে আরও বেশির জন্য এখানে ক্লিক করুন ...', 'Si necesita más campo para su producto, por favor haga clic aquí para Más ...', 'إذا كنت بحاجة إلى المزيد من الميدان للمنتج الخاص بك، الرجاء انقر هنا للمزيد ...', 'Si vous désirez plus de terrain pour votre produit, S''il vous plaît Cliquez ici pour plus ...', '如果你需要更多的现场为您的产品，请点击这里查看更多...'),
(385, 'add_more_fields', 'Add More Fields', 'আরো ক্ষেত্র যোগ করুন', 'Añadir más campos', 'إضافة المزيد من الحقول', 'Ajouter d''autres champs', '添加更多的字段'),
(386, 'product_has_been_uploaded!', 'Product Has Been Uploaded!', 'পণ্য আপলোড করা হয়েছে!', 'Producto se ha cargado!', 'المنتج قد تم إيداع!', 'Produit a été téléchargé!', '产品已上传！'),
(387, 'field_name', 'Field Name', 'ক্ষেত্র নাম', 'Nombre Del Campo', 'اسم الحقل', 'Nom De Domaine', '字段名称'),
(388, 'field_value', 'Field Value', 'ক্ষেত্রের মান', 'Campo Valor', 'قيمة الحقل', 'Champ Valeur', '字段值'),
(389, 'out_of_stock', 'Out Of Stock', 'মজুদ শেষ', 'Agotado', 'إنتهى من المخزن', 'Rupture De Stock', '缺货'),
(390, 'view_product', 'View Product', 'আমাদের পণ্য', 'Ver Producto', 'عرض المنتج', 'Voir le produit', '查看产品'),
(391, 'successfully_viewed!', 'Successfully Viewed!', 'সফলভাবে দেখা!', 'Visto éxito!', 'مشاهدة بنجاح!', 'Vu succès!', '成功查看！'),
(392, 'view', 'View', 'দৃশ্য', 'Vista', 'عرض', 'Vue', '视图'),
(393, 'view_discount', 'View Discount', 'দেখুন বাট্টা', 'Ver descuento', 'عرض الخصم', 'Voir Discount', '查看折扣'),
(394, 'viewing_discount!', 'Viewing Discount!', 'বাট্টা দেখছেন!', 'Viendo el descuento!', 'عرض خصم!', 'Regarde un rabais!', '查看折扣！'),
(395, 'discount', 'Discount', 'ডিসকাউন্ট', 'Descuento', 'خصم', 'Remise', '折扣'),
(396, 'add_product_quantity', 'Add Product Quantity', 'উত্পাদনের মোট পরিমানের যোগ', 'Añadir Producto Cantidad', 'إضافة منتج الكمية', 'Ajouter Produit Quantité', '添加产品数量'),
(397, 'quantity_added!', 'Quantity Added!', 'পরিমাণ যোগ করা হয়েছে!', 'Cantidad añadida!', 'الكمية المضافة!', 'Quantité Ajouté!', '添加量！'),
(398, 'stock', 'Stock', 'স্টক', 'Valores', 'الأوراق المالية', 'Stock', '股票'),
(399, 'reduce_product_quantity', 'Reduce Product Quantity', 'পণ্য পরিমাণ হ্রাস করুন', 'Reducir Producto Cantidad', 'تقليل كمية المنتج', 'Réduire Produit Quantité', '减少产品数量'),
(400, 'quantity_reduced!', 'Quantity Reduced!', 'পরিমাণ কমিয়ে!', 'Cantidad rebajado!', 'كمية خفض!', 'Quantité réduit!', '数量减少！'),
(401, 'destroy', 'Destroy', 'ধ্বংস করা', 'Destruir', 'هدم', 'Détruire', '破坏'),
(402, 'edit_product', 'Edit Product', 'সম্পাদনা পণ্য', 'Editar Producto', 'تحرير المنتج', 'Modifier le produit', '编辑产品'),
(403, 'rate', 'Rate', 'হার', 'Tarifa', 'معدل', 'Taux', '率'),
(404, 'total', 'Total', 'মোট', 'Total', 'مجموع', 'Total', '总'),
(405, 'reason_note', 'Reason Note', 'কারণ উল্লেখ্য', 'Motivo Nota', 'السبب ملاحظة', 'Raison Remarque', '原因说明'),
(406, 'manage_your_product_stock', 'Manage Your Product Stock', 'আপনার পণ্য স্টক পরিচালনা', 'Administre su stock del producto', 'إدارة الأسهم الخاصة بك المنتج', 'Gérer votre produit Stock', '管理你的产品库存'),
(407, 'destroy_product_entry', 'Destroy Product Entry', 'পণ্য এন্ট্রি ধ্বংস', 'Destruye Entrada Producto', 'تدمير دخول المنتج', 'Détruisez Entrée produit', '销毁产品入境'),
(408, 'add_stock_entry_taken!', 'Add Stock Entry Taken!', 'স্টক এন্ট্রি নেওয়া যোগ!', 'Añadir Tomado de la entrada Stock!', 'إضافة المحصلة دخول سوق الأسهم!', 'Ajouter Stock Entrée pris!', '添加股票输入上当受骗！'),
(409, 'add_product_stock', 'Add Product Stock', 'পণ্য স্টক যোগ করুন', 'Añadir stock del producto', 'إضافة منتج المالية', 'Ajouter le produit Stock', '添加产品库存'),
(410, 'destroy_entry_taken!', 'Destroy Entry Taken!', 'এন্ট্রি নেওয়া ধ্বংস!', 'Destruye Tomado de entrada!', 'تدمير المحصلة الدخول!', 'Détruisez Entrée pris!', '摧毁条目获取！'),
(411, 'create_stock', 'Create Stock', 'স্টক তৈরি করুন', 'Crear archivo', 'إنشاء البورصة', 'Créer Stock', '创建库存'),
(412, 'entry_type', 'Entry Type', 'এন্ট্রি টাইপ', 'Tipo de entrada', 'نوع الدخول', 'Type d''entrée', '条目类型'),
(413, 'note', 'Note', 'বিঃদ্রঃ', 'Nota', 'ملاحظة', 'Note', '注意'),
(414, 'added_quantity_will_be_reduced.', 'Added Quantity Will Be Reduced.', 'যোগ করা হয়েছে পরিমাণ হ্রাস করা হবে.', 'Cantidad añadida será reducido.', 'وأضاف الكمية ستنخفض.', 'Ajouté Quantité sera réduite.', '加入数量将减少。'),
(415, 'manage_sale', 'Manage Sale', 'বিক্রয় গালাগাল প্রতিবেদন করো', 'Administrar Venta', 'إدارة بيع', 'Gérer Vente', '销售管理'),
(416, 'sale_code', 'Sale Code', 'বিক্রয় কোড', 'Venta Código', 'بيع مدونة', 'Vente code', '销售守则'),
(417, 'buyer', 'Buyer', 'ক্রেতা', 'Comprador', 'مشتر', 'Acheteur', '买主'),
(418, 'delivery_status', 'Delivery Status', 'ডেলিভারি স্থিতি', 'Estado De Entrega', 'حالة التسليم', 'Statut De Livraison', '交货状态'),
(419, 'payment_status', 'Payment Status', 'লেনদেনের অবস্থা', 'Estado De Pago', 'حالة السداد', 'Statut De Paiement', '付款状态'),
(420, 'sales', 'Sales', 'বিক্রয়', 'Ventas', 'مبيعات', 'Ventes', '销售'),
(421, 'choose_your_slider_style', 'Choose Your Slider Style', 'আপনার স্লাইডার শৈলী চয়ন করুন', 'Elija su estilo deslizante', 'اختيار المتزلج طريقتك', 'Choisissez votre style Slider', '选择您的滑盖造型'),
(422, 'play', 'Play', 'খেলা', 'Jugar', 'لعب', 'Jouer', '玩'),
(423, 'choose', 'Choose', 'নির্বাচন করা', 'Escoger', 'اختار', 'Choisir', '选择'),
(424, 'enter_preview', 'Enter Preview', 'সম্পূর্ণ বিবরণের পূর্বরূপ দেখুন লিখুন', 'Introduzca Prevista', 'أدخل معاينة', 'Entrez Aperçu', '进入预览'),
(425, 'creating_slider..', 'Creating Slider..', 'স্লাইডার তৈরি ..', 'Crear deslizante ..', 'خلق المتزلج ..', 'Création curseur ..', '创建滑块..'),
(426, 'slider_added!', 'Slider Added!', 'স্লাইডার যোগ করা হয়েছে!', 'Deslizador Agregado', 'المنزلق واضاف!', 'Curseur Ajouté!', '滑块增加！'),
(427, 'select_background_image', 'Select Background Image', 'নির্বাচন পটভূমি চিত্র', 'Seleccione la imagen de fondo', 'اختر صورة الخلفية', 'Sélectionnez l''image de fond', '选择背景图片'),
(428, 'select_image', 'Select Image', 'নির্বাচন করুন', 'Seleccionar Imagen', 'اختر صورة', 'Sélectionner l''image', '选择图片'),
(429, 'font-color', 'Font-color', 'ফন্টের রং', 'Color de fuente', 'لون الخط', 'Couleur de police', '字体颜色'),
(430, 'background_color', 'Background Color', 'পেছনের রঙ', 'Color De Fondo', 'لون الخلفية', 'Couleur De Fond', '背景颜色'),
(431, 'clean', 'Clean', 'পরিষ্কার', 'Limpio', 'نظيف', 'Propre', '清洁'),
(432, 'slider_serial_saved!', 'Slider Serial Saved!', 'সিরিয়াল সংরক্ষিত এখানে ক্লিক করুন!', 'Slider Guardados de serie!', 'المنزلق المسلسل المحفوظ!', 'Curseur série Saved!', '滑盖系列救了！'),
(433, 'permissions', 'Permissions', 'অনুমতি', 'Permisos', 'أذونات', 'Autorisations', '权限'),
(434, 'off', 'Off', 'বন্ধ', 'Apagado', 'بعيدا', 'De', '离'),
(435, 'add_to_wishlist', 'Add To Wishlist', 'চাহিদাপত্রে যোগ করা', 'Añadir A La Lista De Deseos', 'اضف الى قائمة الامنيات', 'Ajouter À La Liste De Souhaits', '添加到收藏'),
(436, 'our_available_brands', 'Our Available Brands', 'আমাদের উপলব্ধ ব্রান্ডের', 'Nuestras Marcas disponibles', 'علاماتنا التجارية المتاحة', 'Nos Marques disponibles', '我们现有的品牌'),
(437, 'product_color_options', 'Product Color Options', 'পণ্য রঙ বিকল্প', 'Opciones de color Producto', 'خيارات المنتج اللون', 'options de couleur de produit', '产品颜色选项'),
(438, 'add_colors', 'Add Colors', 'রঙ যোগ করুন', 'Añadir colores', 'إضافة الألوان', 'Ajouter des couleurs', '添加颜色'),
(439, 'preview', 'Preview', 'সম্পূর্ণ বিবরণের পূর্বরূপ দেখুন', 'Preestreno', 'معاينة', 'Aperçu', '预习'),
(440, 'related_products', 'Related Products', 'সংশ্লিষ্ট পণ্য', 'Productos Relacionados', 'المنتجات ذات الصلة', 'Produits Connexes', '相关产品'),
(441, 'full_description', 'Full Description', 'পূর্ণ বিবরণ', 'Descripción Completa', 'الوصف الكامل', 'Description Complète', '完整说明'),
(442, 'additional_specification', 'Additional Specification', 'অতিরিক্ত স্পেসিফিকেশন', 'Especificación adicional', 'مواصفات إضافية', 'Spécification Supplémentaire', '其他规格'),
(443, 'reviews', 'Reviews', 'পর্যালোচনা', 'Opiniones', 'التعليقات', 'Avis', '点评'),
(444, 'add_to wishlist', 'Add To Wishlist', 'চাহিদাপত্রে যোগ করা', 'Añadir A La Lista De Deseos', 'اضف الى قائمة الامنيات', 'Ajouter À La Liste De Souhaits', '添加到收藏'),
(445, 'featured_products', 'Featured Products', 'বৈশিষ্ট্যযুক্ত পণ্য', 'Productos Destacados', 'منتجات مميزة', 'Produits Présentés', '特色产品'),
(446, 'our_contacts', 'Our Contacts', 'আমাদের পরিচিতি', 'Nuestros Contactos', 'دليل المنسوبين', 'Nos Contacts', '我们的联系方式'),
(447, 'about_us', 'About Us', 'আমাদের সম্পর্কে', 'Sobre Nosotros', 'عنا', 'A Propos De Nous', '关于我们'),
(448, 'get_in_touch', 'Get In Touch', 'যোগাযোগ করুন', 'Ponerse En Contacto', 'الحصول على اتصال', 'Entrer en contact', '保持联系'),
(449, 'contacts_form', 'Contacts Form', 'পরিচিতিতে ফরম', 'Contactos Formulario', 'اتصالات نموذج', 'Formulaire de contacts', '联系表格'),
(450, 'e-mail', 'E-mail', 'ই-মেইল', 'Email', 'البريد الإلكتروني', 'Email', '电子邮件'),
(451, 'sending..', 'Sending..', 'পাঠানো ..', 'Enviando ..', 'إرسال ..', 'Envoi ..', '正在发送。'),
(452, 'send_message:', 'Send Message:', 'বার্তা পাঠাও:', 'Enviar Mensaje:', 'أرسل رسالة:', 'Envoyer Le Message:', '发信息：'),
(453, 'message_sent!', 'Message Sent!', 'বার্তা প্রদান!', 'Mensaje Enviado!', 'تم إرسال الرسالة!', 'Message Envoyé!', '消息已发送！'),
(454, 'incorrect_captcha!', 'Incorrect Captcha!', 'ভুল ক্যাপচা!', 'Captcha Incorrecto!', 'كلمة التحقق غير صحيح!', 'Captcha Incorrecte!', '验证码不正确！'),
(455, 'my_profile', 'My Profile', 'আমার প্রোফাইল', 'Mi Perfil', 'ملفي الشخصي', 'Mon Profil', '我的简历'),
(456, 'personal_information', 'Personal Information', 'ব্যক্তিগত তথ্য', 'Información Personal', 'معلومات شخصية', 'Information Personnelle', '个人信息'),
(457, 'total_purchase', 'Total Purchase', 'মোট ক্রয়', 'Compra total', 'إجمالي شراء', 'Total Achat', '总购买'),
(458, 'last_7_days', 'Last 7 Days', 'শেষ 7 দিন', 'Últimos 7 días', 'اخر 7 ايام', 'Les 7 derniers jours', '最近7天'),
(459, 'last_30_days', 'Last 30 Days', 'গত 30 দিনে', 'Últimos 30 Días', 'اخر 30 يوم', '30 derniers jours', '最后30天'),
(460, 'wished_products', 'Wished Products', 'আকাঙ্ক্ষিত পণ্য', 'Productos deseados', 'المنتجات تمنى', 'Produits souhaité', '希望产品'),
(461, 'user_since', 'User Since', 'ব্যবহারকারী যেহেতু', 'Usuario desde', 'المستخدم منذ', 'Utilisateur depuis', '用户自'),
(462, 'last_login', 'Last Login', 'সর্বশেষ লগইন', 'Último Acceso', 'آخر تسجيل دخول', 'Dernière Connexion', '上次登录'),
(463, 'purchase_history', 'Purchase History', 'ক্রয় ইতিহাস', 'Historial De Compras', 'تاريخ شراء', 'Historique D''Achat', '购买记录'),
(464, 'wishlist', 'Wishlist', 'লটারি', 'Lista', 'مفضلة', 'Liste', '心愿'),
(465, 'edit_info', 'Edit Info', 'সম্পাদনা তথ্য', 'Editar información', 'تحرير معلومات', 'Modifier les informations', '编辑信息'),
(466, 'invoice', 'Invoice', 'চালান', 'Factura', 'فاتورة', 'Facture', '发票'),
(467, 'availability', 'Availability', 'উপস্থিতি', 'Disponibilidad', 'توفر', 'Disponibilité', '可用性'),
(468, 'purchase', 'Purchase', 'ক্রয়', 'Compra', 'شراء', 'Achat', '购买'),
(469, 'remove', 'Remove', 'অপসারণ', 'Quitar', 'إزالة', 'Supprimer', '拆除'),
(470, 're-write your_first_name', 'Re-write Your First Name', 'আপনার নামের প্রথম অংশ পুনরায় লিখুন', 'Vuelva a escribir su nombre', 'إعادة كتابة الاسم الأول', 'Re-écrire Votre Prénom', '重新写你的名字'),
(471, 're-write your_last_name', 'Re-write Your Last Name', 'আপনার পদবি পুনরায় লিখুন', 'Vuelva a escribir su apellido', 'إعادة كتابة الاسم الأخير', 'Re-écrire Votre Nom', '重新写你的姓'),
(472, 're-write_your_phone_number', 'Re-write Your Phone Number', 'আপনার ফোন নম্বর পুনরায় লিখুন', 'Vuelva a escribir su número de teléfono', 'إعادة كتابة رقم الهاتف الخاص بك', 'Re-écrire votre numéro de téléphone', '重新写你的电话号码'),
(473, 'ZIP_Code', 'ZIP Code', 'মার্কিন', 'Código postal', 'الرمز البريدي', 'Code postal', '邮政编码'),
(474, 'city_name', 'City Name', 'শহরের নাম', 'Nombre De La Ciudad', 'اسم المدينة', 'Nom De La Ville', '城市的名字'),
(475, 'your_skype_id', 'Your Skype Id', 'আপনার স্কাইপ আইডি', 'Tu Identificacion De Skype', 'رقم سكايب الخاص بك', 'Votre Identifiant Skype', '你的Skype帐号'),
(476, 'your_facebook_profile_link', 'Your Facebook Profile Link', 'আপনার ফেসবুক প্রোফাইল লিঙ্ক', 'Su perfil de Facebook Enlace', 'الخاص بك الفيسبوك ملف الموقع', 'Votre profil Facebook Lien', '你的Facebook个人资料链接'),
(477, 'your_google+_profile_link', 'Your Google+ Profile Link', 'আপনার Google+ প্রোফাইল লিংক', 'Su Google+ Enlace', 'في + Google ملف الموقع', 'Votre profil Google+ Lien', '您的Google+个人资料链接'),
(478, 'browse', 'Browse', 'ব্রাউজ করুন', 'Explorar', 'تصفح', 'Feuilleter', '浏览'),
(479, 'update_info', 'Update Info', 'আপডেট তথ্য', 'Actualizar Información', 'تحديث معلومات', 'Information De Mise À Jour', '更新信息'),
(480, 'enter_your_current_password', 'Enter Your Current Password', 'আপনার বর্তমান পাসওয়ার্ডটি প্রবেশ করান', 'Introduce Tu Contraseña Actual', 'أدخل كلمة المرور الحالية', 'Entrer Votre Mot De Passe Actuel', '输入当前的密码'),
(481, 'new_password', 'New Password', 'নতুন পাসওয়ার্ড', 'Nueva Contraseña', 'كلمة سر جديدة', 'Nouveau Mot De Passe', '新密码'),
(482, 'enter_your_new_password', 'Enter Your New Password', 'আপনার নতুন পাসওয়ার্ড লিখুন', 'Ingrese su nueva contraseña', 'أدخل كلمة المرور الجديدة', 'Entrez votre nouveau mot de passe', '输入新密码'),
(483, 'confirm_new_password', 'Confirm New Password', 'নিশ্চিত কর নতুন গোপননম্বর', 'Confirmar Nueva Contraseña', 'تأكيد كلمة السر الجديدة', 'Confirmer Le Nouveau Mot De Passe', '确认新密码'),
(484, 're-enter_your_new_password', 'Re-enter Your New Password', 'আপনার নতুন পাসওয়ার্ড আবার লিখুন', 'Vuelva a introducir su nueva contraseña', 'إعادة إدخال كلمة المرور الجديدة', 'Re-entrez votre nouveau mot de passe', '重新输入新密码'),
(485, 'save_password', 'Save Password', 'পাসওয়ার্ড সংরক্ষণ', 'Guardar Contraseña', 'حفظ كلمة المرور', 'Enregistrer Le Mot De Passe', '保存密码'),
(486, 'incorrect_password', 'Incorrect Password', 'ভুল পাসওয়ার্ড৤', 'Contraseña Incorrecta', 'كلمة المرور غير صحيحة', 'Mot De Passe Incorrect', '密码不正确'),
(487, 'terms_conditions', 'Terms Conditions', 'শর্তাবলী', 'Términos Y Condiciones', 'الشروط والأحكام', 'Termes Et Conditions', '条款细则'),
(488, 'give_a_rating', 'Give A Rating', 'একটি রেটিং দিতে', 'Give A Clasificación', 'إعطاء تقييم', 'Donner une note', '给予评级'),
(489, 'tax', 'Tax', 'কর', 'Impuesto', 'ضريبة', 'Impôt', '税'),
(490, 'shipping', 'Shipping', 'পরিবহন', 'Envío', 'الشحن', 'Livraison', '送货'),
(491, 'grand_total', 'Grand Total', 'সর্বমোট', 'Gran Total', 'المجموع الإجمالي', 'Total', '累计'),
(492, 'empty_cart', 'Empty Cart', 'খালি ট্রলি', 'Vaciar el carro', 'فارغة سلة', 'Panier Vide', '清空购物车'),
(493, 'added_to wishlist', 'Added To Wishlist', 'শুরুতেই যোগ', 'Añadido a Mis Favoritos', 'أضيف الى قائمة الامنيات', 'Ajouté à la liste', '添加到收藏'),
(494, 'available', 'Available', 'উপলব্ধ', 'Disponible', 'متاح', 'Disponible', '可用的'),
(495, 'remove_from_wishlist', 'Remove From Wishlist', 'সাইফুল থেকে সরান', 'Quitar de la lista', 'إزالة من قائمة الامنيات', 'Supprimer de la Liste', '从收藏中删除'),
(496, 'my_cart', 'My Cart', 'আমার কার্ট', 'Mi Carrito', 'سلة التسوق', 'Mon panier', '我的购物车'),
(497, 'shopping_cart', 'Shopping Cart', 'বাজারের ব্যাগ', 'Carrito De Compras', 'عربة التسوق', 'Panier', '购物车'),
(498, 'review_&_edit_your_product', 'Review & Edit Your Product', 'পর্যালোচনা ও সম্পাদনা করুন আপনার পণ্য', 'Revisión y edición de su producto', 'مراجعة وتحرير منتجك', 'Consulter et modifier votre produit', '审查和编辑你的产品'),
(499, 'qty', 'Qty', 'Qty', 'Cantidad', 'الكمية', 'Quantité', '数量'),
(500, 'option', 'Option', 'পছন্দ', 'Opción', 'خيار', 'Option', '选项'),
(501, 'shipping_info', 'Shipping Info', 'জাহাজীকরন তথ্য', 'Información De Envío', 'معلومات الشحن', 'Info Livraison', '航运信息'),
(502, 'shipping_and_address_info', 'Shipping And Address Info', 'গ্রেপ্তার এবং ঠিকানা তথ্য', 'Envío y Dirección Info', 'الشحن وعنوان معلومات', 'Adresse d''expédition et Infos', '航运及地址信息'),
(503, 'shipping_address', 'Shipping Address', 'প্রেরণের ঠিকানা', 'Dirección De Envío', 'عنوان الشحن', 'Adresse De Livraison', '邮寄地址'),
(504, 'first_name', 'First Name', 'প্রথম নাম', 'Nombre', 'الاسم الأول', 'Prénom', '名字'),
(505, 'last_name', 'Last Name', 'নামের শেষাংশ', 'Apellido', 'اسم العائلة', 'Nom De Famille', '姓'),
(506, 'zip/postal_code', 'Zip/postal Code', 'জিপ / পোস্টাল কোড', 'Postal / Código Postal', 'الرمز البريدي / الرمز البريدي', 'Zip / code postal', '邮编/邮政编码'),
(507, 'payment', 'Payment', 'প্রদান', 'Pago', 'دفع', 'Paiement', '付款'),
(508, 'select_payment_method', 'Select Payment Method', 'নির্বাচন পেমেন্ট পদ্ধতি', 'Seleccione el método de pago', 'اختر طريقة الدفع', 'Sélectionnez la méthode de paiement', '请选择支付方式'),
(509, 'choose_a_payment_method', 'Choose A Payment Method', 'একটি পেমেন্ট পদ্ধতি বেছে নিন', 'Elija un método de pago', 'اختيار طريقة الدفع', 'Choisissez une méthode de paiement', '选择付款方式'),
(510, 'frequently_asked_questions', 'Frequently Asked Questions', 'সচরাচর জিজ্ঞাস্য', 'Preguntas Frecuentes', 'أسئلة مكررة', 'Questions Fréquemment Posées', '经常问的问题'),
(511, 'subtotal', 'Subtotal', 'উপমোট', 'Total parcial', 'حاصل الجمع', 'Total', '小计'),
(512, 'invoice_paper', 'Invoice Paper', 'চালান পেপার', 'Papel Factura', 'فاتورة ورقة', 'Papier facture', '发票纸'),
(513, 'invoice_no', 'Invoice No', 'চালান নং', 'Factura No', 'رقم الفاتورة', 'NumFacture', '发票号码'),
(514, 'client_information:', 'Client Information:', 'ক্লায়েন্ট তথ্য:', 'Información Del Cliente:', 'معلومات العميل:', 'Renseignements sur le client:', '客户资料：'),
(515, 'first_name:', 'First Name:', 'প্রথম নাম:', 'Nombre:', 'الاسم الأول:', 'Prénom:', '名字：'),
(516, 'last_name:', 'Last Name:', 'নামের শেষাংশ:', 'Apellido:', 'اسم العائلة:', 'Nom De Famille:', '姓：'),
(517, 'city_:', 'City :', 'নগরী:', 'Ciudad:', 'مدينة:', 'Ville:', '城市：'),
(518, 'peyment_details_:', 'Peyment Details :', 'Peyment বিবরণ:', 'Peyment Detalles:', 'PEYMENT تفاصيل:', 'Peyment Détails:', 'Peyment详细信息：'),
(519, 'payment_status_:', 'Payment Status :', 'লেনদেনের অবস্থা:', 'Estado De Pago:', 'حالة السداد:', 'Statut De Paiement:', '付款状态：'),
(520, 'payment_method_:', 'Payment Method :', 'মূল্যপরিশোধ পদ্ধতি:', 'Forma De Pago:', 'طريقة الدفع:', 'Mode de paiement:', '付款方式：'),
(521, 'payment_invoice', 'Payment Invoice', 'পেমেন্ট চালান', 'Factura De Pago', 'دفع الفاتورة', 'Paiement de facture', '付款发票'),
(522, 'item', 'Item', 'আইটেম', 'Artículo', 'العنصر', 'Article', '项目'),
(523, 'unit_cost', 'Unit Cost', 'ইউনিট খরচ', 'Costo Unitario', 'تكلفة الوحدة', 'Coût Unitaire', '单价'),
(524, 'sub_total_amount', 'Sub Total Amount', 'উপ মোট পরিমাণ', 'Sub Total Importe', 'جنوب المبلغ الكلي لل', 'Sous Montant total', '小计金额'),
(525, 'print', 'Print', 'ছাপা', 'Impresión', 'طباعة', 'Impression', '打印'),
(526, 'manage_users', 'Manage Users', 'ব্যবহারকারী গালাগাল প্রতিবেদন', 'Administrar usuarios', 'إدارة المستخدمين', 'Gérer les utilisateurs', '管理用户'),
(527, 'view_profile', 'View Profile', 'প্রোফাইল দেখা', 'Ver Perfil', 'الملف الشخصي', 'Voir Le Profil', '查看资料'),
(528, 'users', 'Users', 'ব্যবহারকারীরা', 'Usuarios', 'المستخدمين', 'Utilisateurs', '用户'),
(529, 'product_sale_comparison', 'Product Sale Comparison', 'পণ্য বিক্রয় তুলনা', 'Comparación de productos Venta', 'مقارنة بيع المنتج', 'Comparaison de vente de produit', '产品销售比较'),
(530, 'product_sale_comparison_report', 'Product Sale Comparison Report', 'পণ্য বিক্রয় তুলনা রিপোর্ট', 'Venta de productos ¡Comparar Reportar', 'المنتج بيع مقارنة تقرير', 'Vente de produit Rapport de comparaison', '产品销售比较报告'),
(531, 'get_stock_report', 'Get Stock Report', 'স্টক প্রতিবেদন করুন', 'Obtén Stock Reportar', 'الحصول على الأوراق المالية تقرير', 'Obtenez Stock Rapport', '获取库存报告'),
(532, 'delivery_payment', 'Delivery Payment', 'ডেলিভারি পেমেন্ট', 'Entrega Pago', 'تسليم الدفع', 'Livraison Paiement', '货到付款'),
(533, 'invoice_no:', 'Invoice No:', 'চালান নং:', 'Factura No:', 'رقم الفاتورة:', 'NO FACTURE:', '发票号码：'),
(534, 'date_:', 'Date :', 'তারিখ:', 'Fecha:', 'تاريخ:', 'Date:', '日期：'),
(535, 'client_information', 'Client Information', 'ক্লায়েন্ট তথ্য', 'Información Del Cliente', 'معلومات العميل', 'Renseignements sur le client', '客户信息'),
(536, 'payment_detail', 'Payment Detail', 'পেমেন্ট বিস্তারিত', 'Detalle de Pago', 'دفع التفاصيل', 'Paiement Détail', '付款明细'),
(537, 'payment_method', 'Payment Method', 'মূল্যপরিশোধ পদ্ধতি', 'Forma De Pago', 'طريقة الدفع', 'Mode de paiement', '付款方式'),
(538, 'payment_date', 'Payment Date', 'টাকা প্রদানের তারিখ', 'Día De Pago', 'تاريخ الدفع', 'Date De Paiement', '支付日期'),
(539, 'zipcode', 'Zipcode', 'পিনকোড', 'Código Postal', 'الرمز البريدي', 'Code Postal', '邮政编码'),
(540, 'marker_location', 'Marker Location', 'মার্কার অবস্থান', 'Marcador de ubicación', 'علامة الموقع', 'Marker Localisation', '标记位置'),
(541, 'payment_details', 'Payment Details', 'বিস্তারিত হিসাব', 'Detalles Del Pago', 'تفاصيل الدفع', 'Détails de paiement', '付款详情'),
(542, 'reduced_quantity_will_be_added.', 'Reduced Quantity Will Be Added.', 'কমিয়ে পরিমাণ যোগ করা হবে.', 'Cantidad reducida se añadirán.', 'انخفاض الكمية ستضاف.', 'Quantité réduite seront ajoutés.', '减少数量将增加。'),
(543, 'monetary_loss', 'Monetary Loss', 'আর্থিক ক্ষতি', 'Resultado Monetario', 'فقدان النقدي', 'Perte monétaire', '金钱损失'),
(544, 'details_of', 'Details Of', 'বিস্তারিত', 'Detalles De', 'تفاصيل', 'Détails de', '详细信息'),
(545, 'tag', 'Tag', 'ট্যাগ', 'Etiqueta', 'بطاقة', 'Balise', '标签'),
(546, 'colors', 'Colors', 'রঙ', 'Colores', 'الألوان', 'Couleurs', '颜色'),
(547, 'user', 'User', 'ব্যবহারকারী', 'Usuario', 'المستخدم', 'Utilisateur', '用户'),
(548, 'phone_number', 'Phone Number', 'ফোন নম্বর', 'Número Telefónico', 'رقم الهاتف', 'numéro de téléphone', '电话号码'),
(549, 'view_contact_message', 'View Contact Message', 'দেখুন যোগাযোগ বার্তা', 'Ver contacto Mensaje', 'عرض طرق الاتصال رسالة', 'Voir Contact Message', '查看联系信息'),
(550, 'view_message', 'View Message', 'দেখুন বার্তা', 'Ver Mensaje', 'إرسال رسالة خاصة إلى', 'Voir le message', '查看留言'),
(551, 'message_from', 'Message From', 'থেকে বার্তা', 'Mensaje De', 'رسالة من', 'Message De', '从消息'),
(552, 'date_&_time', 'Date & Time', 'তারিখ সময়', 'Fecha Y Hora', 'التاريخ والوقت', 'Date et heure', '日期时间'),
(553, 'reply_contact_message', 'Reply Contact Message', 'যোগাযোগ বার্তা উত্তর', 'Responder Contacto Mensaje', 'رد الاتصال رسالة', 'Répondre Contact Message', '回复留言联系'),
(554, 'successfully_replied!', 'Successfully Replied!', 'সফলভাবে জবাব দিয়েছেন!', 'Respondió con éxito!', 'أجاب بنجاح!', 'Répondit succès!', '成功作答！'),
(555, 'reply_message', 'Reply Message', 'বার্তা উত্তর', 'Responder Mensaje', 'الرد رسالة', 'Message De Réponse', '回复留言'),
(556, 'view_original_message', 'View Original Message', 'মূল বার্তা দেখুন', 'Ver mensaje original', 'عرض الرسالة الأصلية', 'Voir Original Message', '查看原始消息'),
(557, 'new_word', 'New Word', 'নতুন শব্দ', 'Palabra Nueva', 'كلمة جديدة', 'Nouveau Mot', '新词'),
(558, 'already_exists!', 'Already Exists!', 'আগে থেকেই আছে!', 'Ya Existe!', 'موجود بالفعل!', 'Existe Déjà!', '已经存在！'),
(559, 'language_name', 'Language Name', 'ভাষার নাম', 'Nombre de Idioma', 'اسم اللغة', 'Nom de la langue', '语言名称'),
(560, 'new_language', 'New Language', 'নতুন ভাষা', 'Nuevo Idioma', 'لغة جديدة', 'Nouvelle Langue', '新的语言'),
(561, 'do_you_really_want_to_delete_this_language?', 'Do You Really Want To Delete This Language?', 'আপনি কি সত্যিই এই ভাষা মুছে দিতে চান?', '¿Realmente desea eliminar este idioma?', 'هل حقا تريد حذف هذه اللغة؟', 'Êtes-vous sûr de vouloir supprimer cette langue?', '你真的要删除这个语言？'),
(562, 'unknown_user', 'Unknown User', 'অজানা ব্যবহারকারী', 'Usuario Desconocido', 'مجهول العضو', 'Utilisateur Inconnu', '未知用户'),
(563, 'slider_enabled!', 'Slider Enabled!', 'সক্ষম স্লাইডার!', 'Deslizador Habilitado!', 'المنزلق ممكن!', 'Curseur activé!', '滑块启用！'),
(564, 'slider_disabled!', 'Slider Disabled!', 'স্লাইডার অক্ষম!', 'Deslizador discapacitados!', 'التمرير معطل!', 'Curseur handicapés!', '滑块残疾人！'),
(565, 'cash_payment_enabled!', 'Cash Payment Enabled!', 'নগদ অর্থ প্রদান সক্ষম!', 'Pago Dinero en efectivo habilitado!', 'الدفع نقدا تمكين!', 'Paiement en espèces activé!', '现金支付启用！'),
(566, 'cash_payment_disabled!', 'Cash Payment Disabled!', 'নগদ অর্থ প্রদান করা হবে নিষ্ক্রিয়!', 'Pago Dinero en efectivo habilitado!', 'الدفع نقدا معطل!', 'Paiement en espèces désactivé!', '现金付款禁用！'),
(567, 'slider', 'Slider', 'স্লাইডার', 'Deslizador', 'المنزلق', 'Curseur', '滑块'),
(568, 'cash_payment', 'Cash Payment', 'নগদে টাকা প্রদান', 'Pago al contado', 'دفع نقدا', 'Paiement en espèces', '现金支付'),
(569, 'revisit_after', 'Revisit After', 'পরবর্তীতে পরিদর্শন', 'Revisar Después', 'إعادة النظر بعد', 'Revoir Après', '回访后'),
(570, 'days', 'Days', 'দিন', 'Días', 'أيام', 'Jours', '天'),
(571, 'you_registered_successfully', 'You Registered Successfully', 'আপনি সাফল্যের সাথে নিবন্ধিত', 'Usted registrado correctamente', 'كنت مسجل بنجاح', 'Vous enregistré avec succès', '你成功注册'),
(572, 'registration_failed!_try_again!', 'Registration Failed! Try Again!', 'নিবন্ধন অকৃতকার্য! </font><font>আবার চেষ্টা কর!', '¡Registro fallido! </font><font>¡Inténtalo de nuevo!', 'فشل في التسجيل! </font><font>حاول مرة أخرى!', 'Échec de l''enregistrement! </font><font>Essaye encore!', '注册失败！</font><font>再试一次！'),
(573, 'registering..', 'Registering..', 'নিবন্ধীকরণ ..', 'Registrando ..', 'تسجيل ..', 'Enregistrement ..', '注册..'),
(574, 'you_logged_out_successfully', 'You Logged Out Successfully', 'আপনি সফলভাবে লগ আউট', 'Usted cerrado la sesión con éxito', 'قمت بتسجيل بنجاح', 'Vous vous êtes connecté avec succès', '您已注销成功'),
(575, 'stripe_payment', 'Stripe Payment', 'ডোরা পেমেন্ট', 'Raya Pago', 'شريط الدفع', 'Stripe paiement', '条纹付款'),
(576, 'stripe_secret_key', 'Stripe Secret Key', 'ডোরা সিক্রেট কী', 'Raya clave secreta', 'شريط سر مفتاح', 'Stripe Secret Key', '条纹秘密钥匙'),
(577, 'stripe_publishable_key', 'Stripe Publishable Key', 'ডোরা প্রকাশযোগ্য কী', 'Raya Publicable clave', 'شريط للنشر مفتاح', 'Stripe Publiable clé', '条纹可发布重点'),
(578, 'your_card_details_verified!', 'Your Card Details Verified!', 'আপনার কার্ড বিবরণ যাচাই!', 'Su Tarjeta detalles verificado!', 'بطاقتك تفاصيل التحقق!', 'Votre carte Détails Vérifié!', '您的信用卡资料验证！'),
(579, 'pay_with_stripe', 'Pay With Stripe', 'ডোরা দিয়ে দিতে', 'Pagará con la raya', 'دفع مع الشريط', 'Payez à rayures', '支付随着条纹'),
(580, 'color_schemes', 'Color Schemes', 'কালার স্কিম', 'Combinaciones de colores', 'أنظمة الألوان', 'Jeux de couleurs', '配色方案'),
(581, 'header_color', 'Header Color', 'শিরোলেখ রঙ', 'Cabecera color', 'رأس اللون', 'Header couleur', '标题颜色'),
(582, 'footer_color', 'Footer Color', 'পাদলেখ রঙ', 'Pie de página en color', 'تذييل اللون', 'Pied de couleur', '页脚颜色'),
(583, 'select', 'Select', 'নির্বাচন করা', 'Seleccionar', 'اختار', 'Sélectionner', '选择'),
(584, 'cart_emptied', 'Cart Emptied', 'কার্ট emptied', 'Cesta Vaciado', 'عربة أفرغ', 'Panier Vidé', '购物车清空'),
(585, 'header/footer_color_scheme', 'Header/footer Color Scheme', 'হেডার / ফুটার বর্ণবিন্যাস', 'Encabezado / pie de página Esquema de color', 'رأس / تذييل نظام الألوان', 'En-tête / pied de page Color Scheme', '页眉/页脚配色方案'),
(586, 'header_/_footer_scheme', 'Header / Footer Scheme', 'শিরোলেখ / পাদলেখ প্রকল্প', 'Encabezado Pie de página Esquema /', 'رأس / تذييل مخطط', 'Tête / pied Scheme', '页眉/页脚计划'),
(587, 'choode_your_scheme', 'Choode Your Scheme', 'আপনার স্কিম Choode', 'Choode Su Esquema', 'Choode مخطط لديك', 'Choode Votre Scheme', 'Choode你的计划'),
(588, 'edit_page', 'Edit Page', 'সম্পাদনা পাতা', 'Editar Página', 'تعديل الصفحة', 'Modifier la page', '编辑页面'),
(589, 'ddd', 'Ddd', 'DDD', 'Ddd', 'DDD', 'Ddd', 'DDD'),
(590, 'page_code', 'Page Code', 'পৃষ্ঠা কোড', 'Página de códigos', 'كود الصفحة', 'Code Page', '页面代码'),
(591, 'page_tags', 'Page Tags', 'পাতা ট্যাগ', 'Página Etiquetas', 'الصفحة الكلمات', 'Page Tags', '标签页'),
(592, 'column', 'Column', 'স্তম্ভ', 'Columna', 'عمود', 'Colonne', '柱'),
(593, 'gg', 'Gg', 'GG', 'Gg', 'زز', 'Gg', 'GG'),
(594, 'if_you_need_more_choice_options_for_your_product_,please_click_here.', 'If You Need More Choice Options For Your Product ,please Click Here.', 'আপনি আপনার পণ্যের জন্য আরো পছন্দ বিকল্প প্রয়োজন, এখানে ক্লিক করুন.', 'Si usted necesita más opciones de elección para su producto, por favor haga clic aquí.', 'إذا كنت بحاجة إلى المزيد من الخيارات الخيارات للمنتج الخاص بك، الرجاء الضغط هنا.', 'Si vous souhaitez plus d''options choix pour votre produit, s''il vous plaît Cliquez ici.', '如果您需要更多的选择选项，为您的产品，请点击这里。'),
(595, 'add_option', 'Add Option', 'অপশন যোগ', 'Añadir Opción', 'إضافة خيار', 'Ajouter une option', '添加选项'),
(596, 'customer_input_title', 'Customer Input Title', 'গ্রাহক ইনপুট শিরোনাম', 'Cliente Título de entrada', 'العميل إدخال عنوان', 'Entrée client Titre', '顾客输入标题'),
(597, 'add_options_for_choice', 'Add Options For Choice', 'পছন্দ জন্য বিকল্প যোগ', 'Agregar opciones para la opción', 'إضافة خيارات للاختيار', 'Ajouter des Options For Choice', '添加选项供选择'),
(598, 'add_customer_input_options', 'Add Customer Input Options', 'গ্রাহক ইনপুট বিকল্প যোগ', 'Añadir Opciones de entrada del cliente', 'إضافة خيارات الإدخال العملاء', 'Ajouter Options d''entrée à la clientèle', '添加用户输入选项'),
(599, 'if_you_need_more_choice_options_for_customers_of_this_product_,please_click_here.', 'If You Need More Choice Options For Customers Of This Product ,please Click Here.', 'আপনি এই পণ্যের গ্রাহকদের জন্য আরো পছন্দ বিকল্প প্রয়োজন, এখানে ক্লিক করুন.', 'Si usted necesita más opciones de elección para los clientes de este producto, por favor haga clic aquí.', 'إذا كنت بحاجة إلى المزيد من الخيارات الخيارات للعملاء من هذا المنتج، يرجى النقر هنا.', 'Si vous souhaitez plus d''options choix pour les clients de ce produit, s''il vous plaît Cliquez ici.', '如果您需要更多的选择方式供客户选择本产品，请点击这里。'),
(600, 'option_name', 'Option Name', 'বিকল্প নাম', 'Nombre de la opción', 'الخيار اسم', 'Nom de l''option', '选项​​名称'),
(601, 'product_details', 'Product Details', 'পণ্যের বিবরণ', 'Detalles Del Producto', 'تفاصيل المنتج', 'Détails du produit', '产品详情'),
(602, 'business_details', 'Business Details', 'ব্যবসার বিবরণ', 'Detalles del negocio', 'تفاصيل العمل', 'Détails d''affaires', '业务细节'),
(603, 'customer_choice_options', 'Customer Choice Options', 'গ্রাহকের পছন্দ বিকল্প', 'Opciones de elección de los clientes', 'خيارات اختيار العملاء', 'Options choix du client', '客户选择选项'),
(604, 'choose_one', 'Choose One', 'একটি নির্বাচন করুন', 'Elige uno', 'اختر واحدا', 'Choisissez-en un', '选一个'),
(605, 'choices', 'Choices', 'গ্রেপ্তার', 'Elecciones', 'الخيارات', 'Choix', '选择'),
(606, 'change_choices', 'Change Choices', 'পরিবর্তন গ্রেপ্তার', 'Cambiar opciones', 'تغيير خيارات', 'Changer choix', '更改选择'),
(607, 'coupon_discount', 'Coupon Discount', 'কুপন ডিসকাউন্ট', 'Cupón de Descuento', 'خصم القسيمة', 'Coupon de réduction', '优惠券折扣'),
(608, 'discount_coupon', 'Discount Coupon', 'ডিসকাউন্ট কুপন', 'Cupón de descuento', 'خصم القسيمة', 'Coupon de réduction', '优惠券'),
(609, 'manage_coupons', 'Manage Coupons', 'কুপন পরিচালনা', 'Administrar Cupones', 'إدارة كوبونات', 'Gérer Coupons', '管理优惠券'),
(610, 'add_coupon', 'Add Coupon', 'কুপন যোগ', 'Añadir Cupón', 'إضافة القسيمة', 'Ajouter Coupon', '添加优惠券'),
(611, 'create_coupon', 'Create Coupon', 'কুপন তৈরি', 'Crear Cupón', 'إنشاء القسيمة', 'Créer Coupon', '创建优惠券'),
(612, 'coupon', 'Coupon', 'কুপন', 'Cupón', 'كوبون', 'Coupon', '优惠券'),
(613, 'coupon_title', 'Coupon Title', 'কুপন শিরোনাম', 'Cupón Título', 'قسيمة العنوان', 'Coupon Titre', '优惠券标题'),
(614, 'valid_till', 'Valid Till', 'বৈধ', 'Válido hasta', 'صالحة ل', 'Valable Pour', '有效期至'),
(615, 'coupon_discount_for', 'Coupon Discount For', 'জন্য কুপন ডিসকাউন্ট', 'Cupón Descuento Para', 'كوبون خصم ل', 'Coupon de réduction Pour', '优惠券折扣'),
(616, 'discount_type', 'Discount Type', 'ছাড়ের ধরন', 'Tipo de descuento', 'نوع الخصم', 'Type de remise', '量贩式'),
(617, 'discount_value', 'Discount Value', 'বাট্টা মূল্য', 'Valor Descuento', 'قيمة الخصم', 'Valeur Remise', '贴现值'),
(618, 'coupon_logo', 'Coupon Logo', 'কুপন লোগো', 'Cupón Logo', 'قسيمة الشعار', 'Coupon Logo', '优惠券标志'),
(619, 'select_coupon_logo', 'Select Coupon Logo', 'নির্বাচন কুপন লোগো', 'Seleccione Cupón Logo', 'حدد القسيمة الشعار', 'Sélectionnez Coupon Logo', '选择优惠券标志'),
(620, 'code', 'Code', 'কোড', 'Código', 'رمز', 'Code', '代码'),
(621, 'added_by', 'Added By', 'দ্বারা যোগ', 'Añadido por', 'اضيف بواسطة', 'Ajouté par', '通过添加'),
(622, 'coupon_code', 'Coupon Code', 'কুপন কোড', 'Código Promocional', 'رمز القسيمة', 'Code Promo', '优惠券代码'),
(623, 'edit_coupon', 'Edit Coupon', 'সম্পাদনা কুপন', 'Editar Cupón', 'تحرير القسيمة', 'Modifier Coupon', '编辑优惠券'),
(624, 'coupon_discount_on', 'Coupon Discount On', 'কুপন ডিসকাউন্ট উপর', 'Cupón de descuento en las', 'كوبون خصم على', 'Coupon de réduction Sur', '优惠券折扣'),
(625, 'coupon_already_activated', 'Coupon Already Activated', 'কুপন ইতিমধ্যে সক্রিয়', 'Cupón sido activado', 'القسيمة إذا المنشط', 'Coupon déjà activé', '优惠券已激活'),
(626, 'applying..', 'Applying..', 'প্রয়োগ ..', 'Aplicando ..', 'تطبيق ..', 'Application ..', '应用..'),
(627, 'coupon_not_valid', 'Coupon Not Valid', 'বৈধ নয় কুপন', 'Cupón no válido', 'القسيمة غير صالح', 'Coupon non valide', '优惠券无效'),
(628, 'coupon_discount_successful', 'Coupon Discount Successful', 'কুপন ডিসকাউন্ট সফল', 'Cupón Descuento Exitosa', 'قسيمة الخصم الناجح', 'Coupon de réduction réussie', '优惠券折扣成功'),
(629, 'apply_coupon', 'Apply Coupon', 'কুপন প্রয়োগ করুন', 'Aplicar cupón', 'تطبيق القسيمة', 'Appliquer Coupon', '申请优惠券'),
(630, 'coupon_discount_activated', 'Coupon Discount Activated', 'কুপন ডিসকাউন্ট সক্রিয়', 'Cupón Descuento Activado', 'خصم القسيمة المنشط', 'Bon de réduction Activé', '优惠券折扣激活'),
(631, 'enabled!', 'Enabled!', 'সক্রিয়!', 'Habilitado!', 'تمكين!', 'Enabled!', '启用！'),
(632, 'disabled!', 'Disabled!', 'পংগু!', 'Habilitado!', 'معاق!', 'Désactivé!', '残疾人！'),
(633, 'be_a_seller', 'Be A Seller', 'একটি বিক্রেতা হতে', 'Sea Un Vendedor', 'يكون البائع', 'Soyez un vendeur', '成为一个卖家'),
(634, 'already_a_seller?', 'Already A Seller?', 'ইতিমধ্যে একটি বিক্রেতা?', '¿Ya es usted vendedor?', 'إذا كنت بائع؟', 'Déjà un vendeur?', '已经是卖家？'),
(635, 'click', 'Click', 'দেখার জন্য ক্লিক করুন', 'Haga clic en', 'انقر', 'Cliquez', '点击'),
(636, 'company', 'Company', 'কোম্পানি', 'Empresa', 'شركة', 'Entreprise', '公司'),
(637, 'display_name', 'Display Name', 'ডিসপ্লে নাম', 'Mostrar nombre', 'اسم العرض', 'Afficher un nom', '显示名称'),
(638, 'vendors', 'Vendors', 'বিক্রেতা', 'Los vendedores', 'الباعة', 'Les vendeurs', '厂商'),
(639, 'manage_vendors', 'Manage Vendors', 'বিক্রেতারা পরিচালনা', 'Administrar proveedores', 'إدارة الباعة', 'Gérer vendeurs', '管理供应商'),
(640, 'total_sale', 'Total Sale', 'মোট বিক্রয়', 'Venta total', 'إجمالي بيع', 'Total Vente', '总销售额'),
(641, 'vendor', 'Vendor', 'বিক্রেতা', 'Vendedor', 'بائع', 'Fournisseur', '供应商'),
(642, 'due_amount', 'Due Amount', 'কারণে পরিমাণ', 'Cantidad a pagar', 'المبلغ المستحق', 'Montant dû', '到期金额'),
(643, 'pay', 'Pay', 'বেতন', 'Pagar', 'دفع', 'Payer', '付'),
(644, 'membership_type', 'Vendorship Type', 'Vendorship ধরন', 'Tipo Vendorship', 'نوع Vendorship', 'Type de Vendorship', 'Vendorship类型'),
(645, 'create_membership', 'Create Vendorship', 'Vendorship তৈরি', 'Crear Vendorship', 'إنشاء Vendorship', 'Créer Vendorship', '创建Vendorship'),
(646, 'membership', 'Vendorship', 'Vendorship', 'Vendorship', 'Vendorship', 'Vendorship', 'Vendorship'),
(647, 'timespan', 'Timespan', 'এইসব', 'Espacio de tiempo', 'المدى الزمني', 'Timespan', '时间跨度'),
(648, 'add_membership', 'Add Vendorship', 'Vendorship করো', 'Añadir Vendorship', 'إضافة Vendorship', 'Ajouter Vendorship', '添加Vendorship'),
(649, 'edit_membership', 'Edit Vendorship', 'সম্পাদনা Vendorship', 'Editar Vendorship', 'تحرير Vendorship', 'Modifier Vendorship', '编辑Vendorship'),
(650, 'for', 'For', 'জন্য', 'Por', 'إلى', 'Pour', '为'),
(651, 'maximum_products', 'Maximum Products', 'সর্বাধিক পণ্য', 'Productos Máximos', 'المنتجات القصوى', 'Produits maximum', '最大产品'),
(652, 'lifetime', 'Lifetime', 'জীবনকাল', 'Vida', 'حياة', 'Durée de vie', '一生'),
(653, 'manage_vendor_profile', 'Manage Vendor Profile', 'বিক্রেতার প্রোফাইল পরিচালনা', 'Administrar perfil de proveedor', 'إدارة بائع الشخصي', 'Gérer Profil vendeur', '管理供应商档案'),
(654, 'settings', 'Settings', 'সেটিংস', 'Ajustes', 'الإعدادات', 'Paramètres', '设置'),
(655, 'contact_message', 'Contact Message', 'যোগাযোগ বার্তা', 'Contacto Mensaje', 'الاتصال رسالة', 'Contact Message', '联系方式留言'),
(656, 'choose_product', 'Choose Product', 'পণ্য নির্বাচন', 'Elija Producto', 'اختيار المنتج', 'Choisissez un produit', '选择产品'),
(657, 'full_invoice', 'Full Invoice', 'সম্পূর্ণ চালান', 'Factura completa', 'الفاتورة كاملة', 'Facture complet', '全部发票'),
(658, 'invoice_for', 'Invoice For', 'জন্য চালান', 'Para Factura', 'فاتورة ل', 'Facture de', '发票'),
(659, 'admin', 'Admin', 'অ্যাডমিন', 'Administración', 'المشرف', 'Administrateur', '管理员'),
(660, 'account_not_approved._wait_for_approval.', 'Account Not Approved. Wait For Approval.', 'অ্যাকাউন্ট অনুমোদিত নয়. </font><font>অনুমোদনের জন্য অপেক্ষা করুন.', 'Cuenta No Aprobado. </font><font>Esperar la aprobación.', 'الحساب غير المعتمدة. </font><font>الانتظار للحصول على الموافقة.', 'Compte non approuvé. </font><font>Attendre l''approbation.', '帐户不获批准。</font><font>等待审批。'),
(661, 'payment_stat', 'Payment Stat', 'পেমেন্ট Stat', 'Stat Pago', 'دفع ستات', 'Paiement Stat', '支付统计'),
(662, 'total_sold', 'Total Sold', 'মোট বিক্রি', 'Total Vendido', 'إجمالي تباع', 'Vendu total', '累计售出'),
(663, 'paid_by_customer', 'Paid By Customer', 'গ্রাহকের দ্বারা প্রদান', 'Pagado por el cliente', 'التي يدفعها العملاء', 'Payé par le client', '支付客户'),
(664, 'paid_to_vendor', 'Paid To Vendor', 'বিক্রেতার দেওয়া', 'Pagado a proveedor', 'دفعت إلى بائع', 'Payé au fournisseur', '支付给供应商'),
(665, 'due_to_vendor', 'Due To Vendor', 'দরুন বিক্রেতা', 'Debido a proveedor', 'ونظرا إلى البائع', 'En raison de vendeur', '由于供应商'),
(666, 'vendor_home', 'Vendor Home', 'বিক্রেতার হোম', 'Vendedor Inicio', 'بائع الصفحة الرئيسية', 'Fournisseur Accueil', '供应商首页'),
(667, 'vendor_homepage', 'Vendor Homepage', 'বিক্রেতার হোমপেজ', 'Vendedor Homepage', 'بائع الصفحة الرئيسية', 'Accueil du vendeur', '供应商首页'),
(668, 'after_vendor_featured', 'After Vendor Featured', 'বিক্রেতার আলোচিত পরে', 'Después de proveedores destacados', 'بعد بائع مميزة', 'Après vendeur vedette', '供应商精选后'),
(669, 'vendor_notification_sound', 'Vendor Notification Sound', 'বিক্রেতার বিজ্ঞপ্তি শব্দ', 'Vendedor sonido de notificación', 'بائع إعلام الصوت', 'Notification vendeur sonore', '供应商通知声音'),
(670, 'vendor_notification_volume', 'Vendor Notification Volume', 'বিক্রেতার বিজ্ঞপ্তি ভলিউম', 'Vendedor volumen Notificación', 'بائع إعلام حجم', 'Fournisseur notification Volume', '供应商的通知音量'),
(671, 'vendor_logo', 'Vendor Logo', 'বিক্রেতার লোগো', 'Vendedor Logo', 'بائع الشعار', 'Vendor Logo', '销售商标志'),
(672, 'vendor_images', 'Vendor Images', 'বিক্রেতার ছবি', 'Imágenes de proveedores', 'صور بائع', 'Images fournisseurs', '供应商形象'),
(673, 'select_banner', 'Select Banner', 'নির্বাচন ব্যানার', 'Seleccione Banner', 'حدد شعار', 'Sélectionnez Bannière', '选择旗帜'),
(674, 'manage_payment_receiving_settings', 'Manage Payment Receiving Settings', 'পেমেন্ট পাওয়ার সেটিংস পরিচালনা করুন', 'Administrar configuración de recepción de pago', 'إدارة إعدادات الدفع الاستلام', 'Gérer les paramètres de réception de paiements', '管理的收款设置'),
(675, 'select_product', 'Select Product', 'নির্বাচন পণ্য', 'Seleccionar producto', 'حدد المنتج', 'Sélectionner un produit', '选择产品'),
(676, 'pay_vendor', 'Pay Vendor', 'পে বিক্রেতার', 'Vendedor Paga', 'دفع البائع', 'Pay vendeur', '支付供应商'),
(677, 'cash_on_delivery_to_vendor', 'Cash On Delivery To Vendor', 'বিলি নগদ বিক্রেতা', 'Pago contra entrega al proveedor', 'نقدا عند التسليم لبائع', 'Cash On Delivery Pour fournisseur', '货到付款到供应商'),
(678, 'due', 'Due', 'দরুন', 'Debido', 'بسبب', 'Dû', '应有'),
(679, 'partially_paid', 'Partially Paid', 'আংশিকভাবে প্রদত্ত', 'Parcialmente Pagado', 'دفعت جزئيا', 'Partiellement payé', '部分支付'),
(680, 'fully_paid', 'Fully Paid', 'সম্পূর্ণ পরিশোধ', 'Totalmente pagado', 'مدفوع بالكامل', 'Entièrement payé', '缴足'),
(681, 'total_cash_on_delivery_to_vendor', 'Total Cash On Delivery To Vendor', 'বিক্রেতা ডেলিভারি মোট ক্যাশ', 'Total activos líquidos en el envío a Vendor', 'مجموع نقدا عند التسليم لالبائع', 'Total en espèces sur la livraison à vendeur', '总货到付款到供应商'),
(682, 'paid_cash_on_delivery_to_vendor', 'Paid Cash On Delivery To Vendor', 'বিক্রেতা বিলি নগদ পরিশোধের', 'Pagado Pago contra entrega al proveedor', 'تدفع نقدا عند التسليم لبائع', 'Payés par contre remboursement au fournisseur', '支付货到付款到供应商'),
(683, 'by_admin', 'By Admin', 'দ্বারা অ্যাডমিন', 'Por Admin', 'من طرف Admin', 'Par admin', '由Admin'),
(684, 'cash_on_delivery', 'Cash On Delivery', 'প্রদানোত্তর পরিশোধ', 'Pago contra entrega', 'الدفع عند التسليم', 'Paiement À La Livraison', '货到付款'),
(685, 'upgrade', 'Upgrade', 'আপগ্রেড', 'Modernización', 'تطوير', 'Améliorer', '提升'),
(686, 'choose_membership', 'Choose Vendorship', 'Vendorship চয়ন', 'Elija Vendorship', 'اختيار Vendorship', 'Choisissez Vendorship', '选择Vendorship'),
(687, 'details', 'Details', 'বিস্তারিত', 'Detalles', 'تفاصيل', 'Détails', '详细信息'),
(688, 'method', 'Method', 'পদ্ধতি', 'Método', 'طريقة', 'Méthode', '方法'),
(689, 'maximum_product', 'Maximum Product', 'সর্বাধিক পণ্য', 'Máximo Producto', 'الحد الأقصى المنتج', 'Produit maximum', '最大产品'),
(690, 'default', 'Default', 'ডিফল্ট', 'Defecto', 'افتراضي', 'Par défaut', '默认'),
(691, 'free', 'Free', 'বিনামূল্যে', 'Gratis', 'حر', 'Libre', '自由'),
(692, 'manage_membership_settings', 'Manage Vendorship Settings', 'Vendorship সেটিংস পরিচালনা করুন', 'Administrar configuración Vendorship', 'إدارة إعدادات Vendorship', 'Gérer les paramètres Vendorship', '管理Vendorship设置'),
(693, 'upgrade_membership', 'Upgrade Vendorship', 'Vendorship আপগ্রেড', 'Actualiza Vendorship', 'ترقية Vendorship', 'Améliorez Vendorship', '升级Vendorship'),
(694, 'about', 'About', 'প্রায়', 'Sobre', 'حول', 'Sur', '大约'),
(695, 'paid_by_customers', 'Paid By Customers', 'গ্রাহকদের দ্বারা প্রদত্ত', 'Pagado por los clientes', 'يدفعها العملاء', 'Payés par les clients', '支付的客户'),
(696, 'due_from_admin', 'Due From Admin', 'অ্যাডমিন থেকে কারণে', 'Debido De admin', 'بسبب من المسؤول', 'En raison par Admin', '由于从管理员'),
(697, 'membership_expiration', 'Vendorship Expiration', 'Vendorship মেয়াদপূর্তির', 'Vencimiento Vendorship', 'Vendorship انتهاء الصلاحية', 'Vendorship Expiration', 'Vendorship过期'),
(698, 'membership_details', 'Vendorship Details', 'Vendorship বিস্তারিত', 'Vendorship Detalles', 'Vendorship تفاصيل', 'Vendorship Détails', 'Vendorship详细'),
(699, 'amount', 'Amount', 'পরিমাণ', 'Cantidad', 'كمية', 'Quantité', '量'),
(700, 'cash', 'Cash', 'নগদ', 'Efectivo', 'نقد', 'Argent comptant', '现金'),
(701, 'paypal', 'Paypal', 'পেপ্যাল', 'PayPal', 'باي بال', 'Paypal', '支付宝'),
(702, 'str ipe', 'Str Ipe', 'Str IPE', 'Str Ipe', 'شارع بورصة البترول الدولية', 'Str Ipe', '海峡蚁'),
(703, 'stripe', 'Stripe', 'ডোরা', 'Raya', 'شريط', 'Stripe', '条纹'),
(704, 'products_of', 'Products Of', 'পণ্য', 'Artículos de', 'منتجات', 'Produits De', '产品'),
(705, 'all_vendors', 'All Vendors', 'সকল বিক্রেতাদের', 'Todos los vendedores', 'جميع الباعة', 'Tous les vendeurs', '所有厂商'),
(706, 'all_categories', 'All Categories', 'সব ধরনের', 'Todas Las Categorías', 'جميع الفئات', 'Toutes Catégories', '所有类别'),
(707, 'after_filter', 'After Filter', 'ফিল্টার পরে', 'Después de Filtro', 'بعد تصفية', 'Après Filtre', '过滤后'),
(708, 'sitemap_link', 'Sitemap Link', 'সাইট ম্যাপ লিংক', 'Mapa del sitio Enlace', 'رابط خريطة الموقع', 'Plan du site Lien', '地图链接'),
(709, 'social_network_reach', 'Social Network Reach', 'সামাজিক নেটওয়ার্ক পৌঁছানো', 'Red de Alcance Social', 'شبكة ريتش الاجتماعية', 'Réseau portée sociale', '社会网络覆盖'),
(710, 'alexa_traffic_metrics', 'Alexa Traffic Metrics', 'আলেক্সা ট্রাফিক ম্যাট্রিক', 'Alexa Traffic Métrica', 'اليكسا المرور القياسات', 'Alexa Traffic Metrics', 'Alexa的流量指标'),
(711, 'alexa_traffic_graphs', 'Alexa Traffic Graphs', 'আলেক্সা ট্রাফিক গ্রাফ', 'Alexa Traffic Gráficos', 'اليكسا المرور الرسوم البيانية', 'Alexa Traffic Graphiques', 'Alexa的流量图'),
(712, 'search_index', 'Search Index', 'সহায়িকাসন্ধানসূচি', 'Buscar Índice', 'مؤشر البحث', 'Recherche Index', '搜索索引'),
(713, 'alexa_traffic_rank', 'Alexa Traffic Rank', 'আলেক্সা ট্রাফিক মান', 'Alexa ranking de tráfico', 'رتبة اليكسا المرور', 'Alexa Traffic Rank', 'Alexa排名'),
(714, 'your_email_address', 'Your Email Address', 'আপনার ইমেইল ঠিকানা', 'Tu Correo Electrónico', 'بريدك الإلكتروني', 'Votre adresse E-mail', '您的电子邮件地址'),
(715, 'uploaded_maximum_products', 'Uploaded Maximum Products', 'ঊর্ধ্বভরণকৃত সর্বাধিক পণ্য', 'Subida Productos Máximos', 'منتجات محملة الأقصى', 'Téléchargées produits maximum', '上传的最大产品'),
(716, 'payment_settings', 'Payment Settings', 'পেমেন্ট সেটিংস', 'Ajustes de Pago', 'إعدادات الدفع', 'Réglages de paiement', '付款设置'),
(717, 'my_packages', 'My Packages', 'আমার প্যাকেজ', 'Mis Paquetes', 'بلدي الحزم', 'Mes Forfaits', '我的包'),
(718, 'registration_successful!', 'Registration Successful!', 'অস্ত্রোপচার!', '¡Registro exitoso!', 'نجاح عملية التسجيل!', 'Inscription réussi!', '注册成功！'),
(719, 'please_check_your_email_inbox', 'Please Check Your Email Inbox', 'আপনার ইমেইল ইনবক্স চেক করুন দয়া করে', 'Por favor revise su bandeja de entrada de correo electrónico', 'يرجى التحقق من بريدك الالكتروني', 'S''il vous plaît vérifier votre boite email', '请检查您的电子邮件收件箱'),
(720, 'visit_my_homepage', 'Visit My Homepage', 'আমার হোমপেজে যান', 'Visita Mi Página de Inicio', 'زيارتي الصفحة الرئيسية', 'Visitez ma page d''accueil', '访问我的主页'),
(721, 'next', 'Next', 'পরবর্তী', 'Siguiente', 'التالى', 'Suivant', '下一个'),
(722, 'previous', 'Previous', 'পূর্ববর্তী', 'Anterior', 'سابق', 'Précédent', '上一页'),
(723, 'total_uploaded_products', 'Total Uploaded Products', 'মোট আপলোড পণ্য', 'Total Productos subidos', 'مجموع المنتجات حملت', 'Total des Produits téléchargées', '共上传产品'),
(724, 'uploaded_published_products', 'Uploaded Published Products', 'ঊর্ধ্বভরণকৃত প্রকাশিত পণ্য', 'Productos Publicados Subida', 'منتجات محملة المنشورة', 'Produits téléchargées Publié', '上传发布产品'),
(725, 'already_uploaded_maximum_products!', 'Already Uploaded Maximum Products!', 'ইতিমধ্যে আপলোড সর্বাধিক পণ্য!', 'Ya cargados Productos Máximo!', 'تم الرفع بالفعل منتجات الأقصى!', 'Déjà téléchargé produits maximum!', '已上传最高的产品！'),
(726, 'upgrade_your_membership', 'Upgrade Your Vendorship', 'তোমার Vendorship আপগ্রেড', 'Actualiza Tu Vendorship', 'ترقية Vendorship لديك', 'Améliorez votre Vendorship', '升级你的Vendorship'),
(727, 'membership_payments', 'Vendorship Payments', 'Vendorship পেমেন্টস্', 'Pagos Vendorship', 'المدفوعات Vendorship', 'Paiements de Vendorship', 'Vendorship付款'),
(728, 'manage_membership_payments', 'Manage Vendorship Payments', 'Vendorship পেমেন্ট পরিচালনা', 'Administrar Pagos Vendorship', 'إدارة المدفوعات Vendorship', 'Gérer les paiements Vendorship', '管理Vendorship付款'),
(729, 'upgraded_membership', 'Upgraded Vendorship', 'আপগ্রেড Vendorship', 'Vendorship actualizado', 'Vendorship ترقية', 'Vendorship amélioré', '升级Vendorship'),
(730, 'view_payment_details', 'View Payment Details', 'দেখুন পেমেন্ট বিস্তারিত', 'Ver los detalles del pago', 'عرض تفاصيل الدفع', 'Voir les détails de paiement', '查看付款明细'),
(731, 'confirm_payment', 'Confirm Payment', 'পেমেন্ট নিশ্চিত', 'Confirmar Pago', 'تأكيد الدفع', 'Confirmer le paiement', '确认付款'),
(732, 'datetime', 'Datetime', 'তারিখ সময়', 'Fecha y hora', 'التاريخ والوقت', 'Datetime', '日期时间'),
(733, 'membership_to_upgrade', 'Vendorship To Upgrade', 'আপগ্রেড করার Vendorship', 'Vendorship Para actualizar', 'Vendorship لترقية', 'Vendorship Pour mettre à niveau', 'Vendorship升级'),
(734, 'paid', 'Paid', 'প্রদত্ত', 'Pagado', 'دفع', 'Payé', '付费'),
(735, 'check_details', 'Check Details', 'বিবরণ চেক', 'Compruebe Detalles', 'تحقق من التفاصيل', 'Consultez les détails', '查看详情'),
(736, 'type', 'Type', 'আদর্শ', 'Tipo', 'اكتب', 'Type', '类型'),
(737, 'none', 'None', 'না', 'Ninguno', 'لا شيء', 'Aucun', '无'),
(738, 'facebook_comment', 'Facebook Comment', 'ফেসবুক মন্তব্য', 'Facebook comentario', 'الفيسبوك تعليق', 'Facebook Commentaire', 'Facebook的评论'),
(739, 'disqus_comment', 'Disqus Comment', 'Disqus মন্তব্য', 'Disqus comentario', 'هارد تعليق', 'Disqus Commentaire', 'DISQUS评论'),
(740, 'fb_comment_id', 'Fb Comment Id', 'আইডি মন্তব্য FB', 'Fb Comentario Id', 'أف ب تعليق رقم', 'Fb Id Commentaire', 'FB注释ID'),
(741, 'seal', 'Seal', 'সীল', 'Foca', 'ختم', 'Joint', '密封'),
(742, 'membership_seal', 'Vendorship Seal', 'Vendorship সীল', 'Vendorship Seal', 'Vendorship الختم', 'Seal Vendorship', 'Vendorship密封'),
(743, 'select_membership_seal', 'Select Vendorship Seal', 'Vendorship সীল নির্বাচন', 'Seleccione Vendorship Seal', 'حدد Vendorship الختم', 'Sélectionnez Seal Vendorship', '选择Vendorship密封'),
(744, 'vendor_list', 'Vendor List', 'বিক্রেতা তালিকা', 'Lista de proveedores', 'قائمة بائع', 'Liste de fournisseurs', '供应商列表'),
(745, 'vendorship_timesapn', 'Vendorship Timesapn', 'Vendorship Timesapn', 'Vendorship Timesapn', 'Vendorship Timesapn', 'Vendorship Timesapn', 'Vendorship Timesapn'),
(746, 'remaining', 'Remaining', 'অবশিষ্ট', 'Restante', 'المتبقية', 'Restant', '剩余'),
(747, 'my_products', 'My Products', 'আমার পণ্য', 'Mis Productos', 'منتجاتي', 'Mes produits', '我的产品'),
(748, 'product_list', 'Product List', 'পণ্য তালিকা', 'Lista de productos', 'قائمة المنتجات', 'Liste de produits', '产品列表'),
(749, 'vendor_registration', 'Vendor Registration', 'বিক্রেতার নিবন্ধন', 'Proveedores Directorio', 'التسجيل بائع', 'Enregistrement des fournisseurs', '供应商登记'),
(750, 'customer_login', 'Customer Login', 'গ্রাহক লগইন', 'Acceso del cliente', 'دخول العملاء', 'Connexion client', '客户登录'),
(751, 'customer_registration', 'Customer Registration', 'গ্রাহক নিবন্ধন', 'Registro Clientes', 'التسجيل العملاء', 'Inscription à la clientèle', '客户注册'),
(752, 'pending_vendors', 'Pending Vendors', 'অপেক্ষারত বিক্রেতারা', 'Los vendedores pendientes', 'الباعة في انتظار', 'Les vendeurs en attente', '待供应商'),
(753, 'vendor_stattistics', 'Vendor Stattistics', 'বিক্রেতার Stattistics', 'Vendedor Stattistics', 'بائع Stattistics', 'Fournisseur Stattistics', '供应商Stattistics'),
(754, 'notification_email_sent_to_vendor!', 'Notification Email Sent To Vendor!', 'বিজ্ঞপ্তি ইমেইল বিক্রেতা পাঠানো হয়েছে!', 'Notificación por correo electrónico enviado a vendedor!', 'إشعار البريد الإلكتروني المرسلة إلى البائع!', 'Courriel de notification envoyé au vendeur!', '通知邮件发送给供应商！'),
(755, 'vendor_approval', 'Vendor Approval', 'বিক্রেতার অনুমোদন', 'Aprobación de proveedores', 'بائع الموافقة', 'Approbation du vendeur', '供应商认证'),
(756, 'approval', 'Approval', 'অনুমোদন', 'Aprobación', 'موافقة', 'Approbation', '审批'),
(757, 'approve', 'Approve', 'অনুমোদন করা', 'Aprobar', 'الموافقة', 'Approuver', '赞成'),
(758, 'postpone', 'Postpone', 'মুলতবি করা', 'Posponer', 'تأجيل', 'Reporter', '延期'),
(759, 'vendor_system', 'Vendor System', 'বিক্রেতার সিস্টেম', 'Sistema Vendor', 'نظام بائع', 'Système du vendeur', '供应商体系'),
(760, 'our_vendors', 'Our Vendors', 'আমাদের বিক্রেতারা', 'Nuestros proveedores', 'الباعة لدينا', 'Nos fournisseurs', '我们的供应商');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`) VALUES
(761, 'homepage_cache_time', 'Homepage Cache Time', 'হোমপেজ ক্যাশে সময়', 'Página de caché Tiempo', 'الصفحة الرئيسية الكاش الوقت', 'Page d''accueil Cache Temps', '首页缓存时间'),
(762, 'search_for', 'Search For', 'সন্ধান করা', 'Buscar', 'بحث عن', 'Rechercher', '搜索'),
(763, 'total_vendors', 'Total Vendors', 'মোট বিক্রেতারা', 'Los vendedores totales', 'مجموع الباعة', 'Nombre de fournisseurs', '总供应商'),
(764, 'Sample Page', 'Sample Page', 'নমুনা পৃষ্ঠা', 'Página de Ejemplo', 'عينة الصفحة', 'Page d''exemple', '示例页面'),
(765, 'vendorship_timespan', 'Vendorship Timespan', 'Vendorship এইসব', 'Vendorship Timespan', 'Vendorship زمنية', 'Vendorship Timespan', 'Vendorship时间跨度'),
(766, 'blog', 'Blog', 'ব্লগ', 'Blog', 'مدونة', 'Blog', '博客'),
(767, 'all_blogs', 'All Blogs', 'সকল ব্লগ', 'Todos los blogs', 'كل المدونات', 'Tous les blogs', '所有博客'),
(768, 'all_blog_categories', 'All Blog Categories', 'সকল ব্লগ বিভাগ', 'Todas las Categorías del blog', 'جميع أقسام المدونة', 'Tous blog Catégories', '所有博客分类'),
(769, 'manage_blog', 'Manage Blog', 'ব্লগ পরিচালনা', 'Administrar Blog', 'إدارة المدونة', 'Gérer Blog', '管理博客'),
(770, 'add_blog', 'Add Blog', 'ব্লগ যোগ', 'Añadir Blog', 'إضافة المدونة', 'Ajouter Blog', '加入博客'),
(771, 'create_blog', 'Create Blog', 'ব্লগ তৈরি করুন', 'Crear Blog', 'إنشاء مدونة', 'Créer un blog', '创建博客'),
(772, 'back_to_blog_list', 'Back To Blog List', 'পিছনে তালিকা ব্লগ', 'Volver a la lista de blogs', 'العودة إلى قائمة المدونة', 'Retour à la liste Blog', '返回博客列表'),
(773, 'edit_blog', 'Edit Blog', 'সম্পাদনা ব্লগ', 'Editar Blog', 'تحرير المدونة', 'Modifier Blog', '编辑博客'),
(774, 'add_blog_category', 'Add Blog Category', 'ব্লগ বিভাগ যোগ', 'Añadir Blog Categoría', 'إضافة المدونة الفئة', 'Ajouter Blog Catégorie', '加入博客类别'),
(775, 'create_blog_category', 'Create Blog Category', 'ব্লগ বিভাগ তৈরি করুন', 'Crear Blog Categoría', 'إنشاء مدونة الفئة', 'Créer un blog Catégorie', '创建博客类别'),
(776, 'edit_blog_category', 'Edit Blog Category', 'সম্পাদনা ব্লগ বিভাগ', 'Editar Blog Categoría', 'تحرير المدونة الفئة', 'Modifier Blog Catégorie', '编辑博客类别'),
(777, 'blog_category', 'Blog Category', 'ব্লগ বিভাগ', 'Blog Categoría', 'بلوق الفئة', 'Blog Catégorie', '博客类别'),
(778, 'blog_details', 'Blog Details', 'ব্লগ বিবরণ', 'Blog detalles', 'تفاصيل بلوق', 'Détails blog', '博客详细'),
(779, 'blog_title', 'Blog Title', 'ব্লগ শিরোনাম', 'Titulo de Blog', 'عنوان المدونة', 'Titre du Blog', '博客标题'),
(780, 'summery', 'Summery', 'গ্রীষ্মের বৈশিষ্ট্যপূর্ণ', 'Estival', 'صيفي', 'D''été', '综述'),
(781, 'blog_has_been_uploaded!', 'Blog Has Been Uploaded!', 'ব্লগ আপলোড করা হয়েছে!', 'Blog se ha cargado!', 'بلوق تم تحميل!', 'Blog a été téléchargé!', '博客已经上传！'),
(782, 'blog_categories', 'Blog Categories', 'ব্লগ বিভাগ', 'Categorías del blog', 'بلوق الفئات', 'Blog Catégories', '博客分类'),
(783, 'downloadable_product_folder_name', 'Downloadable Product Folder Name', 'ডাউনলোডযোগ্য পণ্য ফোল্ডার নাম', 'Carpeta Descargable Productos', 'تحميل المنتج اسم المجلد', 'Téléchargeable produit Nom du dossier', '可下载的产品文件夹名称'),
(784, 'product_is_a_file', 'Product Is A File', 'পণ্যের একটি ফাইল', 'Producto es un archivo', 'المنتج هو ملف', 'Produit est un fichier', '产品是一个文件'),
(785, 'video', 'Video', 'ভিডিও', 'Vídeo', 'فيديو', 'Vidéo', '视频'),
(786, 'audio', 'Audio', 'অডিও', 'Audio', 'سمعي', 'Acoustique', '音频'),
(787, 'software', 'Software', 'সফটওয়্যার', 'Software', 'البرمجيات', 'Logiciels', '软体'),
(788, 'etc.', 'Etc.', 'প্রভৃতি', 'Etcétera', 'إلخ', 'Etc.', '等等。'),
(789, 'product_file', 'Product File', 'পণ্য ফাইলের', 'Archivo de productos', 'ملف المنتج', 'Fiche produit', '产品文件'),
(790, 'compressed', 'Compressed', 'কম্প্রেস', 'Comprimido', 'مضغوط', 'Comprimé', '压缩'),
(791, 'quick_view', 'Quick View', 'তারাতারি দেখা', 'Vista rápida', 'نظرة سريعة', 'Aperçu', '快速浏览'),
(792, 'compare', 'Compare', 'তুলনা', 'Comparar', 'قارن', 'Comparer', '比'),
(793, 'todays_deal', 'Todays Deal', 'আজকের ডীল', 'Trato de hoy', 'صفقة اليوم', 'Todays affaire', '今天的交易'),
(794, 'product_added_to_compared', 'Product Added To Compared', 'পণ্য তুলনা যোগ', 'Producto añadido a la comparación', 'وأضاف المنتج لمقارنة', 'Produit ajouté à la comparaison', '产品加入对比'),
(795, 'compared', 'Compared', 'তুলনায়', 'Comparado', 'مقارنة', 'Comparé', '相比'),
(796, 'product_removed_from_compare', 'Product Removed From Compare', 'পণ্য তুলনা থেকে সরানো', 'Producto eliminadas del Comparar', 'إزالة المنتجات من قارن', 'Produit retiré du comparateur', '产品移出比较'),
(797, 'compare_category_full', 'Compare Category Full', 'সম্পূর্ণ শ্রেণী তুলনা', 'Comparar Categoría Completo', 'قارن الفئة كامل', 'Comparez Catégorie complet', '比较分类全部'),
(798, 'product_already_added_to_compare', 'Product Already Added To Compare', 'পণ্য ইতিমধ্যে তুলনা যোগ', 'Producto Ya agregación a la comparación', 'المنتج أضفت إلى قارن', 'Produit Déjà ajouté à comparer', '产品已添加到比较'),
(799, 'reset_compare_list', 'Reset Compare List', 'তালিকা তুলনা রিসেট', 'Restablecer la lista de comparación', 'إعادة تعيين قائمة قارن', 'Réinitialiser la liste de comparaison', '复位比较列表'),
(800, 'back_to_home', 'Back To Home', 'বাড়িতে ফিরে যাও', 'De vuelta a casa', 'الرجوع إلى الصفحة الرئيسية', 'De retour à la maison', '返回首页'),
(801, 'latest_blogs', 'Latest Blogs', 'সর্বশেষ ব্লগ', 'Últimos Blogs', 'أحدث المدونات', 'Derniers Blogs', '最新博客'),
(802, 'wish', 'Wish', 'ইচ্ছা', 'Deseos', 'أتمنى', 'Souhaiter', '希望'),
(803, 'wished', 'Wished', 'কাম্য', 'Deseado', 'تمنى', 'Souhaité', '希望'),
(804, 'wishing..', 'Wishing..', 'তবেই ..', 'Deseando..', 'متمنيا ..', 'Souhaitant ..', '许愿..'),
(805, 'unvailable', 'Unvailable', 'Unvailable', 'Unvailable', 'أونفيلبل', 'Unvailable', 'Unvailable'),
(806, 'today''s_deal', 'Today''s Deal', 'আজ এর ডীল', 'La oferta de hoy', 'صفقة اليوم', 'Aujourd''hui, Deal', '今日团购'),
(807, 'digital_product', 'Digital Product', 'ডিজিটাল পণ্য', 'Digital Producto', 'المنتج الرقمي', 'Digitals', '数字产品'),
(808, 'update_product_file', 'Update Product File', 'আপডেট পণ্য ফাইলের', 'Actualizar archivo de Producto', 'تحديث ملف المنتج', 'Mise à jour Fiche produit', '更新产品文件'),
(809, 'maximum_size', 'Maximum Size', 'সর্বাধিক আকার', 'Tamaño máximo', 'الحد الأقصى لحجم', 'Taille maximale', '最大尺寸'),
(810, 'text', 'Text', 'পাঠ', 'Texto', 'نص', 'Texte', '正文'),
(811, 'downloads', 'Downloads', 'জনপ্রিয়তা', 'Descargas', 'التحميلات', 'Téléchargements', '下载'),
(812, 'download', 'Download', 'ডাউনলোড', 'Descargar', 'تحميل', 'Télécharger', '下载'),
(813, 'download_permission_denied', 'Download Permission Denied', 'ডাউনলোড অনুমতি অস্বীকৃত', 'Descargar Permiso denegado', 'تحميل الإذن مرفوض', 'Télécharger Autorisation refusée', '下载权限被拒绝'),
(814, 'product_in_todays_deal!', 'Product In Todays Deal!', 'আজকের চুক্তি পণ্য!', 'Producto en el actual Deal!', 'المنتج في هذه الأيام صفقة!', 'Produit Dans Todays Deal!', '产品在今天的交易！'),
(815, 'product_removed_from_todays_deal!', 'Product Removed From Todays Deal!', 'আজকের চুক্তি থেকে সরানো পণ্য!', 'Producto eliminadas del de hoy Deal!', 'المنتج إزالتها من هذه الأيام صفقة!', 'Produit retiré du Todays Deal!', '产品中删除从今天的交易！'),
(816, 'vendor_locator', 'Vendor Locator', 'বিক্রেতার লোকেটার', 'Localizador de proveedores', 'بائع محدد', 'Localisateur de vendeur', '销售商定位器'),
(817, 'store_locator', 'Store Locator', 'দোকান লোকেটার', 'Localizador de tiendas', 'فروعنا', 'Localisateur de magasin', '新店'),
(818, 'search_vendors', 'Search Vendors', 'অনুসন্ধান বিক্রেতারা', 'Buscar proveedores', 'الباعة بحث', 'Les fournisseurs de recherche', '搜索厂商'),
(819, 'go', 'Go', 'যাওয়া', 'Irse', 'اذهب', 'Aller', '走'),
(820, 'search_vendor_by_title,_location,_address_etc.', 'Search Vendor By Title, Location, Address Etc.', 'শিরোনাম দ্বারা অনুসন্ধান বিক্রেতার, অবস্থান, ঠিকানা ইত্যাদি', 'Búsqueda de proveedores por Título, ubicación, dirección, etc.', 'البحث البائعين حسب العنوان، الموقع، عنوان إلخ', 'Recherche vendeur par titre, Lieu, adresse, etc.', '搜索供应商通过标题，地点，地址等'),
(821, 'search_product_by_title,_description_etc.', 'Search Product By Title, Description Etc.', 'শিরোনাম, বিবরণ ইত্যাদি দ্বারা অনুসন্ধান পণ্য', 'Búsqueda de productos por Título, Descripción Etc.', 'البحث عن منتج حسب العنوان، الوصف إلخ', 'Recherche de produits par Titre, Description Etc.', '产品搜索按标题，描述等，'),
(822, 'top_slides', 'Top Slides', 'শীর্ষ স্লাইড', 'Top Diapositivas', 'أعلى الشرائح', 'Top Diapositives', '小刀架'),
(823, 'manage_slidess', 'Manage Slidess', 'Slidess পরিচালনা', 'Administrar Slidess', 'إدارة Slidess', 'Gérer Slidess', '管理Slidess'),
(824, 'add_slides', 'Add Slides', 'স্লাইড যুক্ত', 'Añadir Diapositivas', 'إضافة الشرائح', 'Ajouter Diapositives', '添加幻灯片'),
(825, 'create_slides', 'Create Slides', 'স্লাইড তৈরি', 'Crear diapositivas', 'إنشاء الشرائح', 'Création de diapositives', '创建幻灯片'),
(826, 'edit_slides', 'Edit Slides', 'সম্পাদনা স্লাইড', 'Editar Diapositivas', 'تحرير الشرائح', 'Modifier les diapositives', '编辑幻灯片'),
(827, 'slides', 'Slides', 'স্লাইড', 'Diapositivas', 'الشرائح', 'Diapositives', '幻灯片'),
(828, 'slider_settings', 'Slider Settings', 'স্লাইডার সেটিংস', 'Configurar deslizador', 'إعدادات المنزلق', 'Réglages Slider', '滑块设置'),
(829, 'layer_slider', 'Layer Slider', 'লেয়ার স্লাইডার', 'Capa deslizante', 'طبقة المتزلج', 'Curseur Layer', '层滑块'),
(830, 'category_menu_slider', 'Category Menu Slider', 'বিভাগ মেনু স্লাইডার', 'Categoría Menú deslizante', 'فئة القائمة المتزلج', 'Catégorie Menu Curseur', '分类菜单滑块'),
(831, 'quick', 'Quick', 'দ্রুত', 'Rápida', 'سريع', 'Vite', '速'),
(832, 'slides_name', 'Slides Name', 'স্লাইড নাম', 'Nombre Diapositivas', 'اسم الشرائح', 'Nom Diapositives', '幻灯片名称'),
(833, 'slides_logo', 'Slides Logo', 'স্লাইড লোগো', 'Diapositivas Logo', 'الشرائح الشعار', 'Diapositives Logo', '幻灯片徽标'),
(834, 'select_slides_logo', 'Select Slides Logo', 'স্লাইড লোগো নির্বাচন', 'Seleccione Diapositivas Logo', 'حدد الشرائح الشعار', 'Sélectionnez Diapositives Logo', '选择幻灯片徽标'),
(835, 'manage_top_slides', 'Manage Top Slides', 'শীর্ষ স্লাইড গালাগাল প্রতিবেদন', 'Administrar Top Diapositivas', 'إدارة الشرائح الأعلى', 'Gérer Top Diapositives', '管理小刀架'),
(836, 'slider_on_/_off', 'Slider On / Off', 'স্লাইডার / বন্ধ', 'Control deslizante de encendido / apagado', 'المنزلق تشغيل / إيقاف', 'Curseur On / Off', '滑开/关'),
(837, 'most_viewed_blogs', 'Most Viewed Blogs', 'ব্লগই দেখা', 'Más Vistas Blogs', 'الأكثر مشاهدة المدونات', 'Meilleurs affichages Blogs', '最多查看博客'),
(838, 'choose_a+product', 'Choose A+product', 'একটি A + পণ্য চয়ন', 'Elija un producto +', 'اختيار المنتج +', 'Choisissez un produit +', '选择A +产品'),
(839, 'choose_a_product', 'Choose A Product', 'একটি পণ্য চয়ন', 'Elija un producto', 'اختر المنتج', 'Choisissez un produit', '选择一个产品'),
(840, 'activate', 'Activate', 'সক্রিয় করা', 'Activar', 'تفعيل', 'Activer', '激活'),
(841, 'select_slide_banner', 'Select Slide Banner', 'নির্বাচন স্লাইড ব্যানার', 'Seleccione Banner Slide', 'حدد شعار الشريحة', 'Sélectionnez Bannière de diapositives', '选择幻灯片旗帜'),
(842, 'downloading...', 'Downloading...', 'ডাউনলোড হচ্ছে ...', 'Descargando ...', 'تحميل ...', 'Téléchargement ...', '下载...'),
(843, 'reporter', 'Reporter', NULL, NULL, NULL, NULL, NULL),
(844, 'manage_reporter', 'Manage Reporter', NULL, NULL, NULL, NULL, NULL),
(845, 'add_reporter', 'Add Reporter', NULL, NULL, NULL, NULL, NULL),
(846, 'create_reporter', 'Create Reporter', NULL, NULL, NULL, NULL, NULL),
(847, 'back_to_reporter_list', 'Back To Reporter List', NULL, NULL, NULL, NULL, NULL),
(848, 'reporter_name', 'Reporter Name', NULL, NULL, NULL, NULL, NULL),
(849, 'reporter_title', 'Reporter Title', NULL, NULL, NULL, NULL, NULL),
(850, 'number_of_reporter_parts', 'Number Of Reporter Parts', NULL, NULL, NULL, NULL, NULL),
(851, 'lets_start_to_create_your_reporter', 'Lets Start To Create Your Reporter', NULL, NULL, NULL, NULL, NULL),
(852, 'edit_reporter', 'Edit Reporter', NULL, NULL, NULL, NULL, NULL),
(853, 'reporter_code', 'Reporter Code', NULL, NULL, NULL, NULL, NULL),
(854, 'reporter_tags', 'Reporter Tags', NULL, NULL, NULL, NULL, NULL),
(855, 'reporter_designation', 'Reporter Designation', NULL, NULL, NULL, NULL, NULL),
(856, 'reporter_phone', 'Reporter Phone', NULL, NULL, NULL, NULL, NULL),
(857, 'reporter_email', 'Reporter Email', NULL, NULL, NULL, NULL, NULL),
(858, 'reporter_address', 'Reporter Address', NULL, NULL, NULL, NULL, NULL),
(859, 'manage_widget', 'Manage Widget', NULL, NULL, NULL, NULL, NULL),
(860, 'add_widget', 'Add Widget', NULL, NULL, NULL, NULL, NULL),
(861, 'create_widget', 'Create Widget', NULL, NULL, NULL, NULL, NULL),
(862, 'back_to_widget_list', 'Back To Widget List', NULL, NULL, NULL, NULL, NULL),
(863, 'widget_name', 'Widget Name', NULL, NULL, NULL, NULL, NULL),
(864, 'widget_title', 'Widget Title', NULL, NULL, NULL, NULL, NULL),
(865, 'detail', 'Detail', NULL, NULL, NULL, NULL, NULL),
(866, 'position', 'Position', NULL, NULL, NULL, NULL, NULL),
(867, 'widget_designation', 'Widget Designation', NULL, NULL, NULL, NULL, NULL),
(868, 'widget_phone', 'Widget Phone', NULL, NULL, NULL, NULL, NULL),
(869, 'widget_email', 'Widget Email', NULL, NULL, NULL, NULL, NULL),
(870, 'widget_address', 'Widget Address', NULL, NULL, NULL, NULL, NULL),
(871, 'widget_type', 'Widget Type', NULL, NULL, NULL, NULL, NULL),
(872, 'widget_detail', 'Widget Detail', NULL, NULL, NULL, NULL, NULL),
(873, 'widget_position', 'Widget Position', NULL, NULL, NULL, NULL, NULL),
(874, 'widget_status', 'Widget Status', NULL, NULL, NULL, NULL, NULL),
(875, 'edit_widget', 'Edit Widget', NULL, NULL, NULL, NULL, NULL),
(876, 'menu', 'Menu', NULL, NULL, NULL, NULL, NULL),
(877, 'manage_menu', 'Manage Menu', NULL, NULL, NULL, NULL, NULL),
(878, 'add_menu', 'Add Menu', NULL, NULL, NULL, NULL, NULL),
(879, 'create_menu', 'Create Menu', NULL, NULL, NULL, NULL, NULL),
(880, 'back_to_menu_list', 'Back To Menu List', NULL, NULL, NULL, NULL, NULL),
(881, 'menu_title', 'Menu Title', NULL, NULL, NULL, NULL, NULL),
(882, 'menu_type', 'Menu Type', NULL, NULL, NULL, NULL, NULL),
(883, 'menu_detail', 'Menu Detail', NULL, NULL, NULL, NULL, NULL),
(884, 'menu_status', 'Menu Status', NULL, NULL, NULL, NULL, NULL),
(885, 'edit_menu', 'Edit Menu', NULL, NULL, NULL, NULL, NULL),
(886, 'poll', 'Poll', NULL, NULL, NULL, NULL, NULL),
(887, 'manage_poll', 'Manage Poll', NULL, NULL, NULL, NULL, NULL),
(888, 'add_poll', 'Add Poll', NULL, NULL, NULL, NULL, NULL),
(889, 'create_poll', 'Create Poll', NULL, NULL, NULL, NULL, NULL),
(890, 'back_to_poll_list', 'Back To Poll List', NULL, NULL, NULL, NULL, NULL),
(891, 'poll_question', 'Poll Question', NULL, NULL, NULL, NULL, NULL),
(892, 'poll_option', 'Poll Option', NULL, NULL, NULL, NULL, NULL),
(893, 'poll_status', 'Poll Status', NULL, NULL, NULL, NULL, NULL),
(894, 'poll_options', 'Poll Options', NULL, NULL, NULL, NULL, NULL),
(895, 'edit_poll', 'Edit Poll', NULL, NULL, NULL, NULL, NULL),
(896, 'news', 'News', NULL, NULL, NULL, NULL, NULL),
(897, 'manage_news', 'Manage News', NULL, NULL, NULL, NULL, NULL),
(898, 'add_news', 'Add News', NULL, NULL, NULL, NULL, NULL),
(899, 'create_news', 'Create News', NULL, NULL, NULL, NULL, NULL),
(900, 'back_to_news_list', 'Back To News List', NULL, NULL, NULL, NULL, NULL),
(901, 'news_question', 'News Question', NULL, NULL, NULL, NULL, NULL),
(902, 'news_options', 'News Options', NULL, NULL, NULL, NULL, NULL),
(903, 'news_status', 'News Status', NULL, NULL, NULL, NULL, NULL),
(904, 'manage_video', 'Manage Video', NULL, NULL, NULL, NULL, NULL),
(905, 'add_video', 'Add Video', NULL, NULL, NULL, NULL, NULL),
(906, 'create_video', 'Create Video', NULL, NULL, NULL, NULL, NULL),
(907, 'back_to_video_list', 'Back To Video List', NULL, NULL, NULL, NULL, NULL),
(908, 'video_title', 'Video Title', NULL, NULL, NULL, NULL, NULL),
(909, 'video_type', 'Video Type', NULL, NULL, NULL, NULL, NULL),
(910, 'video_link', 'Video Link', NULL, NULL, NULL, NULL, NULL),
(911, 'video_status', 'Video Status', NULL, NULL, NULL, NULL, NULL),
(912, 'edit_video', 'Edit Video', NULL, NULL, NULL, NULL, NULL),
(913, 'useful_link', 'Useful Link', NULL, NULL, NULL, NULL, NULL),
(914, 'manage_useful_link', 'Manage Useful Link', NULL, NULL, NULL, NULL, NULL),
(915, 'add_useful_link', 'Add Useful Link', NULL, NULL, NULL, NULL, NULL),
(916, 'create_useful_link', 'Create Useful Link', NULL, NULL, NULL, NULL, NULL),
(917, 'back_to_useful_link_list', 'Back To Useful Link List', NULL, NULL, NULL, NULL, NULL),
(918, 'summary', 'Summary', NULL, NULL, NULL, NULL, NULL),
(919, 'useful_link_title', 'Useful Link Title', NULL, NULL, NULL, NULL, NULL),
(920, 'useful_link_summary', 'Useful Link Summary', NULL, NULL, NULL, NULL, NULL),
(921, 'useful_link_link', 'Useful Link Link', NULL, NULL, NULL, NULL, NULL),
(922, 'edit_useful_link', 'Edit Useful Link', NULL, NULL, NULL, NULL, NULL),
(923, 'useful_link_status', 'Useful Link Status', NULL, NULL, NULL, NULL, NULL),
(924, 'gallery', 'Gallery', NULL, NULL, NULL, NULL, NULL),
(925, 'manage_gallery', 'Manage Gallery', NULL, NULL, NULL, NULL, NULL),
(926, 'add_gallery', 'Add Gallery', NULL, NULL, NULL, NULL, NULL),
(927, 'create_gallery', 'Create Gallery', NULL, NULL, NULL, NULL, NULL),
(928, 'back_to_gallery_list', 'Back To Gallery List', NULL, NULL, NULL, NULL, NULL),
(929, 'gallery_title', 'Gallery Title', NULL, NULL, NULL, NULL, NULL),
(930, 'gallery_status', 'Gallery Status', NULL, NULL, NULL, NULL, NULL),
(931, 'edit_gallery', 'Edit Gallery', NULL, NULL, NULL, NULL, NULL),
(932, 'news_title', 'News Title', NULL, NULL, NULL, NULL, NULL),
(933, 'news_summary', 'News Summary', NULL, NULL, NULL, NULL, NULL),
(934, 'news_description', 'News Description', NULL, NULL, NULL, NULL, NULL),
(935, 'news_date', 'News Date', NULL, NULL, NULL, NULL, NULL),
(936, 'news_admin', 'News Admin', NULL, NULL, NULL, NULL, NULL),
(937, 'news_speciality', 'News Speciality', NULL, NULL, NULL, NULL, NULL),
(938, 'edit_news', 'Edit News', NULL, NULL, NULL, NULL, NULL),
(939, 'menu_summary', 'Menu Summary', NULL, NULL, NULL, NULL, NULL),
(940, 'menu_description', 'Menu Description', NULL, NULL, NULL, NULL, NULL),
(941, 'user_link_summary', 'User Link Summary', NULL, NULL, NULL, NULL, NULL),
(942, 'news_detail', 'News Detail', NULL, NULL, NULL, NULL, NULL),
(943, 'page1', 'Page1', NULL, NULL, NULL, NULL, NULL),
(944, 'page2', 'Page2', NULL, NULL, NULL, NULL, NULL),
(945, 'page3', 'Page3', NULL, NULL, NULL, NULL, NULL),
(946, 'home1', 'Home1', NULL, NULL, NULL, NULL, NULL),
(947, 'news_image', 'News Image', NULL, NULL, NULL, NULL, NULL),
(948, 'select_news_image', 'Select News Image', NULL, NULL, NULL, NULL, NULL),
(949, 'speciality', 'Speciality', NULL, NULL, NULL, NULL, NULL),
(950, 'manage_speciality', 'Manage Speciality', NULL, NULL, NULL, NULL, NULL),
(951, 'add_speciality', 'Add Speciality', NULL, NULL, NULL, NULL, NULL),
(952, 'create_speciality', 'Create Speciality', NULL, NULL, NULL, NULL, NULL),
(953, 'back_to_speciality_list', 'Back To Speciality List', NULL, NULL, NULL, NULL, NULL),
(954, 'edit_speciality', 'Edit Speciality', NULL, NULL, NULL, NULL, NULL),
(955, 'speciality_title', 'Speciality Title', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `detail` longtext,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `title`, `type`, `detail`, `status`) VALUES
(1, 'Tempora est nisi distinctio Autem veniam officiis nisi quia iusto et eaque necessitatibus at ea voluptatem Cupidatat qui omnis adipisicing', 'Voluptates dolor adipisci labore duis consectetur ipsa aliquip qui mollit magni autem earum anim vel aut optio fugiat ipsa atque', 'Sunt ut nulla ut sit Nam porro molestiae non consequuntur qui et eligendi quia molestiae enim quibusdam vitae iste omnis', 1),
(2, 'Quo eaque aspernatur accusamus hic placeat dolor et adipisci modi rem est', 'Neque ipsum aperiam cum dolor quis amet esse temporibus tempore', 'Tempor iure animi et est veniam id quia recusandae Dicta sunt quis aute', 0),
(8, 'In do omnis neque et', 'Occaecat culpa cumque necessitatibus fuga Voluptas veniam dignissimos harum neque ratione voluptate enim aut omnis', 'Earum qui amet, omnis ipsam in est sint deleniti aspernatur ipsa, aut ut excepteur sapiente laborum voluptatem, similique numquam quia maxime culpa dignissimos &nbsp;enim sint necessitatibus eius eaque illo qui blanditiis ea sed harum perferendis atque sit aut deleniti aspernatur quis rerum maxime labore sunt minim harum nostrum enim cupiditate ullamco cupidatat quia deleniti aspernatur soluta illum, autem incididunt in et in excepturi harum adipisci ad consectetur velit error dolor iste consequatur, facilis aliquip doloremque ratione proident, laboris exercitation neque nostrum cupiditate ea proident, pariatur. Velit maiores expedita ad sed culpa dolorum est, occaecat est.dfdfdfdfdfdfdfdfdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `summary` longtext NOT NULL,
  `description` longtext NOT NULL,
  `date` varchar(200) NOT NULL,
  `admin` longtext NOT NULL,
  `speciality_id` varchar(500) NOT NULL DEFAULT '[]',
  `category_id` varchar(200) NOT NULL,
  `view_count` int(11) NOT NULL,
  `reporter_id` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `image` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `summary`, `description`, `date`, `admin`, `speciality_id`, `category_id`, `view_count`, `reporter_id`, `status`, `image`) VALUES
(15, 'Impedit rerum vel assumenda aut consequat Et harum officiis labore quia', 'Quia quo dolor mollit velit voluptatem voluptate eiusmod qui lorem proident, ducimus, nulla non consequatur? Ipsa, excepteur neque impedit, accusantium nesciunt, aliquip repudiandae repudiandae et quos quaerat minus laborum. At et tenetur id.', 'Ut ad cum sunt, quibusdam velit incididunt eius ab duis perferendis eius doloremque et natus quaerat sit similique nostrud dolore voluptatum aut qui sunt magnam numquam debitis sint facere esse rerum alias ipsa, dolorem accusamus consectetur ut provident, et quaerat recusandae. Eveniet, possimus, cumque ut commodo laboris.', '1983-10-26', 'Commodi voluptate cum non doloribus nostrum qui et tempora et', '["1","2"]', '7', 0, '3', 1, ''),
(16, 'Eum officia magnam esse eu reprehenderit explicabo Fugit dolor aut quaerat commodi ea quia dolor dolorum aliquam ullamco doloribus dignissimos', 'Eius et quidem illo vel tempor incididunt eiusmod facere rerum enim magni labore dolorem dignissimos quidem pariatur? Rerum fuga. Quos commodo lorem exercitationem ea quas dolor cupiditate neque ut qui laborum. Dolorem praesentium qui ullam adipisci reprehenderit consequatur? Adipisicing ea ducimus, ipsam ratione aliquip rem quod eiusmod aut ipsum necessitatibus reiciendis enim nihil officiis tempore, et sit, quidem ex sit facilis veritatis fuga. Ullam sequi aliqua. Recusandae. Quasi soluta nobis est explicabo. Culpa, doloremque et omnis et inventore excepturi quae inventore dolorem sit.', 'Molestiae occaecat mollit dolorem quis qui obcaecati quidem perspiciatis, quisquam qui similique sit repudiandae qui perferendis aut at in in in enim veniam, minus corrupti, esse vel eum vel reprehenderit anim dolore aspernatur sunt, qui rerum tempora dolor minus porro officiis minima labore et fugiat, in incidunt, minim id voluptatem, doloribus quasi qui aut eius praesentium minima nobis laudantium, iure incidunt, ipsum labore pariatur? Nam aute facilis quidem et sit aperiam.', '1985-09-02', 'Quos est nisi omnis delectus reprehenderit sit culpa nemo voluptate amet ullam', '["1","4"]', '5', 0, '2', 1, ''),
(17, 'Quaerat possimus voluptatem consequatur Autem reiciendis maxime illo do labore ex voluptatem aut eligendi quas consectetur est modi', 'Quod minima ad labore voluptate ab et deserunt culpa, sed voluptatum hic autem quod ut enim aut debitis voluptatem.', 'Autem ut autem sunt, et aut dolores fuga. Voluptate et occaecat est et qui saepe necessitatibus maxime quam minima do error molestias voluptatem deleniti nihil eos sit sint eiusmod sit, dolores mollitia veniam.', '2015-06-25', 'Enim fugiat commodo non eum et sapiente qui optio animi tenetur voluptatibus obcaecati debitis ex', '["1","2"]', '2', 0, '1', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `page_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `parmalink` varchar(100) DEFAULT NULL,
  `content` longtext,
  `parts` longtext,
  `tag` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `permission_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `codename` varchar(30) DEFAULT NULL,
  `parent_status` varchar(30) DEFAULT NULL,
  `description` longtext
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `name`, `codename`, `parent_status`, `description`) VALUES
(1, 'staff', 'admin', 'parent', ''),
(2, 'edit', 'admin_edit', '1', ''),
(3, 'view', 'admin_view', '1', ''),
(4, 'delete', 'admin_delete', '1', ''),
(5, 'banner', 'banner', 'parent', ''),
(6, 'edit', 'banner_edit', '5', ''),
(7, 'view', 'banner_view', '5', ''),
(8, 'delete', 'banner_delete', '5', ''),
(9, 'brand', 'brand', 'parent', ''),
(10, 'edit', 'brand_edit', '9', ''),
(11, 'view', 'brand_view', '9', ''),
(12, 'delete', 'brand_delete', '9', ''),
(13, 'business settings', 'business_settings', 'parent', ''),
(14, 'edit', 'business_settings_edit', '13', ''),
(15, 'view', 'business_settings_view', '13', ''),
(16, 'delete', 'business_settings_delete', '13', ''),
(17, 'category', 'category', 'parent', ''),
(18, 'edit', 'category_edit', '17', ''),
(19, 'view', 'category_view', '17', ''),
(20, 'delete', 'category_delete', '17', ''),
(21, 'contact message', 'contact_message', 'parent', ''),
(22, 'edit', 'contact_message_edit', '21', ''),
(23, 'view', 'contact_message_view', '21', ''),
(24, 'delete', 'contact_message_delete', '21', ''),
(25, 'site settings', 'site_settings', 'parent', ''),
(26, 'edit', 'site_settings_edit', '25', ''),
(27, 'view', 'site_settings_view', '25', ''),
(28, 'delete', 'site_settings_delete', '25', ''),
(29, 'product', 'product', 'parent', ''),
(30, 'edit', 'product_edit', '29', ''),
(31, 'view', 'product_view', '29', ''),
(32, 'delete', 'product_delete', '29', ''),
(33, 'report', 'report', 'parent', ''),
(34, 'edit', 'report_edit', '33', ''),
(35, 'view', 'report_view', '33', ''),
(36, 'delete', 'report_delete', '33', ''),
(37, 'role', 'role', 'parent', ''),
(38, 'edit', 'role_edit', '37', ''),
(39, 'view', 'role_view', '37', ''),
(40, 'delete', 'role_delete', '37', ''),
(41, 'sale', 'sale', 'parent', ''),
(42, 'edit', 'sale_edit', '41', ''),
(43, 'view', 'sale_view', '41', ''),
(44, 'delete', 'sale_delete', '41', ''),
(45, 'slider', 'slider', 'parent', ''),
(46, 'edit', 'slider_edit', '45', ''),
(47, 'view', 'slider_view', '45', ''),
(48, 'delete', 'slider_delete', '45', ''),
(49, 'stock', 'stock', 'parent', ''),
(50, 'edit', 'stock_edit', '49', ''),
(51, 'view', 'stock_view', '49', ''),
(52, 'delete', 'stock_delete', '49', ''),
(53, 'sub category', 'sub_category', 'parent', ''),
(54, 'edit', 'sub_category_edit', '53', ''),
(55, 'view', 'sub_category_view', '53', ''),
(56, 'delete', 'sub_category_delete', '53', ''),
(57, 'user', 'user', 'parent', ''),
(58, 'edit', 'user_edit', '57', ''),
(59, 'view', 'user_view', '57', ''),
(60, 'delete', 'user_delete', '57', ''),
(61, 'newsletter', 'newsletter', 'parent', ''),
(62, 'language', 'language', 'parent', ''),
(63, 'page', 'page', 'parent', ''),
(64, 'Discount Coupon', 'coupon', 'parent', ''),
(65, 'vendor', 'vendor', 'parent', ''),
(66, 'membership', 'membership', 'parent', ''),
(67, 'SEO', 'seo', 'parent', ''),
(68, 'Membership Payments', 'membership_payment', 'parent', ''),
(69, 'blog', 'blog', 'parent', NULL),
(70, 'slides', 'slides', 'parent', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE IF NOT EXISTS `poll` (
  `poll_id` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `options` longtext NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`poll_id`, `question`, `options`, `status`) VALUES
(1, 'Ut qui molestiae quos aliqua Amet iusto ab eos officia veniam deserunt vero cillum duis quis perspiciatis aliquid omnis ea', 'Quis perferendis minus dolorem in id cum quod est consequuntur enim consequatur Do', 0),
(2, 'Neque amet vel ut in laborum possimus aspernatur quisquam natus exercitationem enim ullam officiis', 'Laborum Consectetur earum enim praesentium et voluptatem libero illum pariatur Est et labore debitis delectus', 1),
(4, 'Magnam sunt, vel quo est earum accusamus ea qui ab placeat, sit, quis adipisci quisquam sed facere nihil amet, reiciendis et sed labore totam quidem quis explicabo. Est, fuga. Quisquam rerum sit, voluptas ipsa, do consequuntur rerum eius ex iure sit, sequi deserunt laudantium, sint, ad nulla cupidatat cupidatat molestiae maxime velit nobis fugiat perspiciatis, et aliquid tempora omnis maxime repellendus. Numquam temporibus quis. &nbsp; dffdfdfdf', 'Vitae eveniet mollit labore occaecat consectetur blanditiis nulla iure quas anim officia quaerat tempor voluptas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reporter`
--

CREATE TABLE IF NOT EXISTS `reporter` (
  `reporter_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reporter`
--

INSERT INTO `reporter` (`reporter_id`, `name`, `designation`, `phone`, `email`, `address`) VALUES
(1, 'xyz', 'sssss', '334343432423', 'sa@dsds.com', 'gfgfgsfdgdgfdgffdgg'),
(2, 'Ivan Schroeder', 'Ipsum accusantium laborum necessitatibus consequatur quia aute et quae', '+229-81-91588391', 'rawyqazyri@gmail.com', 'Omnis ut dignissimos ipsum cum qui obcaecati non lorem et'),
(3, 'Kyle Rice', 'Quisquam sit ipsum porro esse ad est aliquip repellendus Impedit maxime ab molestiae autem itaque incidunt doloremque', '+938-94-2704189', 'retilyti@hotmail.com', 'Amet, anim qui temporibus blanditiis consequat. Iure porro vel enim cumque dolor nisi ab cupidatat veniam, nihil tempora ducimus, repr ehenderit, facere aute ut cumque.fdsfdfdfdfdsfds');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `description` longtext
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`, `permission`, `description`) VALUES
(1, 'master', '', 'Master Admin. Adds Admin. Provides account roles.'),
(5, 'Product Manager', '["13","17","21","37","41","45","49"]', 'Manages Products'),
(4, 'Accountant', '["9","13","17","21"]', 'Accountancy and Support'),
(6, 'Manager', '["5","13","29","33","37","41","57","63"]', 'Manager of Active Super shop');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE IF NOT EXISTS `social_links` (
  `social_links_id` int(11) NOT NULL,
  `type` longtext COLLATE utf8_unicode_ci,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`social_links_id`, `type`, `value`) VALUES
(1, 'facebook', 'http://facebook.com/'),
(2, 'google-plus', 'http://google.com/'),
(3, 'twitter', 'http://twitter.com/'),
(4, 'skype', 'active-classified'),
(5, 'pinterest', 'http://pinterest.com/'),
(6, 'youtube', 'http://youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `speciality`
--

CREATE TABLE IF NOT EXISTS `speciality` (
  `speciality_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `codename` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speciality`
--

INSERT INTO `speciality` (`speciality_id`, `title`, `position`, `codename`) VALUES
(1, 'Editor''s Pick', 'Left', NULL),
(2, 'Slider News', 'Right', NULL),
(3, 'Weekley News', '', NULL),
(4, 'Monthly News', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `email` varchar(600) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ui_settings`
--

CREATE TABLE IF NOT EXISTS `ui_settings` (
  `ui_settings_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ui_settings`
--

INSERT INTO `ui_settings` (`ui_settings_id`, `type`, `value`) VALUES
(1, 'side_bar_pos', NULL),
(2, 'latest_item_div', NULL),
(3, 'most_popular_div', NULL),
(4, 'most_view_div', NULL),
(5, 'filter_div', 'on'),
(6, 'admin_login_logo', '18'),
(7, 'admin_nav_logo', '18'),
(8, 'home_top_logo', '16'),
(9, 'home_bottom_logo', '2'),
(10, 'home_category', '["1","2","3","6"]'),
(11, 'fav_ext', 'png'),
(12, 'side_bar_pos_category', 'right'),
(13, 'home_brand', '["1","2","3","4","5","6"]'),
(14, 'footer_color', NULL),
(15, 'header_color', 'green');

-- --------------------------------------------------------

--
-- Table structure for table `useful_link`
--

CREATE TABLE IF NOT EXISTS `useful_link` (
  `useful_link_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `summary` longtext NOT NULL,
  `link` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useful_link`
--

INSERT INTO `useful_link` (`useful_link_id`, `title`, `summary`, `link`) VALUES
(1, 'Eos temporibus in nisi quidem qui natus eu in et debitis', 'In non sint accusantium maxime voluptate harum nesciunt molestiae', 'Anim et ut quibusdam fugiat ut saepesdfdsfdsfdsfdsfdsfdsfdfd'),
(2, 'Dolorem laborum aut lorem exercitationem est voluptatem', 'Nill &nbsp; um, velit minima.', 'Aut magni fugiat exercitation occaecat elit ducimus modi sint aliquip cumque in');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `username` longtext,
  `surname` varchar(100) DEFAULT NULL,
  `email` longtext,
  `phone` longtext,
  `address1` longtext,
  `address2` longtext,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(30) DEFAULT NULL,
  `langlat` varchar(100) DEFAULT NULL,
  `password` longtext,
  `fb_id` longtext,
  `g_id` varchar(50) DEFAULT NULL,
  `g_photo` longtext,
  `creation_date` longtext,
  `google_plus` longtext,
  `skype` longtext,
  `facebook` longtext,
  `wishlist` longtext,
  `last_login` varchar(50) DEFAULT NULL,
  `downloads` longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `surname`, `email`, `phone`, `address1`, `address2`, `city`, `zip`, `langlat`, `password`, `fb_id`, `g_id`, `g_photo`, `creation_date`, `google_plus`, `skype`, `facebook`, `wishlist`, `last_login`, `downloads`) VALUES
(1, 'Mr. Customer', 'Boy', 'customer@shop.com', '(88) 090 0938', 'Dhaka', 'Bangladesh', 'Dhaka', '1212', '(12.44819535767321, 76.66826244013669)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '', '1436652284', '', '', '', '["115","106","95","117","118"]', '1444986151', '[{"sale":2,"product":"118"},{"sale":4,"product":"119"},{"sale":5,"product":"118"},{"sale":5,"product":"120"},{"sale":6,"product":"121"},{"sale":7,"product":"122"},{"sale":7,"product":"121"}]');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `video_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`video_id`, `title`, `link`, `type`, `status`) VALUES
(1, 'Quis in esse minima laboris similique ipsum voluptas eveniet non neque id exercitationem numquam', 'Mollitia itaque sit doloremque qui', 'Nobis quod sint in veniam adipisci ullamco nemo magni porro voluptatibus harum non officia minus fugit ea nostrum iure qui', 1);

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE IF NOT EXISTS `widget` (
  `widget_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `detail` longtext NOT NULL,
  `position` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `widget`
--

INSERT INTO `widget` (`widget_id`, `title`, `type`, `detail`, `position`, `status`) VALUES
(1, 'Voluptates molestias fugiat pariatur Debitis necessitatibus quibusdam non maiores expedita vel mollitia', 'Placeat dolor doloremque et est magnam et in asperiores debitis voluptatibus magni nobis quis est', 'Quis obcaecati cumque deserunt commodo omnis quis', 'Sunt facilis occaecat minim dolor omnis ex sint hic qui culpa est doloremque tempora quis in velit', 1),
(3, 'Voluptatem ex eos non assumenda', 'Ipsam similique fugit eveniet qui excepturi rerum culpa', 'endus. Exercitation iure numquam est labore quibusdam quo fuga. Irure assumenda ut est id, ut ipsum, veniam, ratione aut culpa ea perspiciatis, quis pariatur. Consequatur? Quis voluptatem, qui incididunt quo molestiae quo sed inventore sint sapiente quia facere laboriosam, enim enim laborum. In quia molestias sapiente corporis labore.', 'Qui deserunt id reprehenderit omnis ratione earum adipisci tempora excepteur nulla qui nostrum nisi aut totam', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`general_settings_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`poll_id`);

--
-- Indexes for table `reporter`
--
ALTER TABLE `reporter`
  ADD PRIMARY KEY (`reporter_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`social_links_id`);

--
-- Indexes for table `speciality`
--
ALTER TABLE `speciality`
  ADD PRIMARY KEY (`speciality_id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `ui_settings`
--
ALTER TABLE `ui_settings`
  ADD PRIMARY KEY (`ui_settings_id`);

--
-- Indexes for table `useful_link`
--
ALTER TABLE `useful_link`
  ADD PRIMARY KEY (`useful_link_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`widget_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `general_settings_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `word_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=956;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `poll`
--
ALTER TABLE `poll`
  MODIFY `poll_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `reporter`
--
ALTER TABLE `reporter`
  MODIFY `reporter_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `social_links_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `speciality`
--
ALTER TABLE `speciality`
  MODIFY `speciality_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ui_settings`
--
ALTER TABLE `ui_settings`
  MODIFY `ui_settings_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `useful_link`
--
ALTER TABLE `useful_link`
  MODIFY `useful_link_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
  MODIFY `widget_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
