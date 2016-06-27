-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2016 at 10:16 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biboexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '111', '111', '11111', 1, '2016-06-27 18:33:08', '2016-06-27 18:33:08'),
(2, '222bbb', '222bbb', '22222bbb', 2, '2016-06-27 18:33:49', '2016-06-27 19:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_a` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `blog_id`, `user_id`, `content`, `created_at`, `updated_a`) VALUES
(1, 2, 1, 'test', '2016-06-27 19:57:01', '2016-06-27 19:57:01'),
(2, 2, 1, 'test2', '2016-06-27 20:04:55', '2016-06-27 20:04:55'),
(3, 2, 1, 'test3', '2016-06-27 20:05:06', '2016-06-27 20:05:06'),
(4, 2, 1, 'test4', '2016-06-27 20:11:58', '2016-06-27 20:11:58'),
(5, 2, 1, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa ', '2016-06-27 20:13:59', '2016-06-27 20:13:59'),
(6, 2, 2, 'bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb ', '2016-06-27 20:15:41', '2016-06-27 20:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'api/get_all_blog', 'get', 'a:10:{s:4:"Host";s:12:"localhost:81";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36";s:6:"Accept";s:74:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8";s:15:"Accept-Encoding";s:19:"gzip, deflate, sdch";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:6:"Cookie";s:51:"ci_session=099346da89f18d6eb90b0d371940abeeb823d67c";}', '', '::1', 1467047649, 0.143573, '1', 200),
(2, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467047656, 0.144972, '1', 200),
(3, 'api/authuser', 'post', 'a:8:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"240";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------9da3563ff8cdeecf";s:4:"user";s:4:"test";s:4:"pass";s:4:"test";}', '', '::1', 1467047663, 0.0812008, '1', 400),
(4, 'api/authuser', 'post', 'a:8:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"240";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------56ce3fe829578c57";s:4:"user";s:4:"test";s:4:"pass";s:4:"test";}', '', '::1', 1467047691, 0.116586, '1', 400),
(5, 'api/authuser', 'post', 'a:8:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"232";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------a4816a470637c885";s:4:"user";s:0:"";s:4:"pass";s:0:"";}', '', '::1', 1467047693, 0.137626, '1', 400),
(6, 'api/reguser', 'post', 'a:11:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"560";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------1c94ad562d66930a";s:5:"email";s:13:"test@test.com";s:10:"first_name";s:4:"test";s:9:"last_name";s:4:"test";s:8:"username";s:4:"test";s:8:"password";s:4:"test";}', '', '::1', 1467047708, 0.182159, '1', 200),
(7, 'api/authuser', 'post', 'a:8:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"240";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------257ebd91381cffb8";s:4:"user";s:4:"test";s:4:"pass";s:4:"test";}', '', '::1', 1467047713, 0.087029, '1', 200),
(8, 'api/authuser', 'post', 'a:8:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"240";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------7584846a0d241903";s:4:"user";s:4:"test";s:4:"pass";s:4:"test";}', '', '::1', 1467047724, 0.135657, '1', 200),
(9, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467047724, 0.07041, '1', 200),
(10, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467047728, 0.131632, '1', 200),
(11, 'api/authuser', 'post', 'a:8:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"242";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------36afdcae64e831d0";s:4:"user";s:4:"test";s:4:"pass";s:6:"sdfsdf";}', '', '::1', 1467047734, 0.17128, '1', 400),
(12, 'api/authuser', 'post', 'a:8:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"240";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------09c1f38d64f998a2";s:4:"user";s:4:"test";s:4:"pass";s:4:"test";}', '', '::1', 1467047739, 0.827479, '1', 200),
(13, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467047740, 0.0840321, '1', 200),
(14, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467047745, 0.133916, '1', 200),
(15, 'api/reguser', 'post', 'a:11:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"566";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------6555f515c2a1f9c5";s:5:"email";s:15:"test2@testc.com";s:10:"first_name";s:5:"test2";s:9:"last_name";s:5:"test2";s:8:"username";s:5:"test2";s:8:"password";s:5:"test2";}', '', '::1', 1467048002, 0.152452, '1', 200),
(16, 'api/authuser', 'post', 'a:8:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"242";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------639fd93d0075f418";s:4:"user";s:5:"test2";s:4:"pass";s:5:"test2";}', '', '::1', 1467048002, 0.122883, '1', 200),
(17, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467048002, 0.0712681, '1', 200),
(18, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467048528, 0.129753, '1', 200),
(19, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467048700, 0.259904, '1', 200),
(20, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467048707, 0.0953009, '1', 200),
(21, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467048771, 0.156886, '1', 200),
(22, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467048787, 0.134118, '1', 200),
(23, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467048797, 0.161373, '1', 200),
(24, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467048816, 0.101152, '1', 200),
(25, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467048818, 0.160789, '1', 200),
(26, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467048820, 0.0856628, '1', 200),
(27, 'api/authuser', 'post', 'a:8:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"240";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------fb6d2a481331c518";s:4:"user";s:4:"test";s:4:"pass";s:4:"test";}', '', '::1', 1467048825, 0.093549, '1', 200),
(28, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467048825, 0.0873871, '1', 200),
(29, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467048846, 0.113176, '1', 200),
(30, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049172, 0.111475, '1', 200),
(31, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049190, 0.14872, '1', 200),
(32, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049192, 0.082576, '1', 200),
(33, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049207, 0.181287, '1', 200),
(34, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049222, 0.158078, '1', 200),
(35, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049236, 0.229824, '1', 200),
(36, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049263, 0.146356, '1', 200),
(37, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049392, 0.185686, '1', 200),
(38, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049541, 0.104488, '1', 200),
(39, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049647, 0.164269, '1', 200),
(40, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049660, 0.117569, '1', 200),
(41, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049674, 0.155983, '1', 200),
(42, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049696, 0.143933, '1', 200),
(43, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049714, 0.15986, '1', 200),
(44, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049725, 0.090853, '1', 200),
(45, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467049781, 0.154117, '1', 200),
(46, 'api/get_blog/0', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050313, 0.099112, '1', 0),
(47, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050320, 0.0561891, '1', 0),
(48, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050356, 0.164131, '1', 200),
(49, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050465, 0.137941, '1', 200),
(50, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050502, 0.120634, '1', 200),
(51, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050524, 0.161846, '1', 200),
(52, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050530, 0.150723, '1', 200),
(53, 'api/get_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467050532, 0.0998662, '1', 0),
(54, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050553, 0.171057, '1', 200),
(55, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050593, 0.140265, '1', 200),
(56, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050617, 0.169882, '1', 200),
(57, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050626, 0.199483, '1', 200),
(58, 'api/get_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467050634, 0.101123, '1', 0),
(59, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050650, 0.18357, '1', 200),
(60, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050660, 0.216387, '1', 200),
(61, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050663, 0.158238, '1', 200),
(62, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467050706, 0.108774, '1', 200),
(63, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467050766, 0.270051, '1', 200),
(64, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050769, 0.123283, '1', 200),
(65, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050786, 0.147541, '1', 200),
(66, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050817, 0.14147, '1', 200),
(67, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467050834, 0.118323, '1', 200),
(68, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050842, 0.133714, '1', 200),
(69, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050861, 0.169893, '1', 200),
(70, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050878, 0.15202, '1', 200),
(71, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467050883, 0.168727, '1', 200),
(72, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467050895, 0.209827, '1', 200),
(73, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467051017, 0.15501, '1', 200),
(74, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467051022, 0.139672, '1', 200),
(75, 'api/authuser', 'post', 'a:8:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"240";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------7a3123ae8347e57e";s:4:"user";s:4:"test";s:4:"pass";s:4:"test";}', '', '::1', 1467051032, 0.153895, '1', 200),
(76, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467051033, 0.0906661, '1', 200),
(77, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467051253, 0.132623, '1', 200),
(78, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467051257, 0.169196, '1', 200),
(79, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467051263, 0.136857, '1', 200),
(80, 'api/reguser', 'post', 'a:11:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"531";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------05cbed605b2a0e1e";s:5:"email";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";}', '', '::1', 1467051798, 0.131329, '1', 400),
(81, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467051815, 0.108244, '1', 200),
(82, 'api/authuser', 'post', 'a:8:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"240";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------0883dbdc82e616d0";s:4:"user";s:4:"test";s:4:"pass";s:4:"test";}', '', '::1', 1467051821, 0.135123, '1', 200),
(83, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467051821, 0.0743291, '1', 200),
(84, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467051829, 0.129258, '1', 200),
(85, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467051832, 0.180848, '1', 200),
(86, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467051834, 0.114002, '1', 200),
(87, 'api/create', 'post', 'a:10:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"436";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------722c3e60ae2394a0";s:5:"title";s:3:"111";s:4:"slug";s:3:"111";s:7:"content";s:5:"11111";s:7:"user_id";s:0:"";}', '', '::1', 1467052242, 0.101912, '1', 400),
(88, 'api/create', 'post', 'a:10:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"436";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------c2fc35cf8b57f8eb";s:5:"title";s:3:"111";s:4:"slug";s:3:"111";s:7:"content";s:5:"11111";s:7:"user_id";s:0:"";}', '', '::1', 1467052284, 0.132667, '1', 400),
(89, 'api/create', 'post', 'a:10:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"437";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------2fada58929f13c61";s:5:"title";s:3:"111";s:4:"slug";s:3:"111";s:7:"content";s:5:"11111";s:7:"user_id";s:1:"1";}', '', '::1', 1467052388, 0.181056, '1', 200),
(90, 'api/get_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467052388, 0.103644, '1', 200),
(91, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467052388, 0.0712609, '1', 200),
(92, 'api/create', 'post', 'a:10:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"437";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------980f9d851af0fe21";s:5:"title";s:3:"222";s:4:"slug";s:3:"222";s:7:"content";s:5:"22222";s:7:"user_id";s:1:"1";}', '', '::1', 1467052429, 0.195305, '1', 200),
(93, 'api/get_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467052430, 0.0950141, '1', 200),
(94, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467052430, 0.119004, '1', 200),
(95, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467052584, 0.128016, '1', 200),
(96, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467052617, 0.134152, '1', 200),
(97, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467052623, 0.146749, '1', 200),
(98, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467052651, 0.0903568, '1', 200),
(99, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467052668, 0.148732, '1', 200),
(100, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467052672, 0.0997131, '1', 200),
(101, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467052676, 0.137107, '1', 200),
(102, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467052678, 0.192258, '1', 200),
(103, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467052682, 0.101019, '1', 200),
(104, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467052692, 0.199091, '1', 200),
(105, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467052759, 0.129905, '1', 200),
(106, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053169, 0.436363, '1', 200),
(107, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053245, 0.175378, '1', 200),
(108, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053252, 0.326176, '1', 200),
(109, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053288, 0.287051, '1', 200),
(110, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467053292, 0.222654, '1', 200),
(111, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053294, 0.489092, '1', 200),
(112, 'api/authuser', 'post', 'a:8:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"242";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------ae4a5a273a40bc47";s:4:"user";s:5:"test2";s:4:"pass";s:5:"test2";}', '', '::1', 1467053305, 0.128437, '1', 200),
(113, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467053305, 0.133409, '1', 200),
(114, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053308, 0.140008, '1', 200),
(115, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053414, 0.112992, '1', 200),
(116, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053483, 0.158257, '1', 200),
(117, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467053656, 0.134791, '1', 200),
(118, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053660, 0.158817, '1', 200),
(119, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053664, 0.137148, '1', 200),
(120, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053743, 0.129687, '1', 200),
(121, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053818, 0.171645, '1', 200),
(122, 'api/create', 'post', 'a:10:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"446";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------33b31a268e166cdd";s:5:"title";s:6:"222aaa";s:4:"slug";s:6:"222aaa";s:7:"content";s:8:"22222aaa";s:7:"user_id";s:1:"2";}', '', '::1', 1467053824, 0.134612, '1', 200),
(123, 'api/get_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467053824, 0.0913281, '1', 200),
(124, 'api/get_blog/3', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053824, 0.0987239, '1', 200),
(125, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467053832, 0.127967, '1', 200),
(126, 'api/get_blog/3', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053963, 0.174448, '1', 200),
(127, 'api/get_blog/3', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053969, 0.168829, '1', 200),
(128, 'api/get_blog/3', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053987, 0.141273, '1', 200),
(129, 'api/edit/3', 'post', 'a:11:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"435";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------190610d677bb34cf";s:5:"title";s:3:"333";s:4:"slug";s:3:"333";s:7:"content";s:3:"333";s:7:"user_id";s:1:"2";}', '', '::1', 1467053988, 0.108651, '1', 200),
(130, 'api/get_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467053988, 0.0761559, '1', 200),
(131, 'api/get_blog/3', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053988, 0.116337, '1', 200),
(132, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467053992, 0.126547, '1', 200),
(133, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053995, 0.156791, '1', 200),
(134, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467053996, 0.131017, '1', 200),
(135, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467054001, 0.106087, '1', 200),
(136, 'api/edit/2', 'post', 'a:11:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"446";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------66da60fdfba59a82";s:5:"title";s:6:"222aaa";s:4:"slug";s:6:"222aaa";s:7:"content";s:8:"22222aaa";s:7:"user_id";s:1:"2";}', '', '::1', 1467054001, 0.208904, '1', 200),
(137, 'api/get_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467054002, 0.151159, '1', 200),
(138, 'api/get_blog/3', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467054002, 0.0778921, '1', 200),
(139, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467054005, 0.141528, '1', 200),
(140, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467054073, 0.143275, '1', 200),
(141, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467054075, 0.175284, '1', 200),
(142, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467054077, 0.221889, '1', 200),
(143, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467054084, 0.130348, '1', 200),
(144, 'api/edit/2', 'post', 'a:11:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"446";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------a56dd355dfdeede0";s:5:"title";s:6:"222bbb";s:4:"slug";s:6:"222bbb";s:7:"content";s:8:"22222bbb";s:7:"user_id";s:1:"2";}', '', '::1', 1467054084, 0.15649, '1', 200),
(145, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467054085, 0.149898, '1', 200),
(146, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467054085, 0.0936871, '1', 200),
(147, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467054089, 0.173096, '1', 200),
(148, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467054505, 0.176373, '1', 200),
(149, 'api/get_blog/3', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467054508, 0.0802691, '1', 200),
(150, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467054529, 0.120037, '1', 200),
(151, 'api/get_blog/3', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467054531, 0.135034, '1', 200),
(152, 'api/delete', 'post', 'a:7:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"138";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------0dc20abfd6a49830";s:2:"id";s:1:"3";}', '', '::1', 1467054534, 0.200065, '1', 200),
(153, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467054534, 0.084383, '1', 200),
(154, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467054551, 0.184496, '1', 200),
(155, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467054555, 0.132886, '1', 200),
(156, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467054557, 0.135475, '1', 200),
(157, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467054561, 0.12494, '1', 200),
(158, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467054563, 0.084053, '1', 200),
(159, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467054938, 0.141561, '1', 200),
(160, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467055040, 0.169445, '1', 200),
(161, 'api/authuser', 'post', 'a:8:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"240";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------478385ffe4f57281";s:4:"user";s:4:"test";s:4:"pass";s:4:"test";}', '', '::1', 1467055066, 0.103728, '1', 200),
(162, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467055066, 0.0785968, '1', 200),
(163, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467055071, 0.113612, '1', 200),
(164, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467055324, 0.121734, '1', 200),
(165, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467055343, 0.104989, '1', 200),
(166, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467055386, 0.173866, '1', 200),
(167, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467055446, 0.154201, '1', 200),
(168, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467055457, 0.117567, '1', 200),
(169, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467055459, 0.112979, '1', 200),
(170, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467055470, 0.104497, '1', 200),
(171, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467055478, 0.183832, '1', 200),
(172, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467055482, 0.097764, '1', 200),
(173, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467055693, 0.157889, '1', 200),
(174, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467055795, 0.104473, '1', 200),
(175, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467056032, 0.114052, '1', 200),
(176, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467056505, 0.131145, '1', 200),
(177, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467056580, 0.130075, '1', 200),
(178, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467056902, 0.126539, '1', 200),
(179, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467056913, 0.127986, '1', 200),
(180, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467056914, 0.20083, '1', 200),
(181, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467057414, 0.121569, '1', 200),
(182, 'api/addcomment', 'post', 'a:9:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"340";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------daafed43245f3ea0";s:7:"blog_id";s:1:"2";s:7:"user_id";s:1:"1";s:7:"content";s:4:"test";}', '', '::1', 1467057420, 0.199327, '1', 200),
(183, 'api/get_blog/blog_id', 'get', 'a:4:{s:7:"blog_id";N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467057421, 0.0347281, '1', 0),
(184, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467057421, 0.108652, '1', 200),
(185, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467057888, 0.15144, '1', 200),
(186, 'api/get_blogcomments/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467057888, 0.0686231, '1', 200),
(187, 'api/addcomment', 'post', 'a:9:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"341";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------faf620b7f0979a85";s:7:"blog_id";s:1:"2";s:7:"user_id";s:1:"1";s:7:"content";s:5:"test2";}', '', '::1', 1467057895, 0.242926, '1', 200),
(188, 'api/get_blog/blog_id', 'get', 'a:4:{s:7:"blog_id";N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467057896, 0.0460019, '1', 0),
(189, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467057896, 0.0897789, '1', 200),
(190, 'api/get_blogcomments/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467057896, 0.0747199, '1', 200),
(191, 'api/addcomment', 'post', 'a:9:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"341";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------a548ad6ca1dfead0";s:7:"blog_id";s:1:"2";s:7:"user_id";s:1:"1";s:7:"content";s:5:"test3";}', '', '::1', 1467057906, 0.162084, '1', 200),
(192, 'api/get_blog/blog_id', 'get', 'a:4:{s:7:"blog_id";N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467057906, 0.0926702, '1', 0),
(193, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467057907, 0.0715392, '1', 200),
(194, 'api/get_blogcomments/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467057907, 0.134745, '1', 200),
(195, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058270, 0.266064, '1', 200),
(196, 'api/get_blogcomments/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058271, 0.0970609, '1', 200),
(197, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058287, 0.155944, '1', 200),
(198, 'api/get_blogcomments/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058287, 0.0947809, '1', 200),
(199, 'api/addcomment', 'post', 'a:9:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"341";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------b5d06d8709831b72";s:7:"blog_id";s:1:"2";s:7:"user_id";s:1:"1";s:7:"content";s:5:"test4";}', '', '::1', 1467058317, 0.274429, '1', 200),
(200, 'api/get_blog/blog_id', 'get', 'a:4:{s:7:"blog_id";N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467058318, 0.0478811, '1', 0),
(201, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058318, 0.082196, '1', 200),
(202, 'api/get_blogcomments/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058318, 0.0930221, '1', 200),
(203, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058372, 0.191697, '1', 200),
(204, 'api/get_blogcomments/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058372, 0.100207, '1', 200),
(205, 'api/addcomment', 'post', 'a:9:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:4:"1533";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------62c99806819b5bfd";s:7:"blog_id";s:1:"2";s:7:"user_id";s:1:"1";s:7:"content";s:1197:"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa ";}', '', '::1', 1467058439, 0.600402, '1', 200),
(206, 'api/get_blog/blog_id', 'get', 'a:4:{s:7:"blog_id";N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467058439, 0.0479369, '1', 0),
(207, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058440, 0.100561, '1', 200),
(208, 'api/get_blogcomments/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058440, 0.09782, '1', 200),
(209, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467058467, 0.132283, '1', 200),
(210, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058470, 0.129773, '1', 200),
(211, 'api/get_blogcomments/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058470, 0.116236, '1', 200);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(212, 'api/get_blog/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058503, 0.172434, '1', 200),
(213, 'api/get_blogcomments/1', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058503, 0.098835, '1', 200),
(214, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467058508, 0.121939, '1', 200),
(215, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058510, 0.128881, '1', 200),
(216, 'api/get_blogcomments/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058510, 0.0866389, '1', 200),
(217, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058511, 0.12558, '1', 200),
(218, 'api/get_blogcomments/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058511, 0.153221, '1', 200),
(219, 'api/authuser', 'post', 'a:8:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"242";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------1d5b83c9b6e2dae1";s:4:"user";s:5:"test2";s:4:"pass";s:5:"test2";}', '', '::1', 1467058524, 0.143782, '1', 200),
(220, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467058524, 0.0768239, '1', 200),
(221, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058526, 0.10923, '1', 200),
(222, 'api/get_blogcomments/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058527, 0.0837171, '1', 200),
(223, 'api/addcomment', 'post', 'a:9:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";s:14:"Content-Length";s:3:"756";s:6:"Expect";s:12:"100-continue";s:12:"Content-Type";s:70:"multipart/form-data; boundary=------------------------d51b05d5eebceb4d";s:7:"blog_id";s:1:"2";s:7:"user_id";s:1:"2";s:7:"content";s:420:"bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbb ";}', '', '::1', 1467058540, 0.242157, '1', 200),
(224, 'api/get_blog/blog_id', 'get', 'a:4:{s:7:"blog_id";N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467058541, 0.0875659, '1', 0),
(225, 'api/get_blog/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058541, 0.073123, '1', 200),
(226, 'api/get_blogcomments/2', 'get', 'a:5:{i:0;N;s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";i:1;N;}', '', '::1', 1467058541, 0.106812, '1', 200),
(227, 'api/get_all_blog', 'get', 'a:3:{s:4:"Host";s:12:"localhost:81";s:13:"Authorization";s:22:"Basic YWRtaW46MTIzNA==";s:6:"Accept";s:3:"*/*";}', '', '::1', 1467058559, 0.165922, '1', 200);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email_address` varchar(512) NOT NULL,
  `password` varchar(512) NOT NULL,
  `username` varchar(128) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `deleted_flag` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email_address`, `password`, `username`, `first_name`, `last_name`, `deleted_flag`, `created_at`, `updated_at`) VALUES
(1, 'test@test.com', 'test', 'test', 'test', 'test', 0, '2016-06-27 17:15:08', '2016-06-27 17:15:08'),
(2, 'test2@test.com', 'test2', 'test2', 'test2', 'test2', 0, '2016-06-27 17:20:02', '2016-06-27 17:21:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
