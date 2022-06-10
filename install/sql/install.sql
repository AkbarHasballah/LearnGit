SET sql_mode = '';

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `script` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `serial_position` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`id`, `name`, `page`, `image`, `script`, `url`, `serial_position`, `status`, `date`) VALUES
(5, 'news-sidebar-top', 9, 'upload/advertisement/dff78ee612b37fc12c9e7fa94839d855.jpg', NULL, 'https://www.bdtask.com/', 1, 1, '2018-07-09 07:00:40'),
(6, 'news-sidebar-bottom', 9, 'upload/advertisement/7fabc49dd69e0a0d6e111f3fcae0118a.jpg', NULL, 'https://www.bdtask.com/', 2, 1, '2018-07-09 07:02:18'),
(7, 'news-top', 9, 'upload/advertisement/ff5a204fdd1722068e78222fd1d24a82.jpg', NULL, 'https://www.bdtask.com/', 3, 1, '2018-07-09 06:54:51'),
(8, 'news-bottom', 9, '/upload/advertisement/1614672574_04f30fde1bca314f6013.png', NULL, 'https://www.bdtask.com/', 4, 1, '2021-03-01 20:09:34'),
(9, 'news details-top', 26, '/upload/advertisement/1614672536_9bb671550e7dbf3570a2.png', NULL, 'https://www.bdtask.com/', 3, 1, '2021-03-01 20:08:57'),
(10, 'news details-bottom', 26, '/upload/advertisement/1614672514_0ec53a71097b84c63a82.png', NULL, 'https://www.bdtask.com/', 4, 1, '2021-03-01 20:08:34'),
(11, 'news details-sidebar-top', 26, '/upload/advertisement/1614672490_566192aff15693225bd1.png', NULL, 'https://www.bdtask.com/', 1, 1, '2021-03-01 20:08:11'),
(12, 'news details-sidebar-bottom', 26, '/upload/advertisement/1614657834_eb2d5f67f41ab46b4194.png', NULL, 'https://www.bdtask.com/', 2, 1, '2021-03-01 16:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `coinpayments_payments`
--

CREATE TABLE `coinpayments_payments` (
  `id` int(11) NOT NULL,
  `amount1` double NOT NULL,
  `amount2` double NOT NULL,
  `buyer_name` varchar(100) NOT NULL,
  `currency1` varchar(100) NOT NULL,
  `currency2` varchar(100) NOT NULL,
  `fee` double NOT NULL,
  `ipn_id` text NOT NULL,
  `ipn_mode` varchar(20) NOT NULL,
  `ipn_type` varchar(20) NOT NULL,
  `ipn_version` varchar(20) NOT NULL,
  `merchant` text NOT NULL,
  `received_amount` double NOT NULL,
  `received_confirms` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `status_text` text NOT NULL,
  `txn_id` text NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cryptolist`
--

CREATE TABLE `cryptolist` (
  `cid` int(11) NOT NULL,
  `Id` int(11) NOT NULL,
  `Url` varchar(300) DEFAULT NULL,
  `ImageUrl` varchar(300) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Symbol` varchar(100) NOT NULL,
  `CoinName` varchar(100) DEFAULT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `Algorithm` varchar(100) DEFAULT NULL,
  `ProofType` varchar(100) DEFAULT NULL,
  `FullyPremined` varchar(100) DEFAULT NULL,
  `TotalCoinSupply` varchar(100) DEFAULT NULL,
  `PreMinedValue` varchar(100) DEFAULT NULL,
  `TotalCoinsFreeFloat` varchar(100) DEFAULT NULL,
  `SortOrder` int(11) DEFAULT NULL,
  `Sponsored` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_payments`
--

CREATE TABLE `crypto_payments` (
  `paymentID` int(11) UNSIGNED NOT NULL,
  `boxID` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `boxType` enum('paymentbox','captchabox') NOT NULL,
  `orderID` varchar(50) NOT NULL DEFAULT '',
  `userID` varchar(50) NOT NULL DEFAULT '',
  `countryID` varchar(3) NOT NULL DEFAULT '',
  `coinLabel` varchar(6) NOT NULL DEFAULT '',
  `amount` double(20,8) NOT NULL DEFAULT 0.00000000,
  `amountUSD` double(20,8) NOT NULL DEFAULT 0.00000000,
  `unrecognised` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `addr` varchar(34) NOT NULL DEFAULT '',
  `txID` char(64) NOT NULL DEFAULT '',
  `txDate` datetime DEFAULT NULL,
  `txConfirmed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `txCheckDate` datetime DEFAULT NULL,
  `processed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `processedDate` datetime DEFAULT NULL,
  `recordCreated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_affiliation`
--

CREATE TABLE `dbt_affiliation` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `commission` double(19,8) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_affiliation`
--

INSERT INTO `dbt_affiliation` (`id`, `type`, `commission`, `status`) VALUES
(1, 'PERCENT', 20.00000000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_balance`
--

CREATE TABLE `dbt_balance` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `balance` double(19,8) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_balance_log`
--

CREATE TABLE `dbt_balance_log` (
  `log_id` bigint(22) NOT NULL,
  `balance_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `transaction_type` varchar(100) NOT NULL,
  `transaction_amount` double(19,8) NOT NULL,
  `transaction_fees` double(19,8) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_biding`
--

CREATE TABLE `dbt_biding` (
  `id` bigint(22) NOT NULL,
  `bid_type` varchar(50) NOT NULL,
  `bid_price` double(19,8) NOT NULL,
  `bid_qty` double(19,8) NOT NULL,
  `bid_qty_available` double(19,8) NOT NULL,
  `total_amount` double(19,8) NOT NULL,
  `amount_available` double(19,8) NOT NULL,
  `coin_id` varchar(50) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `market_id` int(100) DEFAULT NULL,
  `market_symbol` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `open_order` timestamp NOT NULL DEFAULT current_timestamp(),
  `fees_amount` double(19,8) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '"1=Complete, 2=Running"'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_biding_log`
--

CREATE TABLE `dbt_biding_log` (
  `log_id` bigint(22) NOT NULL,
  `bid_id` bigint(22) NOT NULL,
  `bid_type` varchar(10) NOT NULL,
  `bid_price` double(19,8) NOT NULL,
  `complete_qty` double(19,8) NOT NULL,
  `complete_amount` double(19,8) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `coin_id` varchar(100) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `market_id` int(11) DEFAULT NULL,
  `market_symbol` varchar(100) NOT NULL,
  `success_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fees_amount` double(19,8) NOT NULL,
  `available_amount` double(19,8) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_blocklist`
--

CREATE TABLE `dbt_blocklist` (
  `id` bigint(20) NOT NULL,
  `ip_mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_chat`
--

CREATE TABLE `dbt_chat` (
  `id` bigint(21) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_coinhistory`
--

CREATE TABLE `dbt_coinhistory` (
  `id` int(11) NOT NULL,
  `coin_symbol` varchar(100) NOT NULL,
  `market_symbol` varchar(100) NOT NULL,
  `last_price` double(19,8) NOT NULL,
  `total_coin_supply` double(19,8) NOT NULL,
  `price_high_1h` double(19,8) NOT NULL,
  `price_low_1h` double(19,8) NOT NULL,
  `price_change_1h` double(19,8) NOT NULL,
  `volume_1h` double(19,8) NOT NULL,
  `price_high_24h` double(19,8) NOT NULL,
  `price_low_24h` double(19,8) NOT NULL,
  `price_change_24h` double(19,8) NOT NULL,
  `volume_24h` double(19,8) NOT NULL,
  `open` double(19,8) NOT NULL,
  `close` double(19,8) NOT NULL,
  `volumefrom` double(19,8) NOT NULL,
  `volumeto` double(19,8) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_coinpair`
--

CREATE TABLE `dbt_coinpair` (
  `id` int(11) NOT NULL,
  `market_id` int(11) DEFAULT NULL,
  `market_symbol` varchar(100) NOT NULL,
  `coin_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `symbol` varchar(100) NOT NULL,
  `initial_price` double(19,8) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_coinpair`
--

INSERT INTO `dbt_coinpair` (`id`, `market_id`, `market_symbol`, `coin_id`, `currency_symbol`, `name`, `full_name`, `symbol`, `initial_price`, `status`) VALUES
(1, NULL, 'BTC', NULL, 'LTC', 'BTC/ LTC', 'Litecoin Exchange', 'LTC_BTC', NULL, 1),
(2, NULL, 'BTC', NULL, 'DASH', 'BTC/ DASH', 'DASH Exchange', 'DASH_BTC', 0.00000000, 1),
(3, NULL, 'BTC', NULL, 'DOGE', 'BTC/ DOGE', 'Dogecoin (DOGE) Exchange', 'DOGE_BTC', 0.00000000, 1),
(4, NULL, 'USD', NULL, 'BTC', 'USDT/ BTC', 'Bitcoin (BTC) Exchange', 'BTC_USD', 0.00000000, 1),
(5, NULL, 'USD', NULL, 'LTC', 'USDT/ LTC', 'Litecoin (LTC) Exchange', 'LTC_USD', 0.00000000, 1),
(6, NULL, 'USD', NULL, 'DASH', 'USDT/ DASH', 'DigitalCash (DASH) Exchange', 'DASH_USD', 0.00000000, 1),
(7, NULL, 'USD', NULL, 'DOGE', 'USDT/ DOGE', 'Dfrtrft', 'DOGE_USD', 0.00000000, 1),
(8, NULL, 'LTC', NULL, 'BTC', 'LTC/ BTC', 'Bitcoin (BTC) Exchange', 'BTC_LTC', 0.00000000, 1),
(9, NULL, 'BTC', NULL, 'ETH', 'ETH/BTC', 'Bitcoin (BTC) Exchange	', 'ETH_BTC', 0.00000000, 1),
(10, NULL, 'BTC', NULL, 'XMR', 'XMR/BTC', 'Bitcoin (BTC) Exchange	', 'XMR_BTC', 0.00000000, 1),
(11, NULL, 'BTC', NULL, 'ZEC', 'ZEC/BTC', 'Bitcoin (BTC) Exchange	', 'ZEC_BTC', 0.00000000, 1),
(12, NULL, 'BTC', NULL, 'RDD', 'RDD/BTC', 'Bitcoin (BTC) Exchange	', 'RDD_BTC', 0.00000000, 0),
(13, NULL, 'BTC', NULL, 'VTC', 'VTC/BTC', 'Bitcoin (BTC) Exchange	', 'VTC_BTC', 0.00000000, 1),
(14, NULL, 'BTC', NULL, 'BCH', 'BCC/BTC', 'Bitcoin (BTC) Exchange	', 'BCH_BTC', 0.00000000, 1),
(15, NULL, 'BTC', NULL, 'USD', 'USD/BTC', 'Bitcoin (BTC) Exchange	', 'USD_BTC', 0.00000000, 1),
(16, NULL, 'USD', NULL, 'ETH', 'ETH/USDT', 'Bitcoin (BTC) Exchange	', 'ETH_USD', 0.00000000, 1),
(17, NULL, 'BTC', NULL, 'XRP', 'XRP/BTC', 'Bitcoin (BTC) Exchange	', 'XRP_BTC', 0.00000000, 1),
(18, NULL, 'BTC', NULL, 'XVG', 'XVG/BTC', 'Bitcoin (BTC) Exchange	', 'XVG_BTC', 0.00000000, 1),
(19, NULL, 'BTC', NULL, 'ETC', 'ETC/BTC', 'Bitcoin (BTC) Exchange', 'ETC_BTC', 0.00000000, 1),
(20, NULL, 'BTC', NULL, 'XLM', 'XLM/BTC', 'Bitcoin (BTC) Exchange	', 'XLM_BTC', 0.00000000, 1),
(21, NULL, 'BTC', NULL, 'XEM', 'XEM/BTC', 'Bitcoin (BTC) Exchange	', 'XEM_BTC', 0.00000000, 1),
(22, NULL, 'BTC', NULL, 'SC', 'SC/BTC', 'Bitcoin (BTC) Exchange	', 'SC_BTC', 0.00000000, 1),
(23, NULL, 'BTC', NULL, 'WAVES', 'WAVES/BTC', 'Bitcoin (BTC) Exchange	', 'WAVES_BTC', 0.00000000, 1),
(24, NULL, 'BTC', NULL, 'NEO', 'NEO/BTC', 'Bitcoin (BTC) Exchange	', 'NEO_BTC', 0.00000000, 1),
(25, NULL, 'BTC', NULL, 'GNT', 'GNT/BTC', 'Bitcoin (BTC) Exchange	', 'GNT_BTC', 0.00000000, 1),
(26, NULL, 'BTC', NULL, 'BAT', 'BAT/BTC', 'Bitcoin (BTC) Exchange	', 'BAT_BTC', 0.00000000, 1),
(27, NULL, 'BTC', NULL, 'OMG', 'OMG/BTC', 'Bitcoin (BTC) Exchange	', 'OMG_BTC', 0.00000000, 1),
(28, NULL, 'BTC', NULL, 'IOT', 'IOTA/BTC', 'Bitcoin (BTC) Exchange	', 'IOT_BTC', 0.00000000, 1),
(29, NULL, 'BTC', NULL, 'ONT', 'ONT/BTC', 'Bitcoin (BTC) Exchange	', 'ONT_BTC', 0.00000000, 1),
(30, NULL, 'DOGE', NULL, 'Select Option', 'ETN/BTC', 'Bitcoin (BTC) Exchange	', 'Select Option_Select Option', 0.00000000, 1),
(31, NULL, 'LTC', NULL, 'MUE', 'ADA/BTC', 'Bitcoin (BTC)Exchange', 'MUE_LTC', 0.00000000, 1),
(32, NULL, 'DOGE', NULL, 'LTC', 'cointest', 'cointest', 'LTC_DOGE', 0.00000000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_country`
--

CREATE TABLE `dbt_country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_country`
--

INSERT INTO `dbt_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', 'ATA', NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', 'IOT', NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', 'CXR', NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', 'CCK', NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263),
(240, 'RS', 'SERBIA', 'Serbia', 'SRB', 688, 381),
(241, 'AP', 'ASIA PACIFIC REGION', 'Asia / Pacific Region', '0', 0, 0),
(242, 'ME', 'MONTENEGRO', 'Montenegro', 'MNE', 499, 382),
(243, 'AX', 'ALAND ISLANDS', 'Aland Islands', 'ALA', 248, 358),
(244, 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 599),
(245, 'CW', 'CURACAO', 'Curacao', 'CUW', 531, 599),
(246, 'GG', 'GUERNSEY', 'Guernsey', 'GGY', 831, 44),
(247, 'IM', 'ISLE OF MAN', 'Isle of Man', 'IMN', 833, 44),
(248, 'JE', 'JERSEY', 'Jersey', 'JEY', 832, 44),
(249, 'XK', 'KOSOVO', 'Kosovo', '---', 0, 381),
(250, 'BL', 'SAINT BARTHELEMY', 'Saint Barthelemy', 'BLM', 652, 590),
(251, 'MF', 'SAINT MARTIN', 'Saint Martin', 'MAF', 663, 590),
(252, 'SX', 'SINT MAARTEN', 'Sint Maarten', 'SXM', 534, 1),
(253, 'SS', 'SOUTH SUDAN', 'South Sudan', 'SSD', 728, 211);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_cryptocoin`
--

CREATE TABLE `dbt_cryptocoin` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `url` varchar(300) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) NOT NULL,
  `coin_name` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `algorithm` varchar(100) DEFAULT NULL,
  `proof_type` varchar(100) DEFAULT NULL,
  `show_home` int(11) DEFAULT 0,
  `coin_position` int(11) DEFAULT 0,
  `premined_value` varchar(100) DEFAULT NULL,
  `total_coins_freefloat` varchar(100) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `sponsored` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dbt_cryptocoin`
--

INSERT INTO `dbt_cryptocoin` (`id`, `cid`, `url`, `image`, `name`, `symbol`, `coin_name`, `full_name`, `algorithm`, `proof_type`, `show_home`, `coin_position`, `premined_value`, `total_coins_freefloat`, `rank`, `sponsored`, `status`) VALUES
(10, 7605, '/coins/eth/overview', '/upload/coinlist/eth_logo.png', 'ETH', 'ETH', 'Ethereum', 'Ethereum (ETH)', '', 'PoW', 1, 14, 'N/A', 'N/A', 2, '0', 1),
(11, 5038, '/coins/xmr/overview', './upload/coinlist/xmr.png', 'XMR', 'XMR', 'Monero', 'Monero (XMR)', '', 'PoW', 1, 15, 'N/A', 'N/A', 5, '0', 1),
(14, 4432, '/coins/doge/overview', './upload/coinlist/doge.png', 'DOGE', 'DOGE', 'Dogecoin', 'Dogecoin (DOGE)', '', 'PoW', 1, 5, 'N/A', 'N/A', 8, '0', 1),
(15, 24854, '/coins/zec/overview', './upload/coinlist/zec.png', 'ZEC', 'ZEC', 'ZCash', 'ZCash (ZEC)', '', 'PoW', 1, 16, 'N/A', 'N/A', 9, '0', 1),
(19, 2349, '/coins/ppc/overview', './upload/coinlist/peercoin-logo.png', 'PPC', 'PPC', 'PeerCoin', 'PeerCoin (PPC)', '', 'N/A', 1, 11, 'N/A', 'N/A', 14, '0', 1),
(117, 4524, '/coins/ftc/overview', './upload/coinlist/ftc.png', 'FTC', 'FTC', 'FeatherCoin', 'FeatherCoin (FTC)', '', 'PoW', 1, 9, 'N/A', 'N/A', 120, '0', 1),
(183, 4592, '/coins/rdd/overview', './upload/coinlist/rdd.png', 'RDD', 'RDD', 'ReddCoin', 'ReddCoin (RDD)', '', 'PoW/PoS', 1, 7, 'N/A', 'N/A', 188, '0', 1),
(202, 4614, '/coins/xlm/overview', './upload/coinlist/str.png', 'XLM', 'XLM', 'Stellar', 'Stellar (XLM)', '', 'N/A', 1, 20, 'N/A', 'N/A', 208, '0', 1),
(225, 5018, '/coins/vtc/overview', './upload/coinlist/vtc.png', 'VTC', 'VTC', 'VertCoin', 'VertCoin (VTC)', '', 'PoW', 1, 10, 'N/A', 'N/A', 232, '0', 1),
(247, 5285, '/coins/xem/overview', './upload/coinlist/xem.png', 'XEM', 'XEM', 'NEM', 'NEM (XEM)', '', 'PoI', 1, 21, 'N/A', 'N/A', 254, '0', 1),
(548, 20728, '/coins/unit/overview', './upload/coinlist/unit.png', 'UNIT', 'UNIT', 'Universal Currency', 'Universal Currency (UNIT)', '', 'PoW/PoS', 1, 13, 'N/A', 'N/A', 566, '0', 1),
(634, 22325, '/coins/mue/overview', './upload/coinlist/mue.png', 'MUE', 'MUE', 'MonetaryUnit', 'MonetaryUnit (MUE)', '', 'PoW', 1, 12, 'N/A', 'N/A', 655, '0', 1),
(1192, 127356, '/coins/iot/overview', './upload/coinlist/iota_logo.png', 'IOT', 'IOT', 'IOTA', 'IOTA (IOT)', '', 'Tangle', 1, 18, 'N/A', 'N/A', 1247, '0', 1),
(1296, 187440, '/coins/omg/overview', './upload/coinlist/omisego.png', 'OMG', 'OMG', 'OmiseGo', 'OmiseGo (OMG)', '', 'PoS', 1, 17, 'N/A', 'N/A', 1362, '0', 1),
(1356, 202330, '/coins/bch/overview', './upload/coinlist/bch.jpg', 'BCH', 'BCH', 'Bitcoin Cash / BCC', 'Bitcoin Cash / BCC (BCH)', '', 'PoW', 1, 2, 'N/A', 'N/A', 1425, '0', 1),
(2041, 4433, '/coins/xvg/overview', './upload/coinlist/xvg.png', 'XVG', 'XVG', 'Verge', 'Verge (XVG)', '', 'PoW', 1, 22, 'N/A', 'N/A', 99, '0', 1),
(2084, 3807, '/coins/dash/overview', './upload/coinlist/imageedit_27_4355944719.png', 'DASH', 'DASH', 'DigitalCash', 'DigitalCash (DASH)', '', 'PoW/PoS', 1, 4, 'N/A', 'N/A', 4, '0', 1),
(2146, 792725, '/coins/spd/overview', './upload/coinlist/spd.png', 'SPD', 'SPD', 'Stipend', 'Stipend (SPD)', '', 'PoW/PoS', 1, 6, 'N/A', 'N/A', 2403, '0', 1),
(2211, 1182, '/coins/btc/overview', './upload/coinlist/btc.png', 'BTC', 'BTC', 'Bitcoin', 'Bitcoin (BTC)', '', 'PoW', 1, 1, 'N/A', 'N/A', 1, '0', 1),
(2216, 808414, '/coins/ont/overview', './upload/coinlist/ont.jpg', 'ONT', 'ONT', 'Ontology', 'Ontology (ONT)', '', 'N/A', 1, 19, 'N/A', 'N/A', 2446, '0', 1),
(2243, 3808, '/coins/ltc/overview', './upload/coinlist/litecoin-logo.png', 'LTC', 'LTC', 'Litecoin', 'Litecoin (LTC)', '', 'PoW', 1, 3, 'N/A', 'N/A', 3, '0', 1),
(2301, 166503, '/coins/eos/overview', './upload/coinlist/eos_1.png', 'EOS', 'EOS', 'EOS', 'EOS (EOS)', '', 'DPoS', 1, 23, 'N/A', 'N/A', 1274, '0', 1),
(2336, 1, '/coins/chf/overview', '/upload/coinlist/1615179892_5da6602c1a189c9cc897.jpg', 'USD', 'USD', 'Dollar', 'USD Dollar', NULL, 'N/A', 0, 2000, 'N/A', 'N/A', 1, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_deposit`
--

CREATE TABLE `dbt_deposit` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `amount` double(19,8) NOT NULL,
  `method_id` varchar(50) NOT NULL,
  `fees_amount` double(19,8) NOT NULL,
  `comment` text DEFAULT NULL,
  `deposit_date` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Pending, 1= confirm, 2=Cancel',
  `ip` varchar(50) NOT NULL,
  `approved_cancel_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_fees`
--

CREATE TABLE `dbt_fees` (
  `id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `fees` double NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_market`
--

CREATE TABLE `dbt_market` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `full_name` varchar(300) NOT NULL,
  `symbol` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_market`
--

INSERT INTO `dbt_market` (`id`, `name`, `full_name`, `symbol`, `status`) VALUES
(1, 'BTC', 'BTC Market', 'BTC', 1),
(2, 'USD', 'USDT Market', 'USD', 1),
(3, 'LTC', 'LTC Market', 'LTC', 1),
(4, 'Doge', 'Dogecoin Market', 'DOGE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_payout_method`
--

CREATE TABLE `dbt_payout_method` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `method` varchar(250) NOT NULL,
  `wallet_id` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_security`
--

CREATE TABLE `dbt_security` (
  `id` int(11) NOT NULL,
  `keyword` varchar(20) NOT NULL,
  `data` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_security`
--

INSERT INTO `dbt_security` (`id`, `keyword`, `data`, `status`) VALUES
(1, 'url', '{\"url\":\"http:\\/\\/localhost\\/tradebox_ci4_final_test\\/\"}', 0),
(2, 'login', '{\"duration\":\"30\",\"wrong_try\":\"3\",\"ip_block\":\"3\"}', 0),
(3, 'https', '{\"cookie_secure\":0,\"cookie_http\":0}', 0),
(4, 'xss_filter', '', 0),
(5, 'csrf_token', '', 1),
(6, 'capture', '{\"site_key\":\"6Lddh0AUAAAAAJm25vFsAOOG0Hixa1ZVg17jQ9ca\",\"secret_key\":\"6Lddh0AUAAAAAHNQXul04PdL7ponU4N9QiKywGt-\"}', 0),
(7, 'sms', '', 0),
(8, 'encryption', '', 0),
(9, 'password', '', 0),
(10, 'email', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_sms_email_template`
--

CREATE TABLE `dbt_sms_email_template` (
  `id` int(11) NOT NULL,
  `sms_or_email` varchar(10) NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `subject_en` varchar(300) NOT NULL,
  `subject_fr` varchar(300) NOT NULL,
  `template_en` varchar(300) NOT NULL,
  `template_fr` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_sms_email_template`
--

INSERT INTO `dbt_sms_email_template` (`id`, `sms_or_email`, `template_name`, `subject_en`, `subject_fr`, `template_en`, `template_fr`) VALUES
(1, 'sms', 'transfer_verification', 'Transfer Verification Code', 'Transfer Verification Code', 'You are about to transfar %amount% to the account %receiver_id% Your code is %code%\r\n', 'Vous êtes sur le point de transférer %amount% sur le compte %receiver_id% Votre code est  %code%\r\n'),
(2, 'email', 'transfer_verification', 'Transfer Verification', 'Transfer Verification', 'You are about to transfar %amount% to the account %receiver_id%  Your code is %varify_code%', 'Vous êtes sur le point de transférer %amount% sur le compte %receiver_id% Votre code est %varify_code% '),
(3, 'sms', 'transfer_success', 'Transfer Confirm', 'Transfer Confirm', 'You successfully transfer The amount $%amount% to the account %receiver_id%. Your new balance is %new_balance%', 'You successfully transfer The amount $%amount% to the account %receiver_id%. Your new balance is %new_balance%'),
(4, 'email', 'transfer_success', 'Tranfer Confirm', 'Tranfer Confirm', 'You successfully transfer The amount $%amount% to the account %receiver_id%. Your new balance is %new_balance%', 'You successfully transfer The amount $%amount% to the account %receiver_id%. Your new balance is %new_balance%'),
(5, 'sms', 'withdraw_verification', '', '', 'You Withdraw The Amount Is %amount% The Verification Code is <h1>%varify_code%</h1>', 'You Withdraw The Amount Is %amount% The Verification Code is <h1>%varify_code%</h1>'),
(6, 'email', 'withdraw_verification', '', '', 'You Withdraw The Amount Is %amount% The Verification Code is <h1>%varify_code%</h1>', 'You Withdraw The Amount Is %amount% The Verification Code is <h1>%varify_code%</h1>'),
(7, 'sms', 'withdraw_success', 'Withdraw Success', 'Withdraw Success', 'Hi, %name% You successfully withdraw the amount is $%amount% from your account. Your new balance is $%new_balance%', 'Hi, %name% You successfully withdraw the amount is $%amount% from your account. Your new balance is $%new_balance%'),
(8, 'email', 'withdraw_success', 'Withdraw', 'Withdraw', 'You successfully withdraw the amount is $%amount% from your account. Your new balance is $%new_balance%', 'You successfully withdraw the amount is $%amount% from your account. Your new balance is $%new_balance%'),
(9, 'email', 'forgot_password', '', '', 'The Verification Code is <h1>%varify_code%</h1>', 'The Verification Code is <h1>%varify_code%</h1>'),
(10, 'sms', 'deposit_success', 'Deposit', 'Deposit', 'Hi, %name% You Successfully  Deposit The Amount Is %amount%  date %date%', 'Hi, %name% You Successfully  Deposit The Amount Is %amount%  date %date%'),
(11, 'email', 'deposit_success', 'Deposit', 'Deposit', 'You successfully deposit the amount is %amount%. ', 'You successfully deposit the amount is %amount%. '),
(12, 'email', 'registered', 'Account Activation', 'Account Activation', 'Your account was created successfully, Please click on the link below to activate your account. %url%\r\n', 'Votre compte a &eacute;t&eacute; cr&eacute;&eacute; avec succ&egrave;s, veuillez cliquer sur le lien ci-dessous pour activer votre compte.&nbsp;%url%\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `dbt_theme`
--

CREATE TABLE `dbt_theme` (
  `id` int(11) NOT NULL,
  `settings` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbt_theme`
--

INSERT INTO `dbt_theme` (`id`, `settings`, `status`) VALUES
(1, '{\"body_background_color\":\"#060d13\",\"body_font_color\":\"#cdcfd0\",\"menu_bg_color\":\"#121d27\",\"menu_font_color\":\"#cdcfd0\",\"footer_bg_color\":\"#121d27\",\"footer_font_color\":\"#cdcfd0\",\"btn_bg_color\":\"#137000\",\"btn_font_color\":\"#cdcfd0\",\"top_footer_horizontal_border_color\":\"#262d34\",\"footer_menu_border_color\":\"#262d34\",\"bottom_footer_background_color\":\"#1b2c3a\",\"bottom_footer_font_color\":\"#cdcfd0\",\"theme_color\":\"#02c2f2\",\"newslatter_bg\":\"#4f4c54\",\"newslatter_font\":\"#cdcfd0\",\"form_background_color\":\"#0d0d0d\",\"form_border_color\":\"#262d34\",\"form_label_color\":\"#cdcfd0\",\"form_input_field_background_color\":\"#121d27\",\"input_field_border_color\":\"#262d34\",\"input_field_color\":\"#cdcfd0\",\"newslatter_img\":\"/upload\\/themes\\/1616220036_e03437cfd67b78919818.jpg\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dbt_transaction_setup`
--

CREATE TABLE `dbt_transaction_setup` (
  `id` int(11) NOT NULL,
  `trntype` varchar(20) NOT NULL,
  `acctype` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) NOT NULL,
  `lower` double(19,8) NOT NULL,
  `upper` double(19,8) NOT NULL,
  `duration` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_transfer`
--

CREATE TABLE `dbt_transfer` (
  `id` int(11) NOT NULL,
  `sender_user_id` varchar(255) DEFAULT NULL,
  `receiver_user_id` varchar(255) DEFAULT NULL,
  `amount` double(19,8) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `fees` double(19,8) NOT NULL,
  `request_ip` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `comments` mediumtext DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='client to client transfer success, request data recorded.';

-- --------------------------------------------------------

--
-- Table structure for table `dbt_user`
--

CREATE TABLE `dbt_user` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password_reset_token` varchar(300) DEFAULT NULL,
  `googleauth` varchar(100) DEFAULT NULL,
  `referral_id` varchar(100) DEFAULT NULL,
  `referral_status` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '"0=Deactivated account, 1=Activated account, 2=Pending account, 3=Suspend account"',
  `verified` int(11) NOT NULL DEFAULT 0 COMMENT '0= did not submit info, 1= verified, 2=Cancel, 3=processing',
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_date` datetime DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_user_log`
--

CREATE TABLE `dbt_user_log` (
  `log_id` int(11) NOT NULL,
  `log_type` varchar(50) NOT NULL COMMENT '"acc_update = User Account Update, login=User Login info, deposit=User Deposit info, transfer=User Transfer info, withdraw=User Withdraw info, open_order="',
  `access_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_agent` varchar(300) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_user_verify_doc`
--

CREATE TABLE `dbt_user_verify_doc` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `verify_type` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `id_number` varchar(300) NOT NULL,
  `document1` varchar(300) NOT NULL,
  `document2` varchar(300) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_verify`
--

CREATE TABLE `dbt_verify` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(250) DEFAULT NULL,
  `session_id` varchar(250) DEFAULT NULL,
  `verify_code` varchar(250) DEFAULT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbt_withdraw`
--

CREATE TABLE `dbt_withdraw` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `wallet_id` text NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `method` varchar(50) NOT NULL,
  `fees_amount` double NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `request_date` datetime DEFAULT NULL,
  `success_date` datetime DEFAULT NULL,
  `cancel_date` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Cancel request, 1=Approved request, 2=Pending request',
  `ip` varchar(50) NOT NULL,
  `approved_cancel_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `earning_id` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `Purchaser_id` varchar(250) DEFAULT NULL,
  `earning_type` varchar(45) NOT NULL,
  `package_id` varchar(250) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `date` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `comments` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Weekly ROI, Monthly ROI, team bonous, direct referal bonous';

-- --------------------------------------------------------

--
-- Table structure for table `email_sms_gateway`
--

CREATE TABLE `email_sms_gateway` (
  `es_id` int(11) NOT NULL,
  `gatewayname` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `protocol` varchar(100) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `port` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mailtype` varchar(100) DEFAULT NULL,
  `charset` varchar(100) DEFAULT NULL,
  `api` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_sms_gateway`
--

INSERT INTO `email_sms_gateway` (`es_id`, `gatewayname`, `title`, `protocol`, `host`, `port`, `user`, `userid`, `password`, `mailtype`, `charset`, `api`) VALUES
(1, 'nexmo', 'Bdtask', NULL, NULL, NULL, NULL, NULL, 'TCtz6dx6s3G4nVQ1', NULL, NULL, '633b7084'),
(2, 'smtp', 'Bbtask mail', 'smtp', 'smtp.mailtrap.io', '2525', '199a525b4e1f88', '', '06f4bb0c453f48', 'html', 'utf-8', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `external_api_setup`
--

CREATE TABLE `external_api_setup` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `external_api_setup`
--

INSERT INTO `external_api_setup` (`id`, `name`, `data`, `status`) VALUES
(1, 'coinmarketcap', '{\"api_key\":\"5cffd167-16c3-4c34-b345-6eef830ce5a3\"}', 1),
(2, 'maps', '{\"api_key\":\"AIzaSyAUmj7I0GuGJWRcol-pMUmM4rrnHS90DE8\"}', 1),
(3, 'Cryptocompare', '{\"api_key\":\"61278343e480f5e40fffe307177e37e4339c4b2016ebd0c72d0b15386737ab0etorun\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text DEFAULT NULL,
  `french` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES
(1, 'email', 'Email', 'E-mail'),
(2, 'password', 'Password', 'Mot De Passe'),
(3, 'login', 'Login', 'S\'identifier'),
(4, 'incorrect_email_password', 'Incorrect Email/Password!', 'Mot de passe ou email incorrect'),
(5, 'user_role', 'User Role', 'RÃ´le Utilisateur'),
(6, 'please_login', 'Please Login', 'Veuillez Vous Connecter'),
(7, 'setting', 'Setting', 'Réglage'),
(8, 'profile', 'Profile', 'Profil'),
(9, 'logout', 'Log Out', 'DÃ©connexion'),
(10, 'please_try_again', 'Please Try Again', 'Essayez encore !'),
(11, 'admin', 'Admin', 'Admin'),
(12, 'dashboard', 'Dashboard', 'Tableau de Bord'),
(13, 'language_setting', 'Language Setting', 'Reglage Langue'),
(14, 'status', 'Status', NULL),
(15, 'active', 'Active', 'Actif'),
(16, 'inactive', 'Inactive', 'Inactif'),
(17, 'cancel', 'Cancel', NULL),
(18, 'save', 'Save', 'Sauver'),
(19, 'serial', 'Serial', 'En Série'),
(20, 'action', 'Action', 'Action'),
(21, 'edit', 'Edit ', 'Editer'),
(22, 'delete', 'Delete', 'Effacer'),
(23, 'save_successfully', 'Save Successfully!', 'Sauvegarde reussi'),
(24, 'update_successfully', 'Updated Successfully', 'Mise Ã  jour reussi'),
(25, 'delete_successfully', 'Delete Successfully', 'Supprimer Avec Succès'),
(26, 'are_you_sure', 'Are You Sure', 'êtes-vous Sûr'),
(27, 'ip_address', 'IP Address', 'Adresse IP'),
(28, 'application_title', 'Application title', 'Titre appli'),
(29, 'favicon', 'Favicon', 'favicon'),
(30, 'logo', 'Logo', 'Logo'),
(31, 'footer_text', 'Footer text', 'Footer text'),
(32, 'language', 'Language', 'Langue'),
(33, 'website_title', 'Website Title', 'Titre site web'),
(34, 'invalid_logo', 'Invalid Logo', 'Logo invalide'),
(35, 'submit_successfully', 'Submit Successfully!', 'Envoi reussi'),
(36, 'application_setting', 'Application Setting', 'Reglages appli'),
(37, 'invalid_favicon', 'Invalid Favicon', 'Favicon Invalide'),
(38, 'submit', 'Submit', 'Envoyez'),
(39, 'site_align', 'Website Align', 'Alignement site'),
(40, 'right_to_left', 'Right to Left', 'Doite vers la gauche'),
(41, 'left_to_right', 'Left to Right', 'Gauche Vers la droite'),
(42, 'subject', 'Subject', 'Sujet'),
(43, 'receiver_name', 'Send To', 'Nom BÃ©nÃ©ficiaire'),
(44, 'select_user', 'Select User', 'Selectionner Utilisateur'),
(45, 'message_sent', 'Messages Sent', 'Message EnvoyÃ©'),
(46, 'mail', 'Mail', 'Mail'),
(47, 'send_mail', 'Send Mail', 'Envoyer Mail'),
(48, 'mail_setting', 'Mail Setting', 'Reglage mail'),
(49, 'protocol', 'Protocol', 'Protocole'),
(50, 'mailpath', 'Mail Path', 'Repertoire Mail'),
(51, 'mailtype', 'Mail Type', 'Type mail'),
(52, 'validate_email', 'Validate Email Address', 'Validez votre Email'),
(53, 'true', 'True', 'Vraie'),
(54, 'false', 'False', 'faux'),
(55, 'attach_file', 'Attach File', 'Joindre un document'),
(56, 'wordwrap', 'Enable Word Wrap', 'Wordwrap'),
(57, 'send', 'Send', 'Envoyer'),
(58, 'app_setting', 'App Setting', 'Reglages appli'),
(59, 'sms', 'SMS', 'SMS'),
(60, 'gateway_setting', 'Gateway Setting', 'Reglage portail'),
(61, 'time_zone', 'Time zone', 'Time Zone'),
(62, 'provider', 'Provider', 'Fournisseur'),
(63, 'sms_template', 'SMS Template', 'Template SMS'),
(64, 'template_name', 'Template Name', 'Nom du template'),
(65, 'sms_schedule', 'SMS Schedule', 'Emploi du temps SMS'),
(66, 'schedule_name', 'Schedule Name', 'Nom d\'horaire'),
(67, 'time', 'Time', 'Temps'),
(68, 'already_exists', 'Already Exists', 'Existe dÃ©jÃ '),
(69, 'send_custom_sms', 'Send Custom SMS', 'Envoyer SMS personalisÃ©'),
(70, 'sms_sent', 'SMS Sent!', 'SMS envoyÃ©'),
(71, 'custom_sms_list', 'Custom SMS List', 'List SMS personalisÃ©'),
(72, 'reciver', 'Reciver', 'BÃ©nÃ©ficiaire'),
(73, 'auto_sms_report', 'Auto SMS Report', 'Rapport SMS Auto'),
(74, 'user_sms_list', 'User SMS List', 'Liste SMS utilisateurs'),
(75, 'send_sms', 'Send SMS', 'Envoyer SMS'),
(76, 'new_sms', 'New SMS', 'Nouveau Message'),
(77, 'update', 'Update', 'Mettre à Jour'),
(78, 'reset', 'Reset', 'Réinitialiser'),
(79, 'messages', 'Messages', 'Messages'),
(80, 'inbox', 'Inbox', 'Boite de rÃ©ception'),
(81, 'sent', 'Sent', 'EnvoyÃ©'),
(82, 'captcha', 'Captcha', 'Captcha'),
(83, 'welcome_back', 'Welcome back ', 'Bienvenue Ã  nouveau !'),
(84, 'inbox_message', 'Inbox Message', 'SMS Boite de rÃ©ception'),
(85, 'image_upload_successfully', 'Image Upload Successfully.', 'Upload d\'image reussi'),
(87, 'users', 'Users', 'Utilisateurs'),
(88, 'add_user', 'Add User', 'Ajouter utilisateur'),
(89, 'user_list', 'User List', 'Liste Utilisateurs'),
(90, 'firstname', 'First Name', 'Nom'),
(91, 'lastname', 'Last Name', 'PrÃ©noms'),
(92, 'about', 'About', 'A propos de nous'),
(93, 'preview', 'Preview', 'Visualliser'),
(94, 'last_login', 'Last Login', 'Dernière Connexion'),
(95, 'last_logout', 'Last Logout', 'Dernière Déconnexion'),
(96, 'image', 'Image', 'Image'),
(97, 'fullname', 'Full Name', 'Nom Complet'),
(98, 'new_message', 'New Message', 'Nouveau Message'),
(99, 'message', 'Message', 'Un Message'),
(100, 'sender_name', 'Sender Name', 'Nom de l\'expÃ©diteur'),
(101, 'sl_no', 'SL No.', 'NumÃ©ro SL'),
(103, 'message_details', 'Message Details', 'DÃ©tails message'),
(104, 'date', 'Date', 'Date'),
(105, 'select_option', 'Select Option', NULL),
(106, 'edit_profile', 'Edit Profile', 'Editer Profile'),
(107, 'edit_user', 'Edit User', 'Editer utilisateur'),
(108, 'sent_message', 'Sent Message', 'Message EnvoyÃ©'),
(109, 'sub_admin', 'Sub Admin', 'Sub Administrateur'),
(110, 'admin_list', 'Admin List', 'List Administrateurs'),
(111, 'add_admin', 'Add Admin', 'Ajouter Administrateur'),
(112, 'edit_admin', 'Edit Admin', 'Modifier L\'administrateur'),
(113, 'username', 'Username', 'Nom utilisateur'),
(114, 'sponsor_id', 'Sponsor ID', 'ID sponsor'),
(115, 'mobile', 'Mobile', 'Mobile'),
(116, 'register', 'Register', 'Enregistrer'),
(117, 'conf_password', 'Confirm Password', 'Reglage mot de passe'),
(118, 'user_id', 'User ID', 'ID utilisateur'),
(119, 'package', 'Package', 'Pack'),
(120, 'create', 'Create', 'CrÃ©er'),
(121, 'package_name', 'Package Name', 'Nom du pack'),
(122, 'package_deatils', 'Package Deatils', 'Detail pack'),
(123, 'package_amount', 'Package Amount', 'Montant pack'),
(124, 'daily_roi', 'Daily ROI', 'ROI journalier'),
(125, 'weekly_roi', 'Weekly ROI', 'ROI Hebdomadaire'),
(126, 'monthly_roi', 'Monthly ROI', 'ROI Mensuel'),
(127, 'yearly_roi', 'Yearly ROI', 'ROI annuel'),
(128, 'total_percent', 'Total Percent', 'Poucentage Total'),
(129, 'add_package', 'Add Package', 'Ajouter un Pack'),
(130, 'edit_package', 'Edit Package', 'Editer Pack'),
(131, 'package_list', 'Package List', 'Liste Packs'),
(132, 'withdraw', 'Withdraw', 'Se Désister'),
(133, 'request', 'Request', 'RequÃªte'),
(134, 'success', 'Success', 'SuccÃ¨s ! '),
(135, 'request_date', 'Request Date', 'Date RequÃªte'),
(136, 'payment_method', 'Payment Method', 'Methode de paiement'),
(137, 'amount', 'Amount', NULL),
(138, 'charge', 'Charge', 'Frais'),
(139, 'total', 'Total', 'Total'),
(140, 'comments', 'Comments', 'Commentaires'),
(141, 'pending', 'Pending', 'En cours'),
(142, 'cancel_date', 'Cancel Date', 'Annuler date'),
(143, 'block_list', 'Block List', 'Liste Noire'),
(144, 'commission', 'Commission', 'Commission'),
(145, 'setup', 'Setup', 'Regler'),
(146, 'setup_list', 'Setup List', 'Liste de reglage'),
(147, 'commission_list', 'Commission List', 'Liste Commission'),
(148, 'level_name', 'Level Name', 'Nom du stage'),
(149, 'personal_invest', 'Personal Invest', 'Mon investissement'),
(150, 'total_invest', 'Total Invest', 'Total Investissement'),
(151, 'team_bonous', 'Team Bonous', 'Bonus d\'Equipe'),
(152, 'referral_bonous', 'Referral Bonous', 'Bonus parrainage'),
(154, 'form_submit_msg', 'Insert Successfully', 'Envoyer formulaire'),
(155, 'transection_category', 'Transaction Category', 'CatÃ©gorie Transaction'),
(156, 'transfer_add_msg', 'Transfer Successfully', 'Ajouter SMS transfert'),
(157, 'transfer', 'Transfer', 'Transfert'),
(158, 'deposit', 'Deposit', 'Dépôt'),
(159, 'add_deposit', 'Add Deposit', 'Effectuer un Depot'),
(160, 'deposit_list', 'Deposit List', 'Liste depot'),
(161, 'team', 'Team', 'Equipe'),
(162, 'investment', 'Investment', 'Investissement personnel'),
(163, 'notification', 'Notification', 'Notification'),
(164, 'receiver_id', 'Receiver Id', 'ID BÃ©nÃ©ficiaire'),
(165, 'comment', 'Comments', 'Commentaire'),
(166, 'otp_send_to', 'OTP Send To', 'OTP envoyer Ã '),
(167, 'transection', 'Transaction', 'Transactions'),
(168, 'buy', 'Buy', 'Acheter'),
(170, 'deposit_amount', 'Deposit Amount', 'Montant Depot'),
(171, 'deposit_method', 'Deposit Method', 'Methode depot'),
(172, 'deposit_wallet_id', 'Deposit Wallet Id', 'Wallet ID'),
(174, 'confirm_transfer', 'Confirm Transfer', 'Confirmer transfert'),
(175, 'transfer_amount', 'Transfer Amount', 'Montant Transfert'),
(176, 'enter_verify_code', 'Enter Verify Code', 'Entrer code de vÃ©rification'),
(177, 'confirm', 'Confirm', 'Confirmer'),
(178, 'deopsit_add_msg', 'Deposit Add Successfully.', 'Depot effectuÃ© avec succÃ¨s'),
(179, 'transfar_recite', 'Transfer Recite', 'ReÃ§u de transfert'),
(180, 'earn', 'Earn', 'Gagner'),
(181, 'balance_is_unavailable', 'Balance Unavailable', 'Solde insuffisant'),
(182, 'package_buy_successfully', 'Package Buy Successfully!', 'Achat du package reussi ! '),
(184, 'withdraw_recite', 'Withdraw Recite', 'ReÃ§u de retrait'),
(185, 'withdraw_confirm', 'withdraw Confirm', 'Confirmation Retrait'),
(187, 'change_verify', 'Confirm Verify', 'Changer Verification'),
(188, 'change_password', 'Password Change', 'Changer mot de passe'),
(189, 'enter_confirm_password', 'Enter Confirm Password', 'Confirmer mot de passe'),
(190, 'enter_new_password', 'Enter New Password', 'Entrer nouveau mot de passe'),
(191, 'enter_old_password', 'Enter Old Password', 'Entrer ancien mot de passe'),
(192, 'change', 'Change', 'Changement'),
(193, 'password_change_successfull', 'Password Change Successfully', 'Mot de passe changÃ© avec succÃ¨s'),
(194, 'old_password_is_wrong', 'Old Password Is Wrong', 'Entrer ancien mot de passe incorrect'),
(195, 'fees_setting', 'Fees Setting', 'Reglages frais'),
(196, 'level', 'Level', 'Stage'),
(197, 'select_level', 'Select Level', 'Selectionner stage'),
(198, 'fees_setting_successfully', 'Fees Setting Successfully', 'Reglages Frais reussi'),
(199, 'bitcoin', 'Bitcoin', 'Bitcoin'),
(200, 'payeer', 'Payeer', 'Payeer'),
(201, 'name', 'Name', 'Nom'),
(202, 'order_id', 'Order Id', 'ID de commande'),
(203, 'fees', 'Fees', 'Frais'),
(204, 'period', 'Period', 'PÃ©riode'),
(205, 'commission_ret', 'Commission Ret', 'Commission ret'),
(206, 'title', 'Title', 'Titre'),
(207, 'details', 'Details', 'Details'),
(208, 'personal_info', 'Personal Information', 'Informations personnels'),
(209, 'sponsor_info', 'Sponsor Information', 'Info Sponsor'),
(210, 'affiliate_url', 'Affiliat Url', 'Lien parrainage'),
(211, 'copy', 'Copy', 'Copier'),
(212, 'my_payout', 'My Payout', 'Mes Paiements'),
(213, 'personal_sales', 'Personal Sales', 'Ventes Personnelles'),
(214, 'bank_details', 'Bank Details', 'Details de banque'),
(215, 'beneficiary_name', 'Beneficiary Name', 'Nom Beneficiaire'),
(216, 'bank_name', 'Bank Name', 'Nom de banque'),
(217, 'branch', 'Branch', 'Branche'),
(218, 'account_number', 'Account Number', 'NumÃ©ro de compte'),
(219, 'ifsc_code', 'IFC Code', 'Code IFSC'),
(220, 'account', 'Account', 'Compte'),
(221, 'my_commission', 'My Commission', 'Mes commissions'),
(222, 'finance', 'Finance', 'La Finance'),
(223, 'exchange', 'Exchange', 'Echange'),
(224, 'bitcoin_setting', 'Bitcoin Setting', 'Reglages bitcoin'),
(225, 'payeer_setting', 'Payeer Setting', 'Reglages Payeer'),
(226, 'bank_information', 'Bank Information', 'Infos de banque'),
(227, 'bitcoin_wallet_id', 'Bitcoin Wallet ID', 'Wallet Bitcoin'),
(228, 'payment_method_setting', 'Payment Method Setting', 'Reglage methode de paiement'),
(229, 'payeer_wallet_id', 'Payeer Wallet Id', 'ID Payeer'),
(230, 'my_package', 'My Package', 'Mes packs'),
(231, 'my_team', 'My Team', 'Mon Equipe'),
(232, 'receipt', 'Receipt', 'RÃ©Ã§u'),
(233, 'withdraw_successfull', 'Withdraw Successfully', 'Retrait reussi !'),
(234, 'team_bonus', 'Team Bonus', 'Bonus d\'Equipe'),
(235, 'withdraw_list', 'Withdraw List', 'Liste retraits'),
(236, 'pending_withdraw', 'Pending Withdraw', NULL),
(237, 'reciver_account', 'Receiver Account', 'Compte BÃ©nÃ©ficiaire'),
(238, 'french', 'French', 'FranÃ§ais'),
(239, 'commission_setup', 'Commission Setup', 'Reglage commission'),
(240, 'personal_investment', 'Personal Investment', 'Investissement personnel'),
(241, 'total_investment', 'Total investment', 'Total Investissement'),
(242, 'transfer_list', 'Transfer List', 'Liste transfert'),
(243, 'form_to', 'From To', ''),
(244, 'receive', 'Receive', ''),
(245, 'wallet_id', 'Wallet Id', 'ID Wallet'),
(246, 'withdraw_details', 'Withdraw Details', 'Details retraits'),
(247, 'generation_one', 'Generation One', 'GÃ©nÃ©ration 1'),
(248, 'generation_two', 'Generation Two', 'GÃ©nÃ©ration 2'),
(249, 'generation_three', 'Generation Three', 'GÃ©nÃ©ration 3'),
(250, 'generation_four', 'Generation Four', 'GÃ©nÃ©ration 4'),
(251, 'generation_five', 'Generation Five', 'GÃ©nÃ©ration 5'),
(252, 'generation_empty_message', 'You Have No Generation', ''),
(253, 'view', 'View', 'AperÃ§u'),
(254, 'cancle', 'Cancel', 'Annuler'),
(255, 'type', 'Type', 'Taper'),
(256, 'your_total_balance_is', 'Your Total Balance Is', 'Votre montant total est de'),
(257, 'bonus', 'Bonus', 'Bonus'),
(258, 'personal_turnover', 'Sponser Turnover', 'Mon Chiffre d\'affaire perso'),
(259, 'team_turnover', 'Team Turnover', 'Chiffre d\'affaire Equipe'),
(260, 'post_article', 'Post Article', ''),
(261, 'article_list', 'Article List', 'LIste article'),
(262, 'add_article', 'Add Article', 'Ajouter article'),
(263, 'headline_en', 'Headline English', 'Titre EN'),
(264, 'headline_fr', 'Headline French', 'Titre  FR'),
(265, 'article_en', 'Article EN', 'Article EN'),
(266, 'article_fr', 'Article FR', 'Article FR'),
(267, 'edit_article', 'Edit Article', 'Editer article'),
(268, 'cat_list', 'Category List', 'Liste panier'),
(269, 'add_cat', 'Add Category', 'Ajouter au panier'),
(270, 'parent_cat', 'Parent Category', ''),
(271, 'cat_name_en', 'Category Name English', 'Nom panier EN'),
(272, 'cat_name_fr', 'Category Name French', 'Nom panier FR'),
(273, 'cat_title_en', 'Category Title English', 'Titre Panier EN'),
(274, 'cat_title_fr', 'Category Title French', 'Titre panier FR'),
(275, 'select_cat', 'Select Category', 'Selectionner Cat'),
(276, 'edit_cat', 'Edit Category', 'Editer Panier'),
(277, 'position_serial', 'Position Serial', ''),
(278, 'currency_list', 'Currency List', 'Liste de devise'),
(279, 'currency', 'Currency', 'Devise'),
(280, 'cryptocurrency_name', 'CryptoCurrency  Name', 'Nom Crypto monnaie'),
(281, 'select_cryptocurrency', 'Select Cryptocurrency', 'Selectionner Crypto'),
(282, 'edit_currency', 'Edit Currency', 'Editer Devise'),
(283, 'exchange_list', 'Exchange List', 'Liste Ã©changes'),
(284, 'add_exchange', 'Add Exchange', 'Ajouter Echange'),
(285, 'edit_exchange', 'Edit Exchange', 'Editer Echange'),
(286, 'wallet_data', 'Wallet ID', 'DonnÃ©es Wallet'),
(287, 'sell_adjustment', 'Sell Adjustment', 'Ajustement Vente'),
(288, 'buy_adjustment', 'Buy Adjustment', ''),
(289, 'exchange_wallet', 'Exchange Wallet', 'Wallet Echange'),
(290, 'exchange_wallet_list', 'Exchange Wallet List', 'Liste Wallet echange'),
(291, 'add_exchange_wallet', 'Add Exchange Wallet', 'Ajouter Wallet'),
(292, 'edit_exchange_wallet', 'Edit Exchange Wallet', 'Modifier Wallet echange'),
(293, 'local_currency_list', 'Local Currency List', 'LIste  Monnaies locales'),
(294, 'local_currency', 'Local Currency', 'Devise Locale'),
(295, 'add_local_currency', 'Add Local Currency', 'Ajouter Monnaie'),
(296, 'edit_local_currency', 'Edit Local Currency', 'Editer Devise locale'),
(297, 'currency_name', 'Currency Name', 'Nom devise'),
(298, 'currency_iso_code', 'Currency ISO Code', 'Code ISO devise '),
(299, 'usd_exchange_rate', 'USD Exchange Rate', 'Taux d\'echange USD'),
(300, 'currency_symbol', 'Currency Symbol', 'Symboles Devise'),
(301, 'symbol_position', 'Symbol Position', 'Position symbole'),
(302, 'currency_position', 'Currency Position', 'Position devise'),
(303, 'payment_gateway', 'Payment Gateway', 'Portail de paiement'),
(304, 'gateway_name', 'Gateway Name', 'Nom passerelle'),
(305, 'gateway_setting', 'Gateway Setting', 'Reglage portail'),
(306, 'add_payment_gateway', 'Add Payment Gateway', 'Ajouter Methode paiment'),
(307, 'public_key', 'Public Key', 'ClÃ© publique'),
(308, 'private_key', 'Private Key', ''),
(309, 'shop_id', 'Shop ID', 'ID shop'),
(310, 'secret_key', 'Secret Key', 'ClÃ© secrete'),
(311, 'edit_payment_gateway', 'Edit Payment Gateway', 'Editer Methode de paiement'),
(312, 'slider_list', 'Slider List', ''),
(313, 'add_slider', 'Add Slider', 'Ajouter Slider'),
(314, 'headline', 'Headline', 'Titre'),
(315, 'edit_slider', 'Edit Slider', ''),
(316, 'social_app', 'Social App', ''),
(317, 'edit_social_app', 'Edit Social App', 'Editer RS appli'),
(318, 'social_link', 'Social Link', ''),
(319, 'add_link', 'Add Link', 'Ajouter Lien'),
(320, 'link', 'Link', 'Lien'),
(321, 'icon', 'Icon', 'IcÃ´ne'),
(322, 'edit_social_link', 'Edit Social Link', 'Edit les liens RS'),
(323, 'transection_info', 'Transection Info', 'Info transaction'),
(324, 'sell', 'Sell', 'Vendre'),
(325, 'article', 'Article', 'Article'),
(326, 'coin_amount', 'Coin Amount', 'Montat Crypto'),
(327, 'coin_name', 'Coin Name', NULL),
(328, 'buy_amount', 'Buy Amount', 'Montant achat'),
(329, 'sell_amount', 'Sell Amount', 'Montant Ã  vendre'),
(330, 'wallet_data', 'Wallet ID', 'DonnÃ©es Wallet'),
(331, 'usd_amount', 'USD Amount', 'Montant USD'),
(332, 'rate_coin', 'Coin Rate', 'Taux coin'),
(333, 'local_amount', 'Local Amount', 'Montant Local'),
(334, 'om_name', 'OM Name', 'Nom OM'),
(335, 'om_mobile_no', 'OM Phone No', 'NÂ° OM'),
(336, 'transaction_no', 'Transaction No', 'NÂ° de transaction'),
(337, 'idcard_no', 'ID Card No', 'NÂ° CNI'),
(338, 'buy_list', 'Buy List', 'Buy list'),
(339, 'add_buy', 'Add Buy', 'Ajouter Achat'),
(340, 'transection_type', 'Transection Type', 'Type de transaction'),
(341, 'payment_successfully', 'Payment Successfully', 'Paiement effectuÃ©'),
(342, 'payment_cancel', 'Payment Cancel', 'Paiement annulÃ©'),
(343, 'payment_successfully', 'Payment Successfully', 'Paiement effectuÃ©'),
(344, 'sell_list', 'Sell List', 'LIste de vente '),
(345, 'add_sell', 'Add Sell', 'Ajouter Vente'),
(346, 'edit_sell', 'Edit Sell', ''),
(347, 'account_active_mail', 'Please check Email to activate your account', 'Activer votre mail'),
(348, 'accept_terms_privacy', 'Crypto Privacy policy and Terms of Use', 'Accepter conditions et termes'),
(349, 'username_used', 'Username Already Used', 'Nom d\'utilisateur dÃ©jÃ  utilisÃ©'),
(350, 'account_create_success_social', 'Account Created Successfully and Your Account activated', 'Compte crÃ©e avec succÃ¨s'),
(351, 'email_used', 'Email Already Used', 'Adresse mail dÃ©jÃ  utilisÃ©'),
(352, 'account_create_active_link', 'Account Created Successfully. Activation link send your Email address', 'Lien d\'activation'),
(353, 'active_account', 'Active Account', 'Compte actif'),
(354, 'wrong_try_activation', 'Wrong Try', 'Mauvaise activation'),
(355, 'pay_now', 'Pay Now', 'Payer maintenant'),
(356, 'payment_successfully', 'Payment Successfully', 'Paiement effectuÃ©'),
(357, 'sell_successfully', 'Sell Successfully', 'Vente effectuÃ©e avec succÃ¨s'),
(358, 'already_clicked', 'Already Clicked There', 'DÃ©ja ValidÃ©'),
(359, 'user_info', 'User Info', 'info utilisateur'),
(360, 'user_id', 'User ID', 'ID utilisateur'),
(361, 'registered_ip', 'Registered IP', ''),
(362, 'requested_ip', 'Requested IP', ''),
(363, 'transaction_status', 'Transaction Status', 'Status de la transaction'),
(364, 'receive_status', 'receive_status', ''),
(365, 'receive_complete', 'Receive Complete', ''),
(366, 'payment_status', 'Payment Status', 'Status de paiement'),
(367, 'payment_complete', 'Payment Complete', NULL),
(368, 'url', 'Url', 'URL'),
(369, 'app_id', 'App Id', 'ID appli'),
(370, 'app_secret', 'App Secret', 'Secret Appli'),
(371, 'api_key', 'API Key', 'Clé API'),
(372, 'app_name', 'App Name', 'Nom Appli'),
(373, 'social_list', 'Social List', ''),
(374, 'select_payment_method', 'Select Payment Method', 'Selectionner mode de paiement'),
(375, 'payable', 'Payable', ''),
(376, 'rate', 'Rate', NULL),
(377, 'how_do_you_receive_money', 'How do you receive money', 'Comment ReÃ§evoir votre argent'),
(378, 'withdraw_method', 'Withdraw Method', 'Methode de retrait'),
(379, 'select_withdraw_method', 'Select Withdraw Method', 'Selectionner mÃ©thode de retrait'),
(380, 'account_info', 'Account Info', 'Info compte'),
(381, 'upload_docunemts', 'Upload Docunemts', 'Ajouter fichier'),
(382, 'my_generation', 'My Generation', 'Mon Equipe'),
(383, 'category', 'Category', 'CatÃ©gorie'),
(384, 'slider_h1_en', 'Slider H1 English', ''),
(385, 'slider_h1_fr', 'Slider H1 French', ''),
(386, 'slider_h2_en', 'Slider H2 English', ''),
(387, 'slider_h2_fr', 'Slider H2 French', ''),
(388, 'slider_h3_en', 'Slider H3 English', ''),
(389, 'slider_h3_fr', 'Slider H3 French', ''),
(390, 'complete', 'Complete', NULL),
(391, 'refresh_currency', 'Refresh Currency', ''),
(392, 'cryptocurrency', 'Crypto Currency', 'Crypto Monnaie'),
(393, 'symbol', 'Symbol', NULL),
(394, 'please_select_cryptocurrency_first', 'Please Select CryptoCurrency First', 'Veuillez choisir une crypto monnaie'),
(395, 'please_select_diffrent_payment_method', 'Please select Diffrent Payment Method', 'Selectionner une autre mÃ©thode de paiement'),
(396, 'add_credit', 'Add Credit', 'Crediter Compte'),
(397, 'credit', 'Credit', 'CrÃ©dit'),
(398, 'credit_list', 'Credit List', 'Liste De Crédit'),
(399, 'notes', 'Note', 'Notes'),
(400, 'my_level_info', 'My Level Info', 'Info Niveau'),
(401, 'slider', 'Slider', 'Slider'),
(402, 'exchange_setting', 'Exchange Setting', 'Reglage Echange'),
(403, 'exchange_all_request', 'Exchange all Request', 'Toutes requÃªtes echanges'),
(404, 'total_user', 'Total User', 'Nombre d\'utilisateurs'),
(405, 'total_roi', 'Total ROI', 'Total ROI'),
(406, 'total_commission', 'Total Commission', 'Total commission'),
(407, 'download_pdf', 'Download PDF', 'TÃ©lÃ©charger '),
(408, 'view_all_news', 'View all news', 'AperÃ§u News'),
(409, 'download_company_brochure', 'Download Company Brochure', 'TÃ©lÃ©chargez notre brochure'),
(410, 'get_in_touch', 'Get in touch', 'Contactez-nous'),
(411, 'read_more', 'Read More', 'Lire plus'),
(412, 'know_more', 'Know more', 'Savoir plus'),
(413, 'choose_plan', 'Choose plan', 'acheter'),
(414, 'latest_jobs', 'Latest Jobs', 'Latest Jobs'),
(415, 'website', 'Website', 'website'),
(416, 'chose_one_of_the_following_methods', 'Chose One of the Following Methods.', 'chose_one_of_the_following_methods.'),
(417, 'sign_in_using_your_email_address', 'Sign in Using Your Email Address', 'Connectez-vous avec votre username ou email'),
(418, 'forgot_password', 'Forgot Password', 'Mot De Passe Oublié'),
(419, 'remember_me', 'Remember Me', 'Souviens-toi De Moi'),
(420, 'username_or_email', 'Username or email', 'Username or email'),
(421, 'dont_have_an_account', 'Don\'t have an account', 'Don\'t have an account'),
(422, 'sign_up_now', 'Sign up Now', 'CrÃ©er un compte maintenant'),
(423, 'send_code', 'Send Code', 'Send Code'),
(424, 'sign_up', 'Sign Up', 'S\'inscrire'),
(425, 'already_user', 'Already User', 'Already User'),
(426, 'sign_in_now', 'Sign In Now', 'Connectez-vous maintenant'),
(427, 'sign_up_for_free', 'Sign Up For Free', 'CrÃ©er un compte gratuitement'),
(428, 'join_thousands_of_companies_that_Use_globalcrypt_every_day', 'Join Thousands of Companies that Use Global Crypto Every Day', 'Join Thousands of Companies that Use Global Crypto Every Day'),
(429, 'your_password_at_global_crypto_are_encrypted_and_secured', 'Your Password At Global Crypto Are Encrypted And Secured', 'Votre Mot De Passe Chez Global Crypto Est Crypté Et Sécurisé'),
(430, 'email_username_used', 'Email/Username Already Used', 'Email/Username Already Used'),
(431, 'address', 'Address', 'Adresse'),
(432, 'phone', 'Phone', 'Phone'),
(433, 'admin_align', 'Admin alignment', 'Admin alignment'),
(434, 'office_time', 'Office time', 'Office time'),
(435, 'logo_web', 'Website logo', 'Website logo'),
(436, 'dashboard_logo', 'Dashboard logo', 'Dashboard logo'),
(437, 'advertisement', 'Advertisement', 'Advertisement'),
(438, 'script', 'Script', 'Script'),
(439, 'add_advertisement', 'Add Advertisement', 'Add Advertisement'),
(440, 'page', 'Page', NULL),
(441, 'embed_code', 'Embed code', 'Embed code'),
(442, 'add_type', 'Add Type', 'Add Type'),
(443, 'edit_advertisement', 'Edit Advertisement', 'Edit Advertisement'),
(444, 'host', 'Host', 'Host'),
(445, 'port', 'Port', 'Port'),
(446, 'apikey', 'API Key', 'API Key'),
(447, 'mail_type', 'Mail Type', 'Mail Type'),
(448, 'charset', 'Charset', 'Charset'),
(449, 'news', 'News', 'Nouvelles'),
(450, 'news_list', 'News List', 'News List'),
(451, 'edit_news', 'Edit News', 'Edit News'),
(452, 'post_news', 'Post News', 'Post News'),
(453, 'close', 'Close', 'Close'),
(454, 'contact_us', 'Contact Us', 'Contact Us'),
(455, 'watch_video', 'WATCH VIDEO', 'WATCH VIDEO'),
(456, 'about_bitcoin', 'About Bitcoin', 'About Bitcoin'),
(457, 'get_start', 'Get Start', 'Get Start'),
(458, 'cryptocoins', 'Crypto Coins', 'Crypto Coins'),
(459, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter!', 'Subscribe to our newsletter!'),
(460, 'email_newslatter', 'Email Newsletter', 'Email Newsletter'),
(461, 'services', 'Services', 'Services'),
(462, 'our_company', 'Our Company', 'Our Company'),
(463, 'sign_in', 'Sign In', 'Connectez-vous'),
(464, 'join_the_new_yera_of_cryptocurrency_exchange', 'Join the new Yera of cryptocurrency exchange', 'Join the new Yera of cryptocurrency exchange'),
(465, 'access_the_cryptocurrency_experience_you_deserve', 'Access the cryptocurrency experience you deserve', 'Access the cryptocurrency experience you deserve'),
(466, 'home', 'Home', 'Accueil'),
(467, 'scroll_to_top', 'Scroll to Top', 'Scroll to Top'),
(468, 'ticker', 'Ticker', 'Ticker'),
(469, 'price', 'Price', 'Prix'),
(470, 'capitalization', 'Capitalization', 'Capitalization'),
(471, '1d_change', '1D change', '1D change'),
(472, 'graph_24h', 'Graph 24H', 'Graph 24H'),
(473, 'recent_post', 'Recent Post', 'Recent Post'),
(474, 'my_social_link', 'My Social link', 'My Social link'),
(475, 'tell_us_about_your_project', 'Tell Us About Your Project', 'Tell Us About Your Project'),
(476, 'company', 'Company', 'Company'),
(477, 'reset_your_password', 'Reset Your Password', 'Réinitialisez Votre Mot De Passe'),
(478, '24h_change', '24H change', '24H change'),
(479, '24h_volume', '24H Volume', '24H Volume'),
(480, 'latitudelongitude', 'Latitude, Longitude', 'Latitude, Longitude'),
(481, 'send_money', 'Send Money', 'Send Money'),
(482, 'article', 'Article', 'article'),
(483, 'contact', 'Contact', 'Contact'),
(484, 'team', 'Team', 'team'),
(485, 'client', 'Client', 'client'),
(486, 'service', 'Service', 'service'),
(487, 'testimonial', 'Testimonial', 'testimonial'),
(488, 'faq', 'F.A.Q', 'faq'),
(489, 'short_description_en', 'Short description english', 'Short Description'),
(490, 'long_description_en', 'Long description English', 'Long Description'),
(491, 'short_description_fr', 'Short description english', 'Short Description'),
(492, 'long_description_fr', 'Long description English', 'Long Description'),
(493, 'info', 'Information', 'Information'),
(494, 'quote', 'Quote', 'Quote'),
(495, 'question_fr', 'Question French', 'Question French'),
(496, 'question_en', 'Question English', 'Question English'),
(497, 'answer_en', 'Answer English', 'Answer English'),
(498, 'answer_fr', 'Answer French', 'Answer French'),
(499, 'content', 'Page Content', 'Page Content'),
(500, 'add_content', 'Add Content', 'Add Content'),
(501, 'edit_content', 'Edit Content', 'Edit Content'),
(502, 'video', 'video (If Youtube Link)', 'video'),
(503, 'add_faq', 'Add F.A.Q', 'Add faq'),
(504, 'add_testimonial', 'Add Testimonial', 'Add testimonial'),
(505, 'add_service', 'Add Service', 'Add service'),
(506, 'add_client', 'Add Client', 'Add client'),
(507, 'add_team', 'Add Team', 'Add team'),
(508, 'add_contact', 'Add Contact', 'Add contact'),
(509, 'add_article', 'Add Article', 'Add article'),
(510, 'edit_article', 'edit Article', 'edit article'),
(511, 'edit_contact', 'edit Contact', 'edit contact'),
(512, 'edit_team', 'edit Team', 'edit team'),
(513, 'edit_client', 'edit Client', 'edit client'),
(514, 'edit_service', 'edit Service', 'edit service'),
(515, 'edit_testimonial', 'edit Testimonial', 'edit testimonial'),
(516, 'edit_faq', 'edit F.A.Q', 'edit faq'),
(517, 'article_list', 'Article List', 'article'),
(518, 'contact_list', 'Contact List', 'contact'),
(519, 'team_list', 'Team List', 'team'),
(520, 'client_list', 'Client List', 'client'),
(521, 'service_list', 'Service List', 'service'),
(522, 'testimonial_list', 'Testimonial List', 'testimonial'),
(523, 'faq_list', 'F.A.Q List', 'faq'),
(524, 'content_list', 'Page Content', 'Page Content'),
(525, 'add_teammember', 'Add Teammember', 'Add Teammember'),
(526, 'tooltip_package_name', 'Example: Silver Package', 'Example: Silver Package'),
(527, 'tooltip_package_details', 'This is for Package Short Details', 'This is for Package Short Details.'),
(528, 'tooltip_package_amount', 'Package Amount in Dollar. Example: 200', 'Package Amount in Dollar. Example: 200'),
(529, 'tooltip_package_daily_roi', 'Please Set this field with Zero. Example: 0', 'Please Set this field with Zero. Example: 0'),
(530, 'tooltip_package_weekly_roi', 'Who buy this package they will get weekly ROI in Dollar. Example: 5. They will get every week 5 till them package period', 'Who buy this package they will get weekly ROI in Dollar. Example: 5. They will get every week 5 till them package period'),
(531, 'tooltip_package_monthly_roi', 'Sum of weekly ROI in a month', 'Sum of weekly ROI in a month'),
(532, 'tooltip_package_yearly_roi', 'Sum of weekly ROI in a Year', 'Sum of weekly ROI in a Year'),
(533, 'tooltip_package_total_percent_roi', 'Total Persent Of ROI', 'Total Persent Of ROI'),
(534, 'tooltip_package_period', 'Package Period', 'Package Period'),
(535, 'trading', 'Trading', 'Trade'),
(536, 'trade_history', 'Trade History', 'Histoire Du Commerce'),
(537, 'market', 'Market', 'Marché'),
(538, 'coin_pair', 'Coin Pair', 'Coin Pair'),
(539, 'pending_deposit', 'Pending Deposit', 'Demande de retrat en cours'),
(540, 'email_and_sms_setting', 'Email And SMS Setting', 'Paramètres D\'e-mail Et De SMS'),
(541, 'email_and_sms_gateway', 'Email And Sms Gateway', 'Email And Sms Gateway'),
(542, 'trade', 'Trade', 'Commerce'),
(543, 'referral_id', 'Referral ID', ''),
(544, 'please_enter_valid_email', 'Please Enter Valid Email !!!', 'Please Enter Valid Email !!!'),
(545, 'already_subscribe', 'This Email Address already subscribed', 'This Email Address already subscribed'),
(546, 'message_send_successfuly', 'TMessage send successfuly', 'Message send successfuly'),
(547, 'message_send_fail', 'Message send Fail', 'Message send Fail'),
(548, 'setup_payment_gateway', 'setup payment gateway', 'setup payment gateway'),
(549, 'user_profile', 'User Profile', 'User Profile'),
(550, 'client_id', 'Client Id', 'Client Id'),
(551, 'client_secret', 'Client Secret', 'Client Secret'),
(553, 'notice', 'Notice', 'Remarquer'),
(554, 'edit_notice', 'Edit Notice', 'Edit Notice'),
(555, 'language_list', 'Language List', 'Language List'),
(556, 'phrase_list', 'Phrase List', 'Phrase List'),
(557, 'edit_phrase', 'Edit Phrase', 'Edit Phrase'),
(558, 'label_added_successfully', 'Label added successfully!', 'Label added successfully!'),
(559, 'this_level_already_exist', 'This Level Already Exist!', 'This Level Already Exist!'),
(560, 'you_successfully_deposit_the_amount', 'You successfully deposit the amount', 'You successfully deposit the amount'),
(561, 'your_new_balance_is', 'Your new balance is', 'Your new balance is'),
(562, 'account_name', 'Account Name', 'Account Name'),
(563, 'account_no', 'Account No', 'Account No'),
(564, 'branch_name', 'Branch Name', 'Branch Name'),
(565, 'swift_code', 'SWIFT Code', 'SWIFT Code'),
(566, 'abn_no', 'ABN No', 'ABN No'),
(567, 'country', 'Country', 'Country'),
(568, 'bank_name', 'Bank Name', 'Bank Name'),
(569, 'there_is_no_phone_number', 'There is no Phone number!!!', 'There is no Phone number!!!'),
(570, 'coinpair', 'Coinpair', 'Coinpair'),
(571, 'edit_coinpair', 'Edit Coinpair', 'Edit Coinpair'),
(572, 'edit_coin', 'Edit coin', 'Edit coin'),
(573, 'coin_market', 'Coin Market', 'Marché Aux Pièces'),
(574, 'edit_market', 'Edit Market', 'Modifier Le Marché'),
(575, 'leave_us_a_message', 'Leave us a message', 'Leave us a message'),
(576, 'verify_type', 'verify type', 'verify type'),
(577, 'gender', 'Gender', 'Gender'),
(578, 'id_number', 'Id  Number', 'Id Number'),
(579, 'verification_is_being_processed', 'Verification Is being Processed', 'Verification Is being Processed'),
(580, 'cryptocoin', 'Cryptocoin', 'Cryptocoin french'),
(581, 'please_setup_your_bank_account', 'Please setup bank account', 'Please setup bank account'),
(582, 'this_gateway_deactivated', 'This Gateway Deactivated', 'This Gateway Deactivated'),
(583, 'otp_send_to', 'OTP Send To', 'OTP Send To'),
(584, 'your_weekly_limit_exceeded', 'Your weekly Limit exceeded', 'Your weekly exceeded '),
(585, 'there_is_no_order_for_cancel', 'There is no order for cancel', 'There is no order for cancel'),
(586, 'request_canceled', 'Request Canceled', 'Demande Annulée'),
(587, 'referral_id_is_invalid', 'Referral ID is invalid', 'Referral ID is invalid'),
(588, 'invalid_ip_address', 'Invalid IP address', 'Invalid IP address'),
(589, 'please_activate_your_account', 'Please activate your account', 'Please activate your account'),
(590, 'already_regsister', 'Already regsister!!!', 'Already regsister!!!'),
(591, 'this_account_is_now_pending', 'This account is now pending', 'This account is now pending'),
(592, 'this_account_is_suspend', 'This account is suspend', 'This account is suspend'),
(593, 'something_wrong', 'Something wrong !!!', 'Something wrong !!!'),
(594, 'password_missmatch', 'Password Missmatch', 'password missmatch'),
(595, 'invalid_authentication_code', 'Invalid Authentication Code', 'Invalid Authentication Code'),
(596, 'password_reset_code_send_check_your_email', 'Password reset code send.Check your email.', 'Password reset code send.Check your email.'),
(597, 'email_required', 'email required', 'email required'),
(598, 'password_changed', 'Password has been changed', 'Password has been changed'),
(599, 'google_authenticator_disabled', 'Google Authenticator Disabled', 'Google Authenticator Disabled'),
(600, 'google_authenticator_enabled', 'Google Authenticator Enabled', 'Google Authenticator Enabled'),
(601, 'this_account_already_activated', 'This account already activated', 'This account already activated'),
(602, 'total_balance', 'Total Balance', 'Total Balance'),
(603, 'available_balance', 'Available Balance', 'Available balance'),
(604, 'open', 'Open', NULL),
(605, 'qty', 'QTY', 'QTY'),
(606, 'finished_trade', 'Finished Trade', 'Finished Trade'),
(607, 'deposit_crypto_dollar', 'Deposit(Crypto/Dollar)', 'Deposit(Crypto/Dollar)'),
(608, 'us_dollar', 'US Dollar', 'US Dollar'),
(609, 'available', 'Available', 'Disponible'),
(610, 'buy_orders', 'Buy Orders', 'Buy Orders'),
(611, 'last_price', 'last price', 'last price'),
(612, 'sell_orders', 'Sell Orders', 'Sell Orders'),
(613, '1hr_change', '1hr Change', '1hr Change'),
(614, '1hr_high', '1hr High', '1hr High'),
(615, '1hr_low', '1hr Low', '1hr Low'),
(616, '1hr_volume', '1hr Volume', '1hr Volume'),
(617, 'estimated_open_price', 'Estimated open price', 'Estimated open price'),
(618, 'open_fees', 'Open fees', 'Open fees'),
(619, 'market_depth', 'Market Depth', 'Market Depth'),
(620, 'coin', 'Coin', 'Pièce De Monnaie'),
(621, 'market_price', 'Market Price', 'Market Price'),
(622, 'volume', 'volume', 'volume'),
(623, 'live_chat', 'Live Chat', 'Live Chat'),
(624, 'market_trade_history', 'Market Trade History', 'Market Trade History'),
(625, 'Notices', 'notices', 'notices'),
(626, 'posted_by', 'Posted by', 'Posted by'),
(627, 'latest_form_our_blog', 'Latest form our blog', 'Latest form our blog'),
(628, 'auth_code', 'Auth Code', 'AuthCode'),
(629, 'scan_this_barcode_using', 'Scan this BarCode using', 'Scan this BarCode using'),
(630, 'google_authentication', 'Google Authentication', 'Google Authentication'),
(631, 'install_google_authentication', 'Install Google Authentication', 'Install Google Authentication'),
(632, 'if_you_are_unable_to_scan_the_qr_code_please_enter_this_code_manually_into_the_app.', 'If you are unable to scan the QR code, please enter this code manually into the app.', 'If you are unable to scan the QR code, please enter this code manually into the app.'),
(633, 'open_order', 'Open Order', 'Open Order'),
(634, 'complete_order', 'Complete Order', 'Complete Order'),
(635, 'bank_setting', 'Bank Setup', 'Bank Setup'),
(636, 'payout_setup', 'Payout Setup', 'Payout Setup'),
(637, 'account_login', 'Account Login', 'Account Login'),
(638, 'we_never_share_your_email_with_anyone_else', 'We\'ll never share your email with anyone else', 'We\'ll never share your email with anyone else'),
(639, 'news_details', 'News Details', 'News Details'),
(640, 'open_order_history', 'Open Order History', 'Open Order History'),
(641, 'required_qty', 'Required QTY', ''),
(642, 'available_qty', 'Available Quantity ', ''),
(643, 'required_amount', 'Required Amount', ''),
(644, 'available_amount', 'Available Amount', ''),
(645, 'complete_qty', 'Complete QTY', ''),
(646, 'complete_amount', 'complete amount', ''),
(647, 'trade_time', 'Trade Time', 'Trade Time'),
(648, 'running', 'Running', NULL),
(649, '24hr_change', '24hr Change', '24hr Change'),
(650, '24hr_high', '24hr High', '24hr High'),
(651, '24hr_low', '24hr Low', '1hr Low'),
(652, '24hr_volume', '24hr Volume', '24hr Volume'),
(653, 'post_comment', 'Post Comment', 'Post Comment'),
(654, 'account_created', 'Account Created', 'Account Created'),
(655, 'access_time', 'Access Time', 'Access Time'),
(656, 'user_agent', 'User Agent', 'User Agent'),
(657, 'passport', 'Passport', 'Passport'),
(658, 'drivers_license', 'Driver license', 'Driver license'),
(659, 'government_issued_id_card', 'Government-issued ID Card', 'Government-issued ID Card'),
(660, 'given_name', 'Given Name', 'Given Name'),
(661, 'surname', 'Surname', 'Surname'),
(662, 'passport_nid_license_number', 'Passport/NID/License Number', 'Passport/NID/License Number'),
(663, 'account_register', 'Account Register', 'Account Register'),
(664, 'confirm_password', 'Confirm Password', 'Confirm Password'),
(665, 'canceled', 'Canceled', NULL),
(666, 'completed', 'Completed', NULL),
(667, 'crypto_dollar_currency', 'Crypto/Dollar Currency', 'Crypto/Dollar Currency'),
(668, 'withdraw_no', 'Withdraw No', 'Withdraw No'),
(669, 'male', 'Male', 'Male'),
(670, 'female', 'Female', 'Female'),
(671, 'verify', 'Verify', 'Verify'),
(672, 'server_problem', 'Server Problem', 'Server Problem'),
(673, 'verified', 'Verified', 'Vérifié'),
(674, 'footer_menu1', 'Footer menu 1', 'Footer menu 1'),
(675, 'footer_menu2', 'Footer menu 2', 'Footer menu 2'),
(676, 'footer_menu3', 'Social Service', 'Social Service'),
(677, 'terms_of_use', 'Terms Of Use', 'Terms Of Use'),
(678, 'receiver_not_valid', 'Receiver not valid!!!', 'Receiver not valid!!!'),
(679, 'first_name_required', 'Please enter your name!', 'Please enter your name!'),
(680, 'a_lowercase_letter', 'Please Enter a Lowercase letter !', 'Please enter a loswercase letter!'),
(681, 'password_required', 'Please enter your password!', 'Please enter yYour password!'),
(682, 'a_capital_uppercase_letter', 'Please Enter a Uppercase letter ! ', 'Please enter a upercase letter!'),
(683, 'a_number', 'Please Enter a Number!', 'Please enter a number!'),
(684, 'a_special', 'Please Enter a Special Character !', 'Please enter a  special character!'),
(685, 'please_enter_at_least_8_characters_input', 'Please enter at least eight characters!', 'Please enter at least eight characters!'),
(686, 'confirm_password_must_be_filled_out', 'Please enter Confirm password!', 'Please enter Confirm password!'),
(687, 'must_confirm_privacy_policy_and_terms_and_conditions', 'Must confirm privacy policy and terms and conditions', 'Must confirm privacy policy and terms and conditions'),
(688, 'phone_required', 'Enter your phone number!', 'Enter your phone number!'),
(689, 'email_required', 'Enter your email address!', 'Enter your email address!'),
(690, 'comments_required', 'Enter your comments!', 'Enter your comments!'),
(691, 'first_name', 'Please enter your first name!', 'Please enter your first name!'),
(692, 'c', NULL, NULL),
(693, 'f_name', 'First Name', 'First Name'),
(694, 'l_name', 'Last Name', 'Last Name'),
(698, 'coin_full_name', 'Coin Full Name', 'Nom complet de la piÃ¨ce'),
(699, 'coin_id', 'Coin Id', 'ID de piÃ¨ce'),
(700, 'rank', 'Rank', NULL),
(701, 'show_home', 'Show Home', 'Afficher la maison'),
(702, 'yes', 'Yes', 'Oui'),
(703, 'no', 'No', 'Non'),
(704, 'coin_image/icon/logo', 'Coin Image/Icon/Logo', 'Image de piÃ¨ce / icÃ´ne / logo'),
(705, 'coin_icon', 'Coin Icon', 'IcÃ´ne de piÃ¨ce de monnaie'),
(706, 'full_name', 'Full Name', 'Nom complet'),
(707, 'home_page/serial', 'Home Page/Serial', 'Page d\'accueil / SÃ©rie'),
(708, 'email_notification_settings', 'Email Notification Settings', 'Paramètres De Notification Par E-mail'),
(709, 'payout', 'Payout', NULL),
(710, 'commissin', 'Commissin', 'Commission'),
(711, 'team_bonnus', 'Team Bonnus', NULL),
(712, 'sms_sending', 'SMS Sending', 'Envoi De SMS'),
(713, 'exchange_market', 'Exchange Market', 'Marché Des Changes'),
(714, 'total_trade', 'Total Trade', 'Commerce Total'),
(715, 'total_crypto_fees', 'Total Crypto Fees', 'Total Des Frais De Crypto'),
(716, 'total_usd_fees', 'Total USD Fees', 'Frais Totaux En USD'),
(717, 'referral_bonus_usd', 'Referral Bonus USD', 'Bonus De Parrainage USD'),
(718, 'market_deposit', 'Market Deposit', 'DÃ©pÃ´t de marchÃ©'),
(719, 'fees_collect', 'Fees Collect', 'Frais collectÃ©s'),
(720, 'quantity', 'Quantity', 'QuantitÃ©'),
(721, 'required', 'Required', NULL),
(722, 'history', 'history', 'histoire'),
(723, 'back', 'Back', 'Retour'),
(724, 'important', 'Important', 'Important'),
(725, 'send_only', 'Send Only', 'Envoyer seulement'),
(726, 'deposit_address', 'deposit address', 'adresse de dÃ©pÃ´t'),
(727, 'sending_any_other_coin_or_token_to_this_address_may_result_in_the_loss_of_your_deposit', 'Sending any other coin or token to this address may result in the loss of your deposit', 'L\'envoi de toute autre piÃ¨ce ou jeton Ã  cette adresse peut entraÃ®ner la perte de votre dÃ©pÃ´t'),
(728, 'copy_address', 'Copy Address', 'Copier l\'adresse'),
(729, 'payment_process', 'Payment Process', NULL),
(735, 'balance', 'Balance', 'Ã©quilibre'),
(736, 'flag', 'Flag', NULL),
(737, 'menu_background_color', 'Menu Background Color', 'Couleur d\'arrière-plan du menu'),
(738, 'menu_font_color', 'Menu Font Color', 'Couleur de la police du menu'),
(739, 'footer_background_color', 'Footer Background Color', 'Couleur de fond du bas de page'),
(740, 'footer_font_color', 'Footer Font Color', 'Couleur de la police du pied de page'),
(741, 'button_background_color', 'Button Background Color', 'Couleur d\'arrière-plan du bouton'),
(742, 'button_font_color', 'Button Font Color', 'Couleur de la police du bouton'),
(743, 'theme_color', 'Theme Color', 'Couleur du thème'),
(744, 'newsletter_background_color', 'Newsletter Background Color', 'Couleur d\'arrière-plan de la newsletter'),
(745, 'newsletter_font_color', 'Newsletter Font Color', 'Couleur de police de la newsletter'),
(746, 'newsletter_images', 'Newsletter Images', 'Images de la newsletter'),
(747, 'pending-withdraw', 'Pending withdraw', 'En attente de retrait'),
(748, 'withdraw-list', 'Withdraw List', 'Retirer la liste'),
(749, 'pending-deposit', 'Pending Deposit', 'Dépôt en attente'),
(750, 'deposit-list', 'Deposit List', 'Liste de dépôt'),
(751, 'add-credit', 'Add Credit', 'Ajouter un crédit'),
(752, 'open-order', 'Open Order', 'Commande Ouverte'),
(753, 'trade-history', 'Trade History', 'Histoire Du Commerce'),
(754, 'exchanger', 'Exchanger', 'Échangeur'),
(755, 'coin-pair', 'Coin Pair', 'Paire De Pièces'),
(756, 'user', 'User', 'Utilisateur'),
(757, 'add-user', 'Add User', 'Ajouter un utilisateur'),
(758, 'user-list', 'user list', 'liste d\'utilisateur'),
(759, 'verify-user', 'Verify User', 'Vérifier L\'utilisateur'),
(760, 'subscriber-list', 'Subscriber List', 'Liste D\'abonnés'),
(761, 'app-setting', 'App Setting', 'Réglage De L\'application'),
(762, 'block-list', 'Block List', 'Liste De Blocage'),
(763, 'fees-setting', 'Fees Setting', 'établissement Des Frais'),
(764, 'transaction-setup', 'Transaction Setup', 'Configuration De La Transaction'),
(765, 'email-sms-gateway', 'Email Sms Gateway', 'Passerelle Sms Email'),
(766, 'payment-gateway', 'Payment Gateway', 'Passerelle De Paiement'),
(767, 'affiliation', 'Affiliation', 'Affiliation'),
(768, 'external-api-list', 'External Api List', 'Liste Des API Externes'),
(769, 'update-external-api', 'Update External Api', 'Mettre à Jour L\'API Externe'),
(770, 'phrase', 'Phrase', 'Phrase'),
(771, 'edit-phrase', 'Edit Phrase', 'Modifier La Phrase'),
(772, 'update-gateway', 'Update Gateway', 'Mettre à Jour La Passerelle'),
(773, 'edit-user', 'Edit User', 'Modifier L\'utilisateur'),
(774, 'add-admin', 'Add Admin', 'Ajouter Un Administrateur'),
(775, 'admin-list', 'Admin List', 'Liste D\'administrateurs'),
(776, 'cms', 'CMS', 'CMS'),
(777, 'themes-setting', 'Themes Setting', 'Réglage Des Thèmes'),
(778, 'page-content-list', 'Page Content List', 'Liste De Contenu De Page'),
(779, 'faq-list', 'Faq List', 'Liste De Faq'),
(780, 'notice-list', 'Notice List', 'Liste D\'avis'),
(781, 'edit-page-content', 'Edit Page Content', 'Modifier Le Contenu De La Page'),
(782, 'edit-faq', 'Edit Faq', 'Modifier La FAQ'),
(783, 'edit-notice', 'Edit Notice', 'Modifier L\'avis'),
(784, 'add-page-content', 'Add Page Content', 'Ajouter Du Contenu De Page'),
(785, 'add-faq', 'Add Faq', 'Ajouter Une FAQ'),
(786, 'news-list', 'News List', 'Liste De Nouvelles'),
(787, 'add-news', 'Add News', 'Ajouter Des Nouvelles'),
(788, 'edit-news', 'Edit News', 'Modifier Les Actualités'),
(789, 'category-list', 'Category List', 'Liste Des Catégories'),
(790, 'add-category', 'Add Category', 'Ajouter Une Catégorie'),
(791, 'edit-category', 'Edit Category', 'Modifier La Catégorie'),
(792, 'slider-list', 'Slider List', 'Liste De Curseurs'),
(793, 'add-slider', 'Add Slider', 'Ajouter Un Curseur'),
(794, 'edit-slider', 'Edit Slider', 'Modifier Le Curseur'),
(795, 'social-link-list', 'Social Link List', 'Liste De Liens Sociaux'),
(796, 'edit-social-link', 'Edit Social Link', 'Modifier Le Lien Social'),
(797, 'advertisement-list', 'Advertisement List', 'Liste De Publicités'),
(798, 'add-advertisement', 'Add Advertisement', 'Ajouter Une Publicité'),
(799, 'edit-advertisement', 'Edit Advertisement', 'Modifier La Publicité'),
(800, 'web-language-list', 'Web Language List', 'Liste Des Langues Web'),
(801, 'autoupdate', 'Autoupdate', 'Mise à Jour Automatique'),
(802, 'latest-version', 'Latest Version', 'Dernière Version'),
(803, 'current-version', 'Current Version', 'Version Actuelle'),
(804, 'subscriber', 'Subscriber', 'Abonné'),
(805, 'affiliation-setup', 'Affiliation Setup', 'Configuration De L\'affiliation'),
(806, 'external-api', 'External API', 'API Externe'),
(807, 'support', 'Support', 'Soutien'),
(808, 'no-update-available', 'No Update Available', 'Pas De Mise A Jour Disponible'),
(809, 'full-name', 'Full Name', 'Nom Complet'),
(810, 'initial-price', 'Initial Price', 'Prix ???initial'),
(811, 'test_bdtask', 'Bdtask Limited', NULL),
(812, 'email_sms_template', 'E-mail And SMS Template', 'E-mail And SMS Template'),
(813, 'template-english', 'Template English', 'Modèle Anglais'),
(814, 'template-french', 'Template French', 'Modèle Français'),
(815, 'template-name', 'Template Name', 'Nom Du Modèle'),
(816, 'template-type', 'Template Type', 'Type De Modèle'),
(817, 'template-update', 'Template-update', 'Template-update'),
(818, 'email-sms-template', 'Email Sms Template', 'Modèle De Courrier électronique SMS'),
(819, 'transfer_verification', 'Transfer Verification', 'Vérification Du Transfert'),
(820, 'transfer_success', 'Transfer Success', 'Succès Du Transfert'),
(821, 'withdraw_verification', 'Withdraw Verification', 'Retirer La Vérification'),
(822, 'withdraw_success', 'Withdraw Success', 'Retirer Le Succès'),
(823, 'profile_update', 'Profile Update', 'Mise à Jour Du Profil'),
(824, 'deposit_success', 'Deposit Success', 'Réussite Du Dépôt'),
(825, 'registered', 'Registered', 'Inscrit'),
(826, 'email_address', 'Email Address', 'Adresse E-mail'),
(827, 'template_type', 'Template Type', 'Type De Modèle'),
(828, 'subject_english', 'Subject English', 'Sujet Anglais'),
(829, 'subject_french', 'Subject French', 'Sujet Français'),
(830, 'purchase_key', 'Purchase Key', 'Clé D\'achat'),
(831, 'module', 'Module', 'Module'),
(832, 'add_module', 'Add Module', 'Ajouter Un Module'),
(833, 'overwrite', 'Overwrite', 'écraser'),
(834, 'theme_uploaded_successfully', 'Theme Uploaded Successfully', 'Thème Téléchargé Avec Succès'),
(835, 'there_was_a_problem_with_the_upload', 'There Was A Problem With The Upload', 'Il Y A Eu Un Problème Avec Le Téléchargement'),
(836, 'invalid_purchase_key', 'Invalid Purchase Key', 'Clé D\'achat Invalide'),
(837, 'buy_now', 'Buy Now', 'Acheter Maintenant'),
(838, 'install', 'Install', 'Installer'),
(839, 'invalid_module', 'Invalid Module', 'Module Invalide'),
(840, 'module_added_successfully', 'Module Added Successfully', 'Module Ajouté Avec Succès'),
(841, 'no_tables_are_registered_in_config', 'No Tables Are Registered_in Config', 'Aucune Table N\'est Enregistrée Dans La Configuration'),
(842, 'themes', 'Themes', 'Thèmes'),
(843, 'module_list', 'Module List', 'Liste Des Modules'),
(844, 'theme_active_successfully', 'Theme Active Successfully', 'Thème Actif Avec Succès'),
(845, 'theme_name', 'Theme Name', 'Nom Du Thème'),
(846, 'upload', 'Upload', 'Télécharger'),
(847, 'downloaded_successfully', 'Downloaded Successfully', 'Téléchargé Avec Succès'),
(848, 'failed_try_again', 'Failed Try Again', 'échec Réessayer'),
(849, 'no_theme_available', 'No Theme Available', 'Aucun Thème Disponible'),
(850, 'download', 'Download', 'Télécharger'),
(851, 'theme_list', 'Theme List', 'Liste De Thèmes'),
(852, 'addon', 'Addon', 'Ajouter'),
(853, 'add_theme', 'Add Theme', 'Ajouter Un Thème'),
(854, 'download_theme', 'Download Theme', 'Télécharger Le Thème'),
(855, 'uninstall', 'Uninstall', 'Désinstaller'),
(856, 'please_wait', 'Please Wait', 'S\'il Vous Plaît, Attendez'),
(857, 'current', 'Current', 'Actuel'),
(858, 'back_to_home', 'Back To Home', 'De Retour à La Maison'),
(859, 'trading_history', 'Trading History', 'Historique Du Trading'),
(860, 'latest_news', 'Latest News', 'Dernières Nouvelles'),
(861, 'create_an_account', 'Create An Account', 'Créer Un Compte'),
(862, 'to__trade', 'To  Trade', 'échanger'),
(863, 'log_in', 'Log In', 'S\'identifier'),
(864, 'white', 'WHITE', 'BLANC'),
(865, 'dark', 'DARK', 'FONCÉ'),
(866, 'enter_your_email_address_to_retrieve_your_password', 'Enter Your Email Address To Retrieve Your Password', 'Entrez Votre Adresse E-mail Pour Récupérer Votre Mot De Passe'),
(867, 'retrieve_password', 'Retrieve Password', 'Récupérer Mot De Passe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES
(868, 'not_a_member_yet', 'Not A Member Yet', 'Pas Encore Membre'),
(869, 'total_users', 'Total Users', 'Nombre Total D\'utilisateurs'),
(870, 'all_users', 'All Users', 'Tous Les Utilisateurs'),
(871, 'all_markets', 'All Markets', 'Tous Les Marchés'),
(872, 'method', 'Method', 'Méthode'),
(873, 'slider_title_engnilsh', 'Slider Title Engnilsh', 'Titre Du Curseur Engnilsh'),
(874, 'slider_h1', 'Slider H1', 'Curseur H1'),
(875, 'sub_title_english', 'Sub Title English', 'Sous-titre Anglais'),
(876, 'slider_h2', 'Slider H2', 'Curseur H2'),
(877, 'button_text', 'Button Text', 'Texte Du Bouton'),
(878, 'slider_h3', 'Slider H3', 'Curseur H3'),
(879, 'code', 'Code', 'Code'),
(880, 'language_name', 'Language Name', 'Nom De La Langue'),
(881, 'add_coin_pair', 'Add Coin Pair', 'Ajouter Une Paire De Pièces'),
(882, 'cryptocoin_add', 'Cryptocoin Add', 'Ajout De Crypto-monnaie'),
(883, 'add-coin-pair', 'Add-coin-pair', 'Ajouter Une Paire De Pièces'),
(884, 'security', 'Security', 'Sécurité'),
(885, 'edita_dmin', 'Edita Dmin', 'Edita Dmin'),
(886, 'edit-admin', 'Edit-admin', 'Edit-admin'),
(887, 'article1_en', 'Article1 En', 'Article1 Fr'),
(888, 'question_english', 'Question English', 'Question Anglais'),
(889, 'add-notice', 'Add-notice', 'Add-notice'),
(890, 'edit-profile', 'Edit-profile', 'Editer Le Profil'),
(891, '_phrase_name', ' Phrase Name', 'Nom De La Phrase'),
(892, 'cryptocoin-edit', 'Cryptocoin-edit', 'Crypto-monnaie-modifier'),
(893, 'edit-market', 'Edit-market', 'Edit-market'),
(894, 'edit-coin-pair', 'Edit-coin-pair', 'Modifier La Paire De Pièces'),
(895, 'transaction_type', 'Transaction Type', 'Type De Transaction'),
(896, 'account_type', 'Account Type', 'Type De Compte'),
(897, 'unverified', 'Unverified', 'Non Vérifié'),
(898, 'limit_amount', 'Limit Amount', 'Montant Limite'),
(899, 'percent', 'Percent', 'Pour Cent'),
(900, 'fixed', 'Fixed', 'Fixé'),
(901, 'api_name', 'API Name', 'Nom De L\'API'),
(902, 'merchant_id', 'Merchant Id', 'Identifiant Du Marchand'),
(903, 'email_gateway', 'Email Gateway', 'Passerelle De Messagerie'),
(904, 'sms_gateway', 'Sms Gateway', 'Passerelle Sms'),
(906, 'credit-list', 'Credit-list', 'Liste De Crédit'),
(907, 'cryptocoin-add', 'Cryptocoin-add', 'Ajout De Crypto-monnaie'),
(909, 'see_all_users', 'See All Users', 'Voir Tous Les Utilisateurs'),
(910, 'see_all_markets', 'See All Markets', 'Voir Tous Les Marchés'),
(911, 'see_trade_history', 'See Trade History', 'Voir L\'historique Du Commerce'),
(912, 'buy_&_sell', 'Buy & Sell', 'Acheter Vendre'),
(913, 'deposit,_withdraw,_transfer', 'Deposit, Withdraw, Transfer', 'Dépôt, Retrait, Transfert'),
(914, 'see_all_pending_withdraw', 'See All Pending Withdraw', 'Voir Tous Les Retraits En Attente'),
(915, 'see_all_trade_history', 'See All Trade History', 'Voir Toute L\'histoire Du Commerce'),
(916, 'user_growth_rate', 'USER GROWTH RATE', 'TAUX DE CROISSANCE DES UTILISATEURS'),
(917, 'email_sms_settings', 'Email Sms Settings', 'Paramètres De Messagerie électronique'),
(918, 'email-sms-settings', 'Email-sms-settings', 'Email-sms-settings'),
(919, 'fees_collection', 'Fees Collection', 'Perception Des Frais'),
(920, 'create_user', 'Create User', 'Créer Un Utilisateur'),
(921, 'create_admin', 'Create Admin', 'Créer Un Administrateur'),
(922, 'add-ons', 'Add-ons', 'Add-ons'),
(923, 'max_sell_currency_amount', 'Max Sell Currency Amount', 'Montant Maximal De La Devise De Vente'),
(924, 'max_buy_currency_amount', 'Max Buy Currency Amount', 'Montant Maximal De La Devise D\'achat'),
(925, 'account', 'Account', 'Compte'),
(926, 'google_captcha', 'Google Captcha', 'Google Capture'),
(927, 'add_captcha_at_your_domain', 'Add captcha at your domain', 'Domaine De Configuration'),
(928, 'pages', 'PAGES', 'PAGES'),
(929, 'useful_links', 'USEFUL LINKS', 'LIENS UTILES'),
(930, 'check_your_email_server', 'Check Your Email Server', 'Vérifiez Votre Serveur De Messagerie'),
(931, 'check_your_sms_gateway_', 'Check Your Sms Gateway ', 'Vérifiez Votre Passerelle SMS'),
(932, 'mobile_no', 'Mobile No', 'Mobile Non'),
(933, 'email_gateway_setup', 'Email Gateway Setup', 'Configuration De La Passerelle De Messagerie'),
(934, 'sms_gateway_setup', 'SMS Gateway Setup', 'Configuration De La Passerelle SMS'),
(935, 'check_your_sms_gateway', 'Check Your Sms Gateway', 'Vérifiez Votre Passerelle SMS'),
(936, 'logo_type', 'Logo Type', 'Type De Logo'),
(937, 'log_type', 'Log Type', 'Type De Journal'),
(938, 'body_background_color', 'Body Background Color', 'Couleur D\'arrière-plan Du Corps'),
(939, 'body_font_color', 'Body Font Color', 'Couleur De La Police Du Corps'),
(940, 'top_footer_horizontal_border_color', 'Top Footer Horizontal Border Color', 'Couleur De La Bordure Horizontale Du Pied De Page Supérieur'),
(941, 'footer__menu_border_color', 'Footer  Menu Border Color', 'Couleur De La Bordure Du Menu Du Pied De Page'),
(942, 'footer_menu_border_color', 'Footer Menu Border Color', 'Couleur De La Bordure Du Menu Du Pied De Page'),
(943, 'bottom_footer_background_color', 'Bottom Footer Background Color', 'Couleur D\'arrière-plan Du Pied De Page Inférieur'),
(944, 'bottom_footer_font_color', 'Bottom Footer Font Color', 'Couleur De Police Du Pied De Page Inférieur'),
(945, 'form_background_color', 'Form Background Color', 'Couleur D\'arrière-plan Du Formulaire'),
(946, 'form_border_color', 'Form Border Color', 'Couleur De La Bordure Du Formulaire'),
(947, 'form_label_color', 'Form Label Color', 'Couleur De L\'étiquette Du Formulaire'),
(948, 'form_input_field_background_color', 'Form Input Field Background Color', ''),
(949, 'input_field_border_color', 'Input Field Border Color', 'Couleur De La Bordure Du Champ De Saisie'),
(950, 'input_field_color', 'Input Field Color', 'Couleur Du Champ De Saisie'),
(951, 'verify_profile', 'Verify Profile', 'Vérifier Le Profil'),
(952, 'contact_with_us', 'Contact With Us', 'En Contact Avec Nous'),
(953, 'working_hours', 'Working Hours', 'Heures D\'ouverture'),
(954, 'phone_number', 'Phone Number', 'Numéro De Téléphone');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` varchar(250) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `notification_type` varchar(45) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `details` mediumtext DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='SMS and Email notified data will be stored in this table.';

-- --------------------------------------------------------

--
-- Table structure for table `payeer_payments`
--

CREATE TABLE `payeer_payments` (
  `id` int(11) NOT NULL,
  `m_operation_id` int(11) NOT NULL,
  `m_operation_ps` int(11) NOT NULL,
  `m_operation_date` varchar(100) NOT NULL,
  `m_operation_pay_date` varchar(100) NOT NULL,
  `m_shop` int(11) NOT NULL,
  `m_orderid` varchar(300) NOT NULL,
  `m_amount` varchar(100) NOT NULL,
  `m_curr` varchar(100) NOT NULL,
  `m_desc` varchar(300) NOT NULL,
  `m_status` varchar(100) NOT NULL,
  `m_sign` text NOT NULL,
  `lang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway`
--

CREATE TABLE `payment_gateway` (
  `id` int(11) NOT NULL,
  `identity` varchar(50) NOT NULL,
  `agent` varchar(100) NOT NULL,
  `public_key` text NOT NULL,
  `private_key` text NOT NULL,
  `shop_id` varchar(100) NOT NULL,
  `secret_key` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_gateway`
--

INSERT INTO `payment_gateway` (`id`, `identity`, `agent`, `public_key`, `private_key`, `shop_id`, `secret_key`, `data`, `status`) VALUES
(1, 'bitcoin', 'GoUrl Payment', 'a:13:{s:7:\"bitcoin\";s:50:\"43137AACNNeySpeedcoin77SPDPUBaJBxvUGvX7KgmBcx9CGvb\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:50:\"43137AACNNeySpeedcoin77SPDPUBaJBxvUGvX7KgmBcx9CGvb\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', 'a:13:{s:7:\"bitcoin\";s:50:\"43137AACNNeySpeedcoin77SPDPRVyzic8CEewfdazdv9HwdH2\";s:11:\"bitcoincash\";s:0:\"\";s:8:\"litecoin\";s:0:\"\";s:4:\"dash\";s:0:\"\";s:8:\"dogecoin\";s:0:\"\";s:9:\"speedcoin\";s:50:\"43137AACNNeySpeedcoin77SPDPRVyzic8CEewfdazdv9HwdH2\";s:8:\"reddcoin\";s:0:\"\";s:7:\"potcoin\";s:0:\"\";s:11:\"feathercoin\";s:0:\"\";s:8:\"vertcoin\";s:0:\"\";s:8:\"peercoin\";s:0:\"\";s:12:\"monetaryunit\";s:0:\"\";s:17:\"universalcurrency\";s:0:\"\";}', '', '', '', 1),
(2, 'payeer', 'Payeer', '485146745', 'VsdHofTsuI6XOdjL', '', '', '', 1),
(4, 'phone', 'Mobile Money', '+880 1746 40 68 01', 'mobile', '', '', '', 1),
(5, 'paypal', 'Paypal', 'AfmTkhn-GYb_HAsPayWeLDVTG39jNjGsJ3siJSNDs6QGr52KDLnAT28fIv4TVni5P3Dax8w1y-Libl_j', 'EHGJveSf9GJcbyQwgYmouRi9baBPKLPqeSYjYesiG4UJTSnQ45q3gwQdkB6TvFQAjkYm42D1P_Hqn340', '', 'sandbox', '', 1),
(6, 'stripe', 'Stripe', 'pk_test_BPLwYal0sn4KkKaDTzuj5oRq', 'sk_test_6J6dcwXf8ruEZGCvlC09C9NK', '', '', '', 1),
(7, 'bank', 'Bank', '{\"ci_csrf_token\":\"\",\"id\":\"7\",\"identity\":\"bank\",\"agent\":\"Bank\",\"acc_name\":\"kanan tariq khan\",\"acc_no\":\"3646464643131313\",\"branch_name\":\"kaqbhsjkqbdq\",\"swift_code\":\"464kadh\",\"abn_no\":\"kfhw456454\",\"country\":\"PK\",\"bank_name\":\"mwezan\",\"status\":\"1\"}', '', '', '', '', 1),
(8, 'coinpayment', 'CoinPayments', '51fec43efdeb1323d1a0854ffa807b64abf822ca6dd79ba619cdb6de6783b892', 'D432e1907d50C5e399A7E6a34d50DE1B4dfe809980f3a4a295dc7Ac7889Bc3e8', '', '', '{\"marcent_id\":\"7bc213faca51052a85eccd6ce1c56eef\",\"ipn_secret\":\"TaR#@)1331\",\"debug_email\":\"tareq7500@gmail.com\",\"debuging_active\":1,\"withdraw\":\"0\"}', 1),
(9, 'token', 'Token', '51fec43efdeb1323d1a0854ffa807b64abf8', 'messege...', '', 'show', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logo_web` varchar(255) NOT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `time_zone` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `office_time` varchar(255) DEFAULT NULL,
  `update_notification` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `title`, `description`, `email`, `phone`, `logo`, `logo_web`, `favicon`, `language`, `site_align`, `footer_text`, `time_zone`, `latitude`, `office_time`, `update_notification`) VALUES
(1, 'Crypto Currency Trading System', 'Bangladesh Office B-25, Mannan Plaza, 4th Floor, Khilkhet Dhaka-1229, Bangladesh', 'info@bdtask.com', '+8809666980047', '////upload/settings/5b3c74cacc762f373210b855dc9b885a.png', '////upload/settings/5b3c74cacc762f373210b855dc9b885a.png', '////upload/settings/6a32acfe674bbfb88ad1c8f3f1de332d.png', 'english', 'LTR', '2021 © Copyright bdtask Trading System', 'Asia/Dhaka', '40.6700, -73.9400', 'Monday - Friday: 08:00 - 22:00\r\nSaturday, Sunday: Closed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_email_send_setup`
--

CREATE TABLE `sms_email_send_setup` (
  `id` int(11) NOT NULL,
  `method` text NOT NULL,
  `deposit` int(11) DEFAULT NULL,
  `transfer` int(11) DEFAULT NULL,
  `withdraw` int(11) DEFAULT NULL,
  `payout` int(11) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `team_bonnus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_email_send_setup`
--

INSERT INTO `sms_email_send_setup` (`id`, `method`, `deposit`, `transfer`, `withdraw`, `payout`, `commission`, `team_bonnus`) VALUES
(1, 'email', 1, 1, 1, NULL, NULL, NULL),
(2, 'sms', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'tradebox_Default_Theme', 1, '2021-01-18 12:54:13', '2021-03-27 10:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `web_article`
--

CREATE TABLE `web_article` (
  `article_id` int(11) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `headline_en` varchar(300) DEFAULT NULL,
  `headline_fr` varchar(300) DEFAULT NULL,
  `article_image` varchar(100) DEFAULT NULL,
  `custom_url` varchar(300) NOT NULL,
  `article1_en` longtext NOT NULL,
  `article1_fr` longtext NOT NULL,
  `article2_en` longtext NOT NULL,
  `article2_fr` longtext NOT NULL,
  `video` varchar(300) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `page_content` int(11) DEFAULT 0 COMMENT 'if this is a Page content set 1 else 0',
  `position_serial` int(11) NOT NULL,
  `publish_date` datetime NOT NULL,
  `publish_by` varchar(20) NOT NULL,
  `edit_history` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_article`
--

INSERT INTO `web_article` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `video`, `cat_id`, `page_content`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES
(1, NULL, 'Contact', 'Contact Français Français Français Français Turkey', NULL, '', '1355 Market Street, Suite 900 San Francisco, CA 94103', '<div>\r\n                                            <p>Phone <font color=\"#72afd2\"><span xss=removed>+1 (514) 352-1010</span></font><br>Fax <span xss=removed>+1 (514) 352-7511</span></p></div>', '<ul class=\"opening_hours\">\r\n                                        <li>\r\n                                            <p>Monday-Wednesday</p>\r\n                                            <p>10 am - 6 pm</p></li>\r\n                                    </ul>', '', NULL, 12, 0, 0, '2020-09-15 12:02:49', 'admin@demo.com', 0),
(2, NULL, 'Marketing Consultancy', 'Lorem ipsum ', NULL, '', 'write your answer\r\n', 'write your answer\r\n', '', '', NULL, 30, 0, 0, '2021-03-10 03:09:55', 'admin@demo.com', 0),
(3, NULL, NULL, NULL, NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam finibus vestibulum lacus non sodales. Aenean pretium augue tellus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam finibus vestibulum lacus non sodales. Aenean pretium augue tellus.', '', '', NULL, 29, 0, 0, '2020-09-15 12:26:52', 'admin@demo.com', 0),
(4, NULL, NULL, NULL, NULL, '', 'Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. ', 'Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. ', '', '', NULL, 29, 0, 0, '2018-10-10 10:56:25', 'admin@demo.com', 0),
(5, NULL, NULL, NULL, NULL, '', 'Te cum mutat malorum. Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. ', 'Te cum mutat malorum. Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. ', '', '', NULL, 29, 0, 0, '2018-10-10 10:56:55', 'admin@demo.com', 0),
(6, NULL, NULL, NULL, NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Iam id ipsum absurdum, maximum malum neglegi. Satisne ergo pudori consulat, si quis sine teste libidini pareat?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Iam id ipsum absurdum, maximum malum neglegi. Satisne ergo pudori consulat, si quis sine teste libidini pareat?', '', '', NULL, 29, 0, 0, '2018-10-10 10:58:48', 'admin@demo.com', 0),
(7, 'Make Each <span>Price Spike</span> And Dip Count', 'Make Each <span>Price Spike</span> And Dip Count', 'Make Each <span>Price Spike</span> And Dip Count', '', '', '<p><span style=\"color: rgb(165, 165, 165); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 15px; text-align: center;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.</span><br></p>', '<p><span style=\"color: rgb(165, 165, 165); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 15px; text-align: center;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.</span><br></p>', '', '', '', 34, 1, 1, '2018-11-03 06:15:00', 'admin@demo.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_category`
--

CREATE TABLE `web_category` (
  `cat_id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `cat_name_en` varchar(100) NOT NULL,
  `cat_name_fr` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `cat_image` varchar(300) DEFAULT NULL,
  `cat_title1_en` varchar(100) DEFAULT NULL,
  `cat_title1_fr` varchar(100) DEFAULT NULL,
  `cat_title2_en` varchar(300) DEFAULT NULL,
  `cat_title2_fr` varchar(300) DEFAULT NULL,
  `menu` int(11) DEFAULT NULL COMMENT 'Header menu=1',
  `position_serial` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_category`
--

INSERT INTO `web_category` (`cat_id`, `slug`, `cat_name_en`, `cat_name_fr`, `parent_id`, `cat_image`, `cat_title1_en`, `cat_title1_fr`, `cat_title2_en`, `cat_title2_fr`, `menu`, `position_serial`, `status`) VALUES
(1, 'home', 'Home', 'Maison', 0, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', '', '', '', '', 1, 1, 1),
(4, 'exchange', 'Exchange', 'Échange', 0, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', 'Exchange', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that', '', 1, 4, 1),
(8, 'about', 'About', 'Sur', 0, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', 'About Us', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that', '', 0, NULL, 1),
(9, 'news', 'News', 'Nouvelles', 0, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', 'Latest form our blog', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that', '', NULL, NULL, 1),
(16, 'register', 'Register', 'Register', 0, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', '', '', '', '', 0, 0, 1),
(17, 'forgot-password', 'Forgot Password', 'Mot de Passe oublié', 0, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', '', '', '', '', 0, NULL, 1),
(19, 'btc', 'BTC', '', 9, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', '', '', '', '', 0, NULL, 1),
(20, 'eth', 'ETH', 'ETH', 9, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', '', '', '', '', 0, 0, 1),
(21, 'ltc', 'LTC', 'LTC', 9, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', '', '', '', '', 0, 0, 1),
(22, 'dash', 'DASH', 'DASH', 9, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', '', '', '', '', 0, 0, 1),
(24, 'blockchain', 'Blockchain', 'Blockchain', 9, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', '', '', '', '', 0, 0, 1),
(25, 'trading', 'Trading', 'Trading', 9, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', '', '', '', '', 0, 0, 1),
(26, 'news-details', 'News Details', 'News Details', 0, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', '', '', '', '', 0, 0, 1),
(27, 'mining', 'Mining', '', 9, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', '', '', '', '', 0, NULL, 1),
(28, 'terms', 'Terms', 'terms', 1, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', 'term title english', 'turki title', 'category title english', 'dsf', 2, NULL, 1),
(29, 'notice', 'Notice', 'Noticeo', 0, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', '', '', '', '', 0, NULL, 1),
(30, 'faq', 'FAQ', 'FAQ', 30, 'upload/1613365281_db9ef32ca3cf3baef08f.jpg', ' Frequently asked questions', ' Frequently asked questions', ' frequently asked questions', ' Frequently asked questions', 2, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_language`
--

CREATE TABLE `web_language` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `flag` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_language`
--

INSERT INTO `web_language` (`id`, `name`, `flag`) VALUES
(1, 'French', 'fr');

-- --------------------------------------------------------

--
-- Table structure for table `web_news`
--

CREATE TABLE `web_news` (
  `article_id` int(11) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `headline_en` varchar(300) NOT NULL,
  `headline_fr` varchar(300) NOT NULL,
  `article_image` varchar(100) DEFAULT NULL,
  `custom_url` varchar(300) NOT NULL,
  `article1_en` longtext NOT NULL,
  `article1_fr` longtext NOT NULL,
  `article2_en` longtext NOT NULL,
  `article2_fr` longtext NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position_serial` int(11) NOT NULL,
  `publish_date` datetime NOT NULL,
  `publish_by` varchar(20) NOT NULL,
  `edit_history` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_news`
--

INSERT INTO `web_news` (`article_id`, `slug`, `headline_en`, `headline_fr`, `article_image`, `custom_url`, `article1_en`, `article1_fr`, `article2_en`, `article2_fr`, `cat_id`, `parent_id`, `position_serial`, `publish_date`, `publish_by`, `edit_history`) VALUES
(4, 'south-africa-puts-onus-on-taxpayers-to-declare-all-cryptocurrency-income', 'South Africa Puts Onus on Taxpayers to Declare All Cryptocurrency Income', '', 'upload/news/166e293c430bdf835f0c6d6a127e4e13.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 21, NULL, 0, '2018-07-10 09:11:16', 'admin@demo.com', 0),
(5, 'neo-eos-litecoin-iota-and-stellar-technical-analysis-april-9-2018', 'NEO, EOS, Litecoin, IOTA and Stellar: Technical Analysis April 9, 2018', '', 'upload/news/b731dbe9143e088de015c0c844d40105.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 21, NULL, 0, '2018-07-10 09:11:02', 'admin@demo.com', 0),
(6, 'why-invest-in-dash', 'Why Invest in Dash?', '', 'upload/news/9d5c09ab5b25569514fa852e2d2c1483.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 22, NULL, 0, '2018-07-10 09:10:50', 'admin@demo.com', 0),
(7, 'asic-resistance-increasingly-hot-topic-in-crypto-as-monero-forks', 'ASIC Resistance Increasingly Hot Topic in Crypto as Monero Forks', '', 'upload/news/32083222f2430503659756a60d3b0b6b.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 19, NULL, 0, '2018-07-17 10:30:35', 'admin@demo.com', 0),
(8, 'canadian-mining-giant-hyperblock-acquires-cryptoglobal-for-106-million', 'CANADIAN MINING GIANT HYPERBLOCK ACQUIRES CRYPTOGLOBAL FOR $106 MILLION', '', 'upload/news/e56c8562afa3795f3c4c3ecccc3bfa83.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 27, NULL, 0, '2018-07-17 10:30:23', 'admin@demo.com', 0),
(9, 'how-can-blockchains-remove-the-pay-to-trade-barrier-in-the-market', 'How Can Blockchains Remove the ‘Pay to Trade’ Barrier in the Market?', '', 'upload/news/2ff94094fcfbe19daf303a479b9fad68.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 24, NULL, 0, '2018-07-10 09:13:25', 'admin@demo.com', 0),
(10, 'how-blockchain-is-making-it-easier-to-get', 'How Blockchain Is Making It Easier to Get', '', 'upload/news/44807c1619ecc1f8374b8930477187aa.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 24, NULL, 0, '2018-07-10 09:13:16', 'admin@demo.com', 0),
(11, 'ripple-price-technical-analysis-xrpusd', 'Ripple Price Technical Analysis – XRP/USD', '', 'upload/news/3c9de71155211697f38a3820ba36670d.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 25, NULL, 0, '2018-07-08 09:11:43', 'admin@demo.com', 0),
(12, 'bitfinex-introduces-trading-for-12-altcoins', 'Bitfinex Introduces Trading for 12 Altcoins', '', 'upload/news/bced67e1ee1ed3b2f3d4a10f9f71e78e.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 25, NULL, 0, '2018-07-10 09:35:43', 'admin@demo.com', 0),
(13, 'bitcoin-cash-price-trend-including-tether', 'Bitcoin Cash Price Trend Including Tether', '', 'upload/news/0656fe700249acfe0a5535b4ae2c0088.jpg', '', '<div>Lorem ipsum dolor sit amet, quo omittam moderatius in, te cum mutat malorum. Autem ullum cu sed. Id per enim deserunt, vel an choro dolores voluptatum. His viderer civibus te, quis vero timeam te mel. Meis nulla nec id. Te eros ubique ius.</div><div><br></div><div>Pri nisl velit at. Ei lobortis forensibus dissentiunt sit, ius idque veritus in, in aeterno invenire usu. Esse inani inermis eam ea. Justo perfecto dignissim an pri, ea sit dico neglegentur, id mundi maiestatis vel. Eos eu stet dicit. Porro suscipiantur id usu, antiopam moderatius sit ne. Ei nulla torquatos ullamcorper sed, no stet graece instructior vel, eirmod vulputate an duo.</div><div><br></div><div>Splendide laboramus eam cu, veritus singulis vel et, essent assentior an vim. Prima paulo ut mei, no tota erat eam. Constituam consequuntur his ad. Ad ius libris labore, ex sumo regione eos. No ius vero apeirian.</div><div><br></div><div>Mollis integre persius ad nam. At agam constituam sit, an mea dolores iracundia conceptam, vis no atqui verear detracto. Et fugit ridens intellegam duo, eu facilisi erroribus duo. Et vix homero verear liberavisse, natum nonumes splendide usu at. Ea vis meliore offendit intellegebat. Ne mazim philosophia usu.</div><div><br></div><div>At mazim tacimates per. Ne reque tractatos mel, at eos case commodo. Cu animal constituam pri, ea nam ceteros copiosae philosophia. Ei modo fuisset pertinax vim, id vis tacimates interpretaris mediocritatem. Vel no esse scripserit, nostrum tacimates his te.</div><div><br></div><div>Corpora postulant voluptatum nam eu. Cum te agam delectus ullamcorper, nostrum perfecto an nam. Ne quo accusata adversarium, illud efficiantur te nam. At veri simul virtute mei, deleniti persecuti te mei. Ludus animal eam cu, an nulla prompta imperdiet vis. Est cu dicam soluta everti.</div><div><br></div><div>Aliquam feugait perfecto per ne, an adolescens sententiae vis, his no noster animal. At vim vidit apeirian appellantur, no graecis invidunt sea. Illud oblique ad ius, eum no partem consectetuer, equidem incorrupte cum cu. At usu docendi tibique evertitur. Duis deserunt pri at. Aeque tempor usu et, ex illum facer efficiendi nam.</div><div><br></div><div>Vel quodsi iracundia ne, eu audiam tibique mnesarchum est. Diam oporteat suavitate pri id. Eos latine euripidis ad, ad mei partem accommodare, nam at elitr vitae voluptaria. Id sea ceteros suscipiantur. Ne per viderer tacimates repudiare, sed id quaestio cotidieque. Ei hinc dolor putent usu, falli lucilius nam at.</div><div><br></div><div>Aperiam detracto qualisque cu sea, sea te deleniti scripserit. Option feugiat sit ei. Labore volumus instructior eos ne, id graecis antiopam assueverit vel, no appetere argumentum eloquentiam quo. Error option dolorum nam cu. Vim tantas populo et, te mea quem quando decore.</div><div><br></div><div>Duo ad elit aperiam. Et error aliquip mea. Cum ut facete assentior, ei vis dictas erroribus salutatus. Mea eu iusto volumus argumentum, sed eu quando regione indoctum.</div>', '', '', '', 25, NULL, 0, '2018-07-10 09:36:00', 'admin@demo.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_slider`
--

CREATE TABLE `web_slider` (
  `id` int(11) NOT NULL,
  `slider_h1_en` varchar(900) DEFAULT NULL,
  `slider_h1_fr` varchar(900) DEFAULT NULL,
  `slider_h2_en` varchar(900) DEFAULT NULL,
  `slider_h2_fr` varchar(900) DEFAULT NULL,
  `slider_h3_en` varchar(900) DEFAULT NULL,
  `slider_h3_fr` varchar(900) DEFAULT NULL,
  `slider_img` varchar(300) DEFAULT NULL,
  `custom_url` varchar(300) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_slider`
--

INSERT INTO `web_slider` (`id`, `slider_h1_en`, `slider_h1_fr`, `slider_h2_en`, `slider_h2_fr`, `slider_h3_en`, `slider_h3_fr`, `slider_img`, `custom_url`, `status`) VALUES
(1, 'The Feature of <span class=\"outrageous-orange\">Financing</span> <br>Technology is Here', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when.<br> looking at its layout The point of using Lorem Ipsum is that', '', 'Get in touch', '', '/upload/slider/fe613a9078976e374e8ca75f866674d8.jpg', 'https://www.bdtask.com/', 1),
(3, 'Take the world\'s  best <br><span class=\"navy-blue\">Cryptocurrency</span>  Site.', '', 'Miker Ipsum is simply dummy text of the printing and typesetting industry.<br> Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', 'Start Now', '', '/upload/slider/08b0d2fbc37ac78a04f04195fd471e3b.jpg', 'https://www.bdtask.com/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_social_link`
--

CREATE TABLE `web_social_link` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_social_link`
--

INSERT INTO `web_social_link` (`id`, `name`, `link`, `icon`, `status`, `date`) VALUES
(1, 'Facebook', 'https://facebook.com', 'facebook', 1, '2020-12-07 05:52:22'),
(2, 'twitter', 'https://twitter.com', 'tumblr', 1, '2018-07-09 06:12:09'),
(3, 'linkedin', 'https:/linkdin.com', 'linkedin', 1, '2020-10-04 11:40:11'),
(4, 'youtube', 'https://www.youtube.com', 'dribbble', 0, '2021-03-08 18:47:57'),
(5, 'instagram', 'https://instagram.com', 'instagram', 0, '2021-03-08 18:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `web_subscriber`
--

CREATE TABLE `web_subscriber` (
  `sub_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coinpayments_payments`
--
ALTER TABLE `coinpayments_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cryptolist`
--
ALTER TABLE `cryptolist`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `Id` (`Id`),
  ADD UNIQUE KEY `Symbol` (`Symbol`);

--
-- Indexes for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  ADD PRIMARY KEY (`paymentID`),
  ADD UNIQUE KEY `key3` (`boxID`,`orderID`,`userID`,`txID`,`amount`,`addr`),
  ADD KEY `boxID` (`boxID`),
  ADD KEY `boxType` (`boxType`),
  ADD KEY `userID` (`userID`),
  ADD KEY `countryID` (`countryID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `amount` (`amount`),
  ADD KEY `amountUSD` (`amountUSD`),
  ADD KEY `coinLabel` (`coinLabel`),
  ADD KEY `unrecognised` (`unrecognised`),
  ADD KEY `addr` (`addr`),
  ADD KEY `txID` (`txID`),
  ADD KEY `txDate` (`txDate`),
  ADD KEY `txConfirmed` (`txConfirmed`),
  ADD KEY `txCheckDate` (`txCheckDate`),
  ADD KEY `processed` (`processed`),
  ADD KEY `processedDate` (`processedDate`),
  ADD KEY `recordCreated` (`recordCreated`),
  ADD KEY `key1` (`boxID`,`orderID`),
  ADD KEY `key2` (`boxID`,`orderID`,`userID`);

--
-- Indexes for table `dbt_balance`
--
ALTER TABLE `dbt_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_balance_log`
--
ALTER TABLE `dbt_balance_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `dbt_biding`
--
ALTER TABLE `dbt_biding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_biding_log`
--
ALTER TABLE `dbt_biding_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `dbt_blocklist`
--
ALTER TABLE `dbt_blocklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_chat`
--
ALTER TABLE `dbt_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_coinhistory`
--
ALTER TABLE `dbt_coinhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_coinpair`
--
ALTER TABLE `dbt_coinpair`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `symbol` (`symbol`),
  ADD UNIQUE KEY `symbol_2` (`symbol`);

--
-- Indexes for table `dbt_country`
--
ALTER TABLE `dbt_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_cryptocoin`
--
ALTER TABLE `dbt_cryptocoin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Id` (`cid`),
  ADD UNIQUE KEY `Symbol` (`symbol`);

--
-- Indexes for table `dbt_deposit`
--
ALTER TABLE `dbt_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_fees`
--
ALTER TABLE `dbt_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_market`
--
ALTER TABLE `dbt_market`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_payout_method`
--
ALTER TABLE `dbt_payout_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_security`
--
ALTER TABLE `dbt_security`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_sms_email_template`
--
ALTER TABLE `dbt_sms_email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_transaction_setup`
--
ALTER TABLE `dbt_transaction_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_transfer`
--
ALTER TABLE `dbt_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_user`
--
ALTER TABLE `dbt_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `dbt_user_log`
--
ALTER TABLE `dbt_user_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `dbt_user_verify_doc`
--
ALTER TABLE `dbt_user_verify_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_verify`
--
ALTER TABLE `dbt_verify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbt_withdraw`
--
ALTER TABLE `dbt_withdraw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`earning_id`);

--
-- Indexes for table `email_sms_gateway`
--
ALTER TABLE `email_sms_gateway`
  ADD PRIMARY KEY (`es_id`);

--
-- Indexes for table `external_api_setup`
--
ALTER TABLE `external_api_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `payeer_payments`
--
ALTER TABLE `payeer_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `sms_email_send_setup`
--
ALTER TABLE `sms_email_send_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_article`
--
ALTER TABLE `web_article`
  ADD PRIMARY KEY (`article_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `web_category`
--
ALTER TABLE `web_category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `web_language`
--
ALTER TABLE `web_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_news`
--
ALTER TABLE `web_news`
  ADD PRIMARY KEY (`article_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `web_slider`
--
ALTER TABLE `web_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_social_link`
--
ALTER TABLE `web_social_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_subscriber`
--
ALTER TABLE `web_subscriber`
  ADD PRIMARY KEY (`sub_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `coinpayments_payments`
--
ALTER TABLE `coinpayments_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cryptolist`
--
ALTER TABLE `cryptolist`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  MODIFY `paymentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_balance`
--
ALTER TABLE `dbt_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_balance_log`
--
ALTER TABLE `dbt_balance_log`
  MODIFY `log_id` bigint(22) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_biding`
--
ALTER TABLE `dbt_biding`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_biding_log`
--
ALTER TABLE `dbt_biding_log`
  MODIFY `log_id` bigint(22) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_blocklist`
--
ALTER TABLE `dbt_blocklist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_chat`
--
ALTER TABLE `dbt_chat`
  MODIFY `id` bigint(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_coinhistory`
--
ALTER TABLE `dbt_coinhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_coinpair`
--
ALTER TABLE `dbt_coinpair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `dbt_country`
--
ALTER TABLE `dbt_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `dbt_cryptocoin`
--
ALTER TABLE `dbt_cryptocoin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2337;

--
-- AUTO_INCREMENT for table `dbt_deposit`
--
ALTER TABLE `dbt_deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_fees`
--
ALTER TABLE `dbt_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_market`
--
ALTER TABLE `dbt_market`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dbt_payout_method`
--
ALTER TABLE `dbt_payout_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_security`
--
ALTER TABLE `dbt_security`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dbt_sms_email_template`
--
ALTER TABLE `dbt_sms_email_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dbt_transaction_setup`
--
ALTER TABLE `dbt_transaction_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_transfer`
--
ALTER TABLE `dbt_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_user`
--
ALTER TABLE `dbt_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_user_log`
--
ALTER TABLE `dbt_user_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_user_verify_doc`
--
ALTER TABLE `dbt_user_verify_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_verify`
--
ALTER TABLE `dbt_verify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbt_withdraw`
--
ALTER TABLE `dbt_withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `earning_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_sms_gateway`
--
ALTER TABLE `email_sms_gateway`
  MODIFY `es_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `external_api_setup`
--
ALTER TABLE `external_api_setup`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=955;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payeer_payments`
--
ALTER TABLE `payeer_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_email_send_setup`
--
ALTER TABLE `sms_email_send_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `web_article`
--
ALTER TABLE `web_article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `web_category`
--
ALTER TABLE `web_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `web_language`
--
ALTER TABLE `web_language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `web_news`
--
ALTER TABLE `web_news`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `web_slider`
--
ALTER TABLE `web_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `web_social_link`
--
ALTER TABLE `web_social_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `web_subscriber`
--
ALTER TABLE `web_subscriber`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;