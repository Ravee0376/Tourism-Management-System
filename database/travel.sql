-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Oct 14, 2021 at 03:21 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `ffirst` varchar(20) NOT NULL,
  `flast` varchar(20) NOT NULL,
  `femail` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `fphone` int(15) NOT NULL,
  `fdesti` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `ffirst`, `flast`, `femail`, `city`, `fphone`, `fdesti`) VALUES
(1, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Honnavar', 2147483647, 'Goa'),
(2, 'kiran', 'Naik', 'kirannaik1@gmail.com', 'Honnavar', 845868956, 'Mumbai'),
(7, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Honnavar', 2147483647, 'Mysore'),
(8, 'Hitesh', 'HT', 'hitesh45jk@gmail.com', 'Udupi', 458696561, 'Kerala'),
(9, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Honnavar', 2147483647, 'Kerala'),
(10, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Honnavar', 2147483647, 'India Gate'),
(11, 'Gajanan', 'Bhat', 'gajabhat@gmail.com', 'Kumta', 2147483647, 'Mysore'),
(12, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Honnavar', 2147483647, 'Kerala');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `phone` bigint(12) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `password`, `email`, `city`, `phone`) VALUES
(34, 'admin', 'Adm12345', 'admintms@gmail.com', 'Honnavar', 8971046276),
(51, 'Ganesh', 'Gane1234', 'ganeshravinaik2001@gmail.com', 'Honnavar', 8971046276),
(72, 'Aditya', 'Adi12389', 'adityag45@gmail.com', 'Manglore', 8574968283),
(73, 'Gajanan', 'GAjju700', 'gajabhat@gmail.com', 'Kumta', 7984768581),
(74, 'Kiran', 'AJkiran1', 'kiranaj56@gmail.com', 'Honnavar', 7586949199),
(75, 'Prasad', 'Pra23444', 'prasad24@gmail.com', 'Honnavar', 7485961256),
(76, 'Mahesh', 'Mahi1233', 'maheshmm@gmail.com', 'Kumta', 9978488656),
(78, 'Nishchay', 'Nishi789', 'nishibhatt234@gmail.com', 'Udupi', 7485961236);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `feedbk` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `feedbk`) VALUES
(1, 'joy', 'joy123@gmail.com', 'good website'),
(2, 'amar', 'amar56@gmail.com', 'nice website'),
(3, 'adam', 'adamgray@gmail.com', 'your website looks good and nice user interface'),
(4, 'adam', 'adamgray@gmail.com', 'your website looks good and nice user interface'),
(5, 'arjun', 'arjun45@gmal.com', 'good website'),
(6, 'Hitesh', 'hitesh43jk@gmai.com', 'its good website nice user interface'),
(7, 'kiran', 'kiran35@gmail.com', 'this is a good website');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hid` int(10) NOT NULL,
  `hname` varchar(20) NOT NULL,
  `hphone` varchar(15) NOT NULL,
  `hcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hid`, `hname`, `hphone`, `hcity`) VALUES
(1, 'Taj Hotel', '78869565', 'Mumbai'),
(2, 'Hotel High', '78869565', 'Benglore');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `pname` varchar(30) NOT NULL,
  `pdescription` varchar(10000) NOT NULL,
  `pi_main` varchar(1000) NOT NULL,
  `pi1` varchar(1000) NOT NULL,
  `pi2` varchar(1000) NOT NULL,
  `pi3` varchar(1000) NOT NULL,
  `package` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`pname`, `pdescription`, `pi_main`, `pi1`, `pi2`, `pi3`, `package`) VALUES
('Jaflong', 'Jaflong is a tourist spot in Sylhet division. It is about 60 km from Sylhet town and takes two hours drive to reach there. Jaflong located amidst tea gardens and hills. It is situated beside the river Sari in the lap of Hill Khashia.', 'image2//destination//jaflong1.jpg', 'image2//destination//jaflong2.jpg', 'images//destination//jaflong3.jpg','images//destination//jaflong4.jpg', 15000),
('Ratargul', 'Ratargul Swamp Forest is a freshwater swamp forest located in Gowain River, Fatehpur Union, Gowainghat, Sylhet, Bangladesh. Ratargul was once thought to be the only swamp forest in Bangladesh,[1][2][3] and one of the few freshwater swamp forests in the world. Later, more swamp forests namely Jugirkandi Mayabon, Bujir Bon and Lokkhi Baor swamp forest were discovered in Bangladesh.The forest is naturally conserved under the Department of Forestry, Government of Bangladesh.', 'image2//destination//ratargul1.jpg', 'image2//destination//ratargul2.jpg', 'image2//destination//ratargul3.jpg', 'image2//destination//ratargul4.jpg', 10000),
('Sada Pathor', '‘Sada Pathor’ means white stone in Bangla. Here, the entire area is covered with white stones, which is why people now refer to it as Sada Pathor. Today, it has become a highly popular tourist spot in Sylhet, situated in Bholaganj within the Companiganj upazila of Sylhet, near the northern border of Bangladesh.', 'image2//destination//sadapathor1.jpg', 'image2//destination//sadapathor2.jpg', 'image2//destination//sadapathor3.jpg', 'image2//destination//sadapathor4.jpg', 9000),
('Lalakhal', 'Lalakhal, an area surrounded by hills, tea gardens, natural forests, and rivers near the Meghalaya Mountain Ranges, is quickly becoming a top tourist destination. The star attraction is the Shari River’s enchanting aquamarine water, with its small evergreen mounds on either side, spreading throughout the whole area. Across the River, one can easily reach “Lalakhal Tea Garden” one of the oldest and most beautiful tea gardens in the country.', 'image2//destination//lalakhal1.jpg', 'image2//destination//lalakhal2.jpg', 'image2//destination//lalakhal3.jpg', 'image2//destination//lalakhal4.jpg', 20000),
('The Shah Jalal Dargah', 'The Shah Jalal Dargah (Bengali: শাহজালাল দরগাহ) is the shrine and burial place of the 14th century Muslim saint Shah Jalal, located in Sylhet, Bangladesh. The site, known as a dargah, was originally constructed c. 1500, though many additions and alterations were made to its structures over the following centuries. It became a religious centre in the region, respected across multiple ruling administrations and greatly venerated among Bengalis, with local folklore and legends developing around it. The extensive surrounding compound serves several functions and includes four mosques, a religious school and a public cemetery among others. The Dargah is presently the largest and most visited religious site in Bangladesh.', 'image2//destination//shahjalalmazar1.jpg', 'image2//destination//shahjalalmazar2.jpg', 'image2//destination//shahjalalmazar3.jpg', 'image2//destination//shahjalalmazar4.jpg', 19000),
('Bichnakandi', 'Bichnakandi is a quarry spot that is used to collect rocks from the riverbed.[4] It is the place where many layers of the Khasi mountains from both sides meet at one point. Fountains from the Khasi Hills make a lake that is connected to Piyain River. The rocks are also natural and come down with water streams from the mountains. It is one of the most visited tourist spots in Bangladesh.[citation needed] This place is alongside Bangladesh-India border and has two tectonic plates on the verge of colliding.[citation needed] Geologist also have proved that these kinds of places in Earth have a high rate of earthquakes. Same can be told for Jaflong, Lalakhal, Manipur, and San Andreas Fault.', 'image2//destination//bichanakandi1.jpg', 'image2//destination//bichanakandi2.jpg', 'image2//destination//bichanakandi3.jpg', 'image2//destination//bichanakandi4.jpg', 10000),
('Sreemangal', 'Sreemangal is situated in Moulvibazar district in sylhet division. Sreemangal is an Upazila. It is famous for tea garden. Rain all time occurs here. Nature has adorned sreemangal with green tress. The terraced tea gardens, plantations and evergreen hills of sreemangal are wonderful treats for the tourists. On the way, of Sreemangal by bus you’ll see a statue “cha konna” which is stands for welcome you. But if you come in sreemangal by train you’ll miss this statue. When you’ll come near in the tea garden you find the smell of tea leaves. When you’ll reach sreemangal you get many sorts of hotels.After that you can go BTRI, there is Tea factory. You can go “Nilkantha” tea stall near BDR camp here you’ll get seven layers tea which is very uncommon tea in Bangladesh. Don’t forget to visit “Tea museum” in “British karighor” tea resort.', 'image2//destination//srimangal1.jpg', 'image2//destination//srimangal2.jpg', 'image2//destination//srimangal3.jpg', 'image2//destination//srimangal4.jpg', 5000),
('SUST', 'Shahjalal University of Science and Technology (SUST) was established in 1986. The only university of its kind at that time, it started it''s journey on the 13th of February 1991 with only three departments: Physics, Chemistry and Economics, 13 teachers and 205 students. It has now expanded to 7 schools, 27 departments , 2 institutes and and centers. The number of teachers has grown to 566 and the students to 8596. Besides, the University has 12 affiliated colleges under the School of Medical Sciences with 4000 students.', 'image2//destination//sust1.jpg', 'image2//destination//sust2.jpg', 'image2//destination//sust3.jpg', 'image2//destination//sust4.jpg', 16000),

('Lakkatura', 'SYLHET, IN THE NORTHEAST OF BANGLADESH, is renowned for the beauty of its tea gardens, and among the lot, Lakkatura is considered the most scenic. It is also one of the largest tea gardens in the country, covering a total of 3,200 acres. This estate was officially established in 1875, and it now produces an astounding 550 tons of tea each year.', 'image2//destination//lakkaturateaestate.jpg', 'image2//destination//lakkaturateaestate2.jpg', 'image2//destination//lakkaturateaestate3.jpg', 'images//destination//manali4.jpg', 21000),
('Srinagar', 'Srinagar, the summer capital is situated in the centre of Kashmir valley and is surrounded by five districts. In the north it is flanked by Kargil, in the South by Pulwama, in the north-west by Budgam. This extremely beautiful place tells the story of the love of the Mughal emperors. It possess deep green rice fields and river bridges, gardens in bloom, lakes rimmed by houseboats, a business center and holiday resort.', 'images//destination//srinagar1.jpg', 'images//destination//srinagar2.jpg', 'images//destination//srinagar3.jpg', 'images//destination//srinagar4.jpg', 21200),
('Amritsar', 'Amritsar - Amritsar, literally Pool of Nectar, derives its name from Amrit Sarovar, the holy tank that surrounds the fabulous Golden Temple. First time visitors to Amritsar could be forgiven for the impression that Amritsar is like any other small town in northern India. In one sense, it is - with bustling markets, haphazard traffic, unyielding cattle, crowds and congestion typical of small town India. But Amritsar stands head and shoulders above any other city, its status elevated and sanctified by the presence of the venerable Golden Temple.', 'images//destination//amritsar1.jpg', 'images//destination//amritsar2.jpg', 'images//destination//amritsar3.jpg', 'images//destination//amritsar4.jpg', 19000),
('Jog Falls', 'Jog Falls are located in the Shimoga district of Karnataka. Four cascades, known as Raja, Rani, Rover and Rocket merge to form the huge waterfall on the Sharavathi River. The falls are locally known as Geruoppe Falls, Gersoppa Falls and Jogada Gundi. Jog itself is a Kannada word, which means falls. Jog Falls are unique as the water does not stream down the rocks in a tiered fashion; it thunders down the slope losing contact with the rocks, making it the tallest un-tiered waterfall in India. The beauty of the waterfalls is enhanced by the lush green surroundings, which provide a scenic backdrop. Visitors can hike to the base of the falls and take a plunge in the water.', 'images//destination//jogfalls1.jpg', 'images//destination//jogfalls2.jpg', 'images//destination//jogfalls3.jpg', 'images//destination//jogfalls4.jpg', 5000),
('Manglore', 'Manglore', 'images//destination//mysore1.jpg', 'images//destination//mysore2.jpg', 'images//destination//kerala3.jpg', 'images//destination//srinagar4.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `date_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `pass`, `date_time`) VALUES
('adii', '784596', '2021-01-20 05:56:33am'),
('anusha', '45789656', '2021-01-20 06:06:24am'),
('adii', '123456', '2021-01-20 08:15:18am'),
('gaja', '12356', '2021-01-22 10:13:22am'),
('gaja', '123456', '2021-01-24 06:40:56am'),
('nishchay', 'nishi123', '2021-01-24 07:09:22am'),
('mahesh', '12345mn', '2021-01-24 07:10:00am'),
('admin', 'ad123', '2021-01-24 07:10:24am'),
('admin', 'ad123', '2021-01-25 05:54:18am'),
('admin', 'ad123', '2021-01-25 06:07:10am'),
('admin', 'ad123', '2021-01-25 06:09:19am'),
('admin', 'ad123', '2021-01-27 01:30:47pm'),
('admin', 'ad123', '2021-01-29 09:23:58am'),
('Gajanan', 'GAjju700', '2021-01-30 06:13:16pm'),
('Ganesh', 'Gane1234', '2021-01-30 06:24:15pm'),
('admin', 'ad123', '2021-06-08 04:11:53pm'),
('admin', 'ad123', '2021-09-19 03:24:26pm'),
('admin', 'ad123', '2021-09-19 04:41:06pm');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `pid` int(10) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `pcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`pid`, `pname`, `pcity`) VALUES
(1, 'Ratargul', 'Ratargul'),
(2, 'Goa', 'Goa'),
(3, 'Bichnakandi', 'Bichnakandi'),
(4, 'Sreemangal', 'Sreemangal'),
(5, 'Lakkatura', 'Lakkatura'),
(6, 'SUST', 'SUST');

-- --------------------------------------------------------

--
-- Table structure for table `travel_agent`
--

CREATE TABLE `travel_agent` (
  `aid` int(10) NOT NULL,
  `afname` varchar(20) NOT NULL,
  `aemail` varchar(30) NOT NULL,
  `aphone` int(15) NOT NULL,
  `acity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_agent`
--

INSERT INTO `travel_agent` (`aid`, `afname`, `aemail`, `aphone`, `acity`) VALUES
(1, 'amar', 'amarraj123@gmail.com', 85749646, 'Mandya'),
(2, 'akhil', 'akhil23@gmai.com', 45968678, 'Manglore'),
(3, 'kiran', 'kiru34@gmail.com', 78969665, 'Mysore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fname` (`fname`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `travel_agent`
--
ALTER TABLE `travel_agent`
  ADD PRIMARY KEY (`aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `travel_agent`
--
ALTER TABLE `travel_agent`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
