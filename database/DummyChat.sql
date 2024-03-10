-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 11 Mar 2024 pada 01.48
-- Versi server: 10.11.6-MariaDB-cll-lve
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `n1563747_chat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `id_receive` text NOT NULL,
  `id_send` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `receiver` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `text` longtext NOT NULL,
  `text2` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `caption` text NOT NULL,
  `status` enum('READ','UNREAD') NOT NULL DEFAULT 'UNREAD',
  `rooms` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data untuk tabel `chat`
--

INSERT INTO `chat` (`id`, `id_receive`, `id_send`, `time`, `username`, `receiver`, `text`, `text2`, `caption`, `status`, `rooms`) VALUES
(1, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 09:39:02', 'fauzik002@gmail.com', 'admin', 'Halooo\n', 'text', '', 'READ', 'CHT_004'),
(2, '3t5bdxKtJfjZLxe9AAAB', 'VLyByH1MQ457CIuvAAAH', '2023-07-05 09:40:36', 'ronalds@gmail.com', 'admin', 'halooo\n', 'text', '', 'READ', 'CHT_004'),
(3, 'VLyByH1MQ457CIuvAAAH', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 09:40:55', 'admin', 'ronalds@gmail.com', 'https://pertalis.com/chat_apps/Admin/api/image/2023-07-05 04:40:55_admin.png', 'image', 'contoh', 'UNREAD', 'CHT_004'),
(4, '3t5bdxKtJfjZLxe9AAAB', 'VLyByH1MQ457CIuvAAAH', '2023-07-05 09:41:13', 'ronalds@gmail.com', 'admin', 'https://pertalis.com/chat_apps/Admin/api/image/2023-07-05 04:41:13_ronalds@gmail.com.png', 'image', 'okeyy', 'READ', 'CHT_004'),
(5, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 09:41:22', 'fauzik002@gmail.com', 'admin', 'hehehehe\n', 'text', '', 'READ', 'CHT_004'),
(6, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 09:41:38', 'admin', 'fauzik002@gmail.com', 'kenapa/', 'text', '', 'UNREAD', 'CHT_004'),
(7, 'VLyByH1MQ457CIuvAAAH', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 09:42:07', 'admin', 'ronalds@gmail.com', 'oyy', 'text', '', 'UNREAD', 'CHT_004'),
(8, '3t5bdxKtJfjZLxe9AAAB', 'VLyByH1MQ457CIuvAAAH', '2023-07-05 10:02:03', 'ronalds@gmail.com', 'admin', 'haloo\n', 'text', '', 'READ', 'CHT_004'),
(9, 'VLyByH1MQ457CIuvAAAH', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 10:02:13', 'admin', 'ronalds@gmail.com', 'haloo', 'text', '', 'UNREAD', 'CHT_004'),
(10, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 10:02:43', 'fauzik002@gmail.com', 'admin', 'tesss\n', 'text', '', 'READ', 'CHT_004'),
(11, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 10:03:47', 'fauzik002@gmail.com', 'admin', 'gapapa?', 'text', '', 'READ', 'CHT_004'),
(12, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 10:03:52', 'admin', 'fauzik002@gmail.com', 'g', 'text', '', 'UNREAD', 'CHT_004'),
(13, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 10:38:40', 'fauzik002@gmail.com', 'admin', 'res\n', 'text', '', 'READ', 'CHT_004'),
(14, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 10:38:49', 'admin', 'fauzik002@gmail.com', 'hmm', 'text', '', 'UNREAD', 'CHT_004'),
(15, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 10:40:08', 'fauzik002@gmail.com', 'admin', 'woi\n', 'text', '', 'READ', 'CHT_004'),
(16, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 10:40:47', 'fauzik002@gmail.com', 'admin', 'as\n', 'text', '', 'READ', 'CHT_004'),
(17, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 10:42:35', 'fauzik002@gmail.com', 'admin', 'sa\n', 'text', '', 'READ', 'CHT_004'),
(18, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 10:43:39', 'fauzik002@gmail.com', 'admin', 'sa', 'text', '', 'READ', 'CHT_004'),
(19, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 10:43:49', 'admin', 'fauzik002@gmail.com', 'sa', 'text', '', 'UNREAD', 'CHT_004'),
(20, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 10:43:58', 'admin', 'fauzik002@gmail.com', 'asldasdoskdoaskdoasdadasdasdsad', 'text', '', 'UNREAD', 'CHT_004'),
(21, '3t5bdxKtJfjZLxe9AAAB', 'NuUQ5uPpV5yHCK77AAAJ', '2023-07-05 15:07:14', 'indriyani13@gmail.com', 'admin', 'halo', 'text', '', 'READ', 'CHT_004'),
(22, 'NuUQ5uPpV5yHCK77AAAJ', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 15:07:21', 'admin', 'indriyani13@gmail.com', 'haloo', 'text', '', 'UNREAD', 'CHT_004'),
(23, 'NuUQ5uPpV5yHCK77AAAJ', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 15:14:32', 'admin', 'indriyani13@gmail.com', 'haloo', 'text', '', 'UNREAD', 'CHT_004'),
(24, 'NuUQ5uPpV5yHCK77AAAJ', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 15:15:02', 'admin', 'indriyani13@gmail.com', 'testinggggg', 'text', '', 'UNREAD', 'CHT_004'),
(25, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 15:15:22', 'admin', 'fauzik002@gmail.com', 'hoiiii', 'text', '', 'UNREAD', 'CHT_004'),
(26, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 15:16:09', 'fauzik002@gmail.com', 'admin', 'hmm', 'text', '', 'READ', 'CHT_004'),
(27, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 15:16:24', 'admin', 'fauzik002@gmail.com', 'desa', 'text', '', 'UNREAD', 'CHT_004'),
(28, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 15:20:23', 'fauzik002@gmail.com', 'admin', 'pp', 'text', '', 'READ', 'CHT_004'),
(29, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 15:40:01', 'admin', 'fauzik002@gmail.com', 's', 'text', '', 'UNREAD', 'CHT_004'),
(30, '3t5bdxKtJfjZLxe9AAAB', 'NuUQ5uPpV5yHCK77AAAJ', '2023-07-05 15:55:48', 'indriyani13@gmail.com', 'admin', 'p', 'text', '', 'READ', 'CHT_004'),
(31, 'NuUQ5uPpV5yHCK77AAAJ', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 15:55:56', 'admin', 'indriyani13@gmail.com', 's', 'text', '', 'UNREAD', 'CHT_004'),
(32, 'NuUQ5uPpV5yHCK77AAAJ', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 15:59:04', 'admin', 'indriyani13@gmail.com', 'halooo', 'text', '', 'UNREAD', 'CHT_004'),
(33, '3t5bdxKtJfjZLxe9AAAB', 'NuUQ5uPpV5yHCK77AAAJ', '2023-07-05 15:59:16', 'indriyani13@gmail.com', 'admin', 'Haloo', 'text', '', 'READ', 'CHT_004'),
(34, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 16:13:21', 'fauzik002@gmail.com', 'admin', 'sa', 'text', '', 'READ', 'CHT_004'),
(35, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 16:13:52', 'admin', 'fauzik002@gmail.com', 'sawqwedqw', 'text', '', 'UNREAD', 'CHT_004'),
(36, '3t5bdxKtJfjZLxe9AAAB', 'A_7xO1NugXa2_w4EAAAV', '2023-07-05 16:18:52', 'indriyani13@gmail.com', 'admin', 'w', 'text', '', 'READ', 'CHT_004'),
(37, 'NuUQ5uPpV5yHCK77AAAJ', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 16:19:18', 'admin', 'indriyani13@gmail.com', 'www', 'text', '', 'UNREAD', 'CHT_004'),
(38, '3t5bdxKtJfjZLxe9AAAB', 'A_7xO1NugXa2_w4EAAAV', '2023-07-05 16:19:31', 'indriyani13@gmail.com', 'admin', 'sadsadsad', 'text', '', 'READ', 'CHT_004'),
(39, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 16:20:23', 'admin', 'fauzik002@gmail.com', 'asdsadsa', 'text', '', 'UNREAD', 'CHT_004'),
(40, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 16:20:28', 'fauzik002@gmail.com', 'admin', 'sadsadasdsadasd', 'text', '', 'READ', 'CHT_004'),
(41, '3t5bdxKtJfjZLxe9AAAB', 'NuUQ5uPpV5yHCK77AAAJ', '2023-07-05 16:21:08', 'indriyani13@gmail.com', 'admin', 'Halooo', 'text', '', 'READ', 'CHT_004'),
(42, 'NuUQ5uPpV5yHCK77AAAJ', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 16:24:33', 'admin', 'indriyani13@gmail.com', 'Haiii', 'text', '', 'UNREAD', 'CHT_004'),
(43, '3t5bdxKtJfjZLxe9AAAB', 'NuUQ5uPpV5yHCK77AAAJ', '2023-07-05 16:24:42', 'indriyani13@gmail.com', 'admin', 'Haii\n', 'text', '', 'READ', 'CHT_004'),
(44, '3t5bdxKtJfjZLxe9AAAB', 'NuUQ5uPpV5yHCK77AAAJ', '2023-07-05 16:24:42', 'indriyani13@gmail.com', 'admin', '', 'text', '', 'READ', 'CHT_004'),
(45, '3t5bdxKtJfjZLxe9AAAB', 'NuUQ5uPpV5yHCK77AAAJ', '2023-07-05 16:29:22', 'indriyani13@gmail.com', 'admin', 'Halo\n', 'text', '', 'READ', 'CHT_004'),
(46, 'NuUQ5uPpV5yHCK77AAAJ', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 16:29:31', 'admin', 'indriyani13@gmail.com', 'Haloo', 'text', '', 'UNREAD', 'CHT_004'),
(47, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 16:29:42', 'fauzik002@gmail.com', 'admin', 'Pas \n', 'text', '', 'READ', 'CHT_004'),
(48, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 16:30:03', 'admin', 'fauzik002@gmail.com', 'Yoii', 'text', '', 'UNREAD', 'CHT_004'),
(49, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 16:30:16', 'fauzik002@gmail.com', 'admin', 'https://pertalis.com/chat_apps/Admin/api/image/2023-07-05 11:30:16_fauzik002@gmail.com.png', 'image', 'ini ?', 'READ', 'CHT_004'),
(50, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 16:30:31', 'admin', 'fauzik002@gmail.com', 'https://pertalis.com/chat_apps/Admin/api/image/2023-07-05 11:30:31_admin.png', 'image', 'bukan ini', 'UNREAD', 'CHT_004'),
(51, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 16:31:18', 'fauzik002@gmail.com', 'admin', 'hmmm', 'text', '', 'READ', 'CHT_004'),
(52, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 16:33:11', 'fauzik002@gmail.com', 'admin', 'tessss', 'text', '', 'READ', 'CHT_004'),
(53, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 16:33:24', 'admin', 'fauzik002@gmail.com', 'asdasdasdqwdqwdqwdqwd', 'text', '', 'UNREAD', 'CHT_004'),
(54, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 16:48:04', 'fauzik002@gmail.com', 'admin', 'sad', 'text', '', 'READ', 'CHT_004'),
(55, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 16:48:16', 'admin', 'fauzik002@gmail.com', 'sad', 'text', '', 'UNREAD', 'CHT_004'),
(56, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 16:48:21', 'fauzik002@gmail.com', 'admin', '234234234324', 'text', '', 'READ', 'CHT_004'),
(57, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-05 16:48:25', 'admin', 'fauzik002@gmail.com', '32323232323', 'text', '', 'UNREAD', 'CHT_004'),
(58, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 16:48:40', 'fauzik002@gmail.com', 'admin', 'asd', 'text', '', 'READ', 'CHT_004'),
(59, 'lSSOT_QUW7KG2pMrAAAf', '16x3aceAc_W3fMXIAAAT', '2023-07-05 16:52:57', 'fauzik002@gmail.com', 'admin', 'Halo Admin', 'text', '', 'READ', 'AP_001'),
(60, '16x3aceAc_W3fMXIAAAT', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-05 16:53:15', 'admin', 'fauzik002@gmail.com', 'Haloo', 'text', '', 'UNREAD', 'AP_001'),
(61, 'lSSOT_QUW7KG2pMrAAAf', '16x3aceAc_W3fMXIAAAT', '2023-07-05 16:53:24', 'fauzik002@gmail.com', 'admin', 'ada yang mau saya tanya\n', 'text', '', 'READ', 'AP_001'),
(62, 'lSSOT_QUW7KG2pMrAAAf', '16x3aceAc_W3fMXIAAAT', '2023-07-05 16:54:40', 'fauzik002@gmail.com', 'admin', 'p\n', 'text', '', 'READ', 'AP_001'),
(63, '16x3aceAc_W3fMXIAAAT', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-05 17:00:34', 'admin', 'fauzik002@gmail.com', 'Halo', 'text', '', 'UNREAD', 'AP_001'),
(64, 'lSSOT_QUW7KG2pMrAAAf', '16x3aceAc_W3fMXIAAAT', '2023-07-05 17:00:40', 'fauzik002@gmail.com', 'admin', 'da', 'text', '', 'READ', 'AP_001'),
(65, 'lSSOT_QUW7KG2pMrAAAf', 'xjmu29n7k3g7HCnfAAAr', '2023-07-05 17:02:45', 'heyyo@gmail.com', 'admin', 'Halo min', 'text', '', 'READ', 'AP_001'),
(66, 'xjmu29n7k3g7HCnfAAAr', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-05 17:02:55', 'admin', 'heyyo@gmail.com', 'allo', 'text', '', 'UNREAD', 'AP_001'),
(67, 'lSSOT_QUW7KG2pMrAAAf', 'xjmu29n7k3g7HCnfAAAr', '2023-07-05 17:05:16', 'heyyo@gmail.com', 'admin', 'https://pertalis.com/chat_apps/Admin/api/image/2023-07-06 12:05:16_heyyo@gmail.com.jpeg', 'image', 'Tess', 'READ', 'AP_001'),
(68, 'lSSOT_QUW7KG2pMrAAAf', 'xjmu29n7k3g7HCnfAAAr', '2023-07-05 17:05:32', 'heyyo@gmail.com', 'admin', 'Okeyyy', 'text', '', 'READ', 'AP_001'),
(69, 'xjmu29n7k3g7HCnfAAAr', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-05 17:06:00', 'admin', 'heyyo@gmail.com', 'https://pertalis.com/chat_apps/Admin/api/image/2023-07-06 12:06:00_admin.png', 'image', '', 'UNREAD', 'AP_001'),
(70, 'lSSOT_QUW7KG2pMrAAAf', '16x3aceAc_W3fMXIAAAT', '2023-07-05 17:06:10', 'fauzik002@gmail.com', 'admin', 'min', 'text', '', 'READ', 'AP_001'),
(71, '16x3aceAc_W3fMXIAAAT', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-05 17:06:19', 'admin', 'fauzik002@gmail.com', 'iyah ?', 'text', '', 'UNREAD', 'AP_001'),
(72, 'lSSOT_QUW7KG2pMrAAAf', 'UaHquZ-m6c1A-wXpAAAx', '2023-07-05 17:08:55', 'Brunofernandos@gmail.com', 'admin', 'Halo', 'text', '', 'READ', 'AP_001'),
(73, 'UaHquZ-m6c1A-wXpAAAx', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-05 17:09:20', 'admin', 'Brunofernandos@gmail.com', 'halo', 'text', '', 'UNREAD', 'AP_001'),
(74, '16x3aceAc_W3fMXIAAAT', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-05 17:09:33', 'admin', 'fauzik002@gmail.com', 'info', 'text', '', 'UNREAD', 'AP_001'),
(75, 'lSSOT_QUW7KG2pMrAAAf', '16x3aceAc_W3fMXIAAAT', '2023-07-05 18:33:34', 'fauzik002@gmail.com', 'admin', 'haloo', 'text', '', 'READ', 'AP_001'),
(76, '16x3aceAc_W3fMXIAAAT', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-05 18:33:44', 'admin', 'fauzik002@gmail.com', 'halo', 'text', '', 'UNREAD', 'AP_001'),
(77, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-05 18:38:07', 'fauzik002@gmail.com', 'admin', 'Halo kak\n', 'text', '', 'READ', 'CHT_004'),
(78, 'lSSOT_QUW7KG2pMrAAAf', '16x3aceAc_W3fMXIAAAT', '2023-07-05 18:38:32', 'fauzik002@gmail.com', 'admin', 'halo kakkk\n', 'text', '', 'READ', 'AP_001'),
(79, '16x3aceAc_W3fMXIAAAT', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-05 18:38:41', 'admin', 'fauzik002@gmail.com', 'iya kak?', 'text', '', 'UNREAD', 'AP_001'),
(80, '16x3aceAc_W3fMXIAAAT', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-05 18:44:23', 'admin', 'fauzik002@gmail.com', 'G\n', 'text', '', 'UNREAD', 'AP_001'),
(81, 'lSSOT_QUW7KG2pMrAAAf', '-QpCaDtqoL_KV8CaAAAD', '2023-07-06 17:06:43', 'jajang@gmail.com', 'admin', 'Halooooo', 'text', '', 'READ', 'AP_001'),
(82, '-QpCaDtqoL_KV8CaAAAD', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-06 17:06:51', 'admin', 'jajang@gmail.com', 'Haloo', 'text', '', 'UNREAD', 'AP_001'),
(83, 'lSSOT_QUW7KG2pMrAAAf', '-QpCaDtqoL_KV8CaAAAD', '2023-07-06 17:07:53', 'jajang@gmail.com', 'admin', 'https://pertalis.com/chat_apps/Admin/api/image/2023-07-07 12:07:53_jajang@gmail.com.jpeg', 'image', 'pricelist', 'READ', 'AP_001'),
(84, '-QpCaDtqoL_KV8CaAAAD', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-06 17:08:16', 'admin', 'jajang@gmail.com', 'okeyy', 'text', '', 'UNREAD', 'AP_001'),
(85, 'lSSOT_QUW7KG2pMrAAAf', '16x3aceAc_W3fMXIAAAT', '2023-07-07 18:28:44', 'fauzik002@gmail.com', 'admin', 'tes\n', 'text', '', 'READ', 'AP_001'),
(86, '16x3aceAc_W3fMXIAAAT', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-07 18:29:02', 'admin', 'fauzik002@gmail.com', 'tos', 'text', '', 'UNREAD', 'AP_001'),
(87, '3t5bdxKtJfjZLxe9AAAB', 'PdlgRLGbNl4otGx-AAA2', '2023-07-08 18:26:05', 'easy@g.com', 'admin', 'Halo\n', 'text', '', 'READ', 'CHT_004'),
(88, 'lSSOT_QUW7KG2pMrAAAf', 'NQLn4EHCMfmMbrPJAAAH', '2023-07-08 19:28:54', 'fauzik002@gmail.com', 'admin', 'https://pertalis.com/chat_apps/Admin/api/image/2023-07-09 02:28:54_fauzik002@gmail.com.png', 'image', 'Tessss', 'READ', 'AP_001'),
(89, 'lSSOT_QUW7KG2pMrAAAf', '16x3aceAc_W3fMXIAAAT', '2023-07-08 19:34:52', 'fauzik002@gmail.com', 'admin', 'https://pertalis.com/chat_apps/Admin/api/image/2023-07-09 02:34:52_fauzik002@gmail.com.png', 'image', 'RES', 'READ', 'AP_001'),
(90, 'lSSOT_QUW7KG2pMrAAAf', 'eLT2vp7_7_kAXw4aAAAL', '2023-07-08 19:40:11', 'kekeiiii@gmail.com', 'admin', 'Haloooo', 'text', '', 'READ', 'AP_001'),
(91, '3t5bdxKtJfjZLxe9AAAB', 'ZuPRCzlMTXAWU3RbAAAJ', '2023-07-08 19:40:22', 'lohhhh@gmail.com', 'admin', 'Hai ADMINNNN', 'text', '', 'READ', 'CHT_004'),
(92, 'eLT2vp7_7_kAXw4aAAAL', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-08 19:40:39', 'admin', 'kekeiiii@gmail.com', 'hALOO', 'text', '', 'UNREAD', 'AP_001'),
(93, 'ZuPRCzlMTXAWU3RbAAAJ', '3t5bdxKtJfjZLxe9AAAB', '2023-07-08 19:40:46', 'admin', 'lohhhh@gmail.com', 'hAII', 'text', '', 'UNREAD', 'CHT_004'),
(94, '3t5bdxKtJfjZLxe9AAAB', 'ZuPRCzlMTXAWU3RbAAAJ', '2023-07-08 19:49:09', 'lohhhh@gmail.com', 'admin', 'https://pertalis.com/chat_apps/Admin/api/image/2023-07-09 02:49:09_lohhhh@gmail.com.png', 'image', 'tess', 'READ', 'CHT_004'),
(95, 'lSSOT_QUW7KG2pMrAAAf', 'eLT2vp7_7_kAXw4aAAAL', '2023-07-08 19:49:23', 'kekeiiii@gmail.com', 'admin', 'https://pertalis.com/chat_apps/Admin/api/image/2023-07-09 02:49:23_kekeiiii@gmail.com.png', 'image', '', 'READ', 'AP_001'),
(96, 'eLT2vp7_7_kAXw4aAAAL', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-08 19:49:42', 'admin', 'kekeiiii@gmail.com', 'https://pertalis.com/chat_apps/Admin/api/image/2023-07-09 02:49:42_admin.jpeg', 'image', '', 'UNREAD', 'AP_001'),
(97, 'ZuPRCzlMTXAWU3RbAAAJ', '3t5bdxKtJfjZLxe9AAAB', '2023-07-08 19:50:01', 'admin', 'lohhhh@gmail.com', 'https://pertalis.com/chat_apps/Admin/api/image/2023-07-09 02:50:01_admin.png', 'image', '', 'UNREAD', 'CHT_004'),
(98, 'lSSOT_QUW7KG2pMrAAAf', '16x3aceAc_W3fMXIAAAT', '2023-07-08 21:25:32', 'fauzik002@gmail.com', 'admin', 'Haloo', 'text', '', 'READ', 'AP_001'),
(99, 'lSSOT_QUW7KG2pMrAAAf', '16x3aceAc_W3fMXIAAAT', '2023-07-08 21:29:08', 'fauzik002@gmail.com', 'admin', 'Haloooo', 'text', '', 'READ', 'AP_001'),
(100, '16x3aceAc_W3fMXIAAAT', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-08 21:29:19', 'admin', 'fauzik002@gmail.com', 'hloo', 'text', '', 'UNREAD', 'AP_001'),
(101, 'lSSOT_QUW7KG2pMrAAAf', '16x3aceAc_W3fMXIAAAT', '2023-07-08 21:32:47', 'fauzik002@gmail.com', 'admin', 'Hii', 'text', '', 'READ', 'AP_001'),
(102, '16x3aceAc_W3fMXIAAAT', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-08 21:33:05', 'admin', 'fauzik002@gmail.com', '?', 'text', '', 'UNREAD', 'AP_001'),
(103, 'lSSOT_QUW7KG2pMrAAAf', '16x3aceAc_W3fMXIAAAT', '2023-07-08 21:34:31', 'fauzik002@gmail.com', 'admin', 'https://pertalis.com/chat_apps/Admin/api/image/2023-07-09 04:34:31_fauzik002@gmail.com.jpeg', 'image', 'Tesss', 'READ', 'AP_001'),
(104, '16x3aceAc_W3fMXIAAAT', 'lSSOT_QUW7KG2pMrAAAf', '2023-07-08 21:34:51', 'admin', 'fauzik002@gmail.com', 'https://pertalis.com/chat_apps/Admin/api/image/2023-07-09 04:34:51_admin.png', 'image', '', 'UNREAD', 'AP_001'),
(105, 'lSSOT_QUW7KG2pMrAAAf', '0ry755gevwkfgmpsAAAd', '2023-07-08 21:35:56', 'Lamaakeraaa@gmail.com', 'admin', 'Haloo ', 'text', '', 'READ', 'AP_001'),
(106, '3t5bdxKtJfjZLxe9AAAB', 'SWGLQR6UM0dcedOnAAAD', '2023-07-10 15:44:43', 'yudi@rrr.com', 'admin', 'Haloo', 'text', '', 'READ', 'CHT_004'),
(107, 'SWGLQR6UM0dcedOnAAAD', '3t5bdxKtJfjZLxe9AAAB', '2023-07-10 15:44:49', 'admin', 'yudi@rrr.com', 'Halo', 'text', '', 'UNREAD', 'CHT_004'),
(108, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-12 15:14:00', 'newtrial@gmail.com', 'admin', 'halooo\n', 'text', '', 'READ', 'CHT_004'),
(109, 'm9uNtg1vUH6L20mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-12 15:14:06', 'admin', 'newtrial@gmail.com', 'haloooo', 'text', '', 'UNREAD', 'CHT_004'),
(110, 'm9uNtg1vUH6L20mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-12 16:48:53', 'admin', 'newtrial@gmail.com', 'HALO', 'text', '', 'UNREAD', 'CHT_004'),
(111, 'm9uNtg1vUH6L20mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-12 16:49:05', 'admin', 'newtrial@gmail.com', 'https://dummytech.id/chat_apps/Admin/api/image/2023-07-12 11:49:05_admin.jpeg', 'image', '', 'UNREAD', 'CHT_004'),
(112, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-12 16:51:51', 'newtrial@gmail.com', 'admin', 'res', 'text', '', 'READ', 'CHT_004'),
(113, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-12 16:52:13', 'newtrial@gmail.com', 'admin', 'https://dummytech.id/chat_apps/Admin/api/image/2023-07-12 11:52:13_newtrial@gmail.com.png', 'image', 'tess', 'READ', 'CHT_004'),
(114, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-13 02:38:03', 'newtrial@gmail.com', 'admin', 'halo\n', 'text', '', 'READ', 'CHT_004'),
(115, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-13 02:41:03', 'newtrial@gmail.com', 'admin', 'ress', 'text', '', 'READ', 'CHT_004'),
(116, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-13 02:42:43', 'newtrial@gmail.com', 'admin', 'reasasdsadas', 'text', '', 'READ', 'CHT_004'),
(117, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-13 02:46:35', 'newtrial@gmail.com', 'admin', 'asds', 'text', '', 'READ', 'CHT_004'),
(118, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-13 02:49:59', 'newtrial@gmail.com', 'admin', 'asd', 'text', '', 'READ', 'CHT_004'),
(119, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-13 03:06:57', 'newtrial@gmail.com', 'admin', 'halo\n', 'text', '', 'READ', 'CHT_004'),
(120, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-13 03:09:08', 'newtrial@gmail.com', 'admin', 'asdasd', 'text', '', 'READ', 'CHT_004'),
(121, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-13 03:09:31', 'newtrial@gmail.com', 'admin', 'asdasdasd', 'text', '', 'READ', 'CHT_004'),
(122, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-13 03:09:36', 'newtrial@gmail.com', 'admin', 'asdsad', 'text', '', 'READ', 'CHT_004'),
(123, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-13 03:15:24', 'newtrial@gmail.com', 'admin', 'sa', 'text', '', 'READ', 'CHT_004'),
(124, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-13 03:32:53', 'newtrial@gmail.com', 'admin', 'haii', 'text', '', 'READ', 'CHT_004'),
(125, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-13 04:04:22', 'newtrial@gmail.com', 'admin', 'halo', 'text', '', 'READ', 'CHT_004'),
(126, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-13 04:07:55', 'newtrial@gmail.com', 'admin', 'Haloooo', 'text', '', 'READ', 'CHT_004'),
(127, 'm9uNtg1vUH6L20mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-13 04:08:35', 'admin', 'newtrial@gmail.com', 'Haloo', 'text', '', 'UNREAD', 'CHT_004'),
(128, '3t5bdxKtJfjZLxe9AAAB', 'm9uNtg1vUH6L20mTAAAF', '2023-07-13 04:09:38', 'newtrial@gmail.com', 'admin', 'https://dummytech.id/chat_apps/Admin/api/image/2023-07-13 11:09:38_newtrial@gmail.com.jpeg', 'image', 'ini daftar nya ya ', 'READ', 'CHT_004'),
(129, '3t5bdxKtJfjZLxe9AAAB', 'XEv5zelRnW0eZivVAAAx', '2023-07-15 02:44:17', 'simail@mail.com', 'admin', 'haloo ', 'text', '', 'READ', 'CHT_004'),
(130, 'XEv5zelRnW0eZivVAAAx', '3t5bdxKtJfjZLxe9AAAB', '2023-07-15 02:44:49', 'admin', 'simail@mail.com', 'halo', 'text', '', 'UNREAD', 'CHT_004'),
(131, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-07-21 11:21:42', 'fauzik002@gmail.com', 'admin', 'halo', 'text', '', 'READ', 'CHT_004'),
(132, 'YIJE1MDMkJFOG0mTAAAF', '3t5bdxKtJfjZLxe9AAAB', '2023-07-21 11:23:35', 'admin', 'fauzik002@gmail.com', 'tes', 'text', '', 'UNREAD', 'CHT_004'),
(133, '3t5bdxKtJfjZLxe9AAAB', 'NiCJ8DPDyGr4EDkeAAAD', '2023-07-23 05:20:58', 'rafly.gg@com', 'admin', 'Price listrik harga hotel', 'text', '', 'READ', 'CHT_004'),
(134, 'NiCJ8DPDyGr4EDkeAAAD', '3t5bdxKtJfjZLxe9AAAB', '2023-07-23 05:22:47', 'admin', 'rafly.gg@com', 'Tes', 'text', '', 'UNREAD', 'CHT_004'),
(135, 'quNgp-Qu6uzUvRx4AAAE', 'yOY6sMp9dgRFggaWAAAF', '2023-07-23 07:39:14', 'fauzik002@gmail.com', 'admin', 'halooooo', 'text', '', 'READ', 'CHT_005'),
(136, 'yOY6sMp9dgRFggaWAAAF', 'quNgp-Qu6uzUvRx4AAAE', '2023-07-23 07:39:27', 'admin', 'fauzik002@gmail.com', 'halooo', 'text', '', 'UNREAD', 'CHT_005'),
(137, '3t5bdxKtJfjZLxe9AAAB', 'SCXFAqqxscsQNt-OAAAL', '2023-08-15 07:49:14', 'aan.angwar@gmail.com', 'admin', 'hallo\n', 'text', '', 'READ', 'CHT_004'),
(138, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-08-16 09:15:21', 'fauzik002@gmail.com', 'admin', 'test koneksi whatsapp', 'text', '', 'READ', 'CHT_004'),
(139, '3t5bdxKtJfjZLxe9AAAB', 'uXVFF-7SbNA8BT9OAAAB', '2023-09-26 03:45:55', 'william170992@yahoo.com', 'admin', 'saya ingin menanyakan tarif permalam', 'text', '', 'READ', 'CHT_004'),
(140, 'uXVFF-7SbNA8BT9OAAAB', '3t5bdxKtJfjZLxe9AAAB', '2023-09-26 03:53:28', 'admin', 'william170992@yahoo.com', 'Selamat siang', 'text', '', 'UNREAD', 'CHT_004'),
(141, 'uXVFF-7SbNA8BT9OAAAB', '3t5bdxKtJfjZLxe9AAAB', '2023-09-26 03:53:50', 'admin', 'william170992@yahoo.com', 'rencana mau tgl berapa dan ada nomor hp whatsapp yg aktif?', 'text', '', 'UNREAD', 'CHT_004'),
(142, '3t5bdxKtJfjZLxe9AAAB', 'yKJ-KhjV74NvNz_FAAAD', '2023-09-26 11:05:30', 'rahmad.labsky@gmail.com', 'admin', '', 'text', '', 'READ', 'CHT_004'),
(143, '3t5bdxKtJfjZLxe9AAAB', 'yKJ-KhjV74NvNz_FAAAD', '2023-09-26 11:05:39', 'rahmad.labsky@gmail.com', 'admin', 'malam\n', 'text', '', 'READ', 'CHT_004'),
(144, '3t5bdxKtJfjZLxe9AAAB', 'vZV5X84W4Iorxl9sAAAF', '2023-10-08 13:43:11', 'lokapita.notaris@gmail.com', 'admin', 'Halo ka', 'text', '', 'READ', 'CHT_004'),
(145, '3t5bdxKtJfjZLxe9AAAB', 'vZV5X84W4Iorxl9sAAAF', '2023-10-08 13:43:31', 'lokapita.notaris@gmail.com', 'admin', 'Mau tanya rate ciputih beach resort untuk group 25-30 org', 'text', '', 'READ', 'CHT_004'),
(146, '3t5bdxKtJfjZLxe9AAAB', 'vZV5X84W4Iorxl9sAAAF', '2023-10-08 13:43:32', 'lokapita.notaris@gmail.com', 'admin', '', 'text', '', 'READ', 'CHT_004'),
(147, '3t5bdxKtJfjZLxe9AAAB', 'xxzZL-I8XmTuTy2DAAAB', '2023-10-20 00:40:21', 'herdianarina83@gmail.com', 'admin', 'Maaf bisa minta roomrate nya?', 'text', '', 'READ', 'CHT_004'),
(148, 'xxzZL-I8XmTuTy2DAAAB', '3t5bdxKtJfjZLxe9AAAB', '2023-10-20 01:42:12', 'admin', 'herdianarina83@gmail.com', 'selamat pagi', 'text', '', 'UNREAD', 'CHT_004'),
(149, 'xxzZL-I8XmTuTy2DAAAB', '3t5bdxKtJfjZLxe9AAAB', '2023-10-20 01:42:31', 'admin', 'herdianarina83@gmail.com', 'ada nompr wa yg bisa di hubungi?', 'text', '', 'UNREAD', 'CHT_004'),
(150, 'xxzZL-I8XmTuTy2DAAAB', '3t5bdxKtJfjZLxe9AAAB', '2023-10-20 01:42:40', 'admin', 'herdianarina83@gmail.com', 'nomor', 'text', '', 'UNREAD', 'CHT_004'),
(151, '3t5bdxKtJfjZLxe9AAAB', '6_GeJ--Fehwp0MJdAAAB', '2023-11-13 04:38:55', 'Leesukuan@gmail.com', 'admin', 'Hallo', 'text', '', 'READ', 'CHT_004'),
(152, '3t5bdxKtJfjZLxe9AAAB', '6_GeJ--Fehwp0MJdAAAB', '2023-11-13 04:39:14', 'Leesukuan@gmail.com', 'admin', 'Untuk booking tgl 17 chekout tgl 19 ', 'text', '', 'READ', 'CHT_004'),
(153, '6_GeJ--Fehwp0MJdAAAB', '3t5bdxKtJfjZLxe9AAAB', '2023-11-13 04:43:52', 'admin', 'Leesukuan@gmail.com', 'Hallo ka', 'text', '', 'UNREAD', 'CHT_004'),
(154, '6_GeJ--Fehwp0MJdAAAB', '3t5bdxKtJfjZLxe9AAAB', '2023-11-13 04:44:01', 'admin', 'Leesukuan@gmail.com', '\nada nomor hp wa yg bisa di hubungi ka?', 'text', '', 'UNREAD', 'CHT_004'),
(155, '6_GeJ--Fehwp0MJdAAAB', '3t5bdxKtJfjZLxe9AAAB', '2023-11-13 04:44:18', 'admin', 'Leesukuan@gmail.com', '\nnanti team kami akan menginfokan detailnya ya ka', 'text', '', 'UNREAD', 'CHT_004'),
(156, '3t5bdxKtJfjZLxe9AAAB', 'YIJE1MDMkJFOG0mTAAAF', '2023-11-16 09:16:05', 'fauzik002@gmail.com', 'admin', 'Halo', 'text', '', 'READ', 'CHT_004'),
(157, '3t5bdxKtJfjZLxe9AAAB', '_bct_WouhiaeyjuTAAAd', '2023-12-16 04:19:07', 'teguhtachjudi@gmail.com', 'admin', 'Sy mau booking type sea view', 'text', '', 'READ', 'CHT_004'),
(158, '3t5bdxKtJfjZLxe9AAAB', '_bct_WouhiaeyjuTAAAd', '2023-12-16 04:19:22', 'teguhtachjudi@gmail.com', 'admin', 'Utk tgl 06 januari 2024', 'text', '', 'READ', 'CHT_004'),
(159, '3t5bdxKtJfjZLxe9AAAB', 'ywm1LKVZoLeIPpdGAAAD', '2024-01-08 02:24:10', 'ida_syadina@yahoo.com', 'admin', 'Iya', 'text', '', 'READ', 'CHT_004'),
(160, '3t5bdxKtJfjZLxe9AAAB', 'ywm1LKVZoLeIPpdGAAAD', '2024-01-08 02:24:30', 'ida_syadina@yahoo.com', 'admin', 'Mau tanya harga per malam buat wrekend berapa ya?', 'text', '', 'READ', 'CHT_004'),
(161, '3t5bdxKtJfjZLxe9AAAB', 'ywm1LKVZoLeIPpdGAAAD', '2024-01-08 02:24:32', 'ida_syadina@yahoo.com', 'admin', '', 'text', '', 'READ', 'CHT_004'),
(162, '3t5bdxKtJfjZLxe9AAAB', 'ywm1LKVZoLeIPpdGAAAD', '2024-01-08 02:26:10', 'ida_syadina@yahoo.com', 'admin', '', 'text', '', 'READ', 'CHT_004'),
(163, '3t5bdxKtJfjZLxe9AAAB', 'y0g2w5uaosrqsXFFAAAD', '2024-02-04 17:49:49', 'fauzayyy@gmail.com', 'admin', 'halo\n', 'text', '', 'READ', 'CHT_004'),
(164, 'y0g2w5uaosrqsXFFAAAD', '3t5bdxKtJfjZLxe9AAAB', '2024-02-04 17:50:20', 'admin', 'fauzayyy@gmail.com', 'halo', 'text', '', 'UNREAD', 'CHT_004'),
(165, '3t5bdxKtJfjZLxe9AAAB', 'NiCJ8DPDyGr4EDkeAAAD', '2024-02-06 09:16:18', 'rafly.gg@com', 'admin', '', 'text', '', 'UNREAD', 'CHT_004'),
(166, 'lSSOT_QUW7KG2pMrAAAf', '16x3aceAc_W3fMXIAAAT', '2024-02-24 08:00:28', 'fauzik002@gmail.com', 'admin', 'halo', 'text', '', 'READ', 'AP_001'),
(167, 'lSSOT_QUW7KG2pMrAAAf', '16x3aceAc_W3fMXIAAAT', '2024-02-24 08:35:17', 'fauzik002@gmail.com', 'admin', 'halo', 'text', '', 'UNREAD', 'AP_001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan_chat`
--

CREATE TABLE `layanan_chat` (
  `id` int(12) NOT NULL,
  `nama_layanan` varchar(100) NOT NULL,
  `isi_chat_layanan` text NOT NULL,
  `rooms` varchar(20) NOT NULL,
  `datecreated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `layanan_chat`
--

INSERT INTO `layanan_chat` (`id`, `nama_layanan`, `isi_chat_layanan`, `rooms`, `datecreated`) VALUES
(1, 'Cara Download Pertama Mobile &#10067;', 'https://pertamalab.com/new_web/download.php', 'AP_001', '2023-07-01 15:43:39'),
(2, 'Daftar Layanan Pertamalab &#127777;', 'https://pertamalab.com', 'AP_001', '2023-07-01 15:43:39'),
(3, 'Jadwal Pertama Lab &#9200;', 'https://pertamalab.com', 'AP_001', '2023-07-01 15:43:39'),
(4, 'Kontak Pertama Lab &#128231;', 'https://pertamalab.com', 'AP_001', '2023-07-01 15:43:39'),
(5, 'Dokumentasi API &#10067;', 'https://sofwareshop.com', 'CHT_005', '2023-07-03 17:13:32'),
(6, 'Aplikasi Custom &#127775;', 'https://sofwareshop.com', 'CHT_005', '2023-07-03 17:15:11'),
(7, 'Konfigurasi VPN  &#128170;', 'https://sofwareshop.com', 'CHT_005', '2023-07-03 17:16:11'),
(8, 'Booking Hotel ?', 'https://ciputihbeach.com', 'CHT_004', '2023-07-05 01:13:29'),
(9, 'Price List Pemeriksaan &#128179;', 'https://pertamlab.com', 'AP_001', '2023-07-09 04:17:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_user`
--

CREATE TABLE `menu_user` (
  `menu_id` int(11) NOT NULL,
  `initial_menu` varchar(50) DEFAULT NULL,
  `menu_category` enum('HEADER','NAV') DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `url_menu` text NOT NULL,
  `class_icon` text NOT NULL,
  `class_submenu` varchar(55) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_name` varchar(20) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_name` varchar(20) DEFAULT NULL,
  `status` enum('ACTIVE','NON-ACTIVE') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `menu_user`
--

INSERT INTO `menu_user` (`menu_id`, `initial_menu`, `menu_category`, `menu_name`, `url_menu`, `class_icon`, `class_submenu`, `created_date`, `created_name`, `update_date`, `update_name`, `status`) VALUES
(1, 'dashboard', 'NAV', 'Dashboard', '', 'fa fa-bar-chart', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(22, 'dokumentasi', 'NAV', 'Dokumentasi', '', 'https://cdn-icons-png.flaticon.com/512/967/967579.png', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(5, 'purchasing', 'NAV', 'Weeb Hook', '', 'fa fa-cart-plus', '', NULL, NULL, NULL, NULL, 'NON-ACTIVE'),
(4, 'koneksi', 'NAV', 'Koneksi', '', 'https://cdn-icons-png.flaticon.com/512/4121/4121811.png', '', NULL, NULL, NULL, NULL, 'NON-ACTIVE'),
(8, 'user_mgt', 'NAV', 'User Management', 'users/user_mgt_all.php', 'fa fa-user', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(3, 'send', 'NAV', 'Kirim Pesan', '', 'https://cdn-icons-png.flaticon.com/512/719/719674.png', '', NULL, NULL, NULL, NULL, 'NON-ACTIVE'),
(2, 'contact', 'NAV', 'Contact', 'Page/Contact/Contact.php', 'https://cdn-icons-png.flaticon.com/512/1250/1250592.png', '', NULL, NULL, NULL, NULL, 'NON-ACTIVE'),
(10, 'LiveChat', 'NAV', 'Setting Chat', '', 'https://cdn-icons-png.flaticon.com/128/8914/8914438.png', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(9, 'DashboardChat', 'NAV', 'Dashboard Chat', 'Page/LiveChat/Dashboard.php', 'https://cdn-icons-png.flaticon.com/128/2543/2543412.png', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(12, 'historychat', 'NAV', 'History Chat', '', 'https://cdn-icons-png.flaticon.com/128/9364/9364037.png', '', NULL, NULL, NULL, NULL, 'ACTIVE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` int(12) NOT NULL,
  `rooms` varchar(30) NOT NULL,
  `nomor` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` enum('ACTIVE','NON') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `rooms`, `nomor`, `nama`, `status`) VALUES
(1, 'CHT_004', '089510353409', 'Fauzi', 'ACTIVE'),
(2, 'CHT_004', '081285036567', 'Aan', 'ACTIVE'),
(3, 'AP_001', '089510353409', 'Fauzi', 'ACTIVE'),
(4, 'AP_001', '083866886669', 'dimas', 'ACTIVE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rooms`
--

CREATE TABLE `rooms` (
  `id` int(12) NOT NULL,
  `id_rooms` text NOT NULL,
  `keyapi` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `rooms`
--

INSERT INTO `rooms` (`id`, `id_rooms`, `keyapi`, `date`) VALUES
(1, 'SN_001', 'ac3e6a5ec236bdc3941e37c8b2e07e78', '2023-06-23 00:00:00'),
(2, 'SW_001', 'e2afd6973984da783f959f2bf026070f', '2023-06-23 00:00:00'),
(3, 'AP_001', '95bbea7f397acf5b4253c6d8345db4d0', '2023-06-23 00:00:00'),
(4, 'CHT_004', '123456', '2023-07-03 10:55:01'),
(5, 'CHT_005', '123456', '2023-07-03 10:55:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_menu_user`
--

CREATE TABLE `sub_menu_user` (
  `sub_menu_id` int(11) NOT NULL,
  `urutan` int(15) NOT NULL,
  `initial_sub_menu` varchar(50) DEFAULT NULL,
  `sub_menu_name` varchar(50) DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `url_main` varchar(55) NOT NULL,
  `class_icon` varchar(55) NOT NULL,
  `class_submenu` varchar(55) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_name` varchar(20) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_name` varchar(20) DEFAULT NULL,
  `status` enum('ACTIVE','NON-ACTIVE') NOT NULL DEFAULT 'ACTIVE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `sub_menu_user`
--

INSERT INTO `sub_menu_user` (`sub_menu_id`, `urutan`, `initial_sub_menu`, `sub_menu_name`, `menu_name`, `url_main`, `class_icon`, `class_submenu`, `created_date`, `created_name`, `update_date`, `update_name`, `status`) VALUES
(49, 2, 'layanan_config', 'Config Layanan', 'LiveChat', 'Page/LiveChat/ListLayanan.php', 'fa fa-bars', '', '2021-11-25 18:47:11', 'admin', '2021-11-25 18:47:11', 'admin', 'ACTIVE'),
(48, 2, 'download_chat', 'Download Riwayat Chat', 'historychat', 'Page/LiveChat/RiwayatChat.php', 'fa fa-bars', '', '2021-11-25 18:47:11', 'admin', '2021-11-25 18:47:11', 'admin', 'ACTIVE'),
(47, 1, 'chat_dashboard', 'Config Chat', 'LiveChat', 'Page/LiveChat/Config.php', 'fa fa-bars', '', '2021-11-25 18:47:11', 'admin', '2021-11-25 18:47:11', 'admin', 'ACTIVE'),
(46, 4, 'send_groups', 'Send Groups', 'send', 'Page/Send/SendGroups.php', 'fa fa-bars', '', '2021-11-25 18:47:11', 'admin', '2021-11-25 18:47:11', 'admin', 'ACTIVE'),
(45, 3, 'send_blast', 'Send Blast', 'send', 'Page/Send/SendBlast.php', 'fa fa-bars', '', '2021-11-25 18:47:11', 'admin', '2021-11-25 18:47:11', 'admin', 'ACTIVE'),
(42, 1, 'dokumentasi_api', 'API', 'dokumentasi', 'Page/Dokumentasi/DokumentasiAPI.php', 'fa fa-bars', '', '2021-11-25 18:47:11', 'admin', '2021-11-25 18:47:11', 'admin', 'ACTIVE'),
(43, 1, 'send_message', 'Send Message', 'send', 'Page/Send/SendMessage.php', 'fa fa-bars', '', '2021-11-25 18:47:11', 'admin', '2021-11-25 18:47:11', 'admin', 'ACTIVE'),
(44, 2, 'send_media', 'Send Media', 'send', 'Page/Send/SendMedia.php', 'fa fa-bars', '', '2021-11-25 18:47:11', 'admin', '2021-11-25 18:47:11', 'admin', 'ACTIVE'),
(41, 1, 'koneksi_device', 'Koneksi Device', 'koneksi', 'Page/Koneksi/KoneksiDevice.php', 'fa fa-bars', '', '2021-11-25 18:47:11', 'admin', '2021-11-25 18:47:11', 'admin', 'ACTIVE'),
(50, 3, 'notifi_config', 'Config Notifikasi', 'LiveChat', 'Page/LiveChat/ConfiigNotifikasi.php', 'fa fa-bars', '', '2021-11-25 18:47:11', 'admin', '2021-11-25 18:47:11', 'admin', 'ACTIVE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_menu_user2`
--

CREATE TABLE `sub_menu_user2` (
  `sub_menu_id` int(11) NOT NULL,
  `urutan` int(15) NOT NULL,
  `initial_sub_menu` varchar(50) DEFAULT NULL,
  `sub_menu_name` varchar(50) DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `url_main` varchar(55) NOT NULL,
  `class_icon` varchar(55) NOT NULL,
  `class_submenu` varchar(55) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_name` varchar(20) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_name` varchar(20) DEFAULT NULL,
  `status` enum('ACTIVE','NON-ACTIVE') NOT NULL DEFAULT 'ACTIVE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `sub_menu_user2`
--

INSERT INTO `sub_menu_user2` (`sub_menu_id`, `urutan`, `initial_sub_menu`, `sub_menu_name`, `menu_name`, `url_main`, `class_icon`, `class_submenu`, `created_date`, `created_name`, `update_date`, `update_name`, `status`) VALUES
(1, 1, 'personalia_datakaryawan', 'Data Karyawan', 'sdm_datakaryawan', 'sdm/personalia/sdm_datakaryawan.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(2, 2, 'personalia_inventory', 'Data Inventory', 'sdm_datakaryawan', 'sdm/sdm_datainventory.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'NON-ACTIVE'),
(3, 1, 'organisasi_bagian', 'Master Bagian', 'sdm_organisasi', 'sdm/organisasi/organisasi_bagian.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(4, 2, 'organisasi_jabatan', 'Master Jabatan', 'sdm_organisasi', 'sdm/organisasi/organisasi_jabatan.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(5, 1, 'rekrurt_datapelamar', 'Data Pelamar', 'sdm_rekrutmen', 'sdm/rekrutment/sdm_datapelamar.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(6, 2, 'rekrurt_seleksipelamar', 'Input Wawancara', 'sdm_rekrutmen', 'sdm/rekrutment/sdm_hasilwawancara.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(7, 1, 'pengajuan_izin', 'Izin', 'sdm_pengajuan', 'sdm/pengajuan/pengajuan_izin.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(8, 2, 'pengajuan_cuti', 'Cuti', 'sdm_pengajuan', 'sdm/pengajuan/pengajuan_cuti.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(9, 3, 'pengajuan_pengajuan', 'Pengajuan', 'sdm_pengajuan', 'sdm/sdm_datainventory.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'NON-ACTIVE'),
(10, 1, 'kehadiran_absensi', 'Data Absensi', 'dash_kehadiran', 'sdm/absensi/data_absen.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(11, 2, 'kehadiran_ijin', 'Data Izin', 'dash_kehadiran', 'sdm/sdm_datainventory.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'NON-ACTIVE'),
(12, 3, 'kehadiran_cuti', 'Data Cuti', 'dash_kehadiran', 'sdm/sdm_datainventory.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'NON-ACTIVE'),
(13, 4, 'kehadiran_pengajuan', 'Data Pengajuan', 'dash_kehadiran', 'sdm/sdm_datainventory.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'NON-ACTIVE'),
(14, 3, 'organisasi_gaji', 'Master Gaji', 'sdm_organisasi', 'sdm/organisasi/organisasi_gaji.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(15, 4, 'organisasi_status', 'Master Status Pegawai', 'sdm_organisasi', 'sdm/organisasi/organisasi_status.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(16, 3, 'personalia_teguran', 'Surat Teguran', 'sdm_datakaryawan', 'sdm/personalia/personalia_teguran.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(17, 6, 'personalia_spk_tetap', 'SK Tetap', 'sdm_rekrutmen', 'sdm/personalia/personalia_spk_tetap.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(18, 5, 'personalia_spk_kontrak', 'SPK Kontrak', 'sdm_rekrutmen', 'sdm/personalia/personalia_spk_kontrak.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(19, 4, 'personalia_spk_magang', 'SPK Magang', 'sdm_rekrutmen', 'sdm/personalia/personalia_spk_magang.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(20, 3, 'rekrurt_psikotes', 'Input Psikotes', 'sdm_rekrutmen', 'sdm/rekrutment/sdm_hasilpsikotes.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(21, 3, 'personalia_permintaan_tenaga', 'Permintaan Tenaga Kerja', 'sdm_datakaryawan', 'sdm/personalia/sdm_permintaan_tenaga.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(22, 4, 'personalia_teguran', 'Form Teguran', 'sdm_datakaryawan', 'sdm/personalia/sdm_teguran.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'NON-ACTIVE'),
(23, 4, 'personalia_izin_telat', 'Izin Tidak Masuk', 'sdm_pengajuan', 'sdm/personalia/personalia_izin_telat.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'NON-ACTIVE'),
(24, 5, 'rekrurt_paklaring', 'Input Paklaring', 'sdm_datakaryawan', 'sdm/rekrutment/sdm_input_paklaring.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(25, 4, 'pengajuan_lembur', 'Pengajuan Lembur', 'sdm_pengajuan', 'sdm/pengajuan/pengajuan_lembur.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(26, 4, 'pengajuan_telat_masuk', 'Izin terlambat Masuk / Pulang Lebih awal', 'sdm_pengajuan', 'sdm/pengajuan/pengajuan_telat.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(27, 1, 'approved_izin', 'Approved Izin', 'sdm_approved', 'sdm/approved/approved_izin.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(28, 2, 'approved_cuti', 'Approved Cuti', 'sdm_approved', 'sdm/approved/approved_cuti.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(29, 3, 'approved_telat', 'Approved Telat', 'sdm_approved', 'sdm/approved/approved_telat.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(30, 4, 'approved_lembur', 'Approved Lembur', 'sdm_approved', 'sdm/approved/approved_lembur.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(31, 1, 'input_pr', 'Input PR', 'purchasing_po', 'purchasing/po/input_pr.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'NON-ACTIVE'),
(32, 2, 'report_pr', 'Report PR', 'purchasing_po', 'purchasing/po/report_pr.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'NON-ACTIVE'),
(33, 3, 'input_po', 'Input PO', 'purchasing_po', 'purchasing/po/input_po.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(34, 6, 'report_po', 'Report PO', 'purchasing_po', 'purchasing/po/report_po.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(35, 1, 'purchasing_po_stock', 'Stock Inventory', 'purchasing_gudang', 'purchasing/gudang/stock_inventory.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(36, 2, 'purchasing_po_movementstock', 'Movement Stock', 'purchasing_gudang', 'purchasing/gudang/movement_stock.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'NON-ACTIVE'),
(37, 1, 'purchasing_out', 'Input Out', 'purchasing_keluar', 'purchasing/out/purch_out.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(38, 1, 'purchasing_master_supplier', 'Input Supplier', 'purchasing_master', 'purchasing/master/data_supplier.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(39, 2, 'purchasing_master_produk', 'Input Product', 'purchasing_master', 'purchasing/master/data_inventory.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(40, 2, 'purchasing_out_report', 'Report Out', 'purchasing_keluar', 'purchasing/out/report_out.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(41, 3, 'mkt_report_kunjungan', 'Rekap Kunjungan', 'mkt_report', 'marketing/report/mkt_report_kunjungan.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(42, 5, 'mkt_report_performa_cabang', 'Performa Cabang', 'mkt_report', 'marketing/report/report_proforma_cabang.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(43, 2, 'mkt_report_omset_mingguan', 'Rekap Omset Divisi', 'mkt_report', 'marketing/report/report_omset_divisi.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(44, 1, 'mkt_report_bkp', 'Rekap BKP', 'mkt_report', 'marketing/report/report_omset_bkp.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(46, 1, 'mkt_master_dokter', 'Data Dokter', 'mkt_master', 'marketing/master/data_dokter.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(47, 2, 'mkt_master_perusahaan', 'Data Perusahaan', 'mkt_master', 'marketing/master/data_perusahaan.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(48, 1, 'mkt_target_sales', 'Target Marketing', 'mkt_target', 'marketing/target/mkt_target_sales.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(49, 2, 'mkt_target_bm', 'Target BM', 'mkt_target', 'marketing/target/mkt_target_bm.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(50, 7, 'mkt_report_pencapaian_mkt', 'Performa Maketing', 'mkt_report', 'marketing/report/report_performa_marketing.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(51, 5, 'organisasi_lantai', 'Master Ruangan', 'sdm_organisasi', 'sdm/organisasi/organisasi_lantai.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(52, 1, 'report_5r', 'Report 5R', 'sdm_5r', 'sdm/5r/report_5r.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(53, 2, 'report_lembur', 'Report Lembur', 'sdm_5r', 'sdm/report/report_lembur.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(54, 5, 'personalia_input_kegiatan', 'Input Kegiatan', 'sdm_datakaryawan', 'sdm/personalia/input_kegiatan.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(55, 3, 'report_kegiatan', 'Report Kegiatan Harian', 'sdm_5r', 'sdm/report/report_kegiatan.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(58, 8, 'mkt_rekap_rincian_omset_rekanan', 'Rincian Omset Rekanan', 'mkt_report', 'marketing/report/rekap_rincian_omset_rekanan.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(57, 6, 'mkt_report_pencapaian_mktall', 'Performa All Marketing', 'mkt_report', 'marketing/report/report_performa_marketing_all.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(60, 10, 'mkt_report_backbone', 'Backbone', 'mkt_report', 'marketing/report/report_backbone.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(59, 4, 'mkt_report_pencapaian_cabang', 'Performa By Category', 'mkt_report', 'marketing/report/report_pencapaian_cabang.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(61, 11, 'mkt_report_salesfunnel', 'Target Kunj Prioritas', 'mkt_report', 'marketing/report/report_salesfunnel.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(62, 12, 'mkt_report_mappingArea', 'Mapping Area', 'mkt_report', 'marketing/report/report_mappingarea.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(63, 4, 'report_upload', 'Upload Report', 'sdm_5r', 'sdm/report/report_upload.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(64, 1, 'report_rek_bank', 'Report Rekening Bank', 'report_finance', 'finance/report/report_rek_bank.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(65, 2, 'report_out_piutang_cus', 'Report Outstanding Piutang Customer', 'report_finance', 'finance/report/report_out_piutang_cus.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(66, 4, 'po_receive', 'PO Receive', 'purchasing_po', 'purchasing/po/po_receive.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(67, 5, 'pay_po', 'PO Payments', 'purchasing_po', 'purchasing/po/po_pembayaran.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(68, 1, 'wa_chat', 'Group WA', 'mkt_wa', 'marketing/whatsapp/send_wa.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(69, 2, 'wa_broadcast', 'Broadcast', 'mkt_wa', 'marketing/whatsapp/broadcast.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE'),
(70, 9, 'mkt_rekap_rincian_omset_perusahaan', 'Rincian Omset Perusahaan', 'mkt_report', 'marketing/report/rekap_rincian_omset_perusahaan.php', 'fa fa-file-o', '', NULL, NULL, NULL, NULL, 'ACTIVE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tampilan_icon`
--

CREATE TABLE `tampilan_icon` (
  `id` int(12) NOT NULL,
  `url_gambar` text NOT NULL,
  `posisi_widget` text NOT NULL,
  `icon_admin` text NOT NULL,
  `nama_widget` text NOT NULL,
  `warna_top` text NOT NULL,
  `rooms` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tampilan_icon`
--

INSERT INTO `tampilan_icon` (`id`, `url_gambar`, `posisi_widget`, `icon_admin`, `nama_widget`, `warna_top`, `rooms`) VALUES
(1, 'https://pertalis.com/chat_apps/Admin/api/config/AP_001tama chat.png', 'right', 'https://pertalis.com/chat_apps/Admin/api/config/AP_001sitama-bg.png', 'Si Tama', '#0783c9', 'AP_001'),
(16, 'https://pertalis.com/chat_apps/Admin/api/config/CHT_004admin.png', 'right', 'https://pertalis.com/chat_apps/Admin/api/config/CHT_004customer-service-agent.png', 'Support Center', '#eeff00', 'CHT_004'),
(17, 'https://pertalis.com/chat_apps/Admin/api/config/CHT_005help-desk.png', 'left', 'https://pertalis.com/chat_apps/Admin/api/config/CHT_005customer-service-agent.png', 'Live Chat', '#a970ff', 'CHT_005');

-- --------------------------------------------------------

--
-- Struktur dari tabel `userakses`
--

CREATE TABLE `userakses` (
  `rec_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `aksesmenu` varchar(50) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_name` varchar(20) DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_name` varchar(20) DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `userakses`
--

INSERT INTO `userakses` (`rec_id`, `user`, `aksesmenu`, `created_date`, `created_name`, `update_date`, `update_name`, `is_deleted`) VALUES
(1, 'admin', 'koneksi', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(2, 'admin', 'koneksi_device', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(3, 'admin', 'dokumentasi_api', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(4, 'admin', 'dokumentasi', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(5, 'admin', 'send', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(6, 'admin', 'send_message', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(7, 'adminuser', 'koneksi', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(8, 'adminuser', 'koneksi_device', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(9, 'adminuser', 'send', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(10, 'adminuser', 'send_message', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(11, 'adminuser', 'dokumentasi', '2022-06-17 00:00:00', NULL, '2023-03-06 09:35:50', NULL, 0),
(12, 'adminuser', 'dokumentasi_api', '2022-06-17 00:00:00', NULL, '2023-03-06 09:35:50', NULL, 0),
(13, 'FamyLab', 'koneksi', '2023-03-12 03:50:15', NULL, '2023-03-11 20:50:15', NULL, 0),
(14, 'FamyLab', 'koneksi_device', '2023-03-12 03:50:15', NULL, '2023-03-11 20:50:15', NULL, 0),
(15, 'FamyLab', 'send', '2023-03-12 03:50:15', NULL, '2023-03-11 20:50:15', NULL, 0),
(16, 'FamyLab', 'send_message', '2023-03-12 03:50:15', NULL, '2023-03-11 20:50:15', NULL, 0),
(17, 'FamyLab', 'dokumentasi', '2023-03-12 03:50:15', NULL, '2023-03-11 20:50:15', NULL, 0),
(18, 'FamyLab', 'dokumentasi_api', '2023-03-12 03:50:15', NULL, '2023-03-11 20:50:15', NULL, 0),
(19, 'pertamalab glc', 'koneksi', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(20, 'pertamalab glc', 'koneksi_device', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(21, 'pertamalab glc', 'dokumentasi_api', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(22, 'pertamalab glc', 'dokumentasi', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(23, 'pertamalab glc', 'send', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(24, 'pertamalab glc', 'send_message', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(25, 'admin', 'send_media', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(26, 'admin', 'send_blast', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(27, 'admin', 'contact', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(28, 'Pertamalab Tasik', 'koneksi', '2023-03-14 13:32:54', NULL, '2023-03-14 06:32:54', NULL, 0),
(29, 'Pertamalab Tasik', 'koneksi_device', '2023-03-14 13:32:54', NULL, '2023-03-14 06:32:54', NULL, 0),
(30, 'Pertamalab Tasik', 'send', '2023-03-14 13:32:54', NULL, '2023-03-14 06:32:54', NULL, 0),
(31, 'Pertamalab Tasik', 'send_message', '2023-03-14 13:32:54', NULL, '2023-03-14 06:32:54', NULL, 0),
(32, 'Pertamalab Tasik', 'dokumentasi', '2023-03-14 13:32:54', NULL, '2023-03-14 06:32:54', NULL, 0),
(33, 'Pertamalab Tasik', 'dokumentasi_api', '2023-03-14 13:32:54', NULL, '2023-03-14 06:32:54', NULL, 0),
(34, 'admin', 'send_groups', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(35, 'pertamalab cimahi', 'koneksi', '2023-03-16 01:05:47', NULL, '2023-03-15 18:05:47', NULL, 0),
(36, 'pertamalab cimahi', 'koneksi_device', '2023-03-16 01:05:47', NULL, '2023-03-15 18:05:47', NULL, 0),
(37, 'pertamalab cimahi', 'dokumentasi_api', '2023-03-16 01:05:47', NULL, '2023-03-15 18:05:47', NULL, 0),
(38, 'pertamalab cimahi', 'dokumentasi', '2023-03-16 01:05:47', NULL, '2023-03-15 18:05:47', NULL, 0),
(39, 'pertamalab cimahi', 'send', '2023-03-16 01:05:47', NULL, '2023-03-15 18:05:47', NULL, 0),
(40, 'pertamalab cimahi', 'send_message', '2023-03-16 01:05:47', NULL, '2023-03-15 18:05:47', NULL, 0),
(41, 'pertamalab cimahi', 'send_media', '2023-03-16 01:05:47', NULL, '2023-03-15 18:05:47', NULL, 0),
(42, 'pertamalab cimahi', 'send_blast', '2023-03-16 01:05:47', NULL, '2023-03-15 18:05:47', NULL, 0),
(43, 'pertamalab cimahi', 'contact', '2023-03-16 01:05:47', NULL, '2023-03-15 18:05:47', NULL, 0),
(44, 'pertamalab cimahi', 'send_groups', '2023-03-16 01:05:47', NULL, '2023-03-15 18:05:47', NULL, 0),
(45, 'pertamalab banjar', 'koneksi', '2023-04-13 10:17:39', NULL, '2023-04-13 03:17:39', NULL, 0),
(46, 'pertamalab banjar', 'koneksi_device', '2023-04-13 10:17:39', NULL, '2023-04-13 03:17:39', NULL, 0),
(47, 'pertamalab banjar', 'dokumentasi_api', '2023-04-13 10:17:39', NULL, '2023-04-13 03:17:39', NULL, 0),
(48, 'pertamalab banjar', 'dokumentasi', '2023-04-13 10:17:39', NULL, '2023-04-13 03:17:39', NULL, 0),
(49, 'pertamalab banjar', 'send', '2023-04-13 10:17:39', NULL, '2023-04-13 03:17:39', NULL, 0),
(50, 'pertamalab banjar', 'send_message', '2023-04-13 10:17:39', NULL, '2023-04-13 03:17:39', NULL, 0),
(51, 'pertamalab banjar', 'send_media', '2023-04-13 10:17:39', NULL, '2023-04-13 03:17:39', NULL, 0),
(52, 'pertamalab banjar', 'send_blast', '2023-04-13 10:17:39', NULL, '2023-04-13 03:17:39', NULL, 0),
(53, 'pertamalab banjar', 'contact', '2023-04-13 10:17:39', NULL, '2023-04-13 03:17:39', NULL, 0),
(54, 'pertamalab banjar', 'send_groups', '2023-04-13 10:17:39', NULL, '2023-04-13 03:17:39', NULL, 0),
(55, 'testing', 'koneksi', '2023-06-06 22:10:18', NULL, '2023-06-06 15:10:18', NULL, 0),
(56, 'testing', 'koneksi_device', '2023-06-06 22:10:18', NULL, '2023-06-06 15:10:18', NULL, 0),
(57, 'testing', 'dokumentasi_api', '2023-06-06 22:10:18', NULL, '2023-06-06 15:10:18', NULL, 0),
(58, 'testing', 'dokumentasi', '2023-06-06 22:10:18', NULL, '2023-06-06 15:10:18', NULL, 0),
(59, 'testing', 'send', '2023-06-06 22:10:18', NULL, '2023-06-06 15:10:18', NULL, 0),
(60, 'testing', 'send_message', '2023-06-06 22:10:18', NULL, '2023-06-06 15:10:18', NULL, 0),
(61, 'testing', 'send_media', '2023-06-06 22:10:18', NULL, '2023-06-06 15:10:18', NULL, 0),
(62, 'testing', 'send_blast', '2023-06-06 22:10:18', NULL, '2023-06-06 15:10:18', NULL, 0),
(63, 'testing', 'contact', '2023-06-06 22:10:18', NULL, '2023-06-06 15:10:18', NULL, 0),
(64, 'testing', 'send_groups', '2023-06-06 22:10:18', NULL, '2023-06-06 15:10:18', NULL, 0),
(65, 'admin', 'LiveChat', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(66, 'admin', 'chat_dashboard', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(67, 'admin', 'download_chat', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(68, 'admin', 'DashboardChat', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(69, 'admin', 'historychat', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(70, 'ciputih beach', 'koneksi', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(71, 'ciputih beach', 'koneksi_device', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(72, 'ciputih beach', 'dokumentasi_api', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(73, 'ciputih beach', 'dokumentasi', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(74, 'ciputih beach', 'send', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(75, 'ciputih beach', 'send_message', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(76, 'ciputih beach', 'send_media', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(77, 'ciputih beach', 'send_blast', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(78, 'ciputih beach', 'contact', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(79, 'ciputih beach', 'send_groups', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(80, 'ciputih beach', 'LiveChat', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(81, 'ciputih beach', 'chat_dashboard', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(82, 'ciputih beach', 'download_chat', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(83, 'ciputih beach', 'DashboardChat', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(84, 'ciputih beach', 'historychat', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(85, 'admin', 'layanan_config', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(86, 'ciputih beach', 'layanan_config', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(87, 'pertamalab ciamis', 'koneksi', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(88, 'pertamalab ciamis', 'koneksi_device', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(89, 'pertamalab ciamis', 'dokumentasi_api', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(90, 'pertamalab ciamis', 'dokumentasi', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(91, 'pertamalab ciamis', 'send', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(92, 'pertamalab ciamis', 'send_message', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(93, 'pertamalab ciamis', 'send_media', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(94, 'pertamalab ciamis', 'send_blast', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(95, 'pertamalab ciamis', 'contact', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(96, 'pertamalab ciamis', 'send_groups', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(97, 'pertamalab ciamis', 'LiveChat', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(98, 'pertamalab ciamis', 'chat_dashboard', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(99, 'pertamalab ciamis', 'download_chat', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(100, 'pertamalab ciamis', 'DashboardChat', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(101, 'pertamalab ciamis', 'historychat', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(102, 'pertamalab ciamis', 'layanan_config', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(103, 'pertamalab tasik', 'LiveChat', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(104, 'pertamalab tasik', 'chat_dashboard', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(105, 'pertamalab tasik', 'download_chat', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(106, 'pertamalab tasik', 'DashboardChat', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(107, 'pertamalab tasik', 'historychat', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(108, 'pertamalab tasik', 'layanan_config', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0),
(109, 'admin', 'notifi_config', '2022-06-17 00:00:00', NULL, '2023-03-05 16:44:28', NULL, 0),
(110, 'ciputih beach', 'notifi_config', '2023-07-03 10:58:41', NULL, '2023-07-03 03:58:41', NULL, 0),
(111, 'pertamalab tasik', 'notifi_config', '2023-07-05 10:23:43', NULL, '2023-07-05 03:23:43', NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` varchar(12) NOT NULL,
  `description` varchar(30) NOT NULL,
  `id_chat` varchar(30) NOT NULL,
  `ready` tinyint(1) NOT NULL DEFAULT 1,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `pass_rec` text NOT NULL,
  `status` enum('ACTIVE','NON-ACTIVE') NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `description`, `id_chat`, `ready`, `username`, `password`, `pass_rec`, `status`) VALUES
('002', 'tangerang', '', 1, 'pertamalab glc', 'TnpNMk0yRXdaREEyTURRNU1ESmhaamRpTnpCaU1qY3hZVEJpT1RZME9EQT0=', '123', 'ACTIVE'),
('003', 'admin', 'CHT_005', 1, 'admin', 'TnpNMk0yRXdaREEyTURRNU1ESmhaamRpTnpCaU1qY3hZVEJpT1RZME9EQT0=', '123', 'ACTIVE'),
('004', 'tasik', 'AP_001', 1, 'Pertamalab Tasik', 'TnpNMk0yRXdaREEyTURRNU1ESmhaamRpTnpCaU1qY3hZVEJpT1RZME9EQT0=', 'TnpNMk0yRXdaREEyTURRNU1ESmhaamRpTnpCaU1qY3hZVEJpT1RZME9EQT0=', 'ACTIVE'),
('005', 'singaparna', '', 1, 'pertamalab singaparna', 'TnpNMk0yRXdaREEyTURRNU1ESmhaamRpTnpCaU1qY3hZVEJpT1RZME9EQT0=', '123', 'ACTIVE'),
('006', 'banjar', '', 1, 'pertamalab banjar', 'TnpNMk0yRXdaREEyTURRNU1ESmhaamRpTnpCaU1qY3hZVEJpT1RZME9EQT0=', '123', 'ACTIVE'),
('007', 'ciamis', '', 1, 'pertamalab ciamis', 'TnpNMk0yRXdaREEyTURRNU1ESmhaamRpTnpCaU1qY3hZVEJpT1RZME9EQT0=', '123', 'ACTIVE'),
('008', 'cimahi', '', 1, 'pertamalab cimahi', 'TnpNMk0yRXdaREEyTURRNU1ESmhaamRpTnpCaU1qY3hZVEJpT1RZME9EQT0=', 'TnpNMk0yRXdaREEyTURRNU1ESmhaamRpTnpCaU1qY3hZVEJpT1RZME9EQT0=', 'ACTIVE'),
('009', 'wa_bot', '', 0, '', '', '', 'ACTIVE'),
('010', 'user', '', 0, 'adminuser', 'WXpVMlpEQmxPV0UzWTJObFl6WTNZalJsWVRFek1UWTFOVEF6T0dRMk1EUT0=', '123456', 'ACTIVE'),
('011', 'Users_011', '', 0, 'FamyLab', 'TnpNMk0yRXdaREEyTURRNU1ESmhaamRpTnpCaU1qY3hZVEJpT1RZME9EQT0=', 'TnpNMk0yRXdaREEyTURRNU1ESmhaamRpTnpCaU1qY3hZVEJpT1RZME9EQT0=', 'ACTIVE'),
('012', 'Users_012', '', 1, 'testing', 'TnpNMk0yRXdaREEyTURRNU1ESmhaamRpTnpCaU1qY3hZVEJpT1RZME9EQT0=', 'TnpNMk0yRXdaREEyTURRNU1ESmhaamRpTnpCaU1qY3hZVEJpT1RZME9EQT0=', 'ACTIVE'),
('013', 'Users_013', 'CHT_004', 0, 'ciputih beach', 'WXpVMlpEQmxPV0UzWTJObFl6WTNZalJsWVRFek1UWTFOVEF6T0dRMk1EUT0=', 'WXpVMlpEQmxPV0UzWTJObFl6WTNZalJsWVRFek1UWTFOVEF6T0dRMk1EUT0=', 'ACTIVE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_chat`
--

CREATE TABLE `user_chat` (
  `id` int(12) NOT NULL,
  `id_user` text NOT NULL,
  `username` text NOT NULL,
  `id_socket` text NOT NULL,
  `status` text NOT NULL,
  `date` datetime NOT NULL,
  `rooms` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user_chat`
--

INSERT INTO `user_chat` (`id`, `id_user`, `username`, `id_socket`, `status`, `date`, `rooms`) VALUES
(1, '0', 'admin', '3t5bdxKtJfjZLxe9AAAB', 'true', '2024-02-05 00:50:06', 'CHT_004'),
(2, '4', 'fauzik002@gmail.com', 'YIJE1MDMkJFOG0mTAAAF', 'true', '2023-11-30 01:37:31', 'CHT_004'),
(3, '7', 'ronalds@gmail.com', 'VLyByH1MQ457CIuvAAAH', 'true', '2023-07-05 17:33:33', 'CHT_004'),
(4, '7', 'indriyani13@gmail.com', 'NuUQ5uPpV5yHCK77AAAJ', 'true', '2023-07-06 01:37:59', 'CHT_004'),
(7, '10', 'admin', 'lSSOT_QUW7KG2pMrAAAf', 'true', '2024-02-24 15:34:10', 'AP_001'),
(8, '13', 'fauzik002@gmail.com', '16x3aceAc_W3fMXIAAAT', 'true', '2024-02-24 15:35:11', 'AP_001'),
(9, '21', 'heyyo@gmail.com', 'xjmu29n7k3g7HCnfAAAr', 'true', '2023-07-06 00:04:49', 'AP_001'),
(11, '27', 'Brunofernandos@gmail.com', 'UaHquZ-m6c1A-wXpAAAx', 'true', '2023-07-06 00:08:52', 'AP_001'),
(12, '11', 'jajang@gmail.com', '-QpCaDtqoL_KV8CaAAAD', 'true', '2023-07-07 01:07:55', 'AP_001'),
(13, '16', 'dadanghidayat@gmail.com', 'MfgZOzgpgcpTH-N8AABF', 'true', '2023-07-08 01:25:25', 'AP_001'),
(14, '17', 'cuyyy@gmail.com', 'Kd-UpBUF5cxzH9NRAAAq', 'true', '2023-07-08 02:02:15', 'CHT_004'),
(15, '20', 'cuyyyyy@gg.com', 'Ml9hh-xWxI5RsVd1AAAu', 'true', '2023-07-08 02:04:37', 'CHT_004'),
(16, '23', 'cayyyy@gmail.com', 'fgww4XppRkS-v456AAAw', 'true', '2023-07-08 02:05:13', 'AP_001'),
(17, '27', 'easy@g.com', 'PdlgRLGbNl4otGx-AAA2', 'true', '2023-07-09 02:24:05', 'CHT_004'),
(19, '17', 'lohhhh@gmail.com', 'ZuPRCzlMTXAWU3RbAAAJ', 'true', '2023-07-09 02:56:59', 'CHT_004'),
(20, '20', 'kekeiiii@gmail.com', 'eLT2vp7_7_kAXw4aAAAL', 'true', '2023-07-09 02:39:58', 'AP_001'),
(22, '22', 'Lamaakeraaa@gmail.com', '0ry755gevwkfgmpsAAAd', 'true', '2023-07-09 04:35:39', 'AP_001'),
(23, '18', 'yudi@rrr.com', 'SWGLQR6UM0dcedOnAAAD', 'true', '2023-07-11 00:36:09', 'CHT_004'),
(24, '19', 'newtrial@gmail.com', 'm9uNtg1vUH6L20mTAAAF', 'true', '2023-07-13 17:06:51', 'CHT_004'),
(25, '20', 'admin', 'quNgp-Qu6uzUvRx4AAAE', 'true', '2023-07-23 21:58:55', 'CHT_005'),
(26, '24', 'aan.angwar@gmail.com', 'SCXFAqqxscsQNt-OAAAL', 'true', '2023-08-15 14:49:08', 'CHT_004'),
(27, '23', 'simail@mail.com', 'XEv5zelRnW0eZivVAAAx', 'true', '2023-07-15 18:35:23', 'CHT_004'),
(28, '22', 'fauzik002@gmail.com', 'VS7xmdzR_mpKsw6OAAAB', 'true', '2023-11-30 01:37:31', 'CHT_004'),
(29, '23', 'rafly.gg@com', 'NiCJ8DPDyGr4EDkeAAAD', 'true', '2024-02-06 16:18:36', 'CHT_004'),
(30, '24', 'fauzik002@gmail.com', 'yOY6sMp9dgRFggaWAAAF', 'true', '2023-07-23 18:51:43', 'CHT_005'),
(31, '28', 'jayoo@gmail.com', 'Y6SN6LzjNPrMOOunAAAN', 'true', '2023-07-23 22:18:41', 'CHT_005'),
(32, '26', 'william170992@yahoo.com', 'uXVFF-7SbNA8BT9OAAAB', 'true', '2023-09-26 19:50:33', 'CHT_004'),
(33, '27', 'rahmad.labsky@gmail.com', 'yKJ-KhjV74NvNz_FAAAD', 'true', '2023-09-26 18:04:48', 'CHT_004'),
(34, '28', 'lokapita.notaris@gmail.com', 'vZV5X84W4Iorxl9sAAAF', 'true', '2023-10-08 20:43:03', 'CHT_004'),
(35, '29', 'herdianarina83@gmail.com', 'xxzZL-I8XmTuTy2DAAAB', 'true', '2023-10-20 07:40:04', 'CHT_004'),
(36, '30', 'Leesukuan@gmail.com', '6_GeJ--Fehwp0MJdAAAB', 'true', '2023-11-13 11:38:49', 'CHT_004'),
(37, '31', 'fauzik002@gmail.com', 'CbfKJOSBo3U0bSfmAAAF', 'true', '2023-11-30 01:37:31', 'CHT_004'),
(38, '32', 'teguhtachjudi@gmail.com', '_bct_WouhiaeyjuTAAAd', 'true', '2023-12-16 11:23:47', 'CHT_004'),
(39, '33', 'ida_syadina@yahoo.com', 'ywm1LKVZoLeIPpdGAAAD', 'true', '2024-01-08 09:55:51', 'CHT_004'),
(40, '34', 'asmanahyunia5@gmail.com', '8dnswPTCx4B14Kr0AAAD', 'true', '2024-02-04 17:39:51', 'CHT_004'),
(41, '36', 'fauzayyy@gmail.com', 'y0g2w5uaosrqsXFFAAAD', 'true', '2024-02-05 00:49:44', 'CHT_004');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `layanan_chat`
--
ALTER TABLE `layanan_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu_user`
--
ALTER TABLE `menu_user`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indeks untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_menu_user`
--
ALTER TABLE `sub_menu_user`
  ADD PRIMARY KEY (`sub_menu_id`);

--
-- Indeks untuk tabel `sub_menu_user2`
--
ALTER TABLE `sub_menu_user2`
  ADD PRIMARY KEY (`sub_menu_id`);

--
-- Indeks untuk tabel `tampilan_icon`
--
ALTER TABLE `tampilan_icon`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `userakses`
--
ALTER TABLE `userakses`
  ADD PRIMARY KEY (`rec_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_chat`
--
ALTER TABLE `user_chat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT untuk tabel `layanan_chat`
--
ALTER TABLE `layanan_chat`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `menu_user`
--
ALTER TABLE `menu_user`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sub_menu_user`
--
ALTER TABLE `sub_menu_user`
  MODIFY `sub_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `sub_menu_user2`
--
ALTER TABLE `sub_menu_user2`
  MODIFY `sub_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `tampilan_icon`
--
ALTER TABLE `tampilan_icon`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `userakses`
--
ALTER TABLE `userakses`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT untuk tabel `user_chat`
--
ALTER TABLE `user_chat`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
