SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";




CREATE TABLE IF NOT EXISTS `userinfo` (
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `userinfo` (`email`,`password`) VALUES
('hemanth@gmail.com', 'hemanth123'),
('manoj@gmail.com', 'manoj123'),
('ravi@gmail.com', 'ravikum123');



CREATE TABLE IF NOT EXISTS `passengers` (
  `p_id` int(20) NOT NULL AUTO_INCREMENT,
  `p_fname` varchar(20) DEFAULT NULL,
  `p_lname` varchar(20) DEFAULT NULL,
  `p_age` varchar(20) DEFAULT NULL,
  `p_contact` varchar(20) DEFAULT NULL,
  `p_gender` varchar(20) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `t_no` int(10) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  UNIQUE KEY `p_id` (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;




INSERT INTO `passengers` (`p_id`, `p_fname`, `p_lname`, `p_age`, `p_contact`, `p_gender`, `email`, `password`, `t_no`) VALUES
(1, 'hemanth', 'kumar', '23', '978456123', 'Male', 'hemanth@gmail.com', 'hemanth123', 16205),
(2, 'manoj', 'kumar', '20', '987456321', 'Male', 'manoj@gmail.com', 'manoj123', 16225),
(3, 'ravi', 'kumar', '40', '963258741', 'Male', 'ravi@gmail.com', 'ravikum123', 16235);



CREATE TABLE IF NOT EXISTS `station` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(20) DEFAULT NULL,
  `s_no_of_platforms` varchar(20) DEFAULT NULL,
  `t_no` decimal(5,0) NOT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;



INSERT INTO `station` (`s_no`, `s_name`, `s_no_of_platforms`,`t_no`) VALUES
(1, 'KSR(Bengaluru)', '7',16220),
(2, 'Mysuru', '6',16225),
(3, 'Mumbai', '10',16235),
(4, 'Tirupati', '2',16235),
(5, 'Chennai', '5',16230);







CREATE TABLE IF NOT EXISTS `tickets` (
  `PNR` decimal(10,0) NOT NULL,
  `t_status` varchar(20) NOT NULL DEFAULT 'Waiting',
  `t_fare` int(11) DEFAULT NULL,
  `p_id` int(20) DEFAULT NULL,
  UNIQUE KEY `PNR` (`PNR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




INSERT INTO `tickets` (`PNR`, `t_status`, `t_fare`) VALUES
(1234567891, 'Waiting', 600),
(1444567881, 'confirmed', 650),
(1334567591, 'confirmed', 650),
(4434567861, 'Waiting', 600),
(9234567851, 'confirmed', 650),
(8234667811, 'RAC', 500),
(2234567891, 'RAC', 500),
(3234566891, 'confirmed', 650),
(7234567821, 'Waiting', 600),
(5234567691, 'confirmed', 650),
(4234467491, 'Waiting', 600),
(1264566898, 'RAC', 500),
(1554566691, 'confirmed', 650),
(7894521237,'RAC',500),
(9876543219, 'confirmed', 650);





CREATE TABLE IF NOT EXISTS `trains` (
  `t_no` decimal(5,0) NOT NULL,
  `t_name` varchar(30) DEFAULT NULL,
  `t_source` varchar(30) DEFAULT NULL,
  `t_destination` varchar(30) DEFAULT NULL,
  `t_type` varchar(30) DEFAULT NULL,
  `t_status` varchar(20) DEFAULT 'On time',
  `no_of_seats` int(11) DEFAULT NULL,
  `t_duration` int(11) DEFAULT NULL,
  PRIMARY KEY (`t_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `trains` (`t_no`, `t_name`, `t_source`, `t_destination`, `t_type`, `t_status`, `no_of_seats`, `t_duration`) VALUES
(16235, 'Mumbaiexp', 'Mumbai', 'Bengaluru', 'Express', 'On time', 550, 20),
(16230, 'Chennaiexp', 'Chennai', 'Mumbai', 'AC superfast', 'On time', 800, 24),
(16220, 'Tirupatiexp', 'Bengaluru', 'Tirupati', 'express', 'On time', 500, 25),
(16225, 'Renigunta weeklyexp', 'Mysuru', 'Renigunta', 'Superfast', 'On time', 700, 15),
(16205, 'Mysoreexp', 'Talguppa', 'Mysore JN', 'Express', 'On time', 475, 21);


