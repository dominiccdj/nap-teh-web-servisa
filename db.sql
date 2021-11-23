-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2021 at 08:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ntpws`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` char(2) NOT NULL DEFAULT '''''',
  `country_name` varchar(255) NOT NULL DEFAULT ''''''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `details`, `text`, `date`) VALUES
(1, 'Rear bicycle carrier for the Taycan Cross Turismo: a weighty idea', 'The Porsche Taycan Cross Turismo is made for travel and adventures. That’s why Porsche decided not to\r\n                design a heavy trailer hitch for it. Even so, the sturdiest of bikes and e-bikes can still be easily\r\n                transported.', '<p>\r\n    The exceptionally low positioning of the Porsche Tequipment rear bicycle carrier minimises aerodynamic\r\n    drag, which benefits the car’s range. The assembly concept is very simple: remove two small panels from\r\n    the rear apron, push in the support tubes and turn them 45 degrees. The carrier can then be put in place\r\n    and unfolded in three steps. It’s simple – and it’s safe, too, because each step locks the previous one.\r\n    If each action is not completed, the process cannot be continued. ‘Poka-yoke’ – a Japanese term – is\r\n    what engineers call this fault-eliminating principle. Porsche also applies it to vehicle assembly.\r\n</p>\r\n<p>\r\n    The exceptionally low positioning of the Porsche Tequipment rear bicycle carrier minimises aerodynamic\r\n    drag, which benefits the car’s range. The assembly concept is very simple: remove two small panels from\r\n    the rear apron, push in the support tubes and turn them 45 degrees. The carrier can then be put in place\r\n    and unfolded in three steps\r\n</p>\r\n<p>\r\n    It’s simple – and it’s safe, too, because each step locks the previous one. If each action is not\r\n    completed, the process cannot be continued. ‘Poka-yoke’ – a Japanese term – is what engineers call this\r\n    fault-eliminating principle. Porsche also applies it to vehicle assembly.\r\n</p>\r\n<p>\r\n    The engineers at Porsche have devised a rear carrier solution and have already applied for a patent for\r\n    the way it directly connects to the longitudinal profiles of the body construction. This unique type of\r\n    assembly leads to outstanding stability, which Porsche tested as part of the overall vehicle test\r\n    programme of the Taycan Cross Turismo, including high-speed trials at Nardò.\r\n</p>\r\n<p>\r\n    The spacers enable perfect mounting of all frame geometries, and the limited clamping force of the\r\n    brackets also protects more delicate carbon frames. The boot remains accessible when the carrier is\r\n    mounted, and the carrier can be folded away – elegantly and gently, as it is hydraulically damped.\r\n</p>', '2005-06-12'),
(2, 'Porsche deliveries up by 13 per cent', 'Record result for the first three quarters: between January and September 2021, Porsche delivered\r\n                217,198 vehicles worldwide. This represented a 13 per cent increase for the sports car manufacturer.', '<p>\r\n                Demand rose across all sales regions, with the US again recording particularly strong growth. “The very\r\n                high demand for our sports cars continued into the third quarter and we are delighted to have been able\r\n                to supply so many cars to customers during the first nine months of the year,” says Detlev von Platen,\r\n                Member of the Executive Board for Sales and Marketing at Porsche AG.\r\n            </p>\r\n            <p>\r\n                “The order books are nicely filled and are, in turn, filling us with optimism and enthusiasm as we\r\n                approach the year-end rush. However, the coronavirus situation remains dynamic and we are facing\r\n                challenges in sourcing semiconductors. For these reasons, we are keeping a very close eye on current\r\n                developments to ensure that we can continue to react in a flexible manner.”\r\n            </p>\r\n            <p>\r\n                The Porsche Cayenne remains the most successful model, with 62,451 examples delivered, followed by the\r\n                Macan with 61,944 units, a 12 per cent increase. The fully electric Taycan was also extremely popular,\r\n                with 28,640 cars being delivered to customers. Now in its second full year on the market, it is on a par\r\n                with the iconic 911 sports car, 27,972 of which were delivered in the first three quarters – an increase\r\n                of ten per cent. The 718 Boxster and 718 Cayman were purchased by 15,916 customers, which represents a\r\n                rise of one per cent compared to the same period last year. Deliveries of the Panamera also remained\r\n                firmly at the previous year’s level with 20,275 examples – an increase of one per cent.\r\n            </p>\r\n            <p>\r\n                Once again, the largest increase was seen in the US: Porsche delivered 51,615 vehicles there in the\r\n                first nine months, which represents an increase of 30 per cent compared with the same period last year.\r\n            </p>\r\n            <p>\r\n                The strong positioning in North America is also reflected in the findings of the most recent J.D. Power\r\n                APEAL study: as in previous years, customers still see Porsche as the most appealing premium brand.\r\n                Across the American continent as a whole, Porsche made a total of 63,025 deliveries, 29 per cent more\r\n                than in the first three quarters of 2020.\r\n            </p>', '2012-05-04'),
(3, 'Porsche and Michelin support Indonesian rubber plantation farmers', 'Porsche and Michelin are championing the sustainable extraction of natural rubber. The commitment of the\r\n                sports car manufacturer and the tyre producer to transparency and better working conditions in the\r\n                extraction of raw', '<p>\r\n                For Porsche, responsibility begins a long way from the factory gates. We take a holistic approach to\r\n                sustainability. Our supply chain and the extraction of raw materials are important factors here,” says\r\n                Barbara Frenkel, Member of the Executive Board for Procurement at Porsche AG. “We take responsibility\r\n                for our impact on the rubber extraction regions in Indonesia. We want to improve people’s lives through\r\n                projects conducted in the area. Smallholders form the heart of a sustainable supply chain for natural\r\n                rubber. That\'s why we are supporting them to achieve a decent standard of living while adhering to good\r\n                environmental and social practices.\r\n            </p>\r\n            <p>\r\n                Long-term partners Porsche and Michelin are supporting Sumatran small plantation farmers in the\r\n                extraction of rubber. Education and training on cultivation practices, biodiversity and work safety all\r\n                have the aim of achieving long-term improvements in the living conditions and economic situations of the\r\n                Indonesian smallholders.\r\n            </p>\r\n            <p>\r\n                Indonesia is one of the world’s most important rubber production regions and includes the rural Jambi\r\n                province. Porsche and Michelin identified risks to the sustainability of the supply chain in rubber\r\n                extraction using an app specially developed for this purpose and by conducting discussions with market\r\n                participants in the area. Rubber is used in a great many industrial products as a raw material. As an\r\n                automotive manufacturer, Porsche also contributes to global rubber consumption through its tyres as well\r\n                as in a wide range of vehicle parts.\r\n            </p>\r\n            <p>\r\n                “CASCADE is an example of Michelin’s commitment to a sustainable natural rubber supply chain that\r\n                protects the environment and improves livelihoods. We are happy to be working with Porsche on this\r\n                ambitious project. For almost 20 years, we have enjoyed a close partnership in the tyre business, which\r\n                we are now also expanding to the area of sustainability,” says Hélène Paul, Senior Vice President, Chief\r\n                Procurement Officer at Michelin.\r\n            </p>\r\n            <p>\r\n                CASCADE is one of the first support projects in the world to start at the lowest level of the natural\r\n                rubber supply chain. The scheme will see 1,000 smallholders trained by local partners to make extraction\r\n                methods more environmentally compatible and efficient. This makes a considerable contribution to the\r\n                lasting improvement of living conditions of smallholders and their families. Porsche and Michelin are\r\n                investing around one million euros in the project, which will initially run until 2024.\r\n            </p>', '2021-11-09'),
(4, 'Porsche 962 C restored to its original condition down to the last detail', 'Hans-Joachim Stuck has had to wait almost 35 years for a reunion with the fully refurbished 962 C and\r\n                its first rollout. So the surprise was all the greater when the silk cloth was drawn back to reveal the\r\n                vehicle at the ', '<p>\r\n                The racing car from the Porsche Heritage and Museum department has been restored to its original 1987\r\n                condition over the past year and a half. “It feels like coming home,” smiles Stuck, stroking the car’s\r\n                left wing. The racing driver says he has nothing but fond memories of the victorious car with the racing\r\n                number 17. “By arranging this reunion after more than three decades, we have not only surprised\r\n                Hans-Joachim Stuck, we have also taken a little journey through time. The history of the motorsport\r\n                story surrounding the 962 C is unique,” says Achim Stejskal, Head of Porsche Heritage and Museum.\r\n            </p>\r\n            <p>\r\n                At the Weissach Development Centre, where the vehicle was first built and now has been restored to its\r\n                original condition, Stuck also meets his race engineer of the time, Norbert Singer, and designer Rob\r\n                Powell, the man responsible for the car’s black, yellow and red livery.\r\n            </p>\r\n            <p>\r\n                It is 35 years since the now 70-year-old won Germany’s prestigious and fiercely contested ADAC Würth\r\n                Supercup. During the inaugural series for Group C sports car prototypes, he tested the then-new Porsche\r\n                dual clutch transmission (PDK) at racing speed. The vehicle’s appearance changed before the second race,\r\n                the Norisring 200 miles, when Shell came on board as a sponsor\r\n            </p>\r\n            <p>\r\n                Porsche also competed in yellow and red the following year and Stuck worked hard to successfully defend\r\n                his Supercup title. This 962 C then began its second life as a test car in the aerodynamics department\r\n                at Weissach, later serving as a reference vehicle for the sports car manufacturer’s corporate\r\n                collection.\r\n            </p>\r\n            <p>\r\n                Armin Burger and Traugott Brecht from Historic Motorsport were jointly responsible for the racing car’s\r\n                rebuild. “We kept passing this car in the warehouse. Then, about a year and a half ago, we decided to\r\n                get it out of there, transfer it to Weissach and start working on it,” he Burger. He and his team had to\r\n                rebuild many parts because they were long gone. “The cooperation with the other departments from Porsche\r\n                was great. We found almost everything we needed within a radius of just 30 metres,” says Burger.\r\n            </p>', '2012-11-12'),
(5, 'Sunday Drives: France', 'Le Mans winner and TAG Heuer Porsche Formula E works driver André Lotterer takes the scenic route to his\r\n                rural retreat in Monaco for the Porsche Newsroom Sunday Drives series.', '<p>\r\n                Following the season finale of the ABB FIA Formula E World Championship, André Lotterer is resting up at\r\n                home in Monaco before a training camp with teammates. The three-time Le Mans winner and star of both the\r\n                World Endurance Championship and Japan’s Super GT series has been driving for Porsche in its second\r\n                season in the all-electric single seater series, bringing a wealth of experience and expert race craft\r\n                to a new team in an unfamiliar discipline.\r\n            </p>\r\n            <p>\r\n                Lotterer joined the Porsche family in 2017 when he won a seat in the 919 Hybrid for that year’s WEC. But\r\n                his passion for the brand goes back many years, and the 39-year-old has an impressive collection of\r\n                classic and modern Porsche models that he drives whenever possible. Born in Germany, and raised in\r\n                Belgium, Lotterer found this particular Sunday Drive route by chance when viewing what was to become his\r\n                holiday home near Luberon. It takes in some of the most spectacular scenery in the south of France and\r\n                in early summer is made unforgettable by the extraordinary lavender fields that are a trademark of the\r\n                region.\r\n            </p>\r\n            <p>\r\n                “The roads out of Monaco into the countryside behind are all really steep and full of hairpins,”\r\n                Lotterer says, “so the best thing to do is drive down to Nice and then head up to Fréjus. There are lots\r\n                of beautiful country roads you can choose, but your destination should be the Gorge du Verdon, which is\r\n                famous for its super-blue water. I did the drive for the first time last year and was amazed by how\r\n                beautiful it is.”\r\n            </p>\r\n            <p>\r\n                Lotterer’s route takes him from the town of Fréjus on the coast on a relaxed 90-minute drive to the\r\n                700-metre-deep gorge, from where he recommends taking one of the minor roads that fringe its 25\r\n                kilometre length for some spectacular views over the gorge towards the Sainte-Croix lake. From here,\r\n                head west on the D952 and D6 towards Valensole. As a talented amateur photographer in his spare time,\r\n                this section offers Lotterer the perfect balance between jaw-dropping scenery and fabulous driving.\r\n            </p>\r\n            <p>\r\n                When I drove here last year I went straight from Monaco to the Gorge du Verdon and was amazed by how\r\n                beautiful it all becomes – the curves of the road, the variety of the countryside, the scenery and all\r\n                these little villages. There are roads that cut straight between the fields of lavender and you just\r\n                keep going and going. You can drive for half an hour non-stop through this sea of purple. It’s quite a\r\n                special place.\r\n            </p>', '2015-08-05');

-- --------------------------------------------------------

--
-- Table structure for table `news_pictures`
--

CREATE TABLE `news_pictures` (
  `id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `news_id` int(11) NOT NULL,
  `figcaption` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_pictures`
--

INSERT INTO `news_pictures` (`id`, `path`, `news_id`, `figcaption`) VALUES
(1, 'news1.jpeg', 1, 'Bike holder'),
(2, 'news1_1.jpeg', 1, 'Suitable bicycle'),
(3, 'news2.jpeg', 2, 'Demand is increased'),
(4, 'news2_1.jpeg', 2, 'Wanted Taycan model'),
(5, 'news3_1.jpeg', 3, 'Big companies are starting new supporting project'),
(6, 'news3.jpeg', 3, 'Rubber farmers'),
(7, 'news4_1.jpeg', 4, 'Porsche 962 C'),
(8, 'news4.jpeg', 4, 'Hans-Joachim Stuck and his race car, the 962 C.'),
(9, 'news5.jpeg', 5, 'Cayenne Turbo Coupe'),
(10, 'news5_1.jpeg', 5, 'Andre Lotterer, driver');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `password_hash` varchar(255) NOT NULL,
  `role` varchar(15) NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

-- ADMIN/USER login credentials:
-- email:admin@admin.com pw:admin
-- email:user@user.com pw:user

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `country_id`, `city`, `street`, `date`, `password_hash`, `role`, `valid`) VALUES
(9, 'Great', 'Admin', 'admin@admin.com', 5, 'Zagreb', 'Ilica 1', '2021-11-12 23:00:00', '$2y$12$Wf09HkGeqieWIDvnKfh4fe80UzVsDXLFvbGYBE8tv3cfSs8yjyubG', 'ADMIN', 1),
(10, 'Just', 'User', 'user@user.com', 13, 'Split', 'Ulica 55', '2021-11-02 23:00:00', '$2y$12$doEcMTBpwI4ugCjRJLruU.tXcH6S9UtNWgGKa7aHear3jOFPehNVq', 'USER', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
