-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2017 at 01:17 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basic_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `u_id` int(10) NOT NULL,
  `u_name` varchar(30) NOT NULL,
  `u_pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`u_id`, `u_name`, `u_pass`) VALUES
(1, 'fahad', '123456'),
(2, 'tahir khan', 'tahir123');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `m_id` int(10) NOT NULL,
  `m_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`m_id`, `m_title`) VALUES
(11, 'Home'),
(12, 'Blogging'),
(13, 'SEO Tips'),
(14, 'Word Press'),
(15, 'Online Work'),
(16, 'Make Money'),
(17, 'International'),
(18, 'About Us');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `p_id` int(10) NOT NULL,
  `p_title` varchar(100) NOT NULL,
  `p_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`p_id`, `p_title`, `p_desc`) VALUES
(10, 'Home', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin varius viverra orci non viverra. Nunc ac mauris sagittis, varius mi a, lacinia elit. Pellentesque luctus, nunc eu accumsan sollicitudin, lacus diam blandit velit, eget euismod ligula est a dui. Maecenas porttitor risus a elit commodo mollis. Quisque euismod egestas eros, ut gravida felis. Nulla justo mauris, bibendum non condimentum vel, cursus nec magna. Etiam ac orci et turpis lacinia tempor id at mauris. Nunc eget scelerisque nisi. Donec mi ante, ultricies at porta vel, porta non arcu. Aliquam ultricies aliquet risus quis bibendum. Phasellus sit amet neque sodales, dapibus arcu id, aliquet eros. Vivamus efficitur vitae turpis dictum egestas. Etiam molestie viverra leo lacinia fermentum. Donec elementum vehicula erat vel bibendum. Cras rutrum, odio nec scelerisque pretium, tellus mauris blandit dui, vitae venenatis eros velit sed mauris'),
(11, 'Blogging', 'Curabitur sodales odio magna, nec dictum felis ultrices sit amet. In vestibulum odio sed ultricies imperdiet. Quisque quis faucibus tellus, eu ultrices leo. Cras felis lacus, rutrum condimentum cursus nec, rhoncus sed lacus. Suspendisse nec enim sed sapien blandit lacinia. Donec lacinia purus eget ante rhoncus euismod. Etiam eleifend eu sapien nec dictum. Fusce lacinia nibh at leo hendrerit, nec hendrerit sapien imperdiet. Phasellus vehicula, risus a congue posuere, libero ipsum lacinia tellus, id feugiat dolor mi sed massa. Vestibulum scelerisque euismod nisl, vel elementum turpis ullamcorper in. Phasellus pretium, tortor id consectetur laoreet, ligula sem elementum massa, a semper orci purus non mauris. Nunc convallis volutpat urna et tristique. Nam ultricies semper venenatis. Praesent scelerisque eu tellus ut congue.'),
(12, 'SEO TIPS', 'Etiam sed suscipit diam, id pharetra quam. Fusce blandit pulvinar velit, et vehicula urna tristique non. Integer quis augue eu justo finibus maximus. Nam ut magna sodales, aliquam lectus convallis, dignissim diam. Vivamus erat lorem, aliquam nec lectus ut, scelerisque ornare nisi. In ultrices lacinia semper. Donec maximus varius risus nec gravida. Praesent at efficitur enim. Nunc sollicitudin vehicula erat, a varius sem auctor hendrerit. Proin rutrum arcu quis molestie varius. Mauris vestibulum faucibus lectus quis convallis. Curabitur placerat mauris ex, vitae luctus lectus porta vitae. Praesent sagittis neque nec sapien tristique malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent maximus auctor lacus, vehicula finibus ipsum laoreet a.'),
(13, 'Word Press', 'Ut finibus congue eros vitae aliquet. Ut euismod egestas ante nec interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum imperdiet consequat elit, facilisis faucibus libero tincidunt non. Cras venenatis urna non eros auctor suscipit. Donec id posuere risus. Integer quis lorem varius dui pharetra iaculis.\r\n\r\nCras sed leo lacinia, dignissim purus vitae, sodales nisl. Pellentesque viverra ex sed tortor sollicitudin pharetra. Cras dolor metus, sagittis eu lectus id, maximus semper quam. Nunc et tempus libero, quis sagittis lorem. Maecenas tincidunt nunc sapien. Suspendisse est massa, venenatis at facilisis et, ultricies nec orci. Integer eu ullamcorper risus, sit amet luctus mauris. Nullam condimentum augue vitae nibh gravida, sollicitudin iaculis ipsum tempus.'),
(14, 'Online Work', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin varius viverra orci non viverra. Nunc ac mauris sagittis, varius mi a, lacinia elit. Pellentesque luctus, nunc eu accumsan sollicitudin, lacus diam blandit velit, eget euismod ligula est a dui. Maecenas porttitor risus a elit commodo mollis. Quisque euismod egestas eros, ut gravida felis. Nulla justo mauris, bibendum non condimentum vel, cursus nec magna. Etiam ac orci et turpis lacinia tempor id at mauris. Nunc eget scelerisque nisi. Donec mi ante, ultricies at porta vel, porta non arcu. Aliquam ultricies aliquet risus quis bibendum. Phasellus sit amet neque sodales, dapibus arcu id, aliquet eros. Vivamus efficitur vitae turpis dictum egestas. Etiam molestie viverra leo lacinia fermentum. Donec elementum vehicula erat vel bibendum. Cras rutrum, odio nec scelerisque pretium, tellus mauris blandit dui, vitae venenatis eros velit sed mauris.\r\n\r\nCurabitur sodales odio magna, nec dictum felis ultrices sit amet. In vestibulum odio sed ultricies imperdiet. Quisque quis faucibus tellus, eu ultrices leo. Cras felis lacus, rutrum condimentum cursus nec, rhoncus sed lacus. Suspendisse nec enim sed sapien blandit lacinia. Donec lacinia purus eget ante rhoncus euismod. Etiam eleifend eu sapien nec dictum. Fusce lacinia nibh at leo hendrerit, nec hendrerit sapien imperdiet. Phasellus vehicula, risus a congue posuere, libero ipsum lacinia tellus, id feugiat dolor mi sed massa. Vestibulum scelerisque euismod nisl, vel elementum turpis ullamcorper in. Phasellus pretium, tortor id consectetur laoreet, ligula sem elementum massa, a semper orci purus non mauris. Nunc convallis volutpat urna et tristique. Nam ultricies semper venenatis. Praesent scelerisque eu tellus ut congue.'),
(15, 'Make Money', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin varius viverra orci non viverra. Nunc ac mauris sagittis, varius mi a, lacinia elit. Pellentesque luctus, nunc eu accumsan sollicitudin, lacus diam blandit velit, eget euismod ligula est a dui. Maecenas porttitor risus a elit commodo mollis. Quisque euismod egestas eros, ut gravida felis. Nulla justo mauris, bibendum non condimentum vel, cursus nec magna. Etiam ac orci et turpis lacinia tempor id at mauris. Nunc eget scelerisque nisi. Donec mi ante, ultricies at porta vel, porta non arcu. Aliquam ultricies aliquet risus quis bibendum. Phasellus sit amet neque sodales, dapibus arcu id, aliquet eros. Vivamus efficitur vitae turpis dictum egestas. Etiam molestie viverra leo lacinia fermentum. Donec elementum vehicula erat vel bibendum. Cras rutrum, odio nec scelerisque pretium, tellus mauris blandit dui, vitae venenatis eros velit sed mauris.\r\n\r\nCurabitur sodales odio magna, nec dictum felis ultrices sit amet. In vestibulum odio sed ultricies imperdiet. Quisque quis faucibus tellus, eu ultrices leo. Cras felis lacus, rutrum condimentum cursus nec, rhoncus sed lacus. Suspendisse nec enim sed sapien blandit lacinia. Donec lacinia purus eget ante rhoncus euismod. Etiam eleifend eu sapien nec dictum. Fusce lacinia nibh at leo hendrerit, nec hendrerit sapien imperdiet. Phasellus vehicula, risus a congue posuere, libero ipsum lacinia tellus, id feugiat dolor mi sed massa. Vestibulum scelerisque euismod nisl, vel elementum turpis ullamcorper in. Phasellus pretium, tortor id consectetur laoreet, ligula sem elementum massa, a semper orci purus non mauris. Nunc convallis volutpat urna et tristique. Nam ultricies semper venenatis. Praesent scelerisque eu tellus ut congue.'),
(16, 'International', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin varius viverra orci non viverra. Nunc ac mauris sagittis, varius mi a, lacinia elit. Pellentesque luctus, nunc eu accumsan sollicitudin, lacus diam blandit velit, eget euismod ligula est a dui. Maecenas porttitor risus a elit commodo mollis. Quisque euismod egestas eros, ut gravida felis. Nulla justo mauris, bibendum non condimentum vel, cursus nec magna. Etiam ac orci et turpis lacinia tempor id at mauris. Nunc eget scelerisque nisi. Donec mi ante, ultricies at porta vel, porta non arcu. Aliquam ultricies aliquet risus quis bibendum. Phasellus sit amet neque sodales, dapibus arcu id, aliquet eros. Vivamus efficitur vitae turpis dictum egestas. Etiam molestie viverra leo lacinia fermentum. Donec elementum vehicula erat vel bibendum. Cras rutrum, odio nec scelerisque pretium, tellus mauris blandit dui, vitae venenatis eros velit sed mauris.\r\n\r\nCurabitur sodales odio magna, nec dictum felis ultrices sit amet. In vestibulum odio sed ultricies imperdiet. Quisque quis faucibus tellus, eu ultrices leo. Cras felis lacus, rutrum condimentum cursus nec, rhoncus sed lacus. Suspendisse nec enim sed sapien blandit lacinia. Donec lacinia purus eget ante rhoncus euismod. Etiam eleifend eu sapien nec dictum. Fusce lacinia nibh at leo hendrerit, nec hendrerit sapien imperdiet. Phasellus vehicula, risus a congue posuere, libero ipsum lacinia tellus, id feugiat dolor mi sed massa. Vestibulum scelerisque euismod nisl, vel elementum turpis ullamcorper in. Phasellus pretium, tortor id consectetur laoreet, ligula sem elementum massa, a semper orci purus non mauris. Nunc convallis volutpat urna et tristique. Nam ultricies semper venenatis. Praesent scelerisque eu tellus ut congue.'),
(17, 'About Us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin varius viverra orci non viverra. Nunc ac mauris sagittis, varius mi a, lacinia elit. Pellentesque luctus, nunc eu accumsan sollicitudin, lacus diam blandit velit, eget euismod ligula est a dui. Maecenas porttitor risus a elit commodo mollis. Quisque euismod egestas eros, ut gravida felis. Nulla justo mauris, bibendum non condimentum vel, cursus nec magna. Etiam ac orci et turpis lacinia tempor id at mauris. Nunc eget scelerisque nisi. Donec mi ante, ultricies at porta vel, porta non arcu. Aliquam ultricies aliquet risus quis bibendum. Phasellus sit amet neque sodales, dapibus arcu id, aliquet eros. Vivamus efficitur vitae turpis dictum egestas. Etiam molestie viverra leo lacinia fermentum. Donec elementum vehicula erat vel bibendum. Cras rutrum, odio nec scelerisque pretium, tellus mauris blandit dui, vitae venenatis eros velit sed mauris.\r\n\r\nCurabitur sodales odio magna, nec dictum felis ultrices sit amet. In vestibulum odio sed ultricies imperdiet. Quisque quis faucibus tellus, eu ultrices leo. Cras felis lacus, rutrum condimentum cursus nec, rhoncus sed lacus. Suspendisse nec enim sed sapien blandit lacinia. Donec lacinia purus eget ante rhoncus euismod. Etiam eleifend eu sapien nec dictum. Fusce lacinia nibh at leo hendrerit, nec hendrerit sapien imperdiet. Phasellus vehicula, risus a congue posuere, libero ipsum lacinia tellus, id feugiat dolor mi sed massa. Vestibulum scelerisque euismod nisl, vel elementum turpis ullamcorper in. Phasellus pretium, tortor id consectetur laoreet, ligula sem elementum massa, a semper orci purus non mauris. Nunc convallis volutpat urna et tristique. Nam ultricies semper venenatis. Praesent scelerisque eu tellus ut congue.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `u_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `m_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
