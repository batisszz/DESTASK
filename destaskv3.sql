-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2025 at 04:48 AM
-- Server version: 11.2.1-MariaDB-1:11.2.1+maria~deb12
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `destaskv3`
--

-- --------------------------------------------------------

--
-- Table structure for table `bobot_kategori_task`
--

CREATE TABLE `bobot_kategori_task` (
  `id_bobot_kategori_task` int(11) UNSIGNED NOT NULL,
  `id_kategori_task` int(11) UNSIGNED NOT NULL,
  `id_usergroup` int(11) UNSIGNED NOT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `bobot_poin` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `bobot_kategori_task`
--

INSERT INTO `bobot_kategori_task` (`id_bobot_kategori_task`, `id_kategori_task`, `id_usergroup`, `tahun`, `bobot_poin`, `created_at`, `updated_at`, `deleted_at`) VALUES
(36, 1, 6, '2025', 2, '2025-01-14 02:41:46', '2025-01-14 02:41:46', NULL),
(37, 2, 6, '2025', 5, '2025-01-14 02:41:46', '2025-01-14 02:41:46', NULL),
(38, 3, 6, '2025', 4, '2025-01-14 02:41:46', '2025-01-14 02:41:46', NULL),
(39, 4, 6, '2025', 2, '2025-01-14 02:41:46', '2025-01-14 02:41:46', NULL),
(40, 5, 6, '2025', 3, '2025-01-14 02:41:46', '2025-01-14 02:41:46', NULL),
(41, 1, 4, '2025', 2, '2025-01-14 02:42:46', '2025-01-16 08:00:28', '2025-01-16 08:00:28'),
(42, 2, 4, '2025', 5, '2025-01-14 02:42:46', '2025-01-16 08:00:28', '2025-01-16 08:00:28'),
(43, 3, 4, '2025', 4, '2025-01-14 02:42:46', '2025-01-16 08:00:28', '2025-01-16 08:00:28'),
(44, 4, 4, '2025', 2, '2025-01-14 02:42:46', '2025-01-16 08:00:28', '2025-01-16 08:00:28'),
(45, 5, 4, '2025', 3, '2025-01-14 02:42:46', '2025-01-16 08:00:28', '2025-01-16 08:00:28'),
(46, 1, 3, '2025', 2, '2025-01-14 02:43:11', '2025-01-16 07:59:45', '2025-01-16 07:59:45'),
(47, 2, 3, '2025', 5, '2025-01-14 02:43:11', '2025-01-16 07:59:45', '2025-01-16 07:59:45'),
(48, 3, 3, '2025', 4, '2025-01-14 02:43:11', '2025-01-16 07:59:45', '2025-01-16 07:59:45'),
(49, 4, 3, '2025', 2, '2025-01-14 02:43:11', '2025-01-16 07:59:45', '2025-01-16 07:59:45'),
(50, 5, 3, '2025', 3, '2025-01-14 02:43:11', '2025-01-16 07:59:45', '2025-01-16 07:59:45'),
(51, 1, 1, '2025', 2, '2025-01-14 02:44:02', '2025-01-16 07:57:48', '2025-01-16 07:57:48'),
(52, 2, 1, '2025', 5, '2025-01-14 02:44:02', '2025-01-16 07:57:48', '2025-01-16 07:57:48'),
(53, 3, 1, '2025', 4, '2025-01-14 02:44:02', '2025-01-16 07:57:48', '2025-01-16 07:57:48'),
(54, 4, 1, '2025', 2, '2025-01-14 02:44:02', '2025-01-16 07:57:48', '2025-01-16 07:57:48'),
(55, 5, 1, '2025', 3, '2025-01-14 02:44:02', '2025-01-16 07:57:48', '2025-01-16 07:57:48'),
(56, 1, 2, '2025', 2, '2025-01-14 02:55:21', '2025-01-16 07:58:45', '2025-01-16 07:58:45'),
(57, 2, 2, '2025', 5, '2025-01-14 02:55:21', '2025-01-16 07:58:45', '2025-01-16 07:58:45'),
(58, 3, 2, '2025', 4, '2025-01-14 02:55:21', '2025-01-16 07:58:45', '2025-01-16 07:58:45'),
(59, 4, 2, '2025', 2, '2025-01-14 02:55:21', '2025-01-16 07:58:45', '2025-01-16 07:58:45'),
(60, 5, 2, '2025', 3, '2025-01-14 02:55:21', '2025-01-16 07:58:45', '2025-01-16 07:58:45'),
(61, 1, 5, '2025', 2, '2025-01-14 17:12:55', '2025-01-14 17:12:55', NULL),
(62, 2, 5, '2025', 5, '2025-01-14 17:12:55', '2025-01-14 17:12:55', NULL),
(63, 3, 5, '2025', 4, '2025-01-14 17:12:55', '2025-01-14 17:12:55', NULL),
(64, 4, 5, '2025', 2, '2025-01-14 17:12:55', '2025-01-14 17:12:55', NULL),
(65, 5, 5, '2025', 3, '2025-01-14 17:12:55', '2025-01-14 17:12:55', NULL),
(66, 1, 1, '2025', 1, '2025-01-16 07:58:37', '2025-01-16 07:58:37', NULL),
(67, 2, 1, '2025', 5, '2025-01-16 07:58:37', '2025-01-16 07:58:37', NULL),
(68, 3, 1, '2025', 4, '2025-01-16 07:58:37', '2025-01-16 07:58:37', NULL),
(69, 4, 1, '2025', 1, '2025-01-16 07:58:37', '2025-01-16 07:58:37', NULL),
(70, 5, 1, '2025', 1, '2025-01-16 07:58:37', '2025-01-16 07:58:37', NULL),
(71, 7, 1, '2025', 3, '2025-01-16 07:58:37', '2025-01-16 07:58:37', NULL),
(72, 8, 1, '2025', 5, '2025-01-16 07:58:37', '2025-01-16 07:58:37', NULL),
(73, 9, 1, '2025', 1, '2025-01-16 07:58:37', '2025-01-16 07:58:37', NULL),
(74, 1, 2, '2025', 3, '2025-01-16 07:59:19', '2025-01-16 07:59:19', NULL),
(75, 2, 2, '2025', 5, '2025-01-16 07:59:19', '2025-01-16 07:59:19', NULL),
(76, 3, 2, '2025', 4, '2025-01-16 07:59:19', '2025-01-16 07:59:19', NULL),
(77, 4, 2, '2025', 2, '2025-01-16 07:59:19', '2025-01-16 07:59:19', NULL),
(78, 5, 2, '2025', 2, '2025-01-16 07:59:19', '2025-01-16 07:59:19', NULL),
(79, 7, 2, '2025', 3, '2025-01-16 07:59:19', '2025-01-16 07:59:19', NULL),
(80, 8, 2, '2025', 5, '2025-01-16 07:59:19', '2025-01-16 07:59:19', NULL),
(81, 9, 2, '2025', 1, '2025-01-16 07:59:19', '2025-01-16 07:59:19', NULL),
(82, 1, 3, '2025', 3, '2025-01-16 08:00:12', '2025-01-16 08:00:12', NULL),
(83, 2, 3, '2025', 5, '2025-01-16 08:00:12', '2025-01-16 08:00:12', NULL),
(84, 3, 3, '2025', 4, '2025-01-16 08:00:12', '2025-01-16 08:00:12', NULL),
(85, 4, 3, '2025', 2, '2025-01-16 08:00:12', '2025-01-16 08:00:12', NULL),
(86, 5, 3, '2025', 2, '2025-01-16 08:00:12', '2025-01-16 08:00:12', NULL),
(87, 7, 3, '2025', 3, '2025-01-16 08:00:12', '2025-01-16 08:00:12', NULL),
(88, 8, 3, '2025', 5, '2025-01-16 08:00:12', '2025-01-16 08:00:12', NULL),
(89, 9, 3, '2025', 1, '2025-01-16 08:00:12', '2025-01-16 08:00:12', NULL),
(90, 1, 4, '2025', 3, '2025-01-16 08:00:56', '2025-01-16 08:00:56', NULL),
(91, 2, 4, '2025', 5, '2025-01-16 08:00:57', '2025-01-16 08:00:57', NULL),
(92, 3, 4, '2025', 4, '2025-01-16 08:00:57', '2025-01-16 08:00:57', NULL),
(93, 4, 4, '2025', 2, '2025-01-16 08:00:57', '2025-01-16 08:00:57', NULL),
(94, 5, 4, '2025', 2, '2025-01-16 08:00:57', '2025-01-16 08:00:57', NULL),
(95, 7, 4, '2025', 3, '2025-01-16 08:00:57', '2025-01-16 08:00:57', NULL),
(96, 8, 4, '2025', 5, '2025-01-16 08:00:57', '2025-01-16 08:00:57', NULL),
(97, 9, 4, '2025', 1, '2025-01-16 08:00:57', '2025-01-16 08:00:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hari_libur`
--

CREATE TABLE `hari_libur` (
  `id_hari_libur` int(11) UNSIGNED NOT NULL,
  `tanggal_libur` date DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `hari_libur`
--

INSERT INTO `hari_libur` (`id_hari_libur`, `tanggal_libur`, `keterangan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2024-02-14', 'Pemilihan Umum', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(2, '2024-02-08', 'Hari Pahlawan', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(3, '2024-03-20', 'Kenaikan Isa Al-Masih', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(4, '2024-04-03', 'Maulid Nabi Muhammad SAW', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(5, '2024-04-25', 'Kemerdekaan Republik Indonesia', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pekerjaan`
--

CREATE TABLE `kategori_pekerjaan` (
  `id_kategori_pekerjaan` int(11) UNSIGNED NOT NULL,
  `nama_kategori_pekerjaan` varchar(30) DEFAULT NULL,
  `deskripsi_kategori_pekerjaan` text DEFAULT NULL,
  `color` varchar(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `kategori_pekerjaan`
--

INSERT INTO `kategori_pekerjaan` (`id_kategori_pekerjaan`, `nama_kategori_pekerjaan`, `deskripsi_kategori_pekerjaan`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'High', 'Pekerjaan dengan prioritas tinggi memerlukan penyelesaian segera dan memiliki dampak besar terhadap keseluruhan proyek atau operasi perusahaan. Membutuhkan alokasi tim dan sumber daya segera untuk menyelesaikan pekerjaan tersebut', '#dc3545', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(2, 'Medium', 'Pekerjaan dengan prioritas sedang memiliki dampak yang signifikan terhadap operasi perusahaan atau proyek, namun tidak memerlukan penyelesaian segera seperti pekerjaan dengan prioritas tinggi. Tim dan sumber daya harus dialokasikan dengan cermat untuk menyelesaikan pekerjaan dengan prioritas sedang ini agar dapat memastikan kelancaran operasi dan kemajuan proyek secara keseluruhan.', '#fd7e14', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(3, 'Low', 'Pekerjaan dengan prioritas rendah adalah pekerjaan yang memiliki dampak minimal terhadap operasi perusahaan atau proyek dan dapat ditunda atau dilakukan dengan fleksibilitas waktu. Pekerjaan dengan prioritas rendah dapat dilakukan ketika sumber daya atau waktu tersedia setelah pekerjaan dengan prioritas tinggi dan sedang selesai.', '#0d6efd', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_task`
--

CREATE TABLE `kategori_task` (
  `id_kategori_task` int(11) UNSIGNED NOT NULL,
  `nama_kategori_task` varchar(30) DEFAULT NULL,
  `deskripsi_kategori_task` text DEFAULT NULL,
  `color` varchar(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `kategori_task`
--

INSERT INTO `kategori_task` (`id_kategori_task`, `nama_kategori_task`, `deskripsi_kategori_task`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Support', 'Task dalam kategori ini berkaitan dengan memberikan dukungan teknis atau bantuan kepada pengguna atau klien setelah implementasi atau penggunaan produk atau layanan.', '#0d6efd', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(2, 'Analisa', 'Task dalam kategori ini berkaitan dengan analisis kebutuhan, persyaratan, atau masalah yang muncul dalam proyek atau operasi.', '#d63384', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(3, 'Coding', 'Task dalam kategori ini berkaitan dengan menulis kode atau mengembangkan solusi perangkat lunak berdasarkan spesifikasi atau kebutuhan yang telah ditentukan.', '#6f42c1', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(4, 'Testing', 'Task dalam kategori ini berkaitan dengan pengujian perangkat lunak untuk memastikan bahwa fungsi atau fitur yang dikembangkan berfungsi dengan baik dan sesuai dengan harapan.', '#6610f2', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(5, 'Dokumentasi', 'Task dalam kategori ini berkaitan dengan pembuatan dokumentasi yang diperlukan dalam proyek atau operasi, seperti dokumentasi teknis, dokumentasi pengguna, atau laporan proyek.', '#0dcaf0', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(7, 'Design', 'Task yang berkaitan dengan design layout website, aplikasi, brosur dan lainnya', '#1beb6d', '2025-01-15 23:30:16', '2025-01-15 23:30:16', NULL),
(8, 'RnD', 'Task riset dan development baik aplikasi, website dan produk', '#c9bc47', '2025-01-15 23:32:02', '2025-01-15 23:32:02', NULL),
(9, 'Meeting', 'Task meeting dengan pelanggan, internal dll', '#ef0f03', '2025-01-15 23:33:10', '2025-01-15 23:33:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kinerja`
--

CREATE TABLE `kinerja` (
  `id_kinerja` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `bulan` varchar(2) DEFAULT NULL,
  `jumlah_hari_kerja` int(11) UNSIGNED DEFAULT NULL,
  `jumlah_kehadiran` int(11) UNSIGNED DEFAULT NULL,
  `jumlah_izin` int(11) UNSIGNED DEFAULT NULL,
  `jumlah_sakit_tnp_ket_dokter` int(11) UNSIGNED DEFAULT NULL,
  `jumlah_mangkir` int(11) UNSIGNED DEFAULT NULL,
  `jumlah_terlambat` int(11) UNSIGNED DEFAULT NULL,
  `kebersihan_diri` int(11) UNSIGNED DEFAULT NULL,
  `kerapihan_penampilan` int(11) UNSIGNED DEFAULT NULL,
  `integritas_a` int(11) UNSIGNED DEFAULT NULL,
  `integritas_b` int(11) UNSIGNED DEFAULT NULL,
  `integritas_c` int(11) UNSIGNED DEFAULT NULL,
  `kerjasama_a` int(11) UNSIGNED DEFAULT NULL,
  `kerjasama_b` int(11) UNSIGNED DEFAULT NULL,
  `kerjasama_c` int(11) UNSIGNED DEFAULT NULL,
  `kerjasama_d` int(11) UNSIGNED DEFAULT NULL,
  `orientasi_thd_konsumen_a` int(11) UNSIGNED DEFAULT NULL,
  `orientasi_thd_konsumen_b` int(11) UNSIGNED DEFAULT NULL,
  `orientasi_thd_konsumen_c` int(11) UNSIGNED DEFAULT NULL,
  `orientasi_thd_konsumen_d` int(11) UNSIGNED DEFAULT NULL,
  `orientasi_thd_target_a` int(11) UNSIGNED DEFAULT NULL,
  `orientasi_thd_target_b` int(11) UNSIGNED DEFAULT NULL,
  `orientasi_thd_target_c` int(11) UNSIGNED DEFAULT NULL,
  `orientasi_thd_target_d` int(11) UNSIGNED DEFAULT NULL,
  `inisiatif_inovasi_a` int(11) UNSIGNED DEFAULT NULL,
  `inisiatif_inovasi_b` int(11) UNSIGNED DEFAULT NULL,
  `inisiatif_inovasi_c` int(11) UNSIGNED DEFAULT NULL,
  `inisiatif_inovasi_d` int(11) UNSIGNED DEFAULT NULL,
  `professionalisme_a` int(11) UNSIGNED DEFAULT NULL,
  `professionalisme_b` int(11) UNSIGNED DEFAULT NULL,
  `professionalisme_c` int(11) UNSIGNED DEFAULT NULL,
  `professionalisme_d` int(11) UNSIGNED DEFAULT NULL,
  `organizational_awareness_a` int(11) UNSIGNED DEFAULT NULL,
  `organizational_awareness_b` int(11) UNSIGNED DEFAULT NULL,
  `organizational_awareness_c` int(11) UNSIGNED DEFAULT NULL,
  `score_kpi` float UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(79, '2024-01-18-073718', 'App\\Database\\Migrations\\KategoriTask', 'default', 'App', 1722410943, 1),
(80, '2024-01-18-073749', 'App\\Database\\Migrations\\KategoriPekerjaan', 'default', 'App', 1722410943, 1),
(81, '2024-01-18-095513', 'App\\Database\\Migrations\\StatusTask', 'default', 'App', 1722410943, 1),
(82, '2024-01-18-100152', 'App\\Database\\Migrations\\StatusPekerjaan', 'default', 'App', 1722410943, 1),
(83, '2024-01-19-105806', 'App\\Database\\Migrations\\UserGroup', 'default', 'App', 1722410943, 1),
(84, '2024-01-19-110545', 'App\\Database\\Migrations\\HariLibur', 'default', 'App', 1722410943, 1),
(85, '2024-01-20-093340', 'App\\Database\\Migrations\\User', 'default', 'App', 1722410943, 1),
(86, '2024-01-20-101336', 'App\\Database\\Migrations\\BobotKategoriTask', 'default', 'App', 1722410943, 1),
(87, '2024-01-20-150750', 'App\\Database\\Migrations\\Pekerjaan', 'default', 'App', 1722410943, 1),
(88, '2024-01-21-144153', 'App\\Database\\Migrations\\TargetPoinHarian', 'default', 'App', 1722410943, 1),
(89, '2024-01-21-150520', 'App\\Database\\Migrations\\Task', 'default', 'App', 1722410943, 1),
(90, '2024-01-22-134626', 'App\\Database\\Migrations\\Kinerja', 'default', 'App', 1722410943, 1),
(91, '2024-02-29-103634', 'App\\Database\\Migrations\\Personil', 'default', 'App', 1722410943, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(11) UNSIGNED NOT NULL,
  `id_status_pekerjaan` int(11) UNSIGNED NOT NULL,
  `id_kategori_pekerjaan` int(11) UNSIGNED NOT NULL,
  `nama_pekerjaan` varchar(300) DEFAULT NULL,
  `pelanggan` varchar(100) DEFAULT NULL,
  `jenis_pelanggan` varchar(50) DEFAULT NULL,
  `nama_pic` varchar(50) DEFAULT NULL,
  `email_pic` varchar(50) DEFAULT NULL,
  `nowa_pic` varchar(50) DEFAULT NULL,
  `jenis_layanan` varchar(50) DEFAULT NULL,
  `nominal_harga` int(11) UNSIGNED DEFAULT NULL,
  `deskripsi_pekerjaan` text DEFAULT NULL,
  `target_waktu_selesai` date DEFAULT NULL,
  `waktu_selesai` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `catatan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `id_status_pekerjaan`, `id_kategori_pekerjaan`, `nama_pekerjaan`, `pelanggan`, `jenis_pelanggan`, `nama_pic`, `email_pic`, `nowa_pic`, `jenis_layanan`, `nominal_harga`, `deskripsi_pekerjaan`, `target_waktu_selesai`, `waktu_selesai`, `created_at`, `updated_at`, `deleted_at`, `catatan`) VALUES
(1, 2, 1, '#WO [2225] DESApplication Boutique (Boutique,,Domain,Des MS,) Yayasan AL-Fikri Kota Semarang', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'boutique', 50000000, 'Aplikasi Inventory & Aset', '2025-03-24', NULL, '2025-01-13 22:17:13', '2025-01-31 16:05:57', NULL, 'Target pertengahan februari review progress'),
(2, 4, 2, 'Support Boutique (Helpdesk)', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'aplikasi internal', 50000000, 'Support App Boutique', '2026-12-31', NULL, '2025-01-14 12:00:59', '2025-01-14 12:01:36', NULL, NULL),
(3, 4, 2, 'Support Web Design', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'aplikasi internal', 50000000, 'Support Web Design', '2025-12-31', NULL, '2025-01-14 12:20:13', '2025-01-14 12:20:28', NULL, NULL),
(4, 4, 2, 'Support SOS', 'Tester', 'negeri', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'sisamson', 50000000, 'Support Aplikasi SOS', '2025-12-31', NULL, '2025-01-14 13:50:30', '2025-01-14 13:50:48', NULL, NULL),
(5, 2, 2, '#WO [2209] DESApplication Boutique Dinas Perhubungan Kabupaten Semarang Kab. Semarang', 'Tester', 'negeri', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'boutique', 50000000, 'Sistem Perizinan Angkutan Barang Dan Orang', '2025-02-20', NULL, '2025-01-14 14:00:35', '2025-01-31 14:30:24', NULL, 'Revisi pasca review tanggal 30 januari'),
(6, 4, 2, 'Support Design', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'aplikasi internal', 50000000, 'Support Design', '2025-12-31', NULL, '2025-01-14 14:06:02', '2025-01-14 14:14:49', NULL, NULL),
(7, 2, 2, '#WO [2194] DESApplication Boutique YAYASAN REKAM NUSANTARA Kota Bogor', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'boutique', 50000000, 'Dari YAYASAN REKAM NUSANTARA belum berkenan UAT dan ttd BAST karena dari user belum fokus dan belum bisa menjadwalkan', '2025-02-24', NULL, '2025-01-14 14:34:30', '2025-02-07 09:12:09', NULL, 'Dari YAYASAN REKAM NUSANTARA mengajukan ke user untuk rabu tgl 5 review, tetapi belum ada respon'),
(8, 4, 3, '#WO [2144] DESApplication Boutique BPBD Kabupaten Tegal Kab. Tegal', 'Tester', 'negeri', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'boutique', 50000000, 'Pengembangan Aplikasi \"titir cetar\" BPBD Kab Tegal', '2025-02-14', NULL, '2025-01-14 15:11:27', '2025-02-06 03:28:54', NULL, 'Masuk masa support'),
(9, 4, 2, 'Support Desmedic', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'produk', 50000000, 'Support Desmedic', '2025-12-31', NULL, '2025-01-14 16:52:42', '2025-01-14 16:52:53', NULL, NULL),
(10, 4, 2, 'Support Aplikasi Internal', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'aplikasi internal', 50000000, 'Support Aplikasi Internal', '2025-12-31', NULL, '2025-01-15 13:29:10', '2025-01-15 14:41:55', NULL, NULL),
(11, 3, 3, '#WO [2252] Web Design Platinum BPR Arto Moro Semarang Kota Semarang', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'desain', 50000000, 'Merupakan Pekerjaan ReDesign Website eksisting https://bprartomoro.co.id/', '2025-01-30', '2025-02-01', '2025-01-15 15:03:11', '2025-02-01 15:32:10', NULL, ''),
(12, 3, 3, '#WO [2167] Web Design Platinum (Web Ptinum,Host Ptinum,Domain,Des MS,) LPK Mirai Galipat Mandiri Kab', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'desain', 50000000, 'Web Design', '2025-02-28', '2025-01-31', '2025-01-15 15:08:41', '2025-01-31 10:14:35', NULL, NULL),
(14, 5, 3, '#WO [2216] Web Design Platinum (Web Ptinum,Domain,Host Ptinum,Des MS,) Food Packaging Jaya, PT Kab.', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'desain', 50000000, 'Web Design Profil Perusahaan', '2025-01-30', NULL, '2025-01-15 15:20:13', '2025-01-30 21:36:21', '2025-01-30 21:36:21', NULL),
(15, 3, 3, '#WO [2272] Web Design Gold (Web Gold,Domain,Host Pro,Des MS,) Powerindo Karya Perkasa, PT Kota Semar', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'desain', 50000000, 'Web Design + Hosting domain', '2025-02-14', '2025-02-04', '2025-01-24 08:29:41', '2025-02-04 10:03:14', NULL, ''),
(16, 2, 3, '#WO [2277] Web Design Platinum (Web Ptinum,Host Ptinum,Domain,Des MS,) PT Indoasia Sinergi Sejahtera', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'desain', 50000000, 'Web Design + Hosting Domain', '2025-01-31', NULL, '2025-01-24 08:43:40', '2025-02-06 04:14:18', NULL, 'Tinggal menunggu review final dari pelanggan'),
(17, 3, 3, '#WO [2193] Web Design Gold (Web Gold,Host Pro,,Des MS,) SMK Ki Hajar Dewantara Songgom Kab. Brebes', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'desain', 50000000, 'Web Design + Hosting Domain', '2025-01-31', '2025-01-30', '2025-01-24 14:00:15', '2025-01-30 14:26:45', NULL, NULL),
(18, 2, 2, '#WO [2280] DESApplication Boutique Dinas Kepemudaan, Olahraga dan Pariwisata Provinsi Jawa Tengah Ko', 'Tester', 'negeri', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'boutique', 50000000, 'Pengembangan Aplikasi SIMPORA', '2025-04-21', NULL, '2025-01-30 16:27:22', '2025-01-30 16:27:32', NULL, NULL),
(19, 2, 3, '#WO [2216] Web Design Platinum (Web Ptinum,Domain,Host Ptinum,Des MS,) Food Packaging Jaya, PT Kab.', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'desain', 50000000, '[Web Design] Dev Website + Hosting Domain', '2025-02-28', NULL, '2025-01-30 21:37:50', '2025-01-30 21:37:58', NULL, NULL),
(20, 1, 1, 'Eoffice LDP Malang', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'boutique', 50000000, 'Eoffice untuk LDP Malang', '2025-02-07', NULL, '2025-01-31 13:49:18', '2025-01-31 13:49:18', NULL, NULL),
(21, 2, 3, '#WO [2287] DESApplication Boutique Klinik Satmoko Kota Semarang', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'boutique', 50000000, 'Aplikasi Cetak Antrian', '2025-03-25', NULL, '2025-01-31 14:35:19', '2025-01-31 14:35:36', NULL, ''),
(22, 2, 2, '#WO [2286] Web Design Custom Dinas Pertanian dan Ketahanan Pangan Kab. Brebes Kab. Brebes', 'Tester', 'negeri', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'desain', 50000000, 'Redesign Website Dinas pertanian + bikin baru website PPID Dinas Pertanian Kab Brebes', '2025-03-31', NULL, '2025-02-04 13:47:00', '2025-02-04 13:47:08', NULL, ''),
(23, 4, 3, '#WO [2170] DESApplication Boutique Stem Cell and Cancer Research Indonesia Kota Semarang - Klinik Dermanina', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'boutique', 50000000, 'Klinik Dermanina', '2025-01-20', NULL, '2025-02-06 03:33:13', '2025-02-06 03:33:40', NULL, 'Masuk masa support'),
(24, 2, 3, 'WO DESApplication Boutique (Boutique,VPS,Domain,Des MS,) Yayasan Alumni Teknik Elektro UNDIP Kota Semarang', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'boutique', 50000000, 'Aplikasi Alumni', '2025-02-28', NULL, '2025-02-06 03:38:15', '2025-02-06 04:28:20', NULL, 'Menunggu hasil review'),
(25, 1, 3, 'Presales Destask BPR MAA', 'Tester', 'swasta', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'produk', 50000000, 'Presales destask', '2025-02-14', NULL, '2025-02-07 20:31:25', '2025-02-07 20:31:25', NULL, NULL),
(26, 1, 3, 'Aplikasi tiketing', 'Tester', 'negeri', 'Tester', 'ade.kurniawan@ptdes.net', '085859000585', 'produk', 50000000, 'Tidak ada', '2025-02-17', NULL, '2025-02-10 23:29:52', '2025-02-10 23:29:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personil`
--

CREATE TABLE `personil` (
  `id_personil` int(11) UNSIGNED NOT NULL,
  `id_pekerjaan` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `role_personil` enum('project_manager','desainer','backend_web','frontend_web','backend_mobile','frontend_mobile','tester','admin','helpdesk') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `personil`
--

INSERT INTO `personil` (`id_personil`, `id_pekerjaan`, `id_user`, `role_personil`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 37, 'project_manager', '2025-01-13 22:17:13', '2025-01-13 22:17:13', NULL),
(2, 1, 9, 'desainer', '2025-01-13 22:17:13', '2025-01-13 22:17:13', NULL),
(3, 1, 15, 'backend_web', '2025-01-13 22:17:13', '2025-01-13 22:17:13', NULL),
(4, 1, 37, 'backend_web', '2025-01-13 22:17:13', '2025-01-13 22:17:13', NULL),
(5, 1, 13, 'frontend_web', '2025-01-13 22:17:13', '2025-01-13 22:17:13', NULL),
(6, 1, 12, 'frontend_web', '2025-01-13 22:17:13', '2025-01-15 09:32:28', '2025-01-15 09:32:28'),
(7, 1, 26, 'tester', '2025-01-13 22:17:13', '2025-01-13 22:17:13', NULL),
(8, 1, 31, 'admin', '2025-01-13 22:17:13', '2025-01-14 10:59:36', '2025-01-14 10:59:36'),
(9, 2, 7, 'project_manager', '2025-01-14 12:00:59', '2025-01-14 12:00:59', NULL),
(10, 2, 11, 'backend_mobile', '2025-01-14 12:00:59', '2025-01-14 12:00:59', NULL),
(11, 2, 12, 'helpdesk', '2025-01-14 12:00:59', '2025-01-14 12:00:59', NULL),
(12, 2, 8, 'helpdesk', '2025-01-14 12:00:59', '2025-01-14 12:00:59', NULL),
(13, 3, 20, 'project_manager', '2025-01-14 12:20:13', '2025-01-14 12:20:13', NULL),
(14, 3, 24, 'desainer', '2025-01-14 12:20:13', '2025-01-14 12:20:13', NULL),
(15, 3, 9, 'desainer', '2025-01-14 12:20:13', '2025-01-14 12:20:13', NULL),
(16, 3, 23, 'frontend_web', '2025-01-14 12:20:13', '2025-01-14 12:20:13', NULL),
(17, 3, 21, 'frontend_web', '2025-01-14 12:20:13', '2025-01-14 12:20:13', NULL),
(18, 3, 22, 'frontend_web', '2025-01-14 12:20:13', '2025-01-14 12:20:13', NULL),
(19, 4, 7, 'project_manager', '2025-01-14 13:50:30', '2025-01-14 13:50:30', NULL),
(20, 4, 12, 'helpdesk', '2025-01-14 13:50:30', '2025-01-14 13:50:30', NULL),
(21, 4, 8, 'helpdesk', '2025-01-14 13:50:30', '2025-01-14 13:50:30', NULL),
(22, 5, 6, 'project_manager', '2025-01-14 14:00:35', '2025-01-14 14:00:35', NULL),
(23, 5, 24, 'desainer', '2025-01-14 14:00:35', '2025-01-14 14:00:35', NULL),
(24, 5, 18, 'backend_web', '2025-01-14 14:00:35', '2025-01-14 14:00:35', NULL),
(25, 5, 23, 'frontend_web', '2025-01-14 14:00:35', '2025-01-14 14:00:35', NULL),
(26, 5, 21, 'frontend_web', '2025-01-14 14:00:35', '2025-01-14 14:00:35', NULL),
(27, 6, 20, 'project_manager', '2025-01-14 14:06:02', '2025-01-14 14:06:02', NULL),
(28, 6, 24, 'desainer', '2025-01-14 14:06:02', '2025-01-14 14:06:02', NULL),
(29, 6, 9, 'desainer', '2025-01-14 14:06:02', '2025-01-14 14:06:02', NULL),
(30, 6, 16, 'backend_web', '2025-01-14 14:06:02', '2025-01-14 14:06:02', NULL),
(31, 7, 13, 'project_manager', '2025-01-14 14:34:30', '2025-01-14 14:34:30', NULL),
(32, 7, 15, 'backend_web', '2025-01-14 14:34:30', '2025-01-14 14:34:30', NULL),
(33, 7, 26, 'backend_mobile', '2025-01-14 14:34:30', '2025-01-14 14:34:30', NULL),
(34, 8, 6, 'project_manager', '2025-01-14 15:11:27', '2025-01-14 15:11:27', NULL),
(35, 8, 24, 'desainer', '2025-01-14 15:11:27', '2025-01-14 15:11:27', NULL),
(36, 8, 15, 'backend_web', '2025-01-14 15:11:27', '2025-01-14 15:11:27', NULL),
(37, 8, 25, 'backend_mobile', '2025-01-14 15:11:27', '2025-01-14 17:14:13', '2025-01-14 17:14:13'),
(38, 8, 7, 'helpdesk', '2025-01-14 15:11:27', '2025-01-14 15:11:27', NULL),
(39, 9, 16, 'project_manager', '2025-01-14 16:52:42', '2025-01-14 16:52:42', NULL),
(40, 9, 24, 'desainer', '2025-01-14 16:52:42', '2025-01-14 16:52:42', NULL),
(41, 9, 20, 'desainer', '2025-01-14 16:52:42', '2025-01-14 16:52:42', NULL),
(42, 9, 9, 'desainer', '2025-01-14 16:52:42', '2025-01-14 16:52:42', NULL),
(43, 9, 15, 'backend_web', '2025-01-14 16:52:42', '2025-01-14 16:52:42', NULL),
(44, 9, 10, 'backend_web', '2025-01-14 16:59:32', '2025-01-14 16:59:32', NULL),
(45, 2, 25, 'frontend_mobile', '2025-01-14 17:01:05', '2025-01-14 17:01:22', '2025-01-14 17:01:22'),
(46, 2, 26, 'backend_mobile', '2025-01-14 17:01:17', '2025-01-14 17:01:17', NULL),
(47, 2, 17, 'backend_mobile', '2025-01-14 17:01:30', '2025-01-14 17:01:30', NULL),
(48, 2, 25, 'backend_mobile', '2025-01-14 17:01:40', '2025-01-14 17:01:40', NULL),
(49, 2, 19, 'backend_mobile', '2025-01-14 17:01:47', '2025-01-14 17:01:47', NULL),
(50, 8, 19, 'backend_mobile', '2025-01-14 17:14:23', '2025-01-14 17:14:23', NULL),
(51, 1, 23, 'frontend_web', '2025-01-15 09:32:40', '2025-01-15 09:32:40', NULL),
(52, 1, 21, 'frontend_web', '2025-01-15 09:32:51', '2025-01-15 09:32:51', NULL),
(53, 2, 24, 'desainer', '2025-01-15 13:23:07', '2025-01-15 13:23:07', NULL),
(54, 2, 20, 'desainer', '2025-01-15 13:23:14', '2025-01-15 13:23:14', NULL),
(55, 2, 9, 'desainer', '2025-01-15 13:23:20', '2025-01-15 13:23:20', NULL),
(56, 2, 37, 'backend_web', '2025-01-15 13:23:27', '2025-01-15 13:23:27', NULL),
(57, 2, 18, 'backend_web', '2025-01-15 13:23:37', '2025-01-15 13:23:37', NULL),
(58, 2, 16, 'backend_web', '2025-01-15 13:23:45', '2025-01-15 13:23:45', NULL),
(59, 2, 15, 'backend_web', '2025-01-15 13:23:53', '2025-01-15 13:23:53', NULL),
(60, 2, 14, 'backend_web', '2025-01-15 13:24:01', '2025-01-15 13:24:01', NULL),
(61, 2, 13, 'frontend_web', '2025-01-15 13:24:31', '2025-01-15 13:24:31', NULL),
(62, 2, 10, 'frontend_web', '2025-01-15 13:24:40', '2025-01-15 13:24:40', NULL),
(63, 2, 6, 'frontend_web', '2025-01-15 13:27:04', '2025-01-15 13:27:04', NULL),
(64, 10, 37, 'project_manager', '2025-01-15 13:29:10', '2025-01-15 13:29:10', NULL),
(65, 10, 10, 'backend_web', '2025-01-15 13:29:10', '2025-01-15 13:29:10', NULL),
(66, 6, 22, 'frontend_web', '2025-01-15 14:52:56', '2025-01-15 14:52:56', NULL),
(67, 11, 20, 'project_manager', '2025-01-15 15:03:11', '2025-01-15 15:03:11', NULL),
(68, 11, 24, 'desainer', '2025-01-15 15:03:11', '2025-01-15 15:03:11', NULL),
(69, 11, 22, 'frontend_web', '2025-01-15 15:03:11', '2025-01-15 15:03:11', NULL),
(70, 12, 20, 'project_manager', '2025-01-15 15:08:41', '2025-01-15 15:08:41', NULL),
(71, 12, 9, 'desainer', '2025-01-15 15:08:41', '2025-01-15 15:08:41', NULL),
(72, 13, 39, 'project_manager', '2025-01-15 15:17:26', '2025-01-15 15:17:26', NULL),
(73, 13, 9, 'desainer', '2025-01-15 15:17:26', '2025-01-15 15:17:26', NULL),
(74, 13, 22, 'frontend_web', '2025-01-15 15:17:26', '2025-01-15 15:17:26', NULL),
(75, 14, 39, 'project_manager', '2025-01-15 15:20:13', '2025-01-30 21:36:21', '2025-01-30 21:36:21'),
(76, 14, 24, 'desainer', '2025-01-15 15:20:13', '2025-01-30 21:36:21', '2025-01-30 21:36:21'),
(77, 14, 20, 'desainer', '2025-01-15 15:20:13', '2025-01-30 21:36:21', '2025-01-30 21:36:21'),
(78, 14, 9, 'desainer', '2025-01-15 15:20:13', '2025-01-30 21:36:21', '2025-01-30 21:36:21'),
(79, 14, 22, 'frontend_web', '2025-01-15 15:20:13', '2025-01-30 21:36:21', '2025-01-30 21:36:21'),
(80, 4, 13, 'backend_web', '2025-01-17 16:49:16', '2025-01-17 16:49:16', NULL),
(81, 7, 7, 'helpdesk', '2025-01-21 12:11:39', '2025-01-21 12:11:39', NULL),
(82, 2, 22, 'frontend_web', '2025-01-23 16:15:42', '2025-01-23 16:15:42', NULL),
(83, 15, 20, 'project_manager', '2025-01-24 08:29:41', '2025-01-24 08:29:41', NULL),
(84, 15, 24, 'desainer', '2025-01-24 08:29:41', '2025-01-24 08:29:41', NULL),
(85, 15, 22, 'frontend_web', '2025-01-24 08:29:41', '2025-01-24 08:29:41', NULL),
(86, 16, 20, 'project_manager', '2025-01-24 08:43:40', '2025-01-24 08:43:40', NULL),
(87, 16, 20, 'desainer', '2025-01-24 08:43:40', '2025-01-24 08:43:40', NULL),
(88, 17, 20, 'project_manager', '2025-01-24 14:00:15', '2025-01-24 14:00:15', NULL),
(89, 17, 9, 'desainer', '2025-01-24 14:00:15', '2025-01-24 14:00:15', NULL),
(90, 17, 22, 'frontend_web', '2025-01-24 14:00:15', '2025-01-24 14:00:15', NULL),
(91, 18, 17, 'project_manager', '2025-01-30 16:27:22', '2025-01-30 16:27:22', NULL),
(92, 18, 9, 'desainer', '2025-01-30 16:27:22', '2025-01-30 16:27:22', NULL),
(93, 18, 10, 'backend_web', '2025-01-30 16:27:22', '2025-01-30 16:27:22', NULL),
(94, 18, 13, 'frontend_web', '2025-01-30 16:27:22', '2025-01-30 16:27:22', NULL),
(95, 18, 7, 'helpdesk', '2025-01-30 16:27:22', '2025-01-30 16:27:22', NULL),
(96, 19, 20, 'project_manager', '2025-01-30 21:37:50', '2025-01-30 21:37:50', NULL),
(97, 19, 20, 'desainer', '2025-01-30 21:37:50', '2025-01-30 21:37:50', NULL),
(98, 20, 6, 'project_manager', '2025-01-31 13:49:18', '2025-01-31 13:49:18', NULL),
(99, 20, 37, 'backend_web', '2025-01-31 13:49:18', '2025-01-31 13:49:18', NULL),
(100, 18, 23, 'frontend_web', '2025-01-31 14:10:03', '2025-01-31 14:10:03', NULL),
(101, 21, 16, 'project_manager', '2025-01-31 14:35:19', '2025-01-31 14:35:19', NULL),
(102, 21, 15, 'backend_web', '2025-01-31 14:35:19', '2025-01-31 14:35:19', NULL),
(103, 19, 23, 'frontend_web', '2025-02-04 10:00:33', '2025-02-04 10:00:33', NULL),
(104, 22, 20, 'project_manager', '2025-02-04 13:47:00', '2025-02-04 13:47:00', NULL),
(105, 22, 22, 'desainer', '2025-02-04 13:47:00', '2025-02-04 13:47:00', NULL),
(106, 9, 23, 'frontend_web', '2025-02-05 14:25:34', '2025-02-05 14:25:34', NULL),
(107, 23, 1, 'project_manager', '2025-02-06 03:33:13', '2025-02-06 03:33:13', NULL),
(108, 23, 16, 'backend_web', '2025-02-06 03:33:13', '2025-02-06 03:33:13', NULL),
(109, 24, 5, 'project_manager', '2025-02-06 03:38:15', '2025-02-06 03:38:15', NULL),
(110, 24, 13, 'backend_web', '2025-02-06 03:38:15', '2025-02-06 03:38:15', NULL),
(111, 25, 37, 'project_manager', '2025-02-07 20:31:25', '2025-02-07 20:31:25', NULL),
(112, 22, 9, 'desainer', '2025-02-10 10:35:28', '2025-02-10 10:35:28', NULL),
(113, 26, 6, 'project_manager', '2025-02-10 23:29:52', '2025-02-10 23:29:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_pekerjaan`
--

CREATE TABLE `status_pekerjaan` (
  `id_status_pekerjaan` int(11) UNSIGNED NOT NULL,
  `nama_status_pekerjaan` varchar(30) DEFAULT NULL,
  `deskripsi_status_pekerjaan` text DEFAULT NULL,
  `color` varchar(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `status_pekerjaan`
--

INSERT INTO `status_pekerjaan` (`id_status_pekerjaan`, `nama_status_pekerjaan`, `deskripsi_status_pekerjaan`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Presales', 'Tahap awal sebelum proyek dimulai secara resmi. Biasanya melibatkan aktivitas seperti presentasi, negosiasi, dan penawaran kepada klien.', '#fd7e14', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(2, 'On Progress', 'Pekerjaan sedang dalam proses pengerjaan atau pelaksanaan. Tim atau individu sedang aktif dalam menyelesaikan tugas yang ditugaskan.', '#ffc107', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(3, 'BAST', 'Tahap di mana pekerjaan telah selesai dan diserahkan kepada klien. Tahap ini merupakan serah terima pekerjaan antara pihak yang memberikan jasa dengan pihak yang menerima jasa.', '#198754', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(4, 'Support', 'Tahap setelah penyelesaian proyek di mana pihak penyedia layanan memberikan dukungan teknis atau bantuan tambahan kepada klien. Biasanya melibatkan penyelesaian bug, pelatihan, atau perbaikan kecil setelah implementasi.', '#0d6efd', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(5, 'Cancel', 'Pekerjaan dibatalkan sebelum selesai atau sebelum mencapai tahap berikutnya. Pekerjaan cancle tidak akan dikerjakan oleh tim.', '#dc3545', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_task`
--

CREATE TABLE `status_task` (
  `id_status_task` int(11) UNSIGNED NOT NULL,
  `nama_status_task` varchar(30) DEFAULT NULL,
  `deskripsi_status_task` text DEFAULT NULL,
  `color` varchar(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `status_task`
--

INSERT INTO `status_task` (`id_status_task`, `nama_status_task`, `deskripsi_status_task`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'On Progress', 'Task sedang dalam proses pengerjaan atau pelaksanaan, biasanya, task dalam status ini sedang berada di tengah-tengah proses dan memerlukan waktu untuk diselesaikan.', '#ffc107', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(2, 'Pending', 'Task sedang dalam proses menunggu verifikasi. Proses verifikasi dilakukan oleh supervisi yang terdaftar pada pekerjaan yang berkaitan dengan task tersebut.', '#fd7e14', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(3, 'Selesai', 'Task telah diselesaikan sepenuhnya dan telah memenuhi semua persyaratan atau kriteria yang telah ditetapkan.', '#198754', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(4, 'Cancel', 'Task ditolak atau tidak lolos verifikasi, disini pengguna harus melakukan submit ulang task sesuai kriteria dan masukan yang diberikan supervisi.', '#dc3545', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `target_poin_harian`
--

CREATE TABLE `target_poin_harian` (
  `id_target_poin_harian` int(11) UNSIGNED NOT NULL,
  `id_usergroup` int(11) UNSIGNED NOT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `bulan` varchar(2) DEFAULT NULL,
  `jumlah_target_poin_harian` int(11) UNSIGNED DEFAULT NULL,
  `jumlah_hari_kerja` int(11) UNSIGNED DEFAULT NULL,
  `jumlah_hari_libur` int(11) UNSIGNED DEFAULT NULL,
  `jumlah_target_poin_sebulan` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `target_poin_harian`
--

INSERT INTO `target_poin_harian` (`id_target_poin_harian`, `id_usergroup`, `tahun`, `bulan`, `jumlah_target_poin_harian`, `jumlah_hari_kerja`, `jumlah_hari_libur`, `jumlah_target_poin_sebulan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, '2025', '1', 7, 20, 11, 140, '2025-01-14 02:45:47', '2025-01-14 02:45:47', NULL),
(2, 4, '2025', '1', 6, 20, 11, 120, '2025-01-14 02:46:28', '2025-01-14 02:46:28', NULL),
(3, 3, '2025', '1', 10, 20, 11, 200, '2025-01-14 02:47:09', '2025-01-14 02:47:09', NULL),
(4, 2, '2025', '1', 10, 20, 11, 200, '2025-01-14 02:47:31', '2025-01-14 02:47:31', NULL),
(5, 1, '2025', '1', 9, 20, 11, 180, '2025-01-14 02:48:02', '2025-01-14 02:48:02', NULL),
(6, 5, '2025', '1', 10, 20, 11, 200, '2025-01-14 14:17:48', '2025-01-14 14:17:48', NULL),
(7, 6, '2025', '2', 7, 20, 8, 140, '2025-01-14 02:45:47', '2025-01-14 02:45:47', NULL),
(8, 4, '2025', '2', 6, 20, 8, 120, '2025-01-14 02:46:28', '2025-01-14 02:46:28', NULL),
(9, 3, '2025', '2', 10, 20, 8, 200, '2025-01-14 02:47:09', '2025-01-14 02:47:09', NULL),
(10, 2, '2025', '2', 10, 20, 8, 200, '2025-01-14 02:47:31', '2025-01-14 02:47:31', NULL),
(11, 1, '2025', '2', 9, 20, 8, 180, '2025-01-14 02:48:02', '2025-01-14 02:48:02', NULL),
(12, 5, '2025', '2', 10, 20, 8, 200, '2025-01-14 14:17:48', '2025-01-14 14:17:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id_task` int(11) UNSIGNED NOT NULL,
  `id_pekerjaan` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `creator` int(11) UNSIGNED NOT NULL,
  `id_status_task` int(11) UNSIGNED NOT NULL,
  `id_kategori_task` int(11) UNSIGNED NOT NULL,
  `tgl_planing` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `tgl_verifikasi_diterima` datetime DEFAULT NULL,
  `persentase_selesai` int(3) UNSIGNED DEFAULT NULL,
  `deskripsi_task` text DEFAULT NULL,
  `alasan_verifikasi` text DEFAULT NULL,
  `bukti_selesai` varchar(200) DEFAULT NULL,
  `tautan_task` text DEFAULT NULL,
  `verifikator` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id_task`, `id_pekerjaan`, `id_user`, `creator`, `id_status_task`, `id_kategori_task`, `tgl_planing`, `tgl_selesai`, `tgl_verifikasi_diterima`, `persentase_selesai`, `deskripsi_task`, `alasan_verifikasi`, `bukti_selesai`, `tautan_task`, `verifikator`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 15, 15, 4, 3, '2025-01-15', NULL, NULL, 0, 'Master Inventory', 'Hanya tes', '1736798969_59752bb410fc36af5414.jpg', 'tes', 1, '2025-01-14 02:56:18', '2025-01-17 15:17:09', '2025-01-17 15:17:09'),
(2, 1, 15, 15, 3, 3, '2025-01-16', '2025-01-14', '2025-01-17 15:18:53', 100, 'Fitur kelola pengguna', NULL, '1736828722_6d45404820f8b35fda25.jpeg', 'demo.desnet.id', 1, '2025-01-14 11:22:21', '2025-01-17 15:18:53', NULL),
(3, 3, 24, 24, 3, 1, '2025-01-15', '2025-01-14', '2025-01-15 15:40:11', 100, 'revisi desain layout', NULL, '1736834637_90f4ee6d548efc0f9d3a.jpg', 'https://www.figma.com/design/XCcM1Nm47VFdy4CIA0t5Jm/Untitled?node-id=111-20&t=3rjYuBKfoSjgzZKS-0', 20, '2025-01-14 12:58:01', '2025-01-15 15:40:11', NULL),
(4, 1, 9, 9, 3, 7, '2025-01-17', '2025-01-17', '2025-01-21 13:47:43', 100, 'membuat halaman dashboard web aplikasi inventory & aset alfikri', NULL, '1737108710_784f616370a17b7a8da0.jpg', 'https://www.figma.com/proto/tpW1t4C1qlrL4bPQ32bEq3/Inventory-dan-Aset-Alfikri?page-id=0%3A1&node-id=84-2&p=f&viewport=855%2C267%2C0.43&t=iER2vHmyLOnwvrB5-8&scaling=min-zoom&content-scaling=fixed&starting-point-node-id=84%3A2&hide-ui=1', 1, '2025-01-14 16:56:21', '2025-01-21 13:47:43', NULL),
(5, 2, 11, 11, 3, 1, '2025-01-15', '2025-01-15', '2025-01-17 15:06:08', 100, 'Support Arjaya Telindo Instalasi Perangkat Baru (Tunggu Nomor Dari Vendor)', NULL, '1736910710_1cf63947f7e5674e0833.jpeg', 'http://git.desnet.id/bpbd-kab-brebes/mobile_flutter.git', 1, '2025-01-14 16:59:17', '2025-01-17 15:06:08', NULL),
(6, 5, 24, 24, 3, 6, '2025-01-14', '2025-01-14', '2025-01-17 10:10:05', 100, 'revisi ganti background, memisah aset-aset', NULL, '1736848944_a8c2da599d70d583e52b.png', 'https://www.figma.com/design/XCcM1Nm47VFdy4CIA0t5Jm/Dishub-Kabupaten-Semarang?node-id=0-1&t=jaBdocLjiWkcKHBd-1', 1, '2025-01-14 17:00:58', '2025-01-17 10:10:05', NULL),
(7, 2, 11, 11, 3, 3, '2025-01-15', '2025-01-15', '2025-01-15 15:09:40', 100, 'Bppb Brebes Coding Menambahkan Alasan Penolakan Aktifitas Bencana', NULL, '1736910799_5394e53fca7ed2312790.jpeg', 'http://git.desnet.id/bpbd-kab-brebes/mobile_flutter.git', 17, '2025-01-14 17:02:20', '2025-01-15 15:09:40', NULL),
(8, 2, 11, 11, 3, 3, '2025-01-15', '2025-01-15', '2025-01-17 15:06:16', 100, 'Bppb Brebes Coding Lebih 1 Laporan Sebelumnya muncul di petugas lain', NULL, '1736931590_ffdde0657dbc0c2d5ac3.jpeg', 'http://git.desnet.id/dkp_bantul/mobile.git', 1, '2025-01-14 17:03:05', '2025-01-17 15:06:16', NULL),
(9, 2, 12, 12, 3, 1, '2025-01-14', '2025-01-14', '2025-01-16 00:53:17', 100, 'Laporan Helpdesk 14 Januari 2025 Status : Clear - ArjaTel - Kendala voucher nyangkut - Supriyadi - Request pengecekan status pembayaran data tagihan - Alkabapay - Request generate data tagihan siswa - Alkabapay - Request penyesuaian data tagihan siswa - Alkabapay - Kendala saat melakukan proses pembayaran - Wazapbro - Status done, namun pesan tidak terkirim (Jaya metro) - Status : On Progress - Cepu - Request penyesuaian rekapitulasi laporan, modul laporan - Malinda - No referensi tidak muncul - Malinda - Request di tambahakan untuk cetakan Tanda Terima', NULL, '1736849251_0e568cd73fcfee14019c.png', 'tanpa tautan', 1, '2025-01-14 17:04:18', '2025-01-16 00:53:17', NULL),
(10, 9, 16, 16, 3, 3, '2025-01-14', '2025-01-14', '2025-01-16 00:57:05', 100, 'Fitur Pembuatan Rujukan BPJS - Klinik Satmoko', NULL, '1736849654_5b9cd34d8a26e7b246b9.png', 'https://kliniksatmoko.desmedic.id/index.php/rajal/pelayanan/form/2501140001/kunjungan#tindak-lanjut', 1, '2025-01-14 17:09:07', '2025-01-16 00:57:05', NULL),
(11, 4, 8, 8, 3, 1, '2025-01-14', '2025-01-14', '2025-01-16 00:53:33', 100, '100%', NULL, '1736849746_0732e90e86a57e9baa2d.png', 'https://web.whatsapp.com/ 10.254.10.4(ip db)', 1, '2025-01-14 17:11:03', '2025-01-16 00:53:33', NULL),
(12, 2, 25, 25, 3, 3, '2025-01-17', '2025-01-17', '2025-01-17 15:10:59', 100, 'Tiket Baluran - Penambahan fitur pembayaran QRIS BRI', NULL, '1737078814_1f148ad4bdb5f7be6df9.png', 'https://descloud.desnet.id/s/TfjR3dkWX67SEk9', 1, '2025-01-14 17:15:30', '2025-01-17 15:10:59', NULL),
(13, 9, 16, 16, 3, 3, '2025-01-15', '2025-01-15', '2025-01-16 00:57:23', 100, 'Fitur Tampilan Referensi Poli dan Dokter Antrian Online BPJS - Klinik Satmoko', NULL, '1736927020_3ce7a5b8984c0485f80d.png', 'https://simrs.desnet.online/simklinik_satmoko/index.php/bpjs/antrean/referensi_poli', 1, '2025-01-14 17:18:04', '2025-01-16 00:57:23', NULL),
(14, 9, 16, 16, 3, 3, '2025-01-15', '2025-01-15', '2025-01-16 00:57:38', 100, 'Fitur Antrian Display - Klinik Satmoko', NULL, '1736927088_9e62ec64b7c6f224d000.png', 'https://simrs.desnet.online/simklinik_satmoko/index.php/bpjs/antrean/dashboard_antrean', 1, '2025-01-14 17:38:21', '2025-01-16 00:57:38', NULL),
(15, 3, 22, 22, 3, 1, '2025-01-16', '2025-01-15', '2025-01-17 15:08:07', 100, 'Membuat video tutorial penggunaan website DPRD Wonogiri, dikarenakan dahulu hanya berupa userguide https://drive.google.com/drive/folders/1RUSreb4CCaxLCDoQScCzxnlnSNT9EXxH?usp=sharing', NULL, '1736903217_2011370693e1e5c9372e.png', 'https://drive.google.com/drive/folders/1RUSreb4CCaxLCDoQScCzxnlnSNT9EXxH?usp=sharing', 1, '2025-01-15 08:01:24', '2025-01-17 15:08:07', NULL),
(16, 3, 22, 22, 3, 1, '2025-01-16', '2025-01-15', '2025-01-17 15:08:16', 100, 'Hapus link URL Judol pada web Diskominfo Wonogiri', NULL, '1736907911_55bed368fca347233c18.png', 'https://diskominfo.wonogirikab.go.id/portal/WDBOS/', 1, '2025-01-15 08:03:26', '2025-01-17 15:08:16', NULL),
(17, 2, 25, 25, 1, 3, '2025-01-17', NULL, NULL, 0, 'Penambahan fitur pembayaran QRIS BRI', NULL, NULL, NULL, NULL, '2025-01-15 08:59:49', '2025-01-15 09:00:04', '2025-01-15 09:00:04'),
(18, 4, 7, 7, 3, 1, '2025-01-15', '2025-01-15', '2025-01-15 18:09:14', 100, 'perbaikan fungsi cron split jr', NULL, '1736939354_a3261b9eb0c0c4b0d90d.png', '/home/support/www/samsat/application/controllers/sinkron_jr/posting_jr_pusat_limit', 7, '2025-01-15 09:06:20', '2025-01-15 18:09:14', NULL),
(19, 7, 26, 26, 3, 3, '2025-01-23', '2025-01-15', '2025-01-17 16:22:08', 100, 'Menambah Form Kelompok untuk user kelompok dan Form KTH untuk user penyuluh.', NULL, '1736916860_6834916db870f9222b63.jpg', 'http://git.desnet.id/dlhk_jateng/sikajeng_mobile', 1, '2025-01-15 09:19:33', '2025-01-17 16:22:08', NULL),
(20, 2, 19, 19, 3, 3, '2025-01-16', '2025-01-16', '2025-01-17 15:08:26', 100, 'penyesuaian aplikasi sportax fotografi sesuai request dari client - hide daftar harga - hide penilaian user jika statusnya != 7 - penambahan hint text', NULL, '1736995425_bd6ffee6f5e73efd8d48.jpg', 'https://descloud.desnet.id/s/qCFmsqsYwJy3aDz', 1, '2025-01-15 09:25:32', '2025-01-17 15:08:26', NULL),
(21, 4, 7, 7, 3, 1, '2025-01-15', '2025-01-15', '2025-01-15 18:11:53', 100, 'perbaikan query laporan no 2 harian', NULL, '1736939513_ca07eebdb86a31c8e501.png', 'http://10.254.10.5/samsat/index.php/laporan_08/text/harian/all/0/-/08/2025-01-04', 7, '2025-01-15 09:41:46', '2025-01-15 18:11:53', NULL),
(22, 4, 7, 7, 3, 1, '2025-01-15', '2025-01-15', '2025-01-15 18:14:20', 100, 'perbaikan informasi anjungan', NULL, '1736939660_a16a711d2cc812820d27.png', 'http://10.254.10.5/samsat/index.php/anjungan', 7, '2025-01-15 09:43:49', '2025-01-15 18:14:20', NULL),
(23, 4, 7, 7, 3, 1, '2025-01-15', '2025-01-15', '2025-01-15 18:16:14', 100, 'penambahan informasi opsen api web bapenda', NULL, '1736939774_7b246f3ed65a04db1c40.png', 'http_request(\"http://10.254.10.8/api_sos/index.php/api/proses/info_pajak/na/BG/nb/$key1/nc/$nopol3/key/$key/format/json\")', 7, '2025-01-15 09:44:18', '2025-01-15 18:16:14', NULL),
(24, 4, 8, 8, 3, 1, '2025-01-15', '2025-01-15', '2025-01-16 00:55:22', 100, 'pembuatan data laporan kendaraan jalan dukcapil, dan pembuatan data jumlah kendaraan menurut jenis daftar', NULL, '1736912339_94ce5846463809258df2.xlsx', 'https://descloud.desnet.id/s/B6tymiaaH2SG5d4   ', 1, '2025-01-15 10:15:54', '2025-01-16 00:55:22', NULL),
(25, 9, 10, 10, 3, 1, '2025-01-15', '2025-01-15', '2025-01-16 00:57:54', 100, 'Relayout surat keterangan sakit', NULL, '1736917134_5840c3a1cf46af05c5d7.png', 'https://munawwarah.desmedic.id/index.php/rajal/pelayanan/cetak_suket_sakit/2501140014/01.07', 1, '2025-01-15 11:56:35', '2025-01-16 00:57:54', NULL),
(26, 3, 20, 20, 3, 1, '2025-01-15', '2025-01-15', '2025-01-15 12:34:18', 100, 'Support website https://jdihdprd.wonogirikab.go.id/ ada notif dr Firewall yg kami pasang ada backdoor yg masuk', NULL, '1736919258_b7f82ac979dded422381.jpeg', 'https://jdihdprd.wonogirikab.go.id/', 20, '2025-01-15 12:33:12', '2025-01-15 12:34:18', NULL),
(27, 3, 20, 20, 3, 1, '2025-01-15', '2025-01-15', '2025-01-15 12:36:08', 100, 'Support cek Listing Properti yang sudah banyak tp kok ga muncul di website https://rumahotdeal.com/kategori-properti/rumah/', NULL, '1736919368_9ea66a10cad35b8bb286.jpeg', 'https://rumahotdeal.com/kategori-properti/rumah/', 20, '2025-01-15 12:35:14', '2025-01-15 12:36:08', NULL),
(28, 5, 23, 6, 3, 3, '2025-01-17', '2025-01-15', '2025-01-17 10:13:25', 100, 'Template Front End', NULL, '1736930676_167198da2ae774b196d4.png', 'http://localhost/git/dishub/public/login', 1, '2025-01-15 13:22:12', '2025-01-17 10:13:25', NULL),
(29, 5, 18, 6, 3, 3, '2025-01-24', '2025-01-22', '2025-01-28 06:32:58', 100, 'Kelola User', NULL, '1737532219_f8012c90f76408feb8a8.png', 'belum ada demo', 1, '2025-01-15 13:23:55', '2025-01-28 06:32:58', NULL),
(30, 5, 18, 6, 3, 3, '2025-01-24', '2025-01-24', '2025-01-28 06:33:07', 100, 'Data Kendaraan', NULL, '1737713583_8e474445172c16d99224.png', 'belum ada demo', 1, '2025-01-15 13:24:22', '2025-01-28 06:33:07', NULL),
(31, 5, 18, 6, 3, 3, '2025-01-24', '2025-01-24', '2025-01-28 06:34:19', 100, 'Data Trayek', NULL, '1737734120_3fc9f9819e69979c05da.png', 'belum ada demo', 1, '2025-01-15 13:24:43', '2025-01-28 06:34:19', NULL),
(32, 1, 37, 37, 4, 3, '2025-01-17', NULL, NULL, 0, 'API monitoring penyusutan', 'tes', '1736961683_566fa0afe40e3c90aa18.png', 'tes', 6, '2025-01-15 13:24:55', '2025-01-16 00:32:40', NULL),
(33, 5, 6, 6, 1, 3, '2025-01-24', NULL, NULL, 0, 'Jenis Angkutan', NULL, NULL, NULL, NULL, '2025-01-15 13:25:11', '2025-01-30 20:13:01', '2025-01-30 20:13:01'),
(34, 5, 6, 6, 3, 3, '2025-01-24', '2025-01-30', '2025-01-30 20:16:25', 100, 'Data Perusahaan', NULL, '1738242985_7f7997990713bce09434.png', 'http://git.desnet.id/dishub/web_kab_smg/commit/58e945820e2413a3c3d32bdd2e11efc09f7a5572', 6, '2025-01-15 13:26:13', '2025-01-30 20:16:25', NULL),
(35, 5, 6, 6, 1, 3, '2025-01-24', NULL, NULL, 0, 'Kelola Pasal dan Undang-undang', NULL, NULL, NULL, NULL, '2025-01-15 13:26:31', '2025-01-30 20:12:53', '2025-01-30 20:12:53'),
(36, 5, 18, 6, 3, 3, '2025-01-24', '2025-01-24', '2025-01-28 06:34:29', 100, 'Kelola data Pejabat', NULL, '1737735714_aa0b335d450dac47edf4.png', 'belum ada demo,data penjabat = identitas', 1, '2025-01-15 13:27:02', '2025-01-28 06:34:29', NULL),
(37, 5, 18, 6, 3, 3, '2025-01-31', '2025-02-03', '2025-02-06 03:44:19', 100, 'Kelola tarif', NULL, '1738553828_75d6febe659d3ac8ed79.png', 'https://demo81.desnet.online/dishub_kab_smg/public/mst-kelola-tarif', 1, '2025-01-15 13:27:46', '2025-02-06 03:44:19', NULL),
(38, 5, 18, 6, 3, 3, '2025-01-31', '2025-02-03', '2025-02-06 03:44:29', 100, 'Proses Izin Usaha', NULL, '1738597165_3969d06bbc9ca00a56fe.png', 'blm ke up demo', 1, '2025-01-15 13:28:40', '2025-02-06 03:44:29', NULL),
(39, 5, 6, 6, 1, 3, '2025-02-04', NULL, NULL, 0, 'Proses Izin Usaha Tahunan', NULL, NULL, NULL, NULL, '2025-01-15 13:29:11', '2025-01-15 13:29:11', NULL),
(40, 5, 6, 6, 1, 3, '2025-02-04', NULL, NULL, 0, 'Proses Izin Usaha 5 Tahunan', NULL, NULL, NULL, NULL, '2025-01-15 13:29:37', '2025-01-15 13:29:37', NULL),
(41, 5, 6, 6, 1, 3, '2025-02-04', NULL, NULL, 0, 'Proses Izin Insidentil', NULL, NULL, NULL, NULL, '2025-01-15 13:30:10', '2025-01-15 13:30:10', NULL),
(42, 8, 15, 15, 3, 3, '2025-01-15', '2025-01-15', '2025-01-17 10:10:29', 100, 'Menambah upload file di destana', NULL, '1736923109_2d5889276b86dacac7ea.png', 'git', 1, '2025-01-15 13:37:51', '2025-01-17 10:10:29', NULL),
(43, 8, 15, 15, 1, 3, '2025-01-16', NULL, NULL, 100, 'tes', NULL, NULL, NULL, NULL, '2025-01-15 13:45:48', '2025-01-16 01:00:47', '2025-01-16 01:00:47'),
(44, 6, 20, 20, 3, 1, '2025-01-15', '2025-01-15', '2025-01-15 15:23:56', 100, 'Buat Design Logo untuk ISO DESNET', NULL, '1736929436_a144c8a78ba183e584b3.png', 'https://desnet.id/', 20, '2025-01-15 13:48:16', '2025-01-15 15:23:56', NULL),
(45, 2, 18, 18, 3, 3, '2025-01-15', '2025-01-15', '2025-01-17 15:06:36', 100, 'Perubahan format cetak Tanda Terima di Sales Order & Tiket Komplain', NULL, '1736924083_6188b3fe60ceab43ab26.png', 'url perlu login', 1, '2025-01-15 13:51:19', '2025-01-17 15:06:36', NULL),
(46, 2, 18, 18, 3, 3, '2025-01-16', '2025-01-16', '2025-01-17 15:08:48', 100, 'Sinkron aptika,rebuild identik & startupstudio, kemudian bugfix di 1000startupdigital', NULL, '1737020988_269197e2d0411f820999.png', 'aptika', 1, '2025-01-15 13:57:33', '2025-01-17 15:08:48', NULL),
(47, 2, 18, 18, 3, 1, '2025-01-16', '2025-01-16', '2025-01-17 15:09:01', 100, 'Deploy all aptika ke server produksi', NULL, '1737021023_be2ebd61fdc7fb1f1206.png', 'done', 1, '2025-01-15 13:58:02', '2025-01-17 15:09:01', NULL),
(48, 5, 18, 18, 1, 3, '2025-01-24', NULL, NULL, 0, 'Kelola User', NULL, NULL, NULL, NULL, '2025-01-15 14:00:11', '2025-01-15 14:00:37', '2025-01-15 14:00:37'),
(49, 2, 10, 10, 3, 1, '2025-01-15', '2025-01-15', '2025-01-17 15:06:45', 100, 'Pembaruan masa expired link verifikasi pendaftar IKAFH', NULL, '1736924602_a9567585df80186f4600.png', '-', 1, '2025-01-15 14:01:07', '2025-01-17 15:06:45', NULL),
(50, 2, 10, 10, 3, 4, '2025-01-16', '2025-01-17', '2025-01-17 15:09:17', 100, 'Persiapan simulasi Munas 3 IKAFH', NULL, '1737089064_30fdec3feba96b50f461.jpg', '-', 1, '2025-01-15 14:05:19', '2025-01-17 15:09:17', NULL),
(51, 10, 10, 10, 3, 1, '2025-01-15', '2025-01-15', '2025-01-16 00:56:00', 100, 'Mengisi data tanggal PO atas ID FAB 2271 dan menambah required pada form FAB inputan tanggal PO', NULL, '1736926648_4436e86617adc6f62f69.png', 'https://office.desnet.id/index.php/fab_online_non_desfiber/konfirmasi/a376033f78e144f494bfc743c0be3330', 1, '2025-01-15 14:36:25', '2025-01-16 00:56:00', NULL),
(52, 10, 37, 37, 3, 1, '2025-01-15', '2025-01-15', '2025-01-16 00:56:17', 100, 'Generate VA BNI', NULL, '1736929168_ff3639013b972bb00b0e.png', 'https://office.desnet.id/index.php/pelanggan/data_pelanggan', 1, '2025-01-15 14:43:11', '2025-01-16 00:56:17', NULL),
(53, 10, 37, 37, 3, 1, '2025-01-15', '2025-01-15', '2025-01-16 00:56:31', 100, 'upload bukti bayar pada proforma invoice kemudian sistem secara otomatis mengirim email request invoice ke tim finance', NULL, '1736927196_8852007437a118852fcc.png', 'https://office.desnet.id/index.php/proforma_invoice/history', 1, '2025-01-15 14:44:54', '2025-01-16 00:56:31', NULL),
(54, 2, 14, 14, 3, 1, '2025-01-15', '2025-01-15', '2025-01-17 15:06:57', 100, '[al fikri alkabapay] open filter tahun ajaran rekap', NULL, '1736928340_344e2bb462566d0cdb3f.png', 'https://alkabapay.alazharkalibanteng.or.id/', 1, '2025-01-15 14:57:17', '2025-01-17 15:06:57', NULL),
(55, 2, 17, 17, 3, 1, '2025-01-15', '2025-01-15', '2025-01-15 14:58:46', 100, 'Testing Malinda 1.0.2 versi iOS dan Update AppStore IOS malinda versi 1.0.2', NULL, '1736927926_351615462f56e00e778c.png', 'https://appstoreconnect.apple.com/apps/6738149145/distribution', 17, '2025-01-15 14:57:25', '2025-01-15 14:58:46', NULL),
(56, 2, 14, 14, 3, 1, '2025-01-15', '2025-01-15', '2025-01-17 15:07:07', 100, '[al fikri alkabapay] perpindahan tagihan ke kelas baru a/n - Arkhenzio Ramadhanish Kusumawardani 7C ke 7A', NULL, '1736928460_515ffa74d2ada3dedc09.png', 'https://alkabapay.alazharkalibanteng.or.id/', 1, '2025-01-15 15:01:02', '2025-01-17 15:07:07', NULL),
(57, 2, 17, 17, 3, 3, '2025-01-15', '2025-01-15', '2025-01-15 15:03:40', 100, 'Memperbaiki Hasil Review Playstore Wazapbro', NULL, '1736928220_48c1a942885d74ac962f.png', 'Sudah dilakukan upload ulang ke playstore; https://play.google.com/store/apps/details?id=com.chatwoot.desnet', 17, '2025-01-15 15:02:23', '2025-01-15 15:03:40', NULL),
(58, 2, 14, 14, 3, 1, '2025-01-15', '2025-01-15', '2025-01-17 15:07:23', 100, '[al fikri alkabapay] generate tagihan dan tanggungan up a/n - Cairolima Daud H - Ardyasa Satria Negara', NULL, '1736928630_31aefeb4e42b8421e578.png', 'https://alkabapay.alazharkalibanteng.or.id/', 1, '2025-01-15 15:03:40', '2025-01-17 15:07:23', NULL),
(59, 11, 22, 22, 3, 1, '2025-01-16', '2025-01-15', '2025-01-17 15:19:02', 100, 'Cleaning spam komentar pada website existing, karena develop akan menggunakan source dari web existing.', NULL, '1736929448_d07c95b2a71729a0e3c9.png', 'https://bprartomoro.co.id/wp-admin/edit-comments.php', 1, '2025-01-15 15:20:34', '2025-01-17 15:19:02', NULL),
(60, 6, 24, 20, 3, 1, '2025-01-16', '2025-01-16', '2025-01-17 15:09:30', 100, '1.Design Icon 2 Fitur di DESMEDIC Rumah Sakit & DESMEDIC Klinik 2. Design Page Portal aplikasi DESMEDIC', NULL, '1737042483_e6b6782029a221fe9c8c.png', 'https://www.figma.com/design/zvKqhKZcgQhw8wws0BLOQv/Untitled?node-id=1-2&t=VrfshkMjFxrFLZWY-1', 1, '2025-01-15 15:22:39', '2025-01-17 15:09:30', NULL),
(61, 2, 14, 14, 3, 1, '2025-01-16', '2025-01-16', '2025-01-17 16:10:38', 0, '[al fikri alkabapay] migrasi data dari aplikasi pmb ke alkabapay a/n - Catalulla Tsamara Arfan.', NULL, '1737020788_7d3ba1d4ab9dfafd62b1.png', 'https://alkabapay.alazharkalibanteng.or.id/', 1, '2025-01-15 15:24:30', '2025-01-17 16:10:38', NULL),
(62, 6, 24, 20, 3, 1, '2025-01-17', '2025-01-17', '2025-01-17 16:05:09', 100, 'Design Loginpage untuk Sistem DESMEDIC Klinik', NULL, '1737051989_badf4ce507efbe0af39f.png', 'https://www.figma.com/design/zvKqhKZcgQhw8wws0BLOQv/Untitled?node-id=31-189&t=xkg8i6VHTBjmXe6v-1', 1, '2025-01-15 15:34:16', '2025-01-17 16:05:09', NULL),
(63, 6, 24, 20, 3, 1, '2025-01-23', '2025-01-22', '2025-01-24 13:47:13', 100, 'Design Halaman Dashboard DESMEDIC Klinik, dirombak Layoutingny', NULL, '1737538349_708a3daa530abc883fed.png', 'https://www.figma.com/design/zvKqhKZcgQhw8wws0BLOQv/Untitled?node-id=87-7&t=s0Fcu1qlNXWafVEU-1', 20, '2025-01-15 15:38:55', '2025-01-24 13:47:13', NULL),
(64, 5, 23, 6, 4, 3, '2025-01-17', NULL, NULL, 0, 'FE 2', 'data tes', '1737020177_ce1e095d74df22038330.png', 'http://localhost/git/dishub/public/dashboard', 1, '2025-01-15 15:47:28', '2025-01-17 16:05:46', NULL),
(65, 5, 23, 23, 3, 3, '2025-01-15', '2025-01-15', '2025-01-17 10:12:35', 100, 'templating login', NULL, '1736931057_76ff305595087c703473.png', 'http://localhost/git/dishub/public/login', 1, '2025-01-15 15:48:31', '2025-01-17 10:12:35', NULL),
(66, 2, 11, 11, 1, 5, '2025-01-31', NULL, NULL, 20, 'Pembuatan Userguide DLHK Sikajeng Rehabilitasi', NULL, NULL, NULL, NULL, '2025-01-15 15:54:35', '2025-02-03 06:58:54', '2025-02-03 06:58:54'),
(68, 2, 10, 10, 3, 3, '2025-01-15', '2025-01-15', '2025-01-17 15:07:34', 100, 'Fitur Log Verifikasi pada web Booking Merbabu', NULL, '1736931745_ab088e5099918f1cf007.png', 'https://demo74.desnet.id/dev-merbabu/kelola/verifikasi/index', 1, '2025-01-15 16:01:33', '2025-01-17 15:07:34', NULL),
(69, 10, 37, 37, 3, 1, '2025-01-15', '2025-01-15', '2025-01-16 00:56:45', 100, 'Penyesuaian nominal billing desfiber karna salah input', NULL, '1736932351_755f434a17c2aaf08d65.png', 'https://office.desnet.id/index.php/billing_desfiber/history', 1, '2025-01-15 16:10:31', '2025-01-16 00:56:45', NULL),
(70, 1, 15, 15, 3, 3, '2025-01-15', '2025-01-15', '2025-01-17 15:07:51', 100, 'Fitur untuk kelola master kategori inventory & aset', NULL, '1736934093_5c1e97a68777c897c747.png', 'Bisa dicek di git dan Postman BE', 1, '2025-01-15 16:39:07', '2025-01-17 15:07:51', NULL),
(71, 1, 15, 15, 3, 3, '2025-01-17', '2025-01-15', '2025-01-17 15:19:16', 100, 'Fitur untuk kelola master unit', NULL, '1736934390_ff20a6ab74c295b3a643.png', 'Bisa dicek di git dan Postman BE', 1, '2025-01-15 16:44:42', '2025-01-17 15:19:16', NULL),
(72, 1, 15, 15, 3, 3, '2025-01-23', '2025-01-15', '2025-01-17 15:19:30', 100, 'Fitur untuk Kelola master vendor atau supplier', NULL, '1736934575_ffe410c40a19d4335774.png', 'Bisa dicek di git dan Postman BE', 1, '2025-01-15 16:48:07', '2025-01-17 15:19:30', NULL),
(73, 1, 15, 15, 3, 3, '2025-01-24', '2025-01-16', '2025-01-17 15:19:41', 100, 'Kelola Data Lokasi (Gedung, Lantai, Ruang)', NULL, '1736995877_15e82b8cafe352e1a7b0.png', 'Bisa dicek di git dan Postman BE', 1, '2025-01-15 16:51:44', '2025-01-17 15:19:41', NULL),
(74, 2, 12, 12, 3, 1, '2025-01-15', '2025-01-15', '2025-01-17 08:34:55', 0, 'Laporan Helpdesk 15 Januari 2025 Status : Clear - Purinirmala - list data loading pada modul rajal - Munawarah - Request penyesuaian cetak surat keterangan sakit - Alkabapay - Salah input tahun ajar tagihan - Alkabapay - Request pindah history pembayaran tagihan - Alkabapay - Request buka seluruh tahun pada filter tahun Status : On Progress - Cepu - Request penyesuaian pada poli medical checkup - Malinda - Tampilan mobile iOS tidak sesuai - Munas - Request export data alumni yang berkerja di kejaksaan', NULL, '1736934904_dd45ede25099560454ed.png', 'tanpa tautan', 7, '2025-01-15 16:54:07', '2025-01-17 08:34:55', NULL),
(75, 4, 7, 7, 3, 1, '2025-01-15', '2025-01-15', '2025-01-15 18:18:36', 100, 'perbaikan info no rekening lap no 22 harian', NULL, '1736939916_e2ad4cb08c2f34409d72.png', 'http://10.254.10.5/samsat/index.php/Slip_opsen/slip2/2/-/01/2025-01-15', 7, '2025-01-15 18:17:09', '2025-01-15 18:18:36', NULL),
(76, 3, 22, 22, 3, 1, '2025-01-16', '2025-01-16', '2025-01-17 16:01:41', 100, 'Web https://kec.giriwoyo.wonogirikab.go.id/ tidak dapat diakses. - Action restore web ke tanggal 14 Januari 2025', NULL, '1736989699_532cf0a5fa1186c0dcf8.png', 'https://kec.giriwoyo.wonogirikab.go.id/', 1, '2025-01-16 08:06:27', '2025-01-17 16:01:41', NULL),
(77, 11, 24, 24, 3, 7, '2025-01-16', '2025-01-16', '2025-01-17 16:01:25', 100, 'tambahan page undercontraction & ganti ukuran font', NULL, '1736991326_11c3a6a83975c088e1e7.png', 'https://www.figma.com/design/NaZeOXamyYEzulZEfwqmTx/BPR-ARTHO-MORO?node-id=80-2&t=y9W3FWzb6cxzTgfD-1', 1, '2025-01-16 08:31:46', '2025-01-17 16:01:25', NULL),
(78, 10, 37, 37, 3, 3, '2025-01-17', '2025-01-17', '2025-01-17 16:11:30', 100, 'Pembuatan Modul Kontrol Piutang', NULL, '1737104443_32ced5f9d2192a2df898.png', 'https://office.desnet.id/index.php/laporan/data_kontrol_piutang', 1, '2025-01-16 09:12:59', '2025-01-17 16:11:30', NULL),
(79, 3, 22, 22, 3, 1, '2025-01-16', '2025-01-16', '2025-01-17 16:01:56', 100, 'Tidak bisa login admin pada web SMAN 14 Semarang - Action reset password admin', NULL, '1736994108_98defadbfde4febeb732.png', 'https://sman14-smg.sch.id/des-admin/', 1, '2025-01-16 09:20:00', '2025-01-17 16:01:56', NULL),
(80, 2, 7, 7, 3, 3, '2025-01-16', '2025-01-16', '2025-01-16 10:44:45', 100, '[Hanter jr]penambahan api generate surat pernyataan', NULL, '1736999085_52d3e3e805e63f3e741e.jpg', 'https://pap.bapenda.sumselprov.go.id/api_d2d_jr/index.php/api/pernyataan/gen_pernyataan/format/json', 7, '2025-01-16 09:26:12', '2025-01-16 10:44:45', NULL),
(81, 2, 7, 7, 3, 3, '2025-01-16', '2025-01-16', '2025-01-16 18:04:20', 100, '[pku gamping] penambahan cms gambar beranda', NULL, '1737025460_6e75d60f67d14b1ae170.jpg', 'https://pkugamping.com/index.php/kelola-imgberanda', 7, '2025-01-16 09:27:16', '2025-01-16 18:04:20', NULL),
(82, 4, 7, 7, 3, 3, '2025-01-17', '2025-01-16', '2025-01-16 18:11:07', 100, 'penyesuaian opsen laporan rekon penerimaan bulanan kotor', NULL, '1737025867_f326d4e8700558fb25aa.png', 'http://10.254.10.5/samsat/index.php/Laporan_excel/Rekon_pnr_kotor/?&end=2025-01-16&start=2025-01-16&up3ad=00', 7, '2025-01-16 09:33:51', '2025-01-16 18:11:07', NULL),
(83, 2, 19, 19, 3, 3, '2025-01-20', '2025-01-20', '2025-01-20 17:04:32', 100, 'konfigurasi API demokit bpbd untuk kebutuhan presales', NULL, '1737352956_a102e36bda590f07604c.png', 'https://demo74.desnet.id/demokit/bpbd/api-bpbd/index.php/api/', 17, '2025-01-16 10:12:08', '2025-01-20 17:04:32', NULL),
(84, 10, 37, 37, 3, 9, '2025-01-16', '2025-01-16', '2025-01-17 16:02:48', 100, 'Meeting dengan Tim NO terkait dengan data Teknis', NULL, '1736997692_b69aff6e7c3dcef9ba94.png', 'https://meet.google.com/qih-ukcj-fpj', 1, '2025-01-16 10:18:43', '2025-01-17 16:02:48', NULL),
(85, 7, 15, 15, 3, 3, '2025-01-17', '2025-01-16', '2025-01-17 16:12:15', 100, '-Menambahkan filter Kabupaten/Kota pada menu Data Penanaman (Jika deicetak juga akan mengikuti filter yg dipilih) -Menambahkan label Upload foto kegiatan dan Map daerah penanaman', NULL, '1737000633_48872a9b6715b7252937.png', 'https://demo81.desnet.online/sikajeng-hibah/rehab/data-penanaman', 1, '2025-01-16 11:07:55', '2025-01-17 16:12:15', NULL),
(86, 3, 22, 22, 3, 1, '2025-01-16', '2025-01-16', '2025-01-17 16:02:57', 100, 'Mengganti header website SMAN 14 Semarang bawaan template menjadi header elementor', NULL, '1737002611_152daf3d5962487a9173.png', 'https://sman14-smg.sch.id/', 1, '2025-01-16 11:39:13', '2025-01-17 16:02:57', NULL),
(87, 3, 22, 22, 3, 1, '2025-01-16', '2025-01-16', '2025-01-17 16:03:08', 100, 'Update template web SMAN 14 Semarang dan pengecekkan fungsional dan tampilan setelah update', NULL, '1737002646_9153318596499e5ba5bf.png', 'https://sman14-smg.sch.id/', 1, '2025-01-16 11:40:16', '2025-01-17 16:03:08', NULL),
(88, 4, 8, 8, 3, 1, '2025-01-16', '2025-01-16', '2025-01-17 08:33:52', 100, 'support SOS dan membuat laporan jumlah data kendaraan jalan request dari puslia', NULL, '1737037875_7924db6ed6e183dd32af.xlsx', 'https://descloud.desnet.id/s/yzPtRMSCn2wSbo5', 7, '2025-01-16 12:01:03', '2025-01-17 08:33:52', NULL),
(89, 3, 22, 22, 3, 1, '2025-01-16', '2025-01-16', '2025-01-17 16:03:28', 100, 'Membuat halaman Akademi Mikrotik di website SMK Muhammadiyah 1 Moyudan', NULL, '1737006242_2bb85f3f6dd4d9d99cc6.png', 'https://smkmuh1moyudan.sch.id/akademi-mikrotik/', 1, '2025-01-16 12:35:21', '2025-01-17 16:03:28', NULL),
(90, 3, 22, 22, 3, 1, '2025-01-16', '2025-01-16', '2025-01-17 16:03:36', 100, 'Membuat menu link LSP di website SMK Muhammadiyah 1 Moyudan', NULL, '1737006167_5942df75b756e7432080.png', 'https://smkmuh1moyudan.sch.id', 1, '2025-01-16 12:36:03', '2025-01-17 16:03:36', NULL),
(91, 3, 22, 22, 3, 1, '2025-01-16', '2025-01-16', '2025-01-17 16:03:42', 100, 'Membuat video tutorial edit halaman Akademi Mikrotik di website SMK Muhammadiyah 1 Moyudan', NULL, '1737011972_adaaccb85074cfb194f2.png', 'https://drive.google.com/drive/folders/1Fvnf1GUfoviC96LtLqPBrZDao3mrCQlx?usp=sharing', 1, '2025-01-16 12:37:52', '2025-01-17 16:03:42', NULL),
(92, 2, 18, 18, 3, 3, '2025-01-16', '2025-01-16', '2025-01-17 15:09:47', 100, 'Support Tirta Error Export CV', NULL, '1737010302_4b5b1048f6d5b0633038.png', 'https://messta.tirta.co.id/', 1, '2025-01-16 13:50:41', '2025-01-17 15:09:47', NULL),
(93, 7, 15, 15, 3, 3, '2025-01-17', '2025-01-16', '2025-01-17 16:14:53', 100, 'Penamabhan module Data Potensi Rencana mangrove', NULL, '1737018097_5ecfc1e8b8061968c07f.png', 'http://localhost/sikajeng-hibah/rehab/data-rencana-mangrove', 1, '2025-01-16 14:27:34', '2025-01-17 16:14:53', NULL),
(94, 7, 15, 15, 3, 3, '2025-01-17', '2025-01-17', '2025-01-17 16:17:31', 100, 'Penambahan Module Potensi Realisasi Mangrove', NULL, '1737101687_28c830d2f76755c27e71.png', 'https://demo81.desnet.online/sikajeng-hibah/rehab/data-realisasi-mangrove', 1, '2025-01-16 14:28:57', '2025-01-17 16:17:31', NULL),
(95, 2, 15, 15, 1, 1, '2025-01-16', NULL, NULL, 0, 'tes', NULL, NULL, NULL, NULL, '2025-01-16 14:32:54', '2025-01-16 14:34:25', '2025-01-16 14:34:25'),
(96, 7, 26, 26, 3, 3, '2025-01-23', '2025-01-20', '2025-01-28 06:35:16', 100, 'Verifikasi penyuluh.', NULL, '1737360095_5529c672dc8148064a63.jpeg', 'http://git.desnet.id/dlhk_jateng/sikajeng_mobile', 1, '2025-01-16 14:48:24', '2025-01-28 06:35:16', NULL),
(97, 2, 10, 10, 3, 1, '2025-01-16', '2025-01-16', '2025-01-17 15:09:58', 100, 'Ubah lib datatable khusus untuk menu peserta MUNAS 3 IKAFH', NULL, '1737014498_4ceda6fc6f189ef7e791.png', 'https://ikafh.desnet.online/index.php/data/peserta_munas2/list', 1, '2025-01-16 14:59:52', '2025-01-17 15:09:58', NULL),
(98, 2, 10, 10, 3, 9, '2025-01-16', '2025-01-16', '2025-01-17 16:10:48', 0, 'Review internal booking merbabu', NULL, '1737019696_48bde60db177628cecd6.jpg', '-', 1, '2025-01-16 15:02:20', '2025-01-17 16:10:48', NULL),
(99, 2, 7, 7, 3, 3, '2025-01-16', '2025-01-16', '2025-01-16 15:18:49', 100, 'hanter - penambahan respon id trx di service insert trx dan perbaikan respon service status', NULL, '1737015529_e6f4331fa4ba06a85df0.jpg', 'https://pap.bapenda.sumselprov.go.id/api_d2d_jr/index.php/api/proses/insert_status/format/json, https://pap.bapenda.sumselprov.go.id/api_d2d_jr/index.php/api/proses/option_status/format/json ', 7, '2025-01-16 15:14:57', '2025-01-16 15:18:49', NULL),
(100, 2, 15, 15, 3, 3, '2025-01-16', '2025-01-16', '2025-01-17 15:10:09', 100, 'Migrasi SIMAS JATENG', NULL, '1737015559_f18b5fbfab10c0d226cf.png', 'http://simasjateng.pentest.jatengprov.go.id', 1, '2025-01-16 15:17:21', '2025-01-17 15:10:09', NULL),
(101, 10, 37, 37, 3, 9, '2025-01-16', '2025-01-16', '2025-01-17 16:03:50', 100, 'Meeting dengan tim LDP', NULL, '1737015605_f318caa148aff74ec0ad.jpeg', 'https://us06web.zoom.us/j/9991509990?pwd=WYbo6tOMnqbxUvBUDb9XrZMpGxtOQg.1&omn=86748699308', 1, '2025-01-16 15:17:22', '2025-01-17 16:03:50', NULL),
(102, 2, 11, 11, 3, 3, '2025-01-16', '2025-01-16', '2025-01-17 15:10:19', 100, 'BPBD Brebes - Pada Email dan No Telepone di tambahkan keterangan Mohon Pastikan Nomor Telepone Aktif WA / Email Aktif.', NULL, '1737020499_e852c38c5f849590e9fe.jpeg', 'https://descloud.desnet.id/s/jTLjWnxBaPAkgQC', 1, '2025-01-16 15:25:09', '2025-01-17 15:10:19', NULL),
(103, 2, 6, 6, 3, 1, '2025-01-16', '2025-01-16', '2025-01-16 15:33:41', 100, 'Support PSIS, - Update tampilan pembelian tiket - Persiapan migrasi ke server baru', NULL, '1737016421_dea8d719aa9ce9c76153.png', 'https://ticket.psis.co.id/public/', 6, '2025-01-16 15:32:16', '2025-01-16 15:33:41', NULL),
(104, 2, 6, 6, 3, 9, '2025-01-16', '2025-01-16', '2025-01-16 15:36:05', 0, 'Meeting transfer-knowledge, training dan persiapan pemindah-tanganan aplikasi PSIS Semarang ke vendor baru', NULL, '1737016565_379f33b3727bb2f8b0ec.png', 'https://psis.co.id/public/', 6, '2025-01-16 15:34:44', '2025-01-16 15:36:05', NULL),
(105, 10, 37, 37, 3, 9, '2025-01-16', '2025-01-16', '2025-01-17 16:03:59', 100, 'Meeting dengan Tim Finance', NULL, '1737016812_a0e6cfa5b039e8a19378.png', 'https://us06web.zoom.us/j/9991509990?pwd=WYbo6tOMnqbxUvBUDb9XrZMpGxtOQg.1&omn=86748699308', 1, '2025-01-16 15:38:54', '2025-01-17 16:03:59', NULL),
(106, 8, 6, 6, 3, 3, '2025-01-17', '2025-01-16', '2025-01-16 15:41:54', 30, 'Fitur lapor yuk', NULL, '1737016914_ac4a290dfe25d710026a.png', 'https://demo81.desnet.online/titir/public/lapor-yuk-laporan', 6, '2025-01-16 15:39:27', '2025-01-16 15:41:54', NULL),
(107, 12, 20, 20, 3, 9, '2025-01-16', '2025-01-16', '2025-01-16 15:58:47', 100, 'Meeting Review Pekerjaan Website', NULL, '1737017927_2ae389aa20e3ef2b76b9.docx', 'https://mail.desnet.id/?client=advanced#6', 20, '2025-01-16 15:55:36', '2025-01-16 15:58:47', NULL),
(108, 6, 9, 9, 3, 7, '2025-01-16', '2025-01-16', '2025-01-17 16:04:10', 100, 'edit masa berlaku brosur desfiber 31 maret 2025', NULL, '1737018035_e279518c545a815057db.jpg', 'tidak ada', 1, '2025-01-16 15:58:37', '2025-01-17 16:04:10', NULL),
(109, 10, 37, 37, 3, 3, '2025-01-16', '2025-01-16', '2025-01-17 16:04:24', 100, 'Export Excel detail billing pelanggan', NULL, '1737019190_edfa94a64df6b219fd87.png', 'https://office.desnet.id/index.php/billing/pelanggan/c3c703bbfa25f2929334f4f4b694d5e0', 1, '2025-01-16 16:18:09', '2025-01-17 16:04:24', NULL),
(110, 2, 14, 14, 3, 1, '2025-01-16', '2025-01-16', '2025-01-17 16:10:56', 0, '[alfikri alkabapay] generate tagihan anak pindahan, a/n - Bara Raharsya Geraldi', NULL, '1737019524_5b98beb3098e9b4ec9f7.png', 'https://alkabapay.alazharkalibanteng.or.id/', 1, '2025-01-16 16:24:40', '2025-01-17 16:10:56', NULL),
(111, 2, 10, 10, 3, 1, '2025-01-16', '2025-01-17', '2025-01-17 15:10:42', 100, 'Export data solo traveler booking merbabu', NULL, '1737089084_09ab0cb068fc764113d8.jpg', '-', 1, '2025-01-16 16:26:42', '2025-01-17 15:10:42', NULL),
(112, 1, 21, 21, 3, 3, '2025-01-21', '2025-01-30', '2025-01-30 16:20:42', 0, 'Fitur untuk kelola master unit', NULL, '1738198959_c7315d02a0e945fee7ea.jpg', 'http://localhost/alfikri_inventory/public/index.php/unit', 1, '2025-01-16 16:34:58', '2025-01-30 16:20:42', NULL),
(113, 5, 23, 23, 3, 3, '2025-01-16', '2025-01-16', '2025-01-17 10:13:10', 100, 'Layouting page dashboard.', NULL, '1737020156_de20d75828d6cf608ed6.png', 'http://localhost/git/dishub/public/dashboard', 1, '2025-01-16 16:34:59', '2025-01-17 10:13:10', NULL),
(114, 9, 16, 16, 3, 3, '2025-01-16', '2025-01-16', '2025-01-17 16:05:24', 100, 'Pembuatan API Desmedic x Wazapbro', NULL, '1737020250_52d61165d09b9fdfd261.png', 'https://simrs.desnet.online/api_desmedic/index.php/api/master/get_poli', 1, '2025-01-16 16:35:54', '2025-01-17 16:05:24', NULL),
(115, 2, 12, 12, 3, 1, '2025-01-16', '2025-01-16', '2025-01-17 08:34:46', 100, 'Laporan Helpdesk 16 Januari 2025 Status : Clear - Alkabapay - Request generate tagihan siswa - Munas - Kendala error saat akses menu daftar peserta - Tracer Study - Request reset password akun alumni - Wazapbro - Request tinjauan buka blokir akun (KPP Madya Semarang) - PuriNirmala - Kendala saat entri CPPT, modul ranap - E-Tirta - Kendala saat download CV Karyawan - Desfiber - Request pengecekan 2 data tagihan pelanggan - ArjaTel - Kendala 4 voucher nyangkut (Wates) - Spektrum - Kendala user tidak dapat login - Baluran - Data tidak tampil saat memilih resort tertentu Status : On Progress - None *Rekap Laporan Minggu 3 Januari 2025 https://descloud.desnet.id/s/sjwbmMDngy2Q3Hc', NULL, '1737022414_ca199ecdedc70807d5d8.png', 'tanpa tautan', 7, '2025-01-16 17:11:01', '2025-01-17 08:34:46', NULL),
(116, 4, 7, 7, 3, 3, '2025-01-16', '2025-01-16', '2025-01-16 20:52:46', 100, 'penambahan subsidi angkutan orang di kutipan dan sp', NULL, '1737035566_d7048c6d7acc9b519d3d.jpg', 'sp_get_biaya, kutipan', 7, '2025-01-16 20:38:47', '2025-01-16 20:52:46', NULL),
(117, 3, 22, 22, 3, 1, '2025-01-17', '2025-01-17', '2025-01-17 16:10:18', 100, 'Menambahkan button mengarah ke halaman Mikrotik Akademi di halaman TKJ - Website SMK Muhammadiyah 1 Moyudan', NULL, '1737082935_4ba24d6264a5dde41914.png', 'https://smkmuh1moyudan.sch.id/teknik-komputer-jaringan-tkj/', 1, '2025-01-17 07:48:40', '2025-01-17 16:10:18', NULL),
(118, 4, 7, 7, 3, 3, '2025-01-20', '2025-01-20', '2025-01-20 17:09:32', 100, 'penyesuaian opsen laporan REKON PENERIMAAN BULANAN KOTOR POKOK', NULL, '1737367772_7099a7660ff96ea640c4.png', 'http://10.254.10.5/samsat/index.php/Laporan_excel/Rekon_pnr_kotor_pokok/?&end=2025-01-20&start=2025-01-20&up3ad=00', 7, '2025-01-17 08:44:12', '2025-01-20 17:09:32', NULL),
(119, 4, 8, 8, 3, 1, '2025-01-17', '2025-01-17', '2025-01-17 19:31:06', 100, 'support SOS', NULL, '1737114057_b8c55d68736e5450980f.png', 'https://web.whatsapp.com/', 7, '2025-01-17 08:54:40', '2025-01-17 19:31:06', NULL),
(120, 2, 6, 6, 3, 1, '2025-01-17', '2025-01-17', '2025-01-17 09:21:20', 100, 'fixing bug baluran', NULL, '1737080480_7471af738f1a10a8524a.png', 'https://jejakbanteng.id/app_baluran/index.php/tematik', 6, '2025-01-17 09:19:30', '2025-01-17 09:21:20', NULL),
(121, 2, 6, 6, 3, 1, '2025-01-17', '2025-01-17', '2025-01-17 09:22:40', 100, 'fixing bug api trajumastra', NULL, '1737080560_de3864c89a048765835a.png', 'http://git.desnet.id/dkp_bantul/web/commit/36a120f22cb91cfc2f03fb1942da43108dc744be', 6, '2025-01-17 09:19:47', '2025-01-17 09:22:40', NULL),
(122, 2, 6, 6, 3, 1, '2025-01-17', '2025-01-17', '2025-01-17 09:30:15', 100, 'PSIS : Update template dan penyesuian layout tiket A4', NULL, '1737081015_91b2d114d02739c74d0f.jpeg', 'https://apigate.psis.co.id/public/index.php/cetak/cetak_tiket_a4', 6, '2025-01-17 09:26:21', '2025-01-17 09:30:15', NULL),
(123, 3, 22, 22, 3, 1, '2025-01-17', '2025-01-17', '2025-01-17 16:18:39', 100, 'Menambahkan menu page Mikrotik Akademi di menu header web SMK Muhammadiyah 1 Moyudan', NULL, '1737083017_5423162322cc80f855a1.png', 'https://smkmuh1moyudan.sch.id/akademi-mikrotik/', 1, '2025-01-17 09:53:15', '2025-01-17 16:18:39', NULL),
(124, 8, 7, 7, 3, 3, '2025-01-21', '2025-01-20', '2025-01-20 15:39:32', 100, 'penyesuaian enkripsi no identitas, no telp. no hp, email di relawan', NULL, '1737362372_f7dfd9ee254d9fb08ba7.png', 'http://localhost/titir2/public/titircp/pantau-bencana/relawan/edit/ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4', 7, '2025-01-17 10:14:04', '2025-01-20 15:39:32', NULL),
(125, 3, 22, 22, 3, 1, '2025-01-17', '2025-01-17', '2025-01-17 16:19:04', 100, 'Upload video instagram pada testimoni web https://alazharkalibanteng.or.id', NULL, '1737085168_2030f11c8503c90dd14c.png', 'https://alazharkalibanteng.or.id/testimonial/zulkifli-hasan/', 1, '2025-01-17 10:34:46', '2025-01-17 16:19:04', NULL),
(126, 4, 7, 7, 3, 1, '2025-01-17', '2025-01-17', '2025-01-17 14:15:13', 100, 'pengecekan query sanksi laporan no 6 harian', NULL, '1737098113_a83f81183a1b477eca60.png', 'http://10.254.10.5/samsat/index.php/Laporan_06/text/2/-/00/2025-01-17', 7, '2025-01-17 11:24:36', '2025-01-17 14:15:13', NULL),
(127, 2, 18, 18, 3, 3, '2025-01-17', '2025-01-17', '2025-01-17 15:11:12', 100, '1000startupdigital fix styling dan tambah multibahasa (terlewat)', NULL, '1737088303_dfe17b7b98c780ae5dd7.png', 'https://demo-1000startupdigital.desnet.online/', 1, '2025-01-17 11:30:08', '2025-01-17 15:11:12', NULL),
(128, 2, 18, 18, 3, 3, '2025-01-17', '2025-01-17', '2025-01-17 15:11:51', 100, 'Revisi banner tambah info ratio image dan periode banner aktif', NULL, '1737088372_ae01444667136b55e0d5.png', 'https://demo-aptika.desnet.online/', 1, '2025-01-17 11:32:17', '2025-01-17 15:11:51', NULL),
(129, 2, 10, 10, 3, 9, '2025-01-17', '2025-01-17', '2025-01-17 15:12:22', 100, 'Simulasi Internal Munas 3', NULL, '1737089140_50ef9f1114bcb518695f.jpg', '-', 1, '2025-01-17 11:45:21', '2025-01-17 15:12:22', NULL),
(130, 2, 10, 10, 3, 1, '2025-01-17', '2025-01-17', '2025-01-17 15:13:17', 100, 'Recording Video alur voting', NULL, '1737089177_5ae5b161eff815fb98eb.jpg', '-', 1, '2025-01-17 11:46:03', '2025-01-17 15:13:17', NULL),
(131, 2, 10, 10, 3, 1, '2025-01-20', '2025-01-20', '2025-01-24 14:08:45', 100, 'Check export hasil voting munas 3', NULL, '1737344039_83668ecde49d4e16287b.png', 'https://ikafh.desnet.online/index.php/data/voting/cetak/f6dcbe6f643941991fb6d15294100d5ce8be22f17de5ded49d9b3ec81ef2e1f79f9c1d8eb735192d9aa736e170d0ec7c54884feaf22a9acc750754e2706e2cf0CIEkqBQmv6TAPK9olhDb4gApRgSl0pEt4Kkbl-MB46c~', 1, '2025-01-17 11:47:26', '2025-01-24 14:08:45', NULL),
(132, 2, 10, 10, 3, 1, '2025-01-20', '2025-01-17', '2025-01-24 14:09:05', 100, 'Tambah menu kelola voting di admin', NULL, '1737109873_4b5485813a09fb67e4f3.jpg', '-', 1, '2025-01-17 11:48:00', '2025-01-24 14:09:05', NULL),
(133, 2, 11, 11, 3, 3, '2025-01-17', '2025-01-17', '2025-01-17 15:17:34', 100, 'BPBD Brebes - Keyboard dibuat bisa enter kebawah', NULL, '1737096296_59d9af8163f4734431af.jpeg', 'https://descloud.desnet.id/s/jTLjWnxBaPAkgQC', 1, '2025-01-17 13:43:34', '2025-01-17 15:17:34', NULL),
(134, 2, 11, 11, 1, 3, '2025-01-20', NULL, NULL, 15, 'BPBD Brebes - Penyesuaian Detail Berita foto dibuat full. Saat ini masih terpotong', NULL, NULL, NULL, NULL, '2025-01-17 13:46:24', '2025-01-21 10:25:59', '2025-01-21 10:25:59'),
(135, 2, 11, 11, 1, 3, '2025-01-20', NULL, NULL, 0, 'BPBD Brebes - Detail panduan bencana foto Agar bisa di buat multi dan dapat di Geser', NULL, NULL, NULL, NULL, '2025-01-17 13:47:34', '2025-01-21 10:26:06', '2025-01-21 10:26:06'),
(136, 9, 16, 16, 3, 3, '2025-01-20', '2025-01-20', '2025-01-24 14:09:19', 100, 'Pembuatan Antrian Display - RSIA Irhamna', NULL, '1737383633_3cef98e941744282ebeb.png', 'https://irhamna.simrs.desnet.online/index.php/app/display/tv', 1, '2025-01-17 14:28:55', '2025-01-24 14:09:19', NULL),
(137, 9, 16, 16, 1, 3, '2025-01-21', NULL, NULL, 10, 'Penyesuaian Laporan RL 1.2 - RSUD Pemalang', NULL, NULL, NULL, NULL, '2025-01-17 14:29:41', '2025-01-21 10:30:26', '2025-01-21 10:30:26'),
(138, 2, 14, 14, 3, 9, '2025-01-17', '2025-01-17', '2025-01-17 15:17:44', 100, 'review akhir + simulasi live aplikasi booking merbabu', NULL, '1737099288_8ec30fbfda6488d801aa.png', 'https://booking.tngunungmerbabu.org/', 1, '2025-01-17 14:33:17', '2025-01-17 15:17:44', NULL),
(139, 9, 16, 16, 1, 3, '2025-01-17', NULL, NULL, 0, 'Switch kirim data satu sehat ke produksi - Klinik Dermanina SCCR', NULL, NULL, NULL, NULL, '2025-01-17 15:28:20', '2025-01-17 15:29:37', '2025-01-17 15:29:37'),
(140, 11, 22, 22, 3, 1, '2025-01-17', '2025-01-17', '2025-01-17 16:21:45', 100, 'Membuat Halaman Under Maintenance karena develop langsung di web existing produksi', NULL, '1737104247_5990cd182b80094e0e52.png', 'https://bprartomoro.co.id', 1, '2025-01-17 15:53:31', '2025-01-17 16:21:45', NULL),
(141, 2, 11, 11, 3, 3, '2025-01-17', '2025-01-17', '2025-01-17 16:04:41', 100, 'Siska GB - Penyesuaian Api mbkm guna bangsa demo ke Api Produksi Dan Penyesuaian error kendala Api produksi', NULL, '1737104516_88b7d9e8c896a81007c2.png', 'https://api.mbkm.gunabangsa.ac.id/public/do-login', 1, '2025-01-17 15:59:16', '2025-01-17 16:04:41', NULL),
(142, 11, 22, 22, 3, 3, '2025-01-20', '2025-01-20', '2025-01-24 14:09:49', 100, 'Membuat Template Header', NULL, '1737334540_d381846518ed9b7177c6.png', 'https://bprartomoro.co.id/', 1, '2025-01-17 15:59:45', '2025-01-24 14:09:49', NULL),
(143, 11, 22, 22, 3, 3, '2025-01-20', '2025-01-20', '2025-01-24 14:10:02', 100, 'Membuat Template Footer', NULL, '1737337919_958f9de95a7fe50bae2c.png', 'https://bprartomoro.co.id/', 1, '2025-01-17 16:00:30', '2025-01-24 14:10:02', NULL),
(144, 10, 37, 37, 3, 1, '2025-01-17', '2025-01-17', '2025-01-17 16:11:55', 100, 'Perubahan filter tanggal kirim data PO pada menu Kirim PO Non FAL', NULL, '1737104568_d2476d75512a3849045f.png', 'https://office.desnet.id/index.php/kirim_po/history', 1, '2025-01-17 16:01:43', '2025-01-17 16:11:55', NULL),
(145, 11, 22, 22, 3, 3, '2025-01-20', '2025-01-20', '2025-01-24 14:10:16', 100, 'Membuat Halaman Home', NULL, '1737356343_6b0d82458d68b535413c.png', 'https://bprartomoro.co.id/', 1, '2025-01-17 16:02:20', '2025-01-24 14:10:16', NULL),
(146, 9, 15, 15, 3, 3, '2025-01-17', '2025-01-17', '2025-01-17 16:19:14', 100, 'Penyesuian retribusi pada pendaftaran rajal lokasi POLI MEDICAL CHECKUP', NULL, '1737104947_e935477c711a201d2e92.png', 'Sudah tak update di git dan server CEPU', 1, '2025-01-17 16:07:10', '2025-01-17 16:19:14', NULL),
(147, 9, 15, 15, 3, 3, '2025-01-17', '2025-01-17', '2025-01-17 16:21:33', 100, 'SIMKLINIK SATMOKO Penyesuaian pada bug module rajal tab diagnosis. Terkadang select2 tidak terload jika koneksi tidak stabil', NULL, '1737105124_446616ad8f1ffd0d6790.png', 'Sudah tak update di git dan serve', 1, '2025-01-17 16:10:33', '2025-01-17 16:21:33', NULL),
(148, 4, 7, 7, 3, 1, '2025-01-17', '2025-01-17', '2025-01-17 16:25:59', 100, 'perbaikan laporan bpk', NULL, '1737105959_fc2efec02fd235583262.jpg', 'http://10.254.10.5/samsat/index.php/Laporan_excel/jurnal_bpk/?&end=2024-12-31&start=2024-01-01&up3ad=00', 7, '2025-01-17 16:24:48', '2025-01-17 16:25:59', NULL),
(149, 1, 15, 15, 3, 3, '2025-01-21', '2025-01-20', '2025-01-24 14:29:49', 100, 'Setting format label (Logo dan Ukuran kertas)', NULL, '1737364388_2ff08321b4ed1f9693a6.png', 'Bisa dicek di git dan Postman BE', 1, '2025-01-17 16:25:22', '2025-01-24 14:29:49', NULL),
(150, 1, 15, 15, 3, 3, '2025-01-24', '2025-01-21', '2025-01-28 06:22:15', 100, 'Setting Tahun Anggaran Admin bisa setting tahun anggaran yang aktif', NULL, '1737453207_c17516e70727144756d4.png', 'Bisa dicek di git dan Postman BE', 1, '2025-01-17 16:26:28', '2025-01-28 06:22:15', NULL),
(151, 4, 13, 13, 3, 3, '2025-01-22', '2025-02-05', '2025-02-05 16:11:08', 100, 'membuat SP create piutang HKPD', NULL, '1738746668_da786f81cb377f5c6d77.png', 'membuat SP di produksi', 13, '2025-01-17 16:50:43', '2025-02-05 16:11:08', NULL),
(152, 2, 12, 12, 3, 1, '2025-01-17', '2025-01-20', '2025-01-20 19:16:22', 100, 'Laporan Helpdesk 17 Januari 2025 Status : Clear - Baluran - Penyesuaian resort pada peta tematik, server produksi - Web Al Azhar - Menanyakan terkait menautkan video yang bersumber dari Instagram - Sportax - Kendala proses upload foto high-res Status : On Progress - Spektrum - Request upload data target tahunan sales', NULL, '1737367058_0d3eef5fe48f2f053a21.png', 'tanpa tautan', 7, '2025-01-17 17:03:21', '2025-01-20 19:16:22', NULL),
(153, 1, 23, 37, 3, 3, '2025-01-21', '2025-01-23', '2025-01-24 14:31:36', 100, 'Fitur untuk kelola master kategori inventory & aset', NULL, '1737606201_34614e07dc1bdda1cfc9.png', 'http://git.desnet.id/alfikri/inventory/commit/84ae944b9da49fba4067889dcfb9d6a96719c15e', 1, '2025-01-20 08:35:46', '2025-01-24 14:31:36', NULL),
(154, 1, 23, 37, 3, 3, '2025-01-23', '2025-02-04', '2025-02-06 03:43:29', 100, 'Setting format label', NULL, '1738659300_d0e0499c27b2f37c5e9f.png', 'http://git.desnet.id/alfikri/inventory/commit/a1e0b43aa9e330b9e451782afb19da79ecb71090', 1, '2025-01-20 08:36:18', '2025-02-06 03:43:29', NULL),
(155, 1, 23, 37, 3, 3, '2025-01-30', '2025-01-30', '2025-01-30 16:20:32', 0, 'Admin bisa setting tahun anggaran yang aktif', NULL, '1738219950_2cc0c147e9b5204021c9.png', 'http://git.desnet.id/alfikri/inventory/commit/837e7cb3c258b5d77e48c95fa5a599f832a27535', 1, '2025-01-20 08:36:51', '2025-01-30 16:20:32', NULL),
(156, 1, 21, 37, 1, 3, '2025-01-23', NULL, NULL, 0, 'Fitur untuk Kelola master vendor atau supplier', NULL, NULL, NULL, NULL, '2025-01-20 08:37:31', '2025-01-20 14:41:40', '2025-01-20 14:41:40'),
(157, 1, 21, 37, 1, 3, '2025-01-30', NULL, NULL, 0, 'Master Gedung, Lantai, dan ruang', NULL, NULL, NULL, NULL, '2025-01-20 08:38:08', '2025-01-20 14:41:54', '2025-01-20 14:41:54'),
(158, 1, 23, 37, 2, 3, '2025-02-03', '2025-02-06', NULL, 100, 'Modul untuk pendataan semua inventory dan asset yang ada pada masing-masing unit. Pada fitur input di sediakan inputan no seri, nama, kategori, umur manfaat, tgl perolehan, nilai perolehan, user, dan lokasi', NULL, '1738818332_af7e590f1ffc5715dda1.png', 'http://git.desnet.id/alfikri/inventory/commit/680ba47d32d63e937582a9cfdc3a89934e8abd66', NULL, '2025-01-20 08:39:09', '2025-02-06 12:05:32', NULL),
(159, 1, 23, 37, 1, 3, '2025-02-06', NULL, NULL, 0, 'Pencarian barang (Pencarian tempat penyimpanan barang di Gudang (no. rak dan no. baris). Pencarian Lokasi pemasangan/instalasi barang di unit – unit kerja.)', NULL, NULL, NULL, NULL, '2025-01-20 08:39:42', '2025-02-03 10:38:40', NULL),
(160, 1, 23, 37, 1, 3, '2025-02-10', NULL, NULL, 0, 'Sistem akan otomatis menggenerate label ketika inventory dan aset di input yang kemudian bisa di cetak', NULL, NULL, NULL, NULL, '2025-01-20 08:40:22', '2025-01-20 08:40:59', NULL),
(161, 1, 23, 37, 1, 3, '2025-02-12', NULL, NULL, 0, 'Tombol Update Status,(rusak, hilang, jual), tombol mutasi, tombol penghapusan => approval dari yayasan', NULL, NULL, NULL, NULL, '2025-01-20 08:41:41', '2025-01-20 08:41:41', NULL),
(162, 1, 23, 37, 1, 3, '2025-02-14', NULL, NULL, 0, 'Form jual inventory (muncul apabila update inventory jual), data penjualan inventory', NULL, NULL, NULL, NULL, '2025-01-20 08:42:25', '2025-01-20 08:42:25', NULL),
(163, 1, 23, 37, 1, 3, '2025-02-18', NULL, NULL, 0, 'Menampilkan Riwayat status dari masing-masing  Inventory & Aset', NULL, NULL, NULL, NULL, '2025-01-20 08:43:09', '2025-01-20 08:43:09', NULL),
(164, 1, 23, 37, 1, 3, '2025-02-20', NULL, NULL, 0, 'Peminjaman Inventory & Aset (CRUD summary data peminjaman, antara lain : Tgl peminjaman, PIC, unit PIC, kondisi barang/perangkat, upload foto barang/perangkat (bisa multiple), )', NULL, NULL, NULL, NULL, '2025-01-20 08:44:58', '2025-01-20 08:44:58', NULL),
(165, 1, 23, 37, 1, 3, '2025-02-24', NULL, NULL, 0, 'Pelaporan Kerusakan Inventory & Aset (Fitur untuk menginput laporan kerusakan inventory dan aset yang kemudian nanti di verifikasi dan di tindak lanjuti )', NULL, NULL, NULL, NULL, '2025-01-20 08:45:43', '2025-01-20 08:45:43', NULL),
(166, 1, 21, 37, 1, 3, '2025-02-03', NULL, NULL, 0, 'Monitoring penyusutan  nilai buku > 0', NULL, NULL, NULL, NULL, '2025-01-20 08:46:24', '2025-01-20 14:42:08', '2025-01-20 14:42:08'),
(167, 1, 21, 37, 1, 3, '2025-02-05', NULL, NULL, 0, 'Monitoring penyusutan nilai buku  = 0', NULL, NULL, NULL, NULL, '2025-01-20 08:47:06', '2025-01-20 14:42:20', '2025-01-20 14:42:20'),
(168, 1, 21, 37, 1, 3, '2025-02-07', NULL, NULL, 0, 'Monitoring penyusutan penghapusan', NULL, NULL, NULL, NULL, '2025-01-20 08:47:27', '2025-01-20 14:42:32', '2025-01-20 14:42:32'),
(169, 1, 13, 37, 1, 3, '2025-02-11', NULL, NULL, 0, 'Rekap penyusutan perkategori', NULL, NULL, NULL, NULL, '2025-01-20 08:48:04', '2025-01-20 08:48:04', NULL),
(170, 1, 13, 37, 1, 3, '2025-02-13', NULL, NULL, 0, 'Monitoring Investasi', NULL, NULL, NULL, NULL, '2025-01-20 08:49:01', '2025-02-10 09:42:56', '2025-02-10 09:42:56'),
(171, 1, 13, 37, 1, 3, '2025-02-17', NULL, NULL, 0, 'Laporan pembelian', NULL, NULL, NULL, NULL, '2025-01-20 08:49:40', '2025-01-20 08:49:40', NULL),
(172, 1, 13, 37, 1, 3, '2025-02-19', NULL, NULL, 0, 'Tagihan Peminjaman kendaraan', NULL, NULL, NULL, NULL, '2025-01-20 08:50:25', '2025-01-20 08:50:25', NULL),
(173, 1, 13, 37, 1, 3, '2025-02-21', NULL, NULL, 0, 'Rekap BBM', NULL, NULL, NULL, NULL, '2025-01-20 08:51:03', '2025-01-20 08:51:03', NULL),
(174, 1, 15, 37, 3, 3, '2025-02-03', '2025-01-31', '2025-01-31 15:44:23', 100, 'Pendataan inventory dan aset', NULL, '1738292793_035b77e8d5b895b52b1b.png', 'Bisa dicek di git dan Postman BE', 6, '2025-01-20 08:53:41', '2025-01-31 15:44:23', NULL),
(175, 1, 15, 37, 3, 3, '2025-02-04', '2025-02-03', '2025-02-06 03:43:39', 100, 'Pencarian barang', NULL, '1738563585_fdf1e839222f538e43d2.png', '{{site_url}}/pencarian-barang/barang', 1, '2025-01-20 08:54:46', '2025-02-06 03:43:39', NULL);
INSERT INTO `task` (`id_task`, `id_pekerjaan`, `id_user`, `creator`, `id_status_task`, `id_kategori_task`, `tgl_planing`, `tgl_selesai`, `tgl_verifikasi_diterima`, `persentase_selesai`, `deskripsi_task`, `alasan_verifikasi`, `bukti_selesai`, `tautan_task`, `verifikator`, `created_at`, `updated_at`, `deleted_at`) VALUES
(176, 1, 15, 37, 3, 3, '2025-02-06', '2025-01-31', '2025-02-06 03:43:48', 100, 'Generate dan cetak label', NULL, '1738314593_4e0aa2f62103d645ccdc.png', 'Bisa dicek di git dan Postman BE', 1, '2025-01-20 08:55:32', '2025-02-06 03:43:48', NULL),
(177, 2, 25, 25, 3, 3, '2025-01-22', '2025-01-22', '2025-01-31 14:46:49', 100, 'Aplikasi D2D Mobile - Penambahan fitur download surat pernyataan kesanggupan bayar WP', NULL, '1737508656_136ed1ab9d1e1827b2de.pdf', 'https://descloud.desnet.id/s/eLQ9Sx3TCPF52Q3', 17, '2025-01-20 08:55:35', '2025-01-31 14:46:49', NULL),
(178, 1, 15, 37, 2, 3, '2025-02-10', '2025-02-11', NULL, 100, 'Update status  Inventory & Aset', NULL, '1739241566_fc9e99603cc332b07673.png', 'Bisa dicek di git dan Postman BE', NULL, '2025-01-20 08:56:26', '2025-02-11 09:39:26', NULL),
(179, 1, 15, 37, 1, 3, '2025-02-12', NULL, NULL, 0, 'Mutasi Inventory & Aset', NULL, NULL, NULL, NULL, '2025-01-20 08:57:13', '2025-01-20 08:57:13', NULL),
(180, 1, 15, 37, 1, 3, '2025-02-14', NULL, NULL, 0, 'Penghapusan  Inventory & Aset', NULL, NULL, NULL, NULL, '2025-01-20 08:58:01', '2025-01-20 08:58:01', NULL),
(181, 1, 15, 37, 1, 3, '2025-02-18', NULL, NULL, 0, 'Riwayat  Inventory & Aset', NULL, NULL, NULL, NULL, '2025-01-20 08:59:22', '2025-01-20 08:59:22', NULL),
(182, 1, 15, 37, 1, 3, '2025-02-20', NULL, NULL, 0, 'Peminjaman Inventory & Aset', NULL, NULL, NULL, NULL, '2025-01-20 08:59:48', '2025-01-20 08:59:48', NULL),
(183, 1, 15, 37, 1, 3, '2025-02-24', NULL, NULL, 0, 'Pelaporan Kerusakan Inventory & Aset', NULL, NULL, NULL, NULL, '2025-01-20 09:00:23', '2025-01-20 09:00:23', NULL),
(184, 1, 37, 37, 3, 3, '2025-01-30', '2025-01-30', '2025-01-30 16:19:29', 100, 'Monitoring Penyusutan (nilai > 0, nilai 0 dan penghapusan)', NULL, '1738200333_f061bf7df97ba5dcb908.png', '{{site_url}}/Penyusutan/list-dt', 1, '2025-01-20 09:01:20', '2025-01-30 16:19:29', NULL),
(185, 1, 37, 37, 3, 3, '2025-01-31', '2025-02-03', '2025-02-06 03:43:58', 100, 'Rekap penyusutan perkategori', NULL, '1738551859_f5a3d4825d9f645274e5.png', 'http://localhost/alfikri_inventory', 1, '2025-01-20 09:01:57', '2025-02-06 03:43:58', NULL),
(186, 1, 37, 37, 1, 3, '2025-02-07', NULL, NULL, 30, 'Monitoring Investasi', NULL, NULL, NULL, NULL, '2025-01-20 09:03:23', '2025-02-10 09:43:03', '2025-02-10 09:43:03'),
(187, 1, 37, 37, 1, 3, '2025-02-12', NULL, NULL, 0, 'Laporan pembelian', NULL, NULL, NULL, NULL, '2025-01-20 09:04:10', '2025-02-10 09:43:13', NULL),
(188, 1, 37, 37, 1, 3, '2025-02-11', NULL, NULL, 0, 'Tagihan Peminjaman kendaraan', NULL, NULL, NULL, NULL, '2025-01-20 09:04:37', '2025-01-20 09:04:37', NULL),
(189, 1, 37, 37, 1, 3, '2025-02-13', NULL, NULL, 0, 'Rekap BBM', NULL, NULL, NULL, NULL, '2025-01-20 09:05:02', '2025-01-20 09:05:02', NULL),
(190, 6, 20, 20, 3, 7, '2025-01-20', '2025-01-20', '2025-01-20 14:30:09', 100, 'Ngrevisi Logo Icon Masing2 Desmedic RS & Desmedic Klinik dan Portal', NULL, '1737358209_8bf7608ab95280fbb5ae.jpg', 'https://www.figma.com/proto/FUuDbAbz62cIbBd4jh55qp/login-SIMRS?node-id=702-36&t=lWa7wWhLUSJXma33-0&scaling=min-zoom&content-scaling=fixed&page-id=692%3A11&hide-ui=1', 20, '2025-01-20 09:17:27', '2025-01-20 14:30:09', NULL),
(191, 4, 8, 8, 3, 1, '2025-01-20', '2025-01-20', '2025-01-20 19:16:11', 100, 'support SOS', NULL, '1737363789_655a2f653c58f720349a.png', 'http://10.254.10.5/samsat/index.php/menu', 7, '2025-01-20 09:31:35', '2025-01-20 19:16:11', NULL),
(192, 10, 37, 37, 3, 3, '2025-01-20', '2025-01-20', '2025-01-24 14:10:27', 100, 'Fitur Export Kontrol Piutang', NULL, '1737340430_3393c12625c6a7416911.png', 'https://office.desnet.id/index.php/laporan/data_kontrol_piutang', 1, '2025-01-20 09:32:11', '2025-01-24 14:10:27', NULL),
(193, 2, 10, 10, 3, 1, '2025-01-20', '2025-01-20', '2025-01-24 14:10:36', 100, 'Pengecekan realisasi poin Destask Bina Insani', NULL, '1737342455_0140910085b599d7e812.jpg', '-', 1, '2025-01-20 10:05:23', '2025-01-24 14:10:36', NULL),
(194, 2, 10, 10, 3, 1, '2025-01-20', '2025-01-20', '2025-01-24 14:10:50', 100, 'Penyesuaian query realisasi poin destask Bina Insani', NULL, '1737342476_7920afd5f1a1fae4fab4.jpg', '-', 1, '2025-01-20 10:06:08', '2025-01-24 14:10:50', NULL),
(195, 2, 10, 10, 3, 1, '2025-01-20', '2025-01-20', '2025-01-24 14:11:03', 100, 'Perbaikan error pada pendaftaran Munas 3 IKAFH', NULL, '1737342494_44e3d66c50cb4081683e.jpg', '-', 1, '2025-01-20 10:06:57', '2025-01-24 14:11:03', NULL),
(196, 10, 37, 37, 3, 3, '2025-01-20', '2025-01-20', '2025-01-24 14:12:10', 100, 'menambahkan filter jatuh tempo pada halaman kontrol piutang', NULL, '1737363717_af1110d579b0678f444d.png', 'https://office.desnet.id/index.php/laporan/data_kontrol_piutang', 1, '2025-01-20 10:52:36', '2025-01-24 14:12:10', NULL),
(197, 2, 11, 11, 3, 3, '2025-01-20', '2025-01-20', '2025-01-24 14:20:00', 100, 'Cek Api Guna Bangsa Test Aplikasi User Mahasiswa, Dosen, Kajur Dan Admin.', NULL, '1737348579_0131041cb7f60757384b.jpeg', 'https://descloud.desnet.id/s/Gunabangsa', 1, '2025-01-20 11:48:37', '2025-01-24 14:20:00', NULL),
(198, 2, 11, 11, 3, 9, '2025-01-20', '2025-01-20', '2025-01-24 14:20:25', 100, 'Meeting Koordinasi Rating CSAT Dengan Mbak Rizka Dan Tim MS', NULL, '1737348697_10956665a2c8ee3a3417.pptx', 'https://vicon.desnet.id/b/riz-2ww-fws-jrg', 1, '2025-01-20 11:50:44', '2025-01-24 14:20:25', NULL),
(199, 2, 10, 10, 3, 1, '2025-01-21', '2025-01-21', '2025-01-24 14:32:26', 100, 'Reindexing web IKAFH Undip', NULL, '1737472389_cef02be6fcd128119083.jpg', '-', 1, '2025-01-20 12:50:03', '2025-01-24 14:32:26', NULL),
(200, 2, 19, 19, 3, 3, '2025-01-20', '2025-01-20', '2025-01-20 17:07:12', 100, 'Build apk demokit bpbd - penyesuaian endpoint - ubah nama package - penyesuaian firebase notif - ubah assets', NULL, '1737354259_2ab66d10ad612be54902.jpg', 'https://descloud.desnet.id/s/kYsMb77WZyyYXqS', 17, '2025-01-20 13:04:46', '2025-01-20 17:07:12', NULL),
(201, 6, 20, 20, 3, 7, '2025-01-20', '2025-01-20', '2025-01-20 14:32:36', 100, 'Ngrevisi Loginpage Desmedic Klinik', NULL, '1737358356_4d25e41f3e6853cbc34c.jpg', 'https://www.figma.com/proto/FUuDbAbz62cIbBd4jh55qp/login-SIMRS?node-id=702-41&t=lWa7wWhLUSJXma33-0&scaling=min-zoom&content-scaling=fixed&page-id=692%3A11&hide-ui=1', 20, '2025-01-20 14:30:47', '2025-01-20 14:32:36', NULL),
(202, 12, 20, 20, 3, 3, '2025-01-21', '2025-01-20', '2025-01-20 17:00:28', 100, '[Request] Minta Dibuatkan Tombol Sticky kanan bawah : 1. Daftar (pendaftaran Siswa LPK) 2. Chat Admin (Redirect WA) Refrensi : https://minori.co.id/', NULL, '1737367228_e3ef893079e3a0a1d3f3.jpg', 'https://fe.desnet.online/lpk_mgm/', 20, '2025-01-20 15:23:57', '2025-01-20 17:00:28', NULL),
(203, 2, 19, 19, 3, 1, '2025-01-20', '2025-01-20', '2025-01-20 17:05:04', 100, 'Suppot spectrum dashboard aplikasi blank', NULL, '1737361520_bb54377e647d0dd4ecad.png', 'Hanya perbaikan jenis pada tipe data ', 17, '2025-01-20 15:24:17', '2025-01-20 17:05:04', NULL),
(204, 12, 20, 20, 3, 3, '2025-01-21', '2025-01-20', '2025-01-20 17:00:48', 100, '[Revisi] - Button Sosmed minta ditulisa nama akunnya dan dibuat sticky', NULL, '1737367248_356b6b16cd7f49715938.jpg', 'https://fe.desnet.online/lpk_mgm/', 20, '2025-01-20 15:41:24', '2025-01-20 17:00:48', NULL),
(205, 12, 20, 20, 3, 3, '2025-01-23', '2025-01-21', '2025-01-21 14:22:45', 100, '[Request] - Minta diintegrasikan Akun Tiktok nya jadi untuk kegiatan Video bukan dari youtube tp dari akun Tiktoknya', NULL, '1737444165_e52d0602431ad2aaed34.jpg', 'https://fe.desnet.online/lpk_mgm/', 20, '2025-01-20 15:43:16', '2025-01-21 14:22:45', NULL),
(206, 12, 20, 20, 3, 3, '2025-01-24', '2025-01-22', '2025-01-22 00:02:55', 100, '[Request Fitur] - Penambahan Form PPDB LPK', NULL, '1737478975_4b05bfc055e6a8827be1.jpg', 'https://fe.desnet.online/lpk_mgm/form-daftar/', 20, '2025-01-20 15:44:30', '2025-01-22 00:02:55', NULL),
(207, 2, 6, 6, 3, 3, '2025-01-20', '2025-01-20', '2025-01-20 15:53:30', 100, 'perbaikan demokit bpbd', NULL, '1737363210_6d49b50880dbea1bddf2.png', 'https://demo74.desnet.id/demokit/bpbd/public/', 6, '2025-01-20 15:49:45', '2025-01-20 15:53:30', NULL),
(208, 2, 6, 6, 3, 3, '2025-01-20', '2025-01-20', '2025-01-20 15:58:28', 100, 'perbaikan demokit sioke', NULL, '1737363508_59a2bab9cfc269b2affa.png', 'https://demosioke.magnitudo.id/login/index.php', 6, '2025-01-20 15:50:18', '2025-01-20 15:58:28', NULL),
(209, 2, 6, 6, 3, 9, '2025-01-20', '2025-01-21', '2025-01-21 21:39:41', 100, 'diskusi spesifikasi final kspps bmtnus', NULL, '1737470381_2f1106fcba9f32ec7f16.png', 'https://meet.google.com/ssw-xikj-zbx', 6, '2025-01-20 15:50:48', '2025-01-21 21:39:41', NULL),
(210, 4, 7, 7, 3, 3, '2025-01-20', '2025-01-20', '2025-01-20 15:52:36', 100, 'perbaikan query laporan bulanan REKAPITULASI JURNAL PENERIMAAN BULANAN MODEL : BK21A', NULL, '1737363156_a6c62cc722cd788c6398.jpg', 'http://10.254.10.5/samsat/index.php/Laporan_20_pajak/text/2/-/04/2025-01-18', 7, '2025-01-20 15:51:30', '2025-01-20 15:52:36', NULL),
(211, 5, 23, 23, 3, 3, '2025-01-22', '2025-01-21', '2025-01-28 05:56:05', 100, 'perbaikan form input', NULL, '1737441560_b5f7a76b3586cef43bae.png', 'http://localhost/git/dishub/public/perizinan-pa', 1, '2025-01-20 15:58:27', '2025-01-28 05:56:05', NULL),
(212, 10, 37, 37, 1, 3, '2025-01-20', NULL, NULL, 0, 'Filter jatuh tempo pada halaman kontrol piutang', NULL, NULL, NULL, NULL, '2025-01-20 16:00:49', '2025-01-20 16:00:58', '2025-01-20 16:00:58'),
(213, 2, 18, 18, 3, 3, '2025-01-20', '2025-01-20', '2025-01-24 14:20:53', 100, 'Support spectrum api & web', NULL, '1737366201_976f5289d07b497d7039.png', 'https://crm01.spectrum-unitec.com/', 1, '2025-01-20 16:42:09', '2025-01-24 14:20:53', NULL),
(214, 2, 18, 18, 3, 3, '2025-01-20', '2025-01-20', '2025-01-24 14:21:07', 100, 'Support malinda & Presales', NULL, '1737366229_14b29e671565b30b1126.png', 'https://malindaapps.com/', 1, '2025-01-20 16:42:30', '2025-01-24 14:21:07', NULL),
(215, 2, 14, 14, 3, 1, '2025-01-23', '2025-01-30', '2025-01-31 15:48:43', 100, 'revisi aplikasi bpbd brebes kunjungan 15 jan 2025', NULL, '1738228026_793301dbe1e979743d42.png', 'http://git.desnet.id/bpbd-kab-brebes/web_app_new.git', 6, '2025-01-20 16:53:55', '2025-01-31 15:48:43', NULL),
(216, 2, 14, 14, 3, 1, '2025-01-21', '2025-01-21', '2025-01-22 10:12:28', 100, 'revisi trajumastra usulan kominfo', NULL, '1737443528_53e55981b19b6c09bc44.png', 'git http://git.desnet.id/dkp_bantul/web', 1, '2025-01-20 16:55:25', '2025-01-22 10:12:28', NULL),
(217, 2, 12, 12, 3, 1, '2025-01-20', '2025-01-20', '2025-01-20 19:16:35', 100, 'Laporan Helpdesk 20 Januari 2025 Status : Clear - KSPPS Nus - Kendala upload file pengajuan - PKU Gamping - Kendala saat upload file Pop Up - Munas - Kendala website terinject judi online - Spectrum - Cara penyesuaian kategori task - Spectrum - Tampilan dashboard mobile tidak sesuai Status : On Progress - PKU Gamping - Request penyesuaian penulisan konten - PKU Gamping - Request penyesuaian tampilan login', NULL, '1737367106_4b55d194200811438129.png', 'tanpa tautan', 7, '2025-01-20 16:56:32', '2025-01-20 19:16:35', NULL),
(218, 2, 17, 17, 3, 3, '2025-01-20', '2025-01-20', '2025-01-20 17:03:47', 0, 'Penyesuaian titik AutoClick pada device baru Techno Spark 30C', NULL, '1737367427_ecf3ce3954f26835a8a8.png', 'https://descloud.desnet.id/s/SfYKFrQateAEjek', 17, '2025-01-20 17:00:17', '2025-01-20 17:03:47', NULL),
(219, 12, 20, 20, 3, 3, '2025-01-21', '2025-01-20', '2025-01-20 18:29:26', 100, '[Request] - Penambahan diContact Page jadi 2 alamat', NULL, '1737372566_48e9f303f7d21022b225.jpg', 'https://fe.desnet.online/lpk_mgm/kontak-kami/', 20, '2025-01-20 17:29:54', '2025-01-20 18:29:26', NULL),
(220, 6, 9, 9, 3, 7, '2025-01-24', '2025-01-22', '2025-01-24 13:46:42', 100, 'Desain Greeting Imlek 2025 alternatif 01', NULL, '1737542686_daac5caf22959a30893e.jpg', 'tidak ada', 20, '2025-01-20 17:31:36', '2025-01-24 13:46:42', NULL),
(221, 6, 9, 9, 3, 7, '2025-01-24', '2025-01-22', '2025-01-24 13:46:58', 100, 'Desain Greeting Imlek 2025 alternatif 02', NULL, '1737542715_9f1115af247be0937e10.jpg', 'tidak ada', 20, '2025-01-20 17:32:25', '2025-01-24 13:46:58', NULL),
(222, 11, 22, 22, 3, 3, '2025-01-22', '2025-01-21', '2025-01-24 14:19:41', 100, 'Membuat Semua halaman Pada submenu Profil', NULL, '1737433585_0200c645f17dcf0ebd02.png', 'https://bprartomoro.co.id/sejarah-bpr-arto-moro/', 1, '2025-01-20 18:09:35', '2025-01-24 14:19:41', NULL),
(223, 3, 22, 22, 3, 1, '2025-01-22', '2025-01-21', '2025-01-30 09:58:10', 100, 'Hapus semua link judi online pada google search console website-website wonogiri', NULL, '1737464026_e509238fa64691caa01e.png', 'https://search.google.com/search-console/removals?resource_id=sc-domain%3Awonogirikab.go.id', 20, '2025-01-20 18:10:58', '2025-01-30 09:58:10', NULL),
(224, 7, 13, 13, 3, 3, '2025-01-21', '2025-01-31', '2025-01-31 14:25:34', 100, 'menggabungkan login sikajeng dengan rehabilitasi', NULL, '1738308334_0f922a322a738eaecbc3.png', 'https://demo81.desnet.online/sikajeng-hibah/', 13, '2025-01-20 20:29:25', '2025-01-31 14:25:34', NULL),
(225, 1, 13, 37, 1, 3, '2025-01-24', NULL, NULL, 0, 'Kelola Data Vendor/Supplier', NULL, NULL, NULL, NULL, '2025-01-21 08:02:56', '2025-01-23 10:09:26', '2025-01-23 10:09:26'),
(226, 1, 13, 37, 1, 3, '2025-01-31', NULL, NULL, 0, 'Kelola Data Lokasi', NULL, NULL, NULL, NULL, '2025-01-21 08:03:42', '2025-01-23 10:08:35', '2025-01-23 10:08:35'),
(227, 1, 13, 37, 3, 3, '2025-02-07', '2025-02-07', '2025-02-07 15:11:09', 100, 'Monitoring penyusutan', NULL, '1738915869_b0dfbb6bc496cd5c24df.png', 'http://localhost/alfikri_inventory/public/index.php/monitoring-aset', 13, '2025-01-21 08:04:38', '2025-02-07 15:11:09', NULL),
(228, 3, 20, 20, 3, 1, '2025-01-21', '2025-01-21', '2025-01-21 08:21:28', 0, '[Support-Website STIEPARI] - Website ngeblank putih kendala karena hanya perlu diupdate tema nya saja - https://stiepari.ac.id/', NULL, '1737422488_e04edd3dc28b8bee59fb.jpeg', 'https://stiepari.ac.id/', 20, '2025-01-21 08:21:02', '2025-01-21 08:21:28', NULL),
(229, 4, 8, 8, 3, 1, '2025-01-21', '2025-01-21', '2025-01-21 21:07:36', 0, 'support SOS', NULL, '1737453096_90e465150247ae866927.png', 'http://10.254.10.5/samsat/index.php/Perbaikan_data_kend    https://sos.desnet.id/rt/Search/Results.html?Format=%27%3Cb%3E%3Ca%20href%3D%22__WebPath__%2FTicket%2FDisplay.html%3Fid%3D__id__%22%3E__id__%3C%2Fa%3E%3C%2Fb%3E%2FTITLE%3A%23%27%2C%0A%27%3Cb%3E%3Ca%20href%3D%22__WebPath__%2FTicket%2FDisplay.html%3Fid%3D__id__%22%3E__Subject__%3C%2Fa%3E%3C%2Fb%3E%2FTITLE%3ASubject%27%2C%0AStatus%2C%0AQueueName%2C%0AOwner%2C%0APriority%2C%0A%27__NEWLINE__%27%2C%0A%27__NBSP__%27%2C%0A%27%3Csmall%3E__Requestors__%3C%2Fsmall%3E%27%2C%0A%27%3Csmall%3E__CreatedRelative__%3C%2Fsmall%3E%27%2C%0A%27%3Csmall%3E__ToldRelative__%3C%2Fsmall%3E%27%2C%0A%27%3Csmall%3E__LastUpdatedRelative__%3C%2Fsmall%3E%27%2C%0A%27%3Csmall%3E__TimeLeft__%3C%2Fsmall%3E%27&Order=ASC%7CASC%7CASC%7CASC&OrderBy=id%7C%7C%7C&Query=Created%20%3E%20%272025-01-20%27&RowsPerPage=50&SavedChartSearchId=new&SavedSearchId=new', 7, '2025-01-21 08:57:12', '2025-01-21 21:07:36', NULL),
(230, 3, 22, 22, 3, 1, '2025-01-21', '2025-01-21', '2025-01-24 14:33:50', 100, 'Input Laporan Publikasi PT BPR BKK KOTA TEGAL (PERSERODA) Triwulan IV TAHUN 2024', NULL, '1737427167_fcca1fbcdbaa67ccbe5e.png', 'https://ptbprbkkkotategal.com/laporan/laporan-publikasi/', 1, '2025-01-21 09:38:37', '2025-01-24 14:33:50', NULL),
(231, 3, 22, 22, 3, 1, '2025-01-21', '2025-01-21', '2025-01-24 14:34:13', 100, 'View video instagram pada detail testimonial website Al-Fikri', NULL, '1737427277_f6bac86348d5cae49df8.png', 'https://alazharkalibanteng.or.id/testimoni/', 1, '2025-01-21 09:40:27', '2025-01-24 14:34:13', NULL),
(232, 8, 15, 15, 3, 3, '2025-01-21', '2025-01-21', '2025-01-24 14:34:37', 100, 'Menambahkan file validation di Backend dan Frontend module destana', NULL, '1737427577_1bf4cf5dd7ecb562af21.png', 'https://demo81.desnet.online/titir/public/titircp/pantau-bencana/destana', 1, '2025-01-21 09:44:06', '2025-01-24 14:34:37', NULL),
(233, 4, 7, 7, 3, 3, '2025-01-22', '2025-01-22', '2025-01-22 22:15:49', 100, 'penyesuaian laporan rekon bulanan kotor sanksi', NULL, '1737558949_45d5c4467f1780dccfaf.png', 'http://[::1]/samsat/index.php/Laporan_excel/Rekon_pnr_kotor_denda/?&end=2025-01-22&start=2025-01-22&up3ad=00', 7, '2025-01-21 09:57:05', '2025-01-22 22:15:49', NULL),
(234, 10, 37, 37, 3, 1, '2025-01-21', '2025-01-21', '2025-01-24 14:35:01', 100, 'Menyesuaikan form kirim PO agar data nik dan tanggal lahir muncul otomatis', NULL, '1737428598_a2d45c8f456cd337abd6.png', 'https://office.desnet.id/index.php/fab_online/kirim_po_page/d714d2c5a796d5814c565d78dd16188d', 1, '2025-01-21 10:01:18', '2025-01-24 14:35:01', NULL),
(235, 2, 7, 7, 3, 3, '2025-01-21', '2025-01-21', '2025-01-21 18:07:57', 100, 'pku gamping - penyesuaian form summernote', NULL, '1737457677_256a902f47b0df1206b0.jpg', '-', 7, '2025-01-21 10:04:23', '2025-01-21 18:07:57', NULL),
(236, 10, 37, 37, 3, 1, '2025-01-21', '2025-01-21', '2025-01-28 05:52:28', 100, 'Menambahkan link konfirmasi pembayaran pelanggan pada halaman billing pelanggan', NULL, '1737429415_1c950cbf68032f423f3d.png', 'https://office.desnet.id/index.php/billing/pelanggan/c3c703bbfa25f2929334f4f4b694d5e0', 1, '2025-01-21 10:15:35', '2025-01-28 05:52:28', NULL),
(237, 2, 11, 11, 3, 1, '2025-01-21', '2025-01-21', '2025-01-28 05:52:38', 100, 'Pembuatan CAST Layanan Kepuasan Pelanggan', NULL, '1737430125_0ab1ba5445d51ade7a8e.png', 'https://descloud.desnet.id/apps/forms/s/SXHGXtA2qSkQYMRRd3TcFD36', 1, '2025-01-21 10:27:29', '2025-01-28 05:52:38', NULL),
(238, 8, 15, 15, 3, 3, '2025-01-21', '2025-01-21', '2025-01-28 05:52:47', 100, 'Update source CDN dan UNPKG ke local', NULL, '1737432528_47fca72f36272eaec267.png', 'assets dan perubahan coding sudah saya push di git', 1, '2025-01-21 11:06:39', '2025-01-28 05:52:47', NULL),
(239, 7, 15, 15, 3, 3, '2025-01-21', '2025-01-21', '2025-01-28 05:52:59', 100, 'Penyesuaian dashboard 1. Potensi Mangrove 2. Realisasi Mangrove', NULL, '1737442423_5b86af9120cd9d7fd072.png', 'https://demo81.desnet.online/sikajeng-hibah/rehab/dashboard', 1, '2025-01-21 11:11:56', '2025-01-28 05:52:59', NULL),
(240, 11, 22, 22, 3, 3, '2025-01-22', '2025-01-21', '2025-01-30 09:59:18', 100, 'Membuat halaman informasi Berita', NULL, '1737433654_c0ebe86caac5126f90ed.png', 'https://bprartomoro.co.id/informasi/', 20, '2025-01-21 11:24:42', '2025-01-30 09:59:18', NULL),
(241, 2, 7, 7, 1, 4, '2025-01-22', NULL, NULL, 0, 'Testing Pemetaan Dan Rehabilitasi Mangrove (pengembangan sikajeng)', NULL, NULL, NULL, NULL, '2025-01-21 12:04:25', '2025-01-21 12:04:40', '2025-01-21 12:04:40'),
(242, 11, 22, 22, 3, 3, '2025-01-22', '2025-01-21', '2025-01-30 09:59:23', 100, 'Membuat Halaman Kontak & Lokasi', NULL, '1737439077_776147bf08c1c1e20d2b.png', 'https://bprartomoro.co.id/kontak-lokasi/', 20, '2025-01-21 12:04:55', '2025-01-30 09:59:23', NULL),
(243, 7, 7, 7, 3, 4, '2025-01-23', '2025-01-23', '2025-01-23 15:52:40', 100, 'Testing modul', NULL, '1737622360_8d84a021ce33a759162b.png', 'https://descloud.desnet.id/s/27P2TgiQxoMftZT', 7, '2025-01-21 12:13:42', '2025-01-23 15:52:40', NULL),
(244, 11, 22, 22, 3, 3, '2025-01-22', '2025-01-21', '2025-01-30 09:59:30', 100, 'Membuat halaman Tabungan', NULL, '1737441699_dfdb679e67951e7439ac.png', 'https://bprartomoro.co.id/tabungan/', 20, '2025-01-21 13:14:38', '2025-01-30 09:59:30', NULL),
(245, 11, 22, 22, 3, 3, '2025-01-22', '2025-01-21', '2025-01-30 09:59:36', 100, 'Membuat halaman Tabungan - Tabunganku', NULL, '1737445431_4aa19fdce588322617d1.png', 'https://bprartomoro.co.id/tabungan/tabunganku/', 20, '2025-01-21 13:15:17', '2025-01-30 09:59:36', NULL),
(246, 11, 22, 22, 3, 3, '2025-01-22', '2025-01-21', '2025-01-30 09:59:41', 100, 'Membuat halaman Tabungan - Tabungan Pro Active', NULL, '1737446512_8cf2f8713ba12d87d1de.png', 'https://bprartomoro.co.id/tabungan/tabungan-pro-active/', 20, '2025-01-21 13:15:44', '2025-01-30 09:59:41', NULL),
(247, 11, 22, 22, 3, 3, '2025-01-22', '2025-01-21', '2025-01-30 09:59:46', 100, 'Membuat halaman Tabungan - Tabungan Simpel', NULL, '1737447137_fa926748c76b940bcb54.png', 'https://bprartomoro.co.id/tabungan/tabungan-simpel/', 20, '2025-01-21 13:16:30', '2025-01-30 09:59:46', NULL),
(248, 11, 22, 22, 3, 3, '2025-01-22', '2025-01-22', '2025-01-30 09:59:52', 100, 'Membuat halaman Tabungan - Tabungan PAMOR (PEMBIAYAAN UMROH)', NULL, '1737497634_8758fd496a0f51a75906.png', 'https://bprartomoro.co.id/tabungan/tabungan-pamor-pembiayaan-umroh/', 20, '2025-01-21 13:16:54', '2025-01-30 09:59:52', NULL),
(249, 11, 22, 22, 3, 3, '2025-01-22', '2025-01-22', '2025-01-30 09:59:57', 100, 'Membuat halaman Tabungan - Tabungan Arisan', NULL, '1737498588_5035a6f0ac83b79bbc81.png', 'https://bprartomoro.co.id/tabungan/tabungan-arisan/', 20, '2025-01-21 13:17:16', '2025-01-30 09:59:57', NULL),
(250, 5, 23, 23, 3, 3, '2025-01-22', '2025-01-21', '2025-01-28 05:56:19', 100, 'create page Perizinan Insidentil', NULL, '1737441675_8e9e2f92ff512c77a9c8.png', 'http://localhost/git/dishub/public/perizinan-insidentil', 1, '2025-01-21 13:39:57', '2025-01-28 05:56:19', NULL),
(251, 11, 22, 22, 3, 3, '2025-01-22', '2025-01-22', '2025-01-30 10:00:02', 100, 'Membuat halaman Tabungan - Tabungan Simphati', NULL, '1737496845_1e506f7b151a967ddd9b.png', 'https://bprartomoro.co.id/tabungan/tabungan-simphati/', 20, '2025-01-21 13:43:10', '2025-01-30 10:00:02', NULL),
(252, 2, 14, 14, 3, 1, '2025-01-21', '2025-01-21', '2025-01-28 05:53:47', 100, 'baluran - update key public endpoint dari bri', NULL, '1737443764_f819edf4914f04a64573.png', 'https://demo74.desnet.id/baluran/public/index.php/api/snap/v1.1/access-token/b2b', 1, '2025-01-21 14:13:30', '2025-01-28 05:53:47', NULL),
(253, 3, 20, 20, 3, 1, '2025-01-21', '2025-01-21', '2025-01-21 14:29:16', 100, '[Request] - Resetkan Password akun Website RSUD Brebes', NULL, '1737444556_f6fa90e0e0f7329b26f7.jpg', 'https://rsud.brebeskab.go.id/', 20, '2025-01-21 14:27:32', '2025-01-21 14:29:16', NULL),
(254, 3, 20, 20, 3, 1, '2025-01-21', '2025-01-21', '2025-01-21 14:31:18', 100, '[Request] - Minta di add ke Search Console Google + google Analitic website https://fdltour.com/', NULL, '1737444678_44c99879b2b7c3af7f71.jpeg', 'https://fdltour.com/', 20, '2025-01-21 14:30:35', '2025-01-21 14:31:18', NULL),
(255, 2, 11, 11, 3, 3, '2025-01-23', '2025-01-21', '2025-01-31 15:32:41', 100, 'Pada detail destana untuk level user petugas ditampilkan kontak nya', NULL, '1737447226_a7dd8138e6827526138f.jpeg', 'https://descloud.desnet.id/apps/onlyoffice/6105508?filePath=%2Fbacklog%20bpbd%20brebes.xlsx', 17, '2025-01-21 15:06:32', '2025-01-31 15:32:41', NULL),
(256, 2, 11, 11, 3, 3, '2025-01-23', '2025-01-21', '2025-01-28 06:23:44', 100, 'Pada halaman panduan bencana foto kategori diganti foto yg diupload', NULL, '1737447176_07d6dbf82a58c322fd1c.jpeg', 'https://descloud.desnet.id/apps/onlyoffice/6105508?filePath=%2Fbacklog%20bpbd%20brebes.xlsx', 1, '2025-01-21 15:07:00', '2025-01-28 06:23:44', NULL),
(257, 2, 11, 11, 3, 3, '2025-01-23', '2025-01-22', '2025-01-28 06:32:23', 100, 'Pada halaman detail panduan bencana foto bisa lebih dari 1 jadi bisa di geser dan liat detail fotonya', NULL, '1737536383_2e200b758b79284aa7f3.jpeg', 'https://descloud.desnet.id/apps/onlyoffice/6105508?filePath=%2Fbacklog%20bpbd%20brebes.xlsx', 1, '2025-01-21 15:07:40', '2025-01-28 06:32:23', NULL),
(258, 2, 11, 11, 3, 3, '2025-01-23', '2025-01-22', '2025-01-31 14:43:08', 100, 'Pada halaman detail berita pada foto dibuat full keliatan semua dan bentuk slider ketika lebih dari 1 foto. ditambahkan liat detail foto dan semua fotonya', NULL, '1737536416_ace4f645053f9742d38e.jpeg', 'https://descloud.desnet.id/apps/onlyoffice/6105508?filePath=%2Fbacklog%20bpbd%20brebes.xlsx', 17, '2025-01-21 15:08:29', '2025-01-31 14:43:08', NULL),
(259, 2, 11, 11, 3, 3, '2025-01-23', '2025-01-23', '2025-01-31 15:32:33', 100, 'Destana ditambahkan untuk klik semua jadi nanti akan berbentuk list ke bawah', NULL, '1737615734_4344ba91a357d21ada7f.jpeg', 'https://descloud.desnet.id/apps/onlyoffice/6105508?filePath=%2Fbacklog%20bpbd%20brebes.xlsx', 17, '2025-01-21 15:10:15', '2025-01-31 15:32:33', NULL),
(260, 2, 11, 11, 3, 3, '2025-01-23', '2025-01-24', '2025-01-31 15:19:40', 100, 'Jumlah Laporan Bencana yang tampil dan hitung yg statusnya di Tindak Lanjut Dan Selesai dan bisa di klik untuk detail bencananya', NULL, '1737684526_4af6fb7979f0604a498f.jpeg', 'https://descloud.desnet.id/apps/onlyoffice/6105508?filePath=%2Fbacklog%20bpbd%20brebes.xlsx', 17, '2025-01-21 15:10:36', '2025-01-31 15:19:40', NULL),
(261, 11, 22, 22, 3, 3, '2025-01-23', '2025-01-21', '2025-01-28 06:35:34', 100, 'Membuat Halaman Kredit', NULL, '1737457477_a0ee827883a99b3a5481.png', 'https://bprartomoro.co.id/kredit/', 1, '2025-01-21 15:40:59', '2025-01-28 06:35:34', NULL),
(262, 11, 22, 22, 3, 3, '2025-01-23', '2025-01-22', '2025-01-28 06:35:46', 100, 'Membuat Halaman Kredit - Kredit Multi Guna', NULL, '1737500177_3f37af3737a62bd78db0.png', 'https://bprartomoro.co.id/kredit/kredit-multi-guna/', 1, '2025-01-21 15:42:38', '2025-01-28 06:35:46', NULL),
(263, 11, 22, 22, 3, 3, '2025-01-23', '2025-01-22', '2025-01-28 06:36:51', 100, 'Membuat Halaman Kredit - Kredit KPR', NULL, '1737500557_73eb5e7845b0cdd786a5.png', 'https://bprartomoro.co.id/kredit/kredit-kpr/', 1, '2025-01-21 15:43:07', '2025-01-28 06:36:51', NULL),
(264, 11, 22, 22, 3, 3, '2025-01-23', '2025-01-22', '2025-01-28 06:37:03', 100, 'Membuat Halaman Kredit - Kredit Rekening Koran', NULL, '1737503058_d96f42943554e54546a2.png', 'https://bprartomoro.co.id/kredit/kredit-rekening-koran/', 1, '2025-01-21 15:43:31', '2025-01-28 06:37:03', NULL),
(265, 11, 22, 22, 3, 3, '2025-01-23', '2025-01-22', '2025-01-28 06:37:15', 100, 'Membuat Halaman Kredit - Kredit Investasi', NULL, '1737503484_acc76ac6aa1a32a5d1d8.png', 'https://bprartomoro.co.id/kredit/kredit-investasi/', 1, '2025-01-21 15:43:55', '2025-01-28 06:37:15', NULL),
(266, 11, 22, 22, 3, 3, '2025-01-23', '2025-01-22', '2025-01-28 06:37:25', 100, 'Membuat Halaman Kredit - Kredit Modal Kerja', NULL, '1737505495_43192ee792d157750a44.png', 'https://bprartomoro.co.id/kredit/kredit-modal-kerja/', 1, '2025-01-21 15:44:16', '2025-01-28 06:37:25', NULL),
(267, 11, 22, 22, 3, 3, '2025-01-23', '2025-01-22', '2025-01-28 06:44:59', 100, 'Membuat Halaman Deposito', NULL, '1737506354_89f97895540a7c4f4c4b.png', 'https://bprartomoro.co.id/deposito/', 20, '2025-01-21 15:45:35', '2025-01-28 06:44:59', NULL),
(268, 11, 22, 22, 3, 3, '2025-01-23', '2025-01-22', '2025-01-30 09:58:19', 100, 'Membuat Halaman Deposito - Deposito Reguler', NULL, '1737507998_6db8f897bbb8289e1796.png', 'https://bprartomoro.co.id/deposito/deposito-reguler/', 20, '2025-01-21 15:45:59', '2025-01-30 09:58:19', NULL),
(269, 11, 22, 22, 3, 3, '2025-01-23', '2025-01-22', '2025-01-30 09:58:26', 100, 'Membuat Halaman Deposito - Deposito Berhadiah Emas', NULL, '1737508815_63695b9cb6aa877ac2a9.png', 'https://bprartomoro.co.id/deposito/deposito-berhadiah-emas/', 20, '2025-01-21 15:46:34', '2025-01-30 09:58:26', NULL),
(270, 11, 22, 22, 3, 3, '2025-01-23', '2025-01-22', '2025-01-30 09:58:31', 100, 'Membuat Halaman Deposito - Deposito Funcation', NULL, '1737509127_a232a537c825aeda2263.png', 'https://bprartomoro.co.id/deposito/deposito-funcation/', 20, '2025-01-21 15:46:56', '2025-01-30 09:58:31', NULL),
(271, 11, 22, 22, 3, 3, '2025-01-24', '2025-01-22', '2025-01-30 09:58:37', 100, 'Membuat Halaman Layanan', NULL, '1737511059_ceb217d60e9f8373f7a3.png', 'https://bprartomoro.co.id/layanan/', 20, '2025-01-21 15:48:12', '2025-01-30 09:58:37', NULL),
(272, 11, 22, 22, 3, 3, '2025-01-24', '2025-01-22', '2025-01-30 09:58:41', 100, 'Membuat Halaman Detail Layanan', NULL, '1737511596_6f672db8dd907218eebf.png', 'https://bprartomoro.co.id/layanan/digital/', 20, '2025-01-21 15:48:33', '2025-01-30 09:58:41', NULL),
(273, 11, 22, 22, 3, 3, '2025-01-24', '2025-01-22', '2025-01-30 09:58:46', 100, 'Membuat Halaman Simulasi Kredit', NULL, '1737511682_8014233fece12bbc02eb.png', 'https://bprartomoro.co.id/join-us/simulasi-kredit-bpr-arto-moro/', 20, '2025-01-21 15:48:51', '2025-01-30 09:58:46', NULL),
(274, 11, 22, 22, 3, 3, '2025-01-24', '2025-01-22', '2025-01-30 09:58:51', 100, 'Membuat Halaman Pickup Service', NULL, '1737511793_22582292cc7f9d10e469.png', 'https://bprartomoro.co.id/join-us/form-pick-up-service/', 20, '2025-01-21 15:49:13', '2025-01-30 09:58:51', NULL),
(275, 10, 37, 37, 3, 1, '2025-01-21', '2025-01-21', '2025-01-24 14:21:19', 100, 'penyesuaian approval fab pada marketing edi priyanto', NULL, '1737450777_0541e64e73e738122758.png', 'https://office.desnet.id/index.php/fab_online_non_desfiber/konfirmasi/', 1, '2025-01-21 16:11:57', '2025-01-24 14:21:19', NULL),
(276, 10, 37, 37, 1, 1, '2025-01-21', NULL, NULL, 0, 'penyesuaian approval fab pada marketing edi priyanto', NULL, NULL, NULL, NULL, '2025-01-21 16:11:57', '2025-01-21 16:12:10', '2025-01-21 16:12:10'),
(277, 10, 37, 37, 3, 1, '2025-01-21', '2025-01-21', '2025-01-24 14:21:33', 100, 'pengecekan dan penyesuaian log billing', NULL, '1737450976_552bd34431e8ae24a6e6.png', 'https://office.desnet.id/index.php/billing/pelanggan/8a0a4922d9a500b17fa58355c1aee95f', 1, '2025-01-21 16:14:32', '2025-01-24 14:21:33', NULL),
(278, 9, 15, 15, 3, 3, '2025-01-21', '2025-01-21', '2025-01-24 14:21:56', 100, 'Penyesuian create kunungan bpjs SIMKLINIK SATMOKO', NULL, '1737451491_b644ec1bd757328959ab.png', 'Sudah tak update di git dan server, serta sudah tak testing', 1, '2025-01-21 16:23:01', '2025-01-24 14:21:56', NULL),
(279, 7, 15, 15, 3, 3, '2025-01-21', '2025-01-21', '2025-01-24 14:23:59', 100, 'Penyesuaian dan Penambahan api mobile', NULL, '1737451858_ba293b5720fb67840207.png', 'Sudah tak update di git dan server demo', 1, '2025-01-21 16:30:01', '2025-01-24 14:23:59', NULL),
(280, 2, 12, 12, 3, 1, '2025-01-21', '2025-01-22', '2025-01-22 21:46:39', 100, 'Laporan Helpdesk 21 Januari 2025 Status : Clear - BPR Kota Tegal - request upload dokumen laporan publikasi - Web Al Azhar - Request penyesuaian video testimoni pada menu testimoni - Kaos Bagoes - request hapus data stok pada cabang Sentra Kaos - Munas - Kendala wes tidak dapat diakses - FDL Tour - Request daftar web pada Google Analytic & Search Console - Simreli - Kendala foto pada laporan Tally tidak muncul - Sipentol - request penambahan simbol wajib isi pada upload NIB Status : On Progress - Simreli - Request update progress aplikasi mobile Simreli', NULL, '1737540285_bc2a372b8ca85e7b6795.png', 'tanpa tautan', 7, '2025-01-21 17:01:26', '2025-01-22 21:46:39', NULL),
(281, 2, 18, 18, 3, 3, '2025-01-21', '2025-01-21', '2025-01-24 14:24:42', 100, 'Pengerjaan revisi malinda web & api 1. Cetakan tanggal work order di sesuaikan(masih ada bug) 2. No SO,No DO, Tanggal DO dibuat opsional 3. DP / Lunas (Opsional) Jadi Ketika tidak terchecklist auto kosong 4. Admin Delivery -> tutup proses external blm bisa 5. Nama Penerima,Tanggal&Jam Diterima di dokumen tanda tangan 6. Driver Delivery -> yang terbaru diatas 7. tampilan formnya masih blm responsive di form go delivery', NULL, '1737454029_7897b32c0e733f4259a3.png', 'https://malindaapps.com sudah report langsung ke pelanggan', 1, '2025-01-21 17:06:04', '2025-01-24 14:24:42', NULL),
(282, 2, 18, 18, 3, 2, '2025-01-21', '2025-01-21', '2025-01-24 14:26:02', 100, 'pembuatan spesifikasi convert WP ke CI4 web desnet.id', NULL, '1737454211_285823c72763c570ee1d.png', 'https://descloud.desnet.id/s/KQsJg4H2oegcqnn pass : desnet12345', 1, '2025-01-21 17:08:56', '2025-01-24 14:26:02', NULL),
(283, 3, 20, 20, 3, 1, '2025-01-21', '2025-01-21', '2025-01-21 18:02:25', 100, '[Request-Website RSUD Brebes] - Minta tlg dibantu digantikan file downloadtan krn Adminny yang baru bingung salah upload file', NULL, '1737457345_06a66c9ea94b97b5f4e1.jpg', 'https://rsud.brebeskab.go.id/karir', 20, '2025-01-21 18:01:46', '2025-01-21 18:02:25', NULL),
(284, 9, 15, 15, 3, 3, '2025-01-21', '2025-01-21', '2025-01-24 14:28:50', 100, 'Penyesuaian tindak lanjut 1. Bagian TACC muncul hanya saat dipilih rujuk keluar 2. Select2 Spesialis dan Subspesialis bisa di search', NULL, '1737457743_60454dafab1ce477f06c.png', 'https://kliniksatmoko.desmedic.id/index.php/rajal/pelayanan/form/2501210013/kunjungan#tindak-lanjut', 1, '2025-01-21 18:08:21', '2025-01-24 14:28:50', NULL),
(285, 4, 7, 7, 3, 3, '2025-01-21', '2025-01-21', '2025-01-21 19:12:21', 100, 'perbaikan detil informasi kendaraan', NULL, '1737461541_cd97337f5ce594b7f1d0.jpg', 'http://10.254.10.5/samsat/index.php/informasi_kendaraan/detail_kend/f88037e32dcfb1b72f9888c4d567e72a/MHYESL415YJ-501155G15A-IA-501155', 7, '2025-01-21 19:11:40', '2025-01-21 19:12:21', NULL),
(286, 9, 15, 15, 3, 3, '2025-01-21', '2025-01-21', '2025-01-24 14:28:59', 100, 'Tambah filter(dokter dan waktu pelayanan) di module rajal KLINIK SATMOKO', NULL, '1737463796_93c47156606b3699913f.png', 'Sudah tak update di git dan server', 1, '2025-01-21 19:49:03', '2025-01-24 14:28:59', NULL),
(287, 4, 7, 7, 3, 3, '2025-01-21', '2025-01-21', '2025-01-21 20:06:14', 100, 'penyesuaian split jr pemilik_jenis', NULL, '1737464774_43fd88216b8b796166b2.jpg', 'http://10.254.10.5/samsat/index.php/splitjr/get_data/BG1492ET/2025-01-21/06', 7, '2025-01-21 20:05:53', '2025-01-21 20:06:14', NULL),
(288, 2, 6, 6, 3, 3, '2025-01-21', '2025-01-21', '2025-01-21 21:32:22', 100, 'fitur reset pasword trajumastra', NULL, '1737469942_c93e6b1c5c54ca6d8234.png', 'http://git.desnet.id/dkp_bantul/web/commit/64341a0abfb3f895826c2031df15801e515cebfd', 6, '2025-01-21 21:27:47', '2025-01-21 21:32:22', NULL),
(289, 2, 6, 6, 3, 2, '2025-01-21', '2025-01-21', '2025-01-21 21:34:19', 100, 'indo asia, aplikasi pendaftaran training', NULL, '1737470059_513b6dd68f2b5d03c21a.png', 'https://us06web.zoom.us/j/84592082467?pwd=jWmZcnA3TOZCg8OxBypzqnHH8LRPVn.1', 6, '2025-01-21 21:28:35', '2025-01-21 21:34:19', NULL),
(290, 2, 6, 6, 3, 1, '2025-01-21', '2025-01-21', '2025-01-21 21:36:47', 100, 'Toko Kaos Bagus, reset stok toko tertentu', NULL, '1737470207_32a8fc89bed880983991.png', 'https://sentra.kaosbagoes.id/public', 6, '2025-01-21 21:34:59', '2025-01-21 21:36:47', NULL),
(291, 10, 10, 10, 3, 1, '2025-01-21', '2025-01-21', '2025-01-24 14:29:09', 100, 'Hapus data CID yang double dan pemindahan SID ke CID yang lama', NULL, '1737472467_7c71e3f4838f5799f7fe.jpg', '-', 1, '2025-01-21 22:13:55', '2025-01-24 14:29:09', NULL),
(292, 2, 17, 17, 3, 3, '2025-01-24', '2025-01-21', '2025-01-21 23:42:33', 100, 'Pada poin sumber daya manusia dibuat 2 kolom : petugas lapangan dan unsur terkait; nanti form inputan seperti jenis form korban. untuk inputannya hanya nama ', NULL, '1737477753_4e4b0115b7e07596595a.jpeg', 'https://descloud.desnet.id/s/jTLjWnxBaPAkgQC ; ', 17, '2025-01-21 23:06:53', '2025-01-21 23:42:33', NULL),
(293, 2, 17, 17, 3, 3, '2025-01-24', '2025-01-21', '2025-01-21 23:44:26', 100, 'Ditambahkan inputan untuk waktu laporan: tanggal dan jam', NULL, '1737477866_9f947fa44ba1953579cd.jpeg', 'https://descloud.desnet.id/s/jTLjWnxBaPAkgQC ; http://git.desnet.id/bpbd-kab-brebes/mobile_flutter.git', 17, '2025-01-21 23:07:30', '2025-01-21 23:44:26', NULL),
(294, 2, 17, 17, 3, 3, '2025-01-24', '2025-01-21', '2025-01-21 23:44:48', 100, 'Dalam inputan korban ditambahkan jenis kelamin dan usia', NULL, '1737477888_163f1b50db634b59ca37.jpeg', 'https://descloud.desnet.id/s/jTLjWnxBaPAkgQC ; http://git.desnet.id/bpbd-kab-brebes/mobile_flutter.git', 17, '2025-01-21 23:07:53', '2025-01-21 23:44:48', NULL),
(295, 2, 17, 17, 3, 3, '2025-01-24', '2025-01-21', '2025-01-21 23:47:21', 0, 'Inputan sarpras dan logistik dibuat seperti jenis form korban. untuk kolomnya nama dan jumlahnya', NULL, '1737478041_0e8898e739a4d6c47a5a.jpeg', 'https://descloud.desnet.id/s/jTLjWnxBaPAkgQC ; http://git.desnet.id/bpbd-kab-brebes/mobile_flutter.git', 17, '2025-01-21 23:08:13', '2025-01-21 23:47:21', NULL),
(296, 2, 17, 17, 3, 3, '2025-01-24', '2025-01-21', '2025-01-21 23:47:02', 100, 'Dibawah inputan pengungsi ditambahkan kolom terdampak', NULL, '1737478022_657e6199afc066c19e5f.jpeg', 'https://descloud.desnet.id/s/jTLjWnxBaPAkgQC ; http://git.desnet.id/bpbd-kab-brebes/mobile_flutter.git', 17, '2025-01-21 23:08:31', '2025-01-21 23:47:02', NULL),
(297, 2, 17, 17, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 15:37:34', 100, 'Keyboard dibuat bisa enter kebawah jadi tidak langsung selesai', NULL, '1738312654_e40f8c9a206fe2e30958.png', 'http://git.desnet.id/bpbd-kab-brebes/mobile_flutter.git', 17, '2025-01-21 23:08:44', '2025-01-31 15:37:34', NULL),
(298, 11, 22, 22, 3, 3, '2025-01-24', '2025-01-22', '2025-01-30 09:58:56', 100, 'Responsive Mobile', NULL, '1737515828_d600d2c039f49bf6444c.png', 'https://bprartomoro.co.id/', 20, '2025-01-22 09:10:38', '2025-01-30 09:58:56', NULL),
(299, 4, 8, 8, 3, 1, '2025-01-22', '2025-01-22', '2025-01-22 21:46:22', 100, 'support SOS', NULL, '1737541765_ca886287ff2685e10451.png', 'https://sos.desnet.id/rt/Ticket/Display.html?id=3349&results=4371d9e5ffd96eca0be0f6e2b518df0c      http://10.254.10.5/samsat/index.php/menu', 7, '2025-01-22 09:32:31', '2025-01-22 21:46:22', NULL),
(300, 10, 37, 37, 3, 1, '2025-01-22', '2025-01-22', '2025-01-28 05:53:57', 100, 'Menambahkan upload file multiple pada data teknis', NULL, '1737514283_a699a0b1fef498285e7b.png', 'https://office.desnet.id/index.php/data_teknis/tambah', 1, '2025-01-22 09:49:22', '2025-01-28 05:53:57', NULL),
(301, 9, 16, 16, 3, 3, '2025-01-22', '2025-01-22', '2025-01-28 05:54:10', 100, 'Penambahan kolom dokter di modal data pasien reservasi online.', NULL, '1737520286_7466d2997986651e0575.png', 'https://kliniksatmoko.desmedic.id/index.php/pendaftaran/pendaftaran_rajal/form', 1, '2025-01-22 10:50:10', '2025-01-28 05:54:10', NULL),
(302, 9, 16, 16, 3, 3, '2025-01-22', '2025-01-22', '2025-01-28 05:54:22', 100, 'Penyesuaian data history menampilkan semua riwayat pemeriksaan - Klinik Satmoko', NULL, '1737520488_752e7a64279f158f698a.png', 'https://kliniksatmoko.desmedic.id/index.php/rajal/pelayanan/form/2501220019/kunjungan#history', 1, '2025-01-22 11:32:04', '2025-01-28 05:54:22', NULL),
(303, 9, 16, 16, 3, 3, '2025-01-22', '2025-01-22', '2025-01-28 05:54:35', 100, 'Menampilkan informasi detail resep obat di kolom terapi obat tab tindak lanjut - Klinik satmoko', NULL, '1737525225_edbdef223993e75fb06f.png', 'https://kliniksatmoko.desmedic.id/index.php/rajal/pelayanan/form/2501220019/kunjungan#tindak-lanjut', 1, '2025-01-22 12:52:49', '2025-01-28 05:54:35', NULL),
(304, 2, 10, 10, 3, 1, '2025-01-22', '2025-01-22', '2025-01-28 05:54:45', 100, 'pengecekan SIMRELI', NULL, '1737527484_32b65cb186fb01f26327.jpg', '-', 1, '2025-01-22 13:30:51', '2025-01-28 05:54:45', NULL),
(305, 2, 10, 10, 3, 1, '2025-01-22', '2025-01-22', '2025-01-28 05:54:56', 100, 'Pengecekan status pendaftaran akun alumni IKAFH', NULL, '1737527866_82614d51c505cb572f05.png', 'berupa perpanjang masa aktif token', 1, '2025-01-22 13:34:36', '2025-01-28 05:54:56', NULL),
(306, 2, 10, 10, 3, 3, '2025-01-22', '2025-01-22', '2025-01-28 06:02:26', 100, 'Pembuata fitur Download rekap data verifikasi pendaki', NULL, '1737528031_f51dc49fe40e2d10b368.png', 'http://git.desnet.id/merbabu/web-admin/commit/b2a34006256e97f8ac55efbb7405bf8721a83dd4', 1, '2025-01-22 13:38:34', '2025-01-28 06:02:26', NULL),
(307, 2, 10, 10, 3, 1, '2025-01-22', '2025-01-22', '2025-01-28 06:02:40', 100, 'Download e-tiket, diakses dari menu daftar pendaki', NULL, '1737528052_68e572055a9cea03bb20.png', 'http://git.desnet.id/merbabu/web-admin/commit/b2a34006256e97f8ac55efbb7405bf8721a83dd4', 1, '2025-01-22 13:39:01', '2025-01-28 06:02:40', NULL),
(308, 2, 10, 10, 3, 1, '2025-01-22', '2025-01-22', '2025-01-28 06:04:13', 100, 'Fitur Laporan Pembayaran dan PNBP dihilangkan untuk userlevel admin destinas', NULL, '1737528067_018ca86fd04662f40db1.png', 'http://git.desnet.id/merbabu/web-admin/commit/b2a34006256e97f8ac55efbb7405bf8721a83dd4', 1, '2025-01-22 13:39:18', '2025-01-28 06:04:13', NULL),
(309, 9, 16, 16, 3, 1, '2025-01-22', '2025-01-22', '2025-01-28 05:55:26', 100, 'Integrasi data dokter ke satu sehat - Klinik Dermanina', NULL, '1737531308_cf2790d5f75d36da7673.png', 'https://satusehat.dermanina.id/satusehat/Pegawai.php', 1, '2025-01-22 14:28:03', '2025-01-28 05:55:26', NULL),
(310, 2, 14, 14, 3, 1, '2025-01-23', '2025-01-23', '2025-01-31 15:48:31', 100, '[sccr] penambahan log cetak dan tabel cetak persetujuan', NULL, '1737621228_af73e7c95284177fdad7.png', 'update git', 6, '2025-01-22 14:50:30', '2025-01-31 15:48:31', NULL),
(311, 10, 37, 37, 3, 1, '2025-01-22', '2025-01-22', '2025-01-28 06:09:44', 100, 'Menambah filter layanan pada data teknis', NULL, '1737532473_0b0f81dbd6c67ee3ada3.png', 'https://office.desnet.id/index.php/data_teknis/tambah#', 1, '2025-01-22 14:54:17', '2025-01-28 06:09:44', NULL),
(312, 9, 15, 15, 3, 3, '2025-01-22', '2025-01-22', '2025-01-28 05:55:38', 100, 'Penyesuaian pada module ranap -> resume module SIMRS PURINIRMALA', NULL, '1737533857_bc62e630e09c9a49dd9e.png', 'https://simrspurinirmala.com/simrs/index.php/ranap/pelayanan/cetak_resume_medis/2501130017/02.01', 1, '2025-01-22 15:15:28', '2025-01-28 05:55:38', NULL),
(313, 1, 23, 23, 3, 3, '2025-01-23', '2025-01-22', '2025-01-28 06:20:55', 100, 'Layouting page login', NULL, '1737534517_6a80d048501753587eb9.png', 'http://git.desnet.id/alfikri/inventory/commit/09bf8f68f94d58799d3d397432da323239e78687', 1, '2025-01-22 15:25:40', '2025-01-28 06:20:55', NULL),
(314, 10, 37, 37, 3, 1, '2025-01-22', '2025-01-22', '2025-01-28 06:17:02', 100, 'fitur tambah departemen', NULL, '1737534558_67240d31b876f804c7af.png', 'https://office.desnet.id/index.php/daftar_karyawan/daftar_divisi#', 1, '2025-01-22 15:28:57', '2025-01-28 06:17:02', NULL),
(315, 7, 26, 26, 3, 3, '2025-01-23', '2025-01-22', '2025-01-28 06:34:45', 100, 'Menambah menu Rehab di Menu pilih.', NULL, '1737539627_322c8f6461cbeaeabef6.png', 'http://git.desnet.id/dlhk_jateng/sikajeng_mobile/tree/master', 1, '2025-01-22 16:48:09', '2025-01-28 06:34:45', NULL),
(316, 2, 19, 19, 1, 1, '2025-01-23', NULL, NULL, 0, 'upgrade versi flutter aplikasi sportax versi android', NULL, NULL, NULL, NULL, '2025-01-22 16:48:13', '2025-02-11 16:58:57', '2025-02-11 16:58:57'),
(317, 2, 12, 12, 3, 1, '2025-01-22', '2025-01-23', '2025-01-23 17:59:05', 100, 'Laporan Helpdesk 22 Januari 2025 Status : Clear - Web Paroki Ungaran - Menanyakan akses cPanel - Munas - Kendala akses login user - Tracer Study - Kendala akses login alumni - PuriNirmala - Kendala simrs tidak dapat diakses - PuriNirmala - Request penyesuaian pada cetak resume medis - Satmoko - Nama perawat tidak muncul pada sistem - App Keuangan - Kendala tidak bisa login akun yayasan Status : On Progress - ArjaTel - Kendala akun WA terblokir - KSPPS Nus - Data pengajuan tidak muncul pada akun baru', NULL, '1737626325_f9bbb4f76c7d30595f74.png', 'tanpa tautan', 7, '2025-01-22 17:03:46', '2025-01-23 17:59:05', NULL),
(318, 2, 6, 6, 3, 5, '2025-01-22', '2025-01-22', '2025-01-22 20:12:21', 100, 'Dokumen analisis dan draft RAP Presales KSPPS BMTNUS', NULL, '1737551541_147a663815b3766f5583.jpeg', 'https://descloud.desnet.id/s/AgaXTQiQDiQw2XB', 6, '2025-01-22 20:10:59', '2025-01-22 20:12:21', NULL),
(319, 2, 25, 25, 3, 3, '2025-01-27', '2025-01-27', '2025-01-31 14:46:28', 100, 'Malinda - Perubahan input modul Driver Delivery & Pembatasan hak akses Sales pada modul Tiket Komplain', NULL, '1737966895_247e6038b416d49edcd2.png', 'https://play.google.com/store/apps/details?id=com.desnet.malinda', 17, '2025-01-23 08:14:59', '2025-01-31 14:46:28', NULL),
(320, 1, 15, 15, 3, 3, '2025-01-23', '2025-01-23', '2025-01-28 06:21:04', 100, 'FE : Fitur untuk Kelola master vendor atau supplier', NULL, '1737600362_97bc2df4b119ea20e724.png', 'https://localhost/alfikri/public/supplier', 1, '2025-01-23 09:44:03', '2025-01-28 06:21:04', NULL),
(321, 1, 15, 15, 3, 3, '2025-01-30', '2025-01-30', '2025-01-30 16:19:18', 100, 'FE : Kelola Data Lokasi (Gedung. Lantai dan Ruang)', NULL, '1738206330_30e8734d5f20847f6418.png', 'http://localhost/alfikri/public/gedung || http://localhost/alfikri/public/lantai || http://localhost/alfikri/public/ruang', 1, '2025-01-23 09:47:08', '2025-01-30 16:19:18', NULL),
(322, 7, 26, 26, 3, 3, '2025-01-23', '2025-01-23', '2025-01-28 06:34:54', 100, 'Edit halaman beranda rehab', NULL, '1737606847_227e5061837728704305.jpeg', 'http://git.desnet.id/dlhk_jateng/sikajeng_mobile', 1, '2025-01-23 11:16:45', '2025-01-28 06:34:54', NULL),
(323, 3, 22, 22, 3, 1, '2025-01-23', '2025-01-23', '2025-01-30 09:57:49', 100, 'Update wordpress dan semua plugin di website alfikri', NULL, '1737605985_81d604c43ac8e1862aa8.png', 'https://alazharkalibanteng.or.id/', 20, '2025-01-23 11:17:58', '2025-01-30 09:57:49', NULL),
(324, 6, 20, 20, 3, 7, '2025-01-23', '2025-01-23', '2025-01-23 15:04:04', 100, '[Revisi-Dashboardpage] - Merevisi Halaman Dashboard page', NULL, '1737619444_61e12f5a9dda3d989fde.jpg', 'https://www.figma.com/proto/FUuDbAbz62cIbBd4jh55qp/DESMEDIC?node-id=725-20&p=f&t=9ExehJubFaLYrWIZ-0&scaling=min-zoom&content-scaling=fixed&page-id=692%3A11&starting-point-node-id=702%3A36&hide-ui=1', 20, '2025-01-23 12:55:46', '2025-01-23 15:04:04', NULL),
(325, 4, 8, 8, 3, 1, '2025-01-23', '2025-01-23', '2025-01-30 09:20:33', 100, 'support SOS', NULL, '1737642274_995a31bbc0d62e73a3d0.png', 'https://sos.desnet.id/rt/     http://10.254.10.5/samsat/index.php/login', 7, '2025-01-23 12:56:15', '2025-01-30 09:20:33', NULL),
(326, 2, 7, 7, 3, 3, '2025-01-23', '2025-01-23', '2025-01-23 17:57:19', 100, 'pku gamping - penambahan menu berita', NULL, '1737629839_3bc3bb9eda70a4136d11.jpg', 'https://descloud.desnet.id/s/Y5GZKnSSXdaPbFZ', 7, '2025-01-23 13:39:54', '2025-01-23 17:57:19', NULL),
(327, 2, 7, 7, 3, 3, '2025-01-23', '2025-01-23', '2025-01-23 17:57:49', 100, 'pku gamping - penambahan cms indikator mutu', NULL, '1737629869_79a0cb92441621db305a.jpg', 'https://descloud.desnet.id/s/Y5GZKnSSXdaPbFZ', 7, '2025-01-23 13:40:24', '2025-01-23 17:57:49', NULL),
(328, 2, 7, 7, 3, 3, '2025-01-23', '2025-01-23', '2025-01-23 17:58:17', 100, 'pku gamping - penambahan link youtube testimoni', NULL, '1737629897_3f26cba606ebd70823af.jpg', 'https://descloud.desnet.id/s/Y5GZKnSSXdaPbFZ', 7, '2025-01-23 13:43:25', '2025-01-23 17:58:17', NULL),
(329, 2, 11, 11, 3, 1, '2025-01-23', '2025-01-24', '2025-01-31 15:19:22', 100, 'Support Instalasi Arjaya Telindo 20 Unit Di Lapas II B Tulung Agung', NULL, '1737677815_2b1b2043f92d7f7d97a5.jpeg', 'Pendampingan Dan Memberikan Arahan Instalasi Langsung', 17, '2025-01-23 14:03:04', '2025-01-31 15:19:22', NULL),
(330, 2, 37, 37, 3, 1, '2025-01-23', '2025-01-23', '2025-01-31 15:49:22', 100, 'Penyesuaian dan pengecekan status pengajuan', NULL, '1737618951_6a853a63edc8302740b0.png', 'https://keuangan.alazharkalibanteng.or.id/', 6, '2025-01-23 14:55:12', '2025-01-31 15:49:22', NULL),
(331, 10, 37, 37, 3, 3, '2025-01-23', '2025-01-23', '2025-01-31 15:46:33', 100, 'Fungsi kirim email konfirmasi pembayaran ke pelanggan berdasarkan id (tidak otomatis)', NULL, '1737619524_e259713a88302565f49c.png', 'https://office.desnet.id/index.php/billing/pelanggan/904127e6901da6f1a9cdd436701a253f', 6, '2025-01-23 15:04:43', '2025-01-31 15:46:33', NULL),
(332, 2, 14, 14, 3, 1, '2025-01-23', '2025-01-23', '2025-01-31 15:48:34', 100, '[alfikri alkabapay] penyesuaian th. ajaran tagihan ke 24/25 a/n Safaraz Jarvis Harisanto', NULL, '1737621553_7a117bf3723dd3c55e46.png', 'https://alkabapay.alazharkalibanteng.or.id', 6, '2025-01-23 15:37:46', '2025-01-31 15:48:34', NULL),
(333, 2, 14, 14, 3, 1, '2025-01-23', '2025-01-23', '2025-01-31 15:48:36', 100, '[alfikri alkabapay] penambahan tagihan up a/n Safaraz Jarvis Harisanto', NULL, '1737622366_c1a4be6dfa45cabbf7c5.png', 'https://alkabapay.alazharkalibanteng.or.id/', 6, '2025-01-23 15:52:16', '2025-01-31 15:48:36', NULL),
(334, 4, 7, 7, 3, 3, '2025-01-23', '2025-01-23', '2025-01-23 16:09:24', 100, 'penambahan rekap jenis kendaraan per bahan bakar', NULL, '1737623364_83deb4c7cff3138b7064.jpg', 'http://10.254.10.5/samsat/index.php/Laporan_excel/rekap_jenis_bbm/?&end=2025-01-23&start=2025-01-23&up3ad=00', 7, '2025-01-23 16:08:21', '2025-01-23 16:09:24', NULL),
(335, 2, 22, 22, 2, 1, '2025-01-23', '2025-01-23', NULL, 100, 'Merapikan tampilan template fasilitas layanan rawat jalan RS PKU Muhammadiyah Gamping', NULL, '1737624148_6a1a31eb79a75f296f0b.png', 'https://demo81.desnet.online/pku_gamping/public/index.php/layanan-rawat-jalan', NULL, '2025-01-23 16:20:58', '2025-01-23 16:22:28', NULL),
(336, 2, 18, 18, 3, 3, '2025-01-23', '2025-01-23', '2025-01-31 15:48:45', 100, 'Fix bug dan revisi Validitas Bonafid', NULL, '1737624625_743790e7318a608dce6f.png', 'untuk detailnya ada di task helpdesk,tidak catat semua perubahan', 6, '2025-01-23 16:24:04', '2025-01-31 15:48:45', NULL),
(337, 2, 18, 18, 3, 2, '2025-01-23', '2025-01-23', '2025-01-31 15:48:47', 100, 'Pembuatan spesifikasi pengembangan validitas bonafid', NULL, '1737624562_45704eb9992667b2ec77.png', 'https://descloud.desnet.id/s/RJyWxTbgPpjQXiw , pass : desnet1234', 6, '2025-01-23 16:24:30', '2025-01-31 15:48:47', NULL),
(338, 2, 18, 18, 3, 9, '2025-01-22', '2025-01-23', '2025-01-31 15:49:15', 100, 'Pembuatan spesifikasi pengembangan validitas bonafid', NULL, '1737624460_4d6cf66d3617e3f2a065.png', 'https://meet.google.com/wzw-avur-kkb lupa record / ss waktu meeting', 6, '2025-01-23 16:25:10', '2025-01-31 15:49:15', NULL),
(339, 9, 15, 15, 3, 3, '2025-01-23', '2025-01-23', '2025-01-31 15:43:37', 100, 'SIMRS IRHAMNA = Penyesuaian permintaan barang unit', NULL, '1737625466_a8cff61db3a5fb9c21a1.png', 'Sudah tak update di git dan server, serta sudah tak testing', 6, '2025-01-23 16:43:31', '2025-01-31 15:43:37', NULL);
INSERT INTO `task` (`id_task`, `id_pekerjaan`, `id_user`, `creator`, `id_status_task`, `id_kategori_task`, `tgl_planing`, `tgl_selesai`, `tgl_verifikasi_diterima`, `persentase_selesai`, `deskripsi_task`, `alasan_verifikasi`, `bukti_selesai`, `tautan_task`, `verifikator`, `created_at`, `updated_at`, `deleted_at`) VALUES
(340, 2, 12, 12, 3, 1, '2025-01-23', '2025-01-30', '2025-01-30 17:24:29', 100, 'Laporan Helpdesk 23 Januari 2025 Status : Clear - Munas - Kendala akses web via ponsel dengan provider Indosat - ArjaTel - Voucher nyangkut (Wates) - Irhamna - Request penyesuaian permintaan barang unit & hapus data lama - Stikes - Kendala saat akses Depay - Satmoko - Menanyakan terkait sistem RME - Wazapbro - Kendala saat proses broadcast pesan (Jaya Metro) - Gamping - Tampilan foto yang di inputkan tidak sesuai - KSPPS Nus - Saat proses upload excel & PDF, yang terupload hanya excel saja - Alkabapay - Request penyesuaian data tagihan siswa pindahan - Alkabapay - Request generate data tagihan siswa - Sportax - Link verifikasi akun, tidak dapat di tap/klik Status : On Progress - DLHK - Akun penyuluh tidak muncul di akun admin - ArjaTel - Kendala saat penggunaan aplikasi - Gamping - Request penyesuaian tampilan & fitur untuk hapus foto tsb - App Keuangan - Web terinject judi online', NULL, '1738230882_4b7ccb6e3555c740d54e.png', 'tanpa tautan', 7, '2025-01-23 16:55:09', '2025-01-30 17:24:29', NULL),
(341, 17, 22, 22, 3, 1, '2025-01-23', '2025-01-23', '2025-01-30 10:00:08', 100, 'Merapikan tampilan di layar tablet', NULL, '1737626406_d0737e30fa7f23fce944.png', 'https://fe.desnet.online/smk_kihajardewantara_songgom/', 20, '2025-01-23 16:57:24', '2025-01-30 10:00:08', NULL),
(342, 17, 22, 22, 3, 1, '2025-01-23', '2025-01-23', '2025-01-30 10:00:16', 100, 'Merubah tampilan halaman berita yang awalnya berupa list menjadi bentuk grid (3 kolom)', NULL, '1737626458_caf1fdf1884ea65ddec7.png', 'https://fe.desnet.online/smk_kihajardewantara_songgom/berita/', 20, '2025-01-23 16:58:48', '2025-01-30 10:00:16', NULL),
(343, 17, 22, 22, 3, 1, '2025-01-23', '2025-01-23', '2025-01-30 14:25:26', 100, 'Menambahkan button PPDB di header sebelah menu utama', NULL, '1737626489_e372984097880e3a4fd4.png', 'https://fe.desnet.online/smk_kihajardewantara_songgom/', 20, '2025-01-23 16:59:30', '2025-01-30 14:25:26', NULL),
(344, 10, 10, 10, 3, 1, '2025-01-23', '2025-01-23', '2025-01-31 15:45:21', 100, 'Penyesuaian status pembayaran dari Pelanggan atas nama JINO UMKM Klaten', NULL, '1737639945_0d33ae4a52a1a794998a.png', '-', 6, '2025-01-23 20:43:39', '2025-01-31 15:45:21', NULL),
(345, 2, 10, 10, 3, 9, '2025-01-23', '2025-01-23', '2025-01-31 15:47:16', 100, 'Simulasi MUNAS 3 IKAFH bersama panitia MUNAS', NULL, '1737639993_a5011f79d5cca79279f5.jpg', '-', 6, '2025-01-23 20:46:15', '2025-01-31 15:47:16', NULL),
(346, 2, 6, 6, 3, 9, '2025-01-23', '2025-01-23', '2025-01-23 20:54:01', 100, 'Presales DPRD Kota Tegal', NULL, '1737640441_c9cabf1e572b3f9a670a.png', 'tidak ada', 6, '2025-01-23 20:52:48', '2025-01-23 20:54:01', NULL),
(347, 2, 6, 6, 3, 1, '2025-01-23', '2025-01-23', '2025-01-23 20:55:31', 100, 'Support Sportax', NULL, '1737640531_a1ddfa250a7ec982a6f8.png', 'tidak ada', 6, '2025-01-23 20:53:08', '2025-01-23 20:55:31', NULL),
(348, 2, 6, 6, 3, 1, '2025-01-23', '2025-01-23', '2025-01-23 20:55:49', 100, 'Support KSPPS', NULL, '1737640549_d1cd5ee2263fc07e16e3.png', 'tidak ada', 6, '2025-01-23 20:53:21', '2025-01-23 20:55:49', NULL),
(349, 7, 26, 26, 3, 3, '2025-01-23', '2025-01-23', '2025-01-28 06:35:05', 100, 'Revisi KTH', NULL, '1737645780_ab7e2bf7f52cb99ce420.jpeg', 'http://git.desnet.id/dlhk_jateng/sikajeng_mobile', 1, '2025-01-23 22:20:44', '2025-01-28 06:35:05', NULL),
(350, 11, 20, 20, 3, 4, '2025-01-24', '2025-01-24', '2025-01-24 08:15:53', 100, '[QC Check] - Hasil Pekerjaan Development di Hosting produksi', NULL, '1737681353_194c327209c68ed2f518.jpg', 'https://bprartomoro.co.id/', 20, '2025-01-24 08:13:21', '2025-01-24 08:15:53', NULL),
(351, 2, 37, 37, 3, 1, '2025-01-24', '2025-01-24', '2025-01-31 15:49:24', 100, 'File SPD tidak dapat didownload', NULL, '1737683750_91db45f5faabbdbe8b86.png', 'https://simnadin.id/index.php/SPD/cetak_spd/c1dfd96eea8cc2b62785275bca38ac261256e278', 6, '2025-01-24 08:54:55', '2025-01-31 15:49:24', NULL),
(352, 15, 24, 24, 3, 7, '2025-01-31', '2025-01-31', '2025-01-31 13:38:33', 100, 'membuat desain alternativ 1', NULL, '1738284678_8687b46aae9bc9904287.png', 'https://www.figma.com/design/MKAxIJijmDKr9B95tn2Sf4/Pronatech-Indo?node-id=0-1&t=r0Bkd7ubfzN1NxTk-1', 20, '2025-01-24 10:24:27', '2025-01-31 13:38:33', NULL),
(353, 15, 24, 24, 3, 7, '2025-01-31', '2025-01-31', '2025-01-31 13:38:37', 100, 'membuat desain alternativ 2', NULL, '1738284743_d0d2ac4bb82652cb3486.png', 'https://www.figma.com/design/MKAxIJijmDKr9B95tn2Sf4/Pronatech-Indo?node-id=56-426&t=r0Bkd7ubfzN1NxTk-0', 20, '2025-01-24 10:25:05', '2025-01-31 13:38:37', NULL),
(354, 4, 8, 8, 3, 1, '2025-01-24', '2025-01-24', '2025-01-30 09:20:39', 100, 'support SOS', NULL, '1737716582_c25893ff881fca2c9ac2.png', 'https://sos.desnet.id/rt/Ticket/Display.html?id=3351&results=52bc2c3fd922c90454c93220b81d6b4c', 7, '2025-01-24 10:37:30', '2025-01-30 09:20:39', NULL),
(355, 1, 23, 23, 3, 3, '2025-01-24', '2025-01-24', '2025-01-28 06:22:04', 100, 'layouting dashboard', NULL, '1737693007_2d05e01e7457c2f0a9d0.png', 'http://git.desnet.id/alfikri/inventory/commit/31a7bf330b573a7ce6cb8475b1143fe35f6cf81d', 1, '2025-01-24 11:26:00', '2025-01-28 06:22:04', NULL),
(356, 2, 10, 10, 3, 1, '2025-01-24', '2025-01-24', '2025-01-31 15:47:19', 100, 'Ubah email user yang sudah tidak dipakai di IKAFH', NULL, '1737693264_3a5d125ca2cccf372de4.png', '-', 6, '2025-01-24 11:33:42', '2025-01-31 15:47:19', NULL),
(357, 2, 10, 10, 2, 3, '2025-01-30', '2025-01-30', NULL, 30, 'Fitur lihat dan export data hasil voting', NULL, '1738228250_6a375ed23db1c88ad799.jpg', 'masih on progress, karena sehari full support dan meet', NULL, '2025-01-24 11:35:11', '2025-01-30 16:10:50', NULL),
(358, 2, 10, 10, 2, 1, '2025-01-30', '2025-01-31', NULL, 100, 'Penyesuaian server produksi IKAFH untuk agenda MUNAS 3', NULL, '1738315330_c1bf02dfa9297218d20d.jpg', '-', NULL, '2025-01-24 11:35:49', '2025-01-31 16:22:10', NULL),
(359, 6, 9, 9, 3, 7, '2025-01-24', '2025-01-24', '2025-01-30 09:57:36', 100, 'Design Greeting Isra Miraj 1446 H/2025 M alternatif 01', NULL, '1737711781_f881bcce2d85c7e344f1.jpg', 'tidak ada', 20, '2025-01-24 11:56:48', '2025-01-30 09:57:36', NULL),
(360, 6, 9, 9, 3, 7, '2025-01-24', '2025-01-24', '2025-01-30 09:57:31', 100, 'Design Greeting Isra Miraj 1446 H/2025 M alternatif 02', NULL, '1737711796_00dc056f083e647ae973.jpg', 'tidak ada', 20, '2025-01-24 11:57:08', '2025-01-30 09:57:31', NULL),
(361, 3, 20, 20, 3, 1, '2025-01-24', '2025-01-24', '2025-01-24 12:41:10', 100, '[Support - Web SMKN1 Banyumas] - Tampilan Web Berantakan', NULL, '1737697270_d54d9a275bd9506ee4eb.jpeg', 'https://smkn1bms.sch.id/', 20, '2025-01-24 12:39:45', '2025-01-24 12:41:10', NULL),
(362, 16, 20, 20, 3, 7, '2025-01-28', '2025-01-30', '2025-01-30 16:40:31', 100, '[Proses Design] - Design Layout Website dengan 1 altv mengingat waktu sangat pendek', NULL, '1738230031_6131c6804d6e9e27da1f.jpg', 'https://fe.desnet.online/indoasia/', 20, '2025-01-24 13:48:38', '2025-01-30 16:40:31', NULL),
(363, 17, 22, 20, 3, 3, '2025-01-24', '2025-01-24', '2025-01-30 10:00:26', 100, '[Migrasi] - Proses Migrasi ke Domain', NULL, '1737706641_29ac371b79815aab00a3.png', 'https://smkkhdsonggom.sch.id/', 20, '2025-01-24 14:13:49', '2025-01-30 10:00:26', NULL),
(364, 9, 16, 16, 1, 3, '2025-01-24', NULL, NULL, 0, 'Penyesuian inputan terapi obat di tindak lanjut berdasarkan resep - Klinik Satmoko', NULL, NULL, NULL, NULL, '2025-01-24 14:37:28', '2025-01-27 13:20:57', '2025-01-27 13:20:57'),
(365, 2, 11, 11, 1, 9, '2025-01-24', NULL, NULL, 100, 'Meeting Ka Lapas II B Gunung Agung. Laporan Unit sudah di Tes Dan Sudah Jalan', NULL, NULL, NULL, NULL, '2025-01-24 14:48:47', '2025-01-27 22:52:11', '2025-01-27 22:52:11'),
(366, 9, 15, 15, 3, 3, '2025-01-24', '2025-01-24', '2025-01-31 15:42:25', 100, 'Penyesuaian Laporan RL5.1 SIMRS PURINIRMALA', NULL, '1737706115_f5640800c9897a206e29.png', 'https://simrspurinirmala.com/simrs/index.php/laporan_rl/rl_5/rl_5_1', 6, '2025-01-24 15:07:53', '2025-01-31 15:42:25', NULL),
(367, 10, 37, 37, 3, 1, '2025-01-24', '2025-01-24', '2025-01-31 15:46:38', 100, 'Filter tanggal bayar pada saat input billing', NULL, '1737707109_bbe53c82b1b7c0472136.png', 'https://office.desnet.id/index.php/billing/pelanggan/27f2b271c7fc8dc81969d464e26d09c5#', 6, '2025-01-24 15:24:49', '2025-01-31 15:46:38', NULL),
(368, 17, 22, 22, 3, 1, '2025-01-24', '2025-01-24', '2025-01-30 10:00:31', 100, 'Menambahkan domain ke google saerch console', NULL, '1737707795_1d530490b5eb261ddc2c.png', 'https://search.google.com/search-console?resource_id=https%3A%2F%2Fsmkkhdsonggom.sch.id%2F', 20, '2025-01-24 15:35:21', '2025-01-30 10:00:31', NULL),
(369, 17, 22, 22, 3, 1, '2025-01-24', '2025-01-24', '2025-01-30 10:00:36', 100, 'Menambahkan plugin SEO Rank Math', NULL, '1737707862_1f0674ba096dfebf6473.png', 'https://smkkhdsonggom.sch.id/wp-admin/admin.php?page=rank-math-options-general', 20, '2025-01-24 15:35:55', '2025-01-30 10:00:36', NULL),
(370, 2, 12, 12, 3, 1, '2025-01-24', '2025-01-30', '2025-01-30 17:24:41', 100, 'Laporan Helpdesk 24 Januari 2025 Status : Clear - VB Crew - Kendala saat simpan banyak data sekaligus - Satmoko - Data anamnesis tidak tersinkron - Munas - Request penyesuaian data akun alumni - ArjaTel - Kendala voucher nyangkut - KSPPS Nus - Request hapus data record - KSPPS Nus - Request penyesuaian data nomor telepon Status : On Progress - Satmoko - Penambahan fitur untuk pengkajian awal medis - Gamping - Request agar saat klik pop up bisa menuju link yang dituju', NULL, '1738230718_10a1d9a375bc4248ced9.png', 'tanpa tautan', 7, '2025-01-24 17:08:28', '2025-01-30 17:24:41', NULL),
(371, 2, 6, 6, 3, 5, '2025-01-24', '2025-01-24', '2025-01-24 21:17:26', 100, 'Presales DPRD Kota Tegal', NULL, '1737728246_b593fb2c796d6c5143da.png', 'https://descloud.desnet.id/s/ddMYk8ei75FrCJS', 6, '2025-01-24 21:14:37', '2025-01-24 21:17:26', NULL),
(372, 2, 6, 6, 1, 9, '2025-01-24', NULL, NULL, 0, 'Evaluasi Mingguan', NULL, NULL, NULL, NULL, '2025-01-24 21:15:14', '2025-01-24 21:18:08', '2025-01-24 21:18:08'),
(373, 3, 22, 22, 3, 1, '2025-01-27', '2025-01-27', '2025-01-30 09:57:59', 100, 'Membuat user baru dengan role Editor pada web P3M Poltekpar', NULL, '1737953546_81aba57cea3da1dc2a94.png', 'https://p3m.poltekparmakassar.ac.id/wp-admin/users.php?id=13', 20, '2025-01-27 11:50:42', '2025-01-30 09:57:59', NULL),
(374, 3, 22, 22, 3, 1, '2025-01-29', '2025-01-29', '2025-01-30 09:58:04', 100, 'Memperbaiki url login admin di web P3M Poltekpar Makassar', NULL, '1738120484_9c42956601f79931129f.png', 'https://p3m.poltekparmakassar.ac.id/masuk', 20, '2025-01-29 10:14:01', '2025-01-30 09:58:04', NULL),
(375, 2, 25, 25, 3, 3, '2025-01-31', '2025-01-31', '2025-02-03 14:00:40', 100, 'Malinda - Ubah Role Admin Warehouse akses ke Tiket Komplain & Hide All Button Ketika Proses Sudah Selesai', NULL, '1738313501_98f88755910e6f1c929f.pdf', 'https://play.google.com/store/apps/details?id=com.desnet.malinda', 17, '2025-01-30 08:48:57', '2025-02-03 14:00:40', NULL),
(376, 10, 10, 10, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 15:45:23', 100, 'Ubah produk SID 9868 menjadi Metro Gold', NULL, '1738203496_62361a02d78791e4b23d.png', 'https://office.desnet.id/index.php/penjualan/detail/b05b8e8072d50ce91ea4580244178377', 6, '2025-01-30 09:17:17', '2025-01-31 15:45:23', NULL),
(377, 2, 10, 10, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 15:47:47', 100, 'Perbaikan error verifikasi pendaftaran IKAFH', NULL, '1738203987_50caa3eff64dd5483ea6.jpg', 'data sudah terverifikasi', 6, '2025-01-30 09:25:44', '2025-01-31 15:47:47', NULL),
(378, 2, 10, 10, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 15:47:45', 100, 'Pengecekan status lupa password untuk akun dan pembaruan token', NULL, '1738204133_b57f381ac6bb5bfe97d2.jpg', 'akun sudah pulih', 6, '2025-01-30 09:28:22', '2025-01-31 15:47:45', NULL),
(379, 2, 10, 10, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 15:47:42', 100, 'Pengecekan dan pembaruan email verifkasi tidak terkirim karena typo IKAFH', NULL, '1738204231_a89d1fd067958c5d113a.jpg', '-', 6, '2025-01-30 09:30:07', '2025-01-31 15:47:42', NULL),
(380, 4, 7, 7, 3, 3, '2025-01-30', '2025-01-30', '2025-01-30 09:33:43', 100, 'perbaikan rekap jenis bbm', NULL, '1738204423_d95ff88060810686189e.png', 'http://10.254.10.5/samsat/index.php/Laporan_excel/rekap_jenis_bbm/?&end=2024-01-31&start=2024-01-01&up3ad=12', 7, '2025-01-30 09:32:59', '2025-01-30 09:33:43', NULL),
(381, 16, 20, 20, 3, 3, '2025-01-31', '2025-01-30', '2025-01-30 09:57:12', 100, '[Build Website] - Buat Header', NULL, '1738205832_ad24a1e2cddeb7c2dea9.jpg', 'https://fe.desnet.online/indoasia/', 20, '2025-01-30 09:56:06', '2025-01-30 09:57:12', NULL),
(382, 9, 15, 15, 3, 3, '2025-01-30', '2025-01-30', '2025-01-31 15:42:58', 100, 'SIMRS CEPU : Penyesuaian data jadwal operasi', NULL, '1738205828_78847d78d662c5b23195.png', 'http://localhost/simrs/simrs/index.php/pendaftaran/jadwaloperasi', 6, '2025-01-30 09:56:32', '2025-01-31 15:42:58', NULL),
(383, 10, 10, 10, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 15:45:38', 100, 'Pengecekan pembayaran dari sisi Xendit untuk CID 4968', NULL, '1738205968_547902c6b8b3d0de1bf5.png', 'pengecekan di xendit', 6, '2025-01-30 09:58:29', '2025-01-31 15:45:38', NULL),
(384, 9, 15, 15, 3, 3, '2025-01-30', '2025-01-30', '2025-01-31 15:43:01', 100, 'SIMKLINIK SATMOKO Penyesuaian module Farmasi/Resep/Kelola Resep pada form tambah resep non racik dan penambahan satuan tetes', NULL, '1738206074_62eb0a9c0cd914b0f30f.png', 'https://kliniksatmoko.desmedic.id/index.php/farmasi/apotek/resep/form/', 6, '2025-01-30 09:59:34', '2025-01-31 15:43:01', NULL),
(385, 2, 10, 10, 3, 9, '2025-01-30', '2025-01-30', '2025-01-31 15:47:51', 100, 'Penjelasan teknis dan spek SIMPORA', NULL, '1738228206_38627d4270e2ad809f1c.jpg', 'https://meet.google.com/kry-wfmb-org', 6, '2025-01-30 10:00:29', '2025-01-31 15:47:51', NULL),
(386, 2, 7, 7, 3, 3, '2025-01-30', '2025-01-30', '2025-01-30 16:14:47', 100, 'pku gamping - penambahan link popup', NULL, '1738228487_ac6829fa326f5f472513.png', 'https://descloud.desnet.id/apps/onlyoffice/6266096?filePath=%2Fmeet%20pku%20gamping%20desember.xlsx', 7, '2025-01-30 10:00:58', '2025-01-30 16:14:47', NULL),
(387, 2, 7, 7, 3, 3, '2025-01-30', '2025-01-30', '2025-01-30 16:16:46', 100, 'pku gamping - penyesuaian layout foto fasilitas dan cms', NULL, '1738228606_bb18628464bdb357eca0.png', 'https://descloud.desnet.id/apps/onlyoffice/6266096?filePath=%2Fmeet%20pku%20gamping%20desember.xlsx', 7, '2025-01-30 10:01:54', '2025-01-30 16:16:46', NULL),
(388, 6, 16, 16, 3, 3, '2025-01-30', '2025-01-30', '2025-01-31 15:41:11', 100, 'Penyesuaian video dan reset antrian tiap awal hari - RSIA Irhamna', NULL, '1738206342_45a0cf4292fd46d30a4f.jpg', 'langsung eksekusi di server rumah sakit', 6, '2025-01-30 10:04:36', '2025-01-31 15:41:11', NULL),
(389, 16, 20, 20, 3, 3, '2025-01-31', '2025-01-30', '2025-01-30 10:18:57', 100, '[BuildUp-Website] - Membuat Footer', NULL, '1738207137_86e2ba0bc92c4ff4e539.jpg', 'https://fe.desnet.online/indoasia/', 20, '2025-01-30 10:05:36', '2025-01-30 10:18:57', NULL),
(390, 6, 16, 16, 3, 3, '2025-01-30', '2025-01-30', '2025-01-31 15:41:29', 100, 'Menampilkan ICare BPJS - Klinik Munawwarah', NULL, '1738207380_a507c2c026e8d942d754.jpg', 'https://munawwarah.desmedic.id/index.php/rajal/pelayanan/form/2501300008/kunjungan#tindakan', 6, '2025-01-30 10:21:31', '2025-01-31 15:41:29', NULL),
(391, 2, 18, 18, 3, 3, '2025-01-30', '2025-01-30', '2025-01-31 15:49:18', 100, 'Malinda : update Sales tidak auto approval', NULL, '1738211310_aa7f39e008b39212ff4f.png', 'https://malindaapps.com/', 6, '2025-01-30 10:22:30', '2025-01-31 15:49:18', NULL),
(392, 2, 18, 18, 2, 3, '2025-01-30', '2025-01-30', NULL, 0, 'Malinda : update role admin warehouse bisa crud di tiket complain', NULL, '1738207553_fbf7e2a3a5e71e62c90c.png', 'https://malindaapps.com/', NULL, '2025-01-30 10:25:12', '2025-01-30 10:25:53', NULL),
(393, 2, 11, 11, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 15:19:02', 100, 'Build Apk dan Tes Ulang Aplikasi Berjalan Dengan Lancar.', NULL, '1738207950_bb565870201017435ec3.jpeg', 'https://descloud.desnet.id/s/Bpbd_brebes', 17, '2025-01-30 10:31:21', '2025-01-31 15:19:02', NULL),
(394, 16, 20, 20, 3, 3, '2025-01-31', '2025-01-30', '2025-01-30 14:26:14', 100, '[Build-Website] - Membuat Slider Image di Homepage', NULL, '1738221974_e5c7e8710fd483fdf982.jpg', 'https://fe.desnet.online/indoasia/', 20, '2025-01-30 10:31:53', '2025-01-30 14:26:14', NULL),
(395, 2, 10, 10, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 15:48:29', 100, 'recording alur voting munas 3', NULL, '1738210842_0a5b53d987c66f52412e.png', '-', 6, '2025-01-30 10:49:57', '2025-01-31 15:48:29', NULL),
(396, 10, 10, 10, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 15:45:40', 100, 'Penyesuaian nominal tagihan user dengan CID 2910', NULL, '1738212218_7b2fb75fbff7271c42aa.png', '-', 6, '2025-01-30 11:42:32', '2025-01-31 15:45:40', NULL),
(397, 3, 22, 22, 3, 1, '2025-01-30', '2025-01-30', '2025-01-30 14:24:44', 100, 'Memperbaiki website kabupaten Wonogiri yang tidak dapat diakses', NULL, '1738213084_7d6454edbad15a5834f6.png', 'https://wonogirikab.go.id/', 20, '2025-01-30 11:48:25', '2025-01-30 14:24:44', NULL),
(398, 11, 22, 22, 3, 3, '2025-01-30', '2025-01-30', '2025-01-30 14:25:18', 100, 'Menambahkan chat whatsapp pada kanan bawah web', NULL, '1738212666_0802734966bcecc07b33.png', 'https://bprartomoro.co.id/', 20, '2025-01-30 11:49:26', '2025-01-30 14:25:18', NULL),
(399, 17, 22, 22, 3, 3, '2025-01-30', '2025-01-30', '2025-01-30 14:24:53', 100, 'Responsive mobile pada halaman pengumuman', NULL, '1738212947_90aa625ff6fd9934375a.jpg', 'https://smkkhdsonggom.sch.id/pengumuman/', 20, '2025-01-30 11:52:28', '2025-01-30 14:24:53', NULL),
(400, 17, 22, 22, 3, 3, '2025-01-30', '2025-01-30', '2025-01-30 14:25:02', 100, 'Mengurangi padding background pada page title', NULL, '1738212989_8ec92d81949f93ae6153.jpg', 'https://smkkhdsonggom.sch.id/pengumuman/', 20, '2025-01-30 11:53:27', '2025-01-30 14:25:02', NULL),
(401, 17, 22, 22, 3, 3, '2025-01-30', '2025-01-30', '2025-01-30 14:25:09', 100, 'Footer full hanya tampil di halaman home, sementara dihalaman lain hanya copyright', NULL, '1738213031_d7f07f0a8dbf8e9755cd.jpg', 'https://smkkhdsonggom.sch.id/pengumuman/', 20, '2025-01-30 11:54:20', '2025-01-30 14:25:09', NULL),
(402, 10, 10, 10, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 15:45:44', 100, 'Penyesuaian pemindahan dana dari CID lama ke CID baru ketika invoice sudah terbit untuk CID 4762 ke 5621 dan CID 5047 ke 5610', NULL, '1738214794_98b6b8619c61a63f7393.png', '-', 6, '2025-01-30 12:25:06', '2025-01-31 15:45:44', NULL),
(403, 9, 16, 16, 3, 3, '2025-01-30', '2025-01-30', '2025-01-31 15:43:08', 100, 'Penyesuaian video dan reset nomor antrian tiap awal hari - RSIA Irhamna', NULL, '1738218350_8ac7b047feaa2c8c1e5d.jpg', 'sudah eksekusi langsung di server rumah sakit', 6, '2025-01-30 13:25:18', '2025-01-31 15:43:08', NULL),
(404, 9, 16, 16, 3, 3, '2025-01-30', '2025-01-30', '2025-01-31 15:43:11', 100, 'Menampilkan Icare BPJS - Klinik Munawwarah', NULL, '1738218433_a6dd701c12edd917fee0.jpg', 'https://munawwarah.desmedic.id/index.php/rajal/pelayanan/form/2501300008/kunjungan#tindakan', 6, '2025-01-30 13:26:27', '2025-01-31 15:43:11', NULL),
(405, 10, 10, 10, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 15:46:06', 100, 'Pengecekan status dismantle beberapa SID', NULL, '1738221499_eac5eeff1effe70028f1.jpg', '-', 6, '2025-01-30 14:18:03', '2025-01-31 15:46:06', NULL),
(406, 4, 8, 8, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 20:53:30', 100, 'support SOS', NULL, '1738235393_33c62bdfa2f168c2d06a.png', 'http://10.254.10.5/samsat/index.php          https://sos.desnet.id/rt/Ticket/Create.html?Queue=3 ', 7, '2025-01-30 14:20:16', '2025-01-31 20:53:30', NULL),
(407, 2, 14, 14, 3, 9, '2025-01-30', '2025-01-30', '2025-01-31 15:48:38', 100, '[dptr simtangkas] koordinasi terkait geoserver dan aplikasi simtangkas', NULL, '1738221988_f1a51c5e99255878eb9b.png', 'undangan', 6, '2025-01-30 14:25:08', '2025-01-31 15:48:38', NULL),
(408, 16, 20, 20, 3, 3, '2025-01-31', '2025-01-30', '2025-01-30 21:34:41', 100, '[Build-Website] - Layouting Homepage', NULL, '1738247681_183e9d1254b381afd460.jpg', 'https://fe.desnet.online/indoasia/', 20, '2025-01-30 14:27:34', '2025-01-30 21:34:41', NULL),
(409, 2, 14, 14, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 15:48:41', 100, '[alfikri pmb] penyesuaian tagihan a/n - alrizal - hanna - millie - zivana', NULL, '1738222348_64897670f829d6ae6718.png', 'https://pmb.alazharkalibanteng.or.id/', 6, '2025-01-30 14:31:44', '2025-01-31 15:48:41', NULL),
(410, 4, 7, 7, 3, 3, '2025-02-03', '2025-02-03', '2025-02-03 13:46:27', 100, 'penyesuaian opsen laporan rekon bulanan bersih', NULL, '1738565187_cc6fa6689f69c71d9bc3.png', 'http://10.254.10.5/samsat/index.php/Laporan_excel/Rekon_pnr_bersih/?&end=2025-02-03&start=2025-02-03&up3ad=00', 7, '2025-01-30 15:27:58', '2025-02-03 13:46:27', NULL),
(411, 4, 7, 7, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 11:39:15', 100, 'penyesuaian opsen rekap penerimaan bulanan', NULL, '1738298355_1ffe7ab21e3be409dfd2.png', 'http://10.254.10.5/samsat/index.php/Laporan_25/text/2/-/00/2025-01-31/1', 7, '2025-01-30 15:28:37', '2025-01-31 11:39:15', NULL),
(412, 9, 15, 15, 3, 3, '2025-01-30', '2025-01-30', '2025-01-31 15:43:05', 100, 'SIMRS CEPU : ada tambahan untuk modul HD 1. fitur pada dataTable tidak berfungsi (pagination, ordering, show per n page), 2. mohon pada tablenya dimunculkan No SEP pasien seperti pada modul pendaftaran', NULL, '1738226328_a78fe75cda67e5c7b075.png', 'http://localhost/simrs/simrs/index.php/hemodialisa/pelayanan', 6, '2025-01-30 15:37:45', '2025-01-31 15:43:05', NULL),
(413, 9, 16, 16, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 15:43:14', 100, 'Membuat cron untuk sinkronisasi jadwal dokter dari HFIS BPJS - Klinik Satmoko', NULL, '1738307379_e6988fac2a4166d28dd0.png', 'https://kliniksatmoko.desmedic.id/index.php/app/auth/sync_jadwal', 6, '2025-01-30 15:56:52', '2025-01-31 15:43:14', NULL),
(414, 2, 18, 18, 3, 9, '2025-01-30', '2025-01-30', '2025-01-31 15:49:20', 100, 'Review progress dishub kab semarang', NULL, '1738228644_b28ee2f3056f2e484a57.png', 'belum ada demo', 6, '2025-01-30 16:16:52', '2025-01-31 15:49:20', NULL),
(415, 10, 10, 10, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 15:46:23', 100, 'Perubahan status dismantle SID 5671', NULL, '1738229390_8efa53421390903e3492.png', 'https://office.desnet.id/index.php/pelanggan/detail/39b31c036c4d391ee9df7b5fbab4493e', 6, '2025-01-30 16:28:56', '2025-01-31 15:46:23', NULL),
(416, 2, 7, 7, 3, 3, '2025-01-30', '2025-01-30', '2025-01-30 16:34:03', 100, 'balatkop - penyesuaian format laporan peserta', NULL, '1738229643_fd70eef448fb158246a9.jpg', 'https://sipentol.dinkop-umkm.jatengprov.go.id/index.php/dashboard/export_peserta/2557911c1bf75c2b643afb4ecbfc8ec2/kosong', 7, '2025-01-30 16:31:47', '2025-01-30 16:34:03', NULL),
(417, 10, 37, 37, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 15:46:41', 100, 'Perubahan data Serial Number', NULL, '1738230436_1b0423f4079c09f3431e.png', 'office.desnet.id', 6, '2025-01-30 16:45:51', '2025-01-31 15:46:41', NULL),
(418, 2, 12, 12, 3, 1, '2025-01-30', '2025-01-30', '2025-01-30 17:24:52', 100, 'Laporan Helpdesk 30 Januari 2025 Status : Clear - Gamping - Kendala saat akses menu kelola fasilitas - Depay Amfa - Kendala saat proses login - Desfiber - Request pengecekan ttd BAAL Pelanggan - Desfiber - Request pengecekan dari sisi Xendit - Desfiber - Request pengecekan tidak sesuai nominal bayar - Cepu - Request penyesuaian jadwal operasi dokter - Cepu - Request pengecekan pada modul Hemodialisa - Sipentol - Penyesuaian kolom agar wajib di isi - Sipentol - Data di aplikasi sudah sesuai, saat export excel tidak muncul - Munawarah - Konfirmasi terkait penggunaan iCare - Alkabapay - Request perubahan nama siswa pada kelola tagihan - Alkabapay - Kendala saat cetak formulir - Alkabapay - Menginformasikan cara menyesuaikan data tagihan siswa - Wazapbro - Kendala saat proses broadcast pesan (Solusi Intira) Status : On Progress - None', NULL, '1738230844_febbd038f10b56341167.png', 'tanpa tautan', 7, '2025-01-30 16:47:01', '2025-01-30 17:24:52', NULL),
(419, 10, 37, 37, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 15:46:43', 100, 'Penyesuaian label ppn pada halaman invoice corporate dan invoice desfiber', NULL, '1738230594_2f0f76d3f56d2f54f1ad.png', 'office.desnet.id', 6, '2025-01-30 16:48:51', '2025-01-31 15:46:43', NULL),
(420, 3, 22, 22, 3, 1, '2025-01-30', '2025-01-30', '2025-01-30 20:59:44', 100, 'Mengganti logo website ekoregion suma', NULL, '1738230579_f85d5da5310bbbc89d20.png', 'https://suma.ekoregion.id/', 20, '2025-01-30 16:48:58', '2025-01-30 20:59:44', NULL),
(421, 10, 37, 37, 3, 1, '2025-01-30', '2025-01-30', '2025-01-31 15:46:46', 100, 'Export data pelanggan tanpa nomor telp billing', NULL, '1738230660_d271d120d8252d1418f8.png', 'office.desnet.id', 6, '2025-01-30 16:50:37', '2025-01-31 15:46:46', NULL),
(422, 18, 17, 17, 3, 9, '2025-01-30', '2025-01-30', '2025-01-30 17:58:13', 100, 'Koordinasi Teknis Aplikasi', NULL, '1738234693_44754ec3328300f7d4ac.png', 'https://descloud.desnet.id/s/DTaLASom8o3pEm7', 17, '2025-01-30 17:55:50', '2025-01-30 17:58:13', NULL),
(423, 18, 10, 17, 3, 3, '2025-01-31', '2025-02-04', '2025-02-06 03:45:52', 100, 'Fitur Data Atlet Pelajar API => Add', NULL, '1738635310_71c4ca1d247ca8a6d03f.png', 'http://git.desnet.id/SIMPORA/web-new-simpora/commit/38f0b99aa3035e47606bcaae91a248f042d7d119', 1, '2025-01-30 17:56:56', '2025-02-06 03:45:52', NULL),
(424, 5, 6, 6, 3, 9, '2025-01-30', '2025-01-30', '2025-01-30 20:18:18', 100, 'Review Progres', NULL, '1738243098_846181fbb2de9c6b35fb.jpeg', 'tidak ada', 6, '2025-01-30 20:16:52', '2025-01-30 20:18:18', NULL),
(425, 2, 6, 6, 3, 5, '2025-01-30', '2025-01-30', '2025-01-30 20:20:20', 0, 'Dokumen Presales dan Draft RAP IndoAsia', NULL, '1738243220_f4be56a5d11ea0ebcaf3.docx', 'https://descloud.desnet.id/s/p95QGbRFn6Fs8HY', 6, '2025-01-30 20:18:58', '2025-01-30 20:20:20', NULL),
(426, 12, 20, 20, 3, 3, '2025-01-31', '2025-01-30', '2025-01-30 20:50:39', 100, '[Migrasi Produksi] - Website dimigrasi ke domain Hosting', NULL, '1738245039_bb93b04c5f72bce961f0.jpg', 'https://lpkmgm.com/', 20, '2025-01-30 20:30:29', '2025-01-30 20:50:39', NULL),
(427, 2, 22, 22, 2, 1, '2025-01-31', '2025-01-31', NULL, 100, 'Merapikan tampilan responsive mobile detail dokter di template aplikasi RS PKU Muhammadiyah Gamping', NULL, '1738279615_194486d86a2f187f8843.jpg', 'https://pkugamping.com/index.php/profil-dokter/356a192b7913b04c54574d18c28d46e6395428ab', NULL, '2025-01-31 06:26:16', '2025-01-31 06:26:55', NULL),
(428, 18, 13, 17, 3, 3, '2025-02-05', '2025-02-05', '2025-02-05 16:09:10', 100, 'Fitur Data Atlet Pelajar => Form Add Update', NULL, '1738746550_2428bdeca4d8ccf603f3.png', 'http://localhost/simpora-new/public/index.php/atlet-pelajar/add http://localhost/simpora-new/public/index.php/atlet-pelajar/edit/c1dfd96eea8cc2b62785275bca38ac261256e278', 13, '2025-01-31 08:06:37', '2025-02-05 16:09:10', NULL),
(429, 15, 22, 22, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 13:37:43', 100, 'Membuat Database website wordpress', NULL, '1738286413_e781ec84055361908279.png', 'https://cpanel.desnet.online/cpsess3344472910/3rdparty/phpMyAdmin/index.php?route=/database/structure&db=desonline_pronatech', 20, '2025-01-31 08:17:45', '2025-01-31 13:37:43', NULL),
(430, 15, 22, 22, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 13:37:55', 100, 'Install wordpress pada server demo FE', NULL, '1738286483_76f45836015cee1bc67d.png', 'https://fe.desnet.online/pronatech/', 20, '2025-01-31 08:19:02', '2025-01-31 13:37:55', NULL),
(431, 15, 22, 22, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 13:38:05', 100, 'Install tema dan child theme', NULL, '1738286999_d93f4e49eeb960073893.png', 'https://fe.desnet.online/pronatech/wp-admin/themes.php', 20, '2025-01-31 08:28:31', '2025-01-31 13:38:05', NULL),
(432, 15, 22, 22, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 13:38:13', 100, 'Install Plugin-plugin yang dibutuhkan', NULL, '1738287343_d2446ad441ba5bdc8fb9.png', 'https://fe.desnet.online/pronatech/wp-admin/plugins.php', 20, '2025-01-31 08:29:18', '2025-01-31 13:38:13', NULL),
(433, 15, 22, 22, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 13:38:18', 100, 'Membuat menu utama dan menu pendukung lain', NULL, '1738287820_955015722a50b2b4277f.png', 'https://fe.desnet.online/pronatech/wp-admin/nav-menus.php?action=edit&menu=2', 20, '2025-01-31 08:36:38', '2025-01-31 13:38:18', NULL),
(434, 15, 22, 22, 3, 3, '2025-02-03', '2025-01-31', '2025-01-31 13:38:22', 100, 'Membuat Header', NULL, '1738294221_13170e82e2431a908448.png', 'https://fe.desnet.online/pronatech/', 20, '2025-01-31 08:46:54', '2025-01-31 13:38:22', NULL),
(435, 15, 22, 22, 3, 3, '2025-02-03', '2025-01-31', '2025-01-31 13:38:28', 100, 'Membuat Footer', NULL, '1738303926_d5c4315f977b9e498dc7.png', 'https://fe.desnet.online/pronatech/', 20, '2025-01-31 08:47:40', '2025-01-31 13:38:28', NULL),
(436, 15, 22, 22, 3, 3, '2025-02-03', '2025-01-31', '2025-02-03 11:15:30', 100, 'Membuat Halaman Home', NULL, '1738316608_8b29094fd4fb96abbe82.png', 'https://fe.desnet.online/pronatech/', 20, '2025-01-31 08:48:18', '2025-02-03 11:15:30', NULL),
(437, 18, 7, 17, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 20:49:16', 100, 'Fitur Data Tenaga Keolahragaan API => Get Master Tenaga Olahrga', NULL, '1738331356_c289160fda43d3143b02.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-01-31 09:27:50', '2025-01-31 20:49:16', NULL),
(438, 4, 7, 7, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 11:44:18', 100, 'penyesuaian opsen rekap penerimaan harian', NULL, '1738298658_9125d6835efb4cbaaa3f.png', 'http://10.254.10.5/samsat/index.php/Laporan_11h/text/2/-/00/2025-01-31/1', 7, '2025-01-31 11:43:15', '2025-01-31 11:44:18', NULL),
(439, 16, 20, 20, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 13:35:05', 100, '[Build - Website] - Layout Hal Profil', NULL, '1738305305_8c26ebdb74911804a7d3.jpg', 'https://fe.desnet.online/indoasia/profile-singkat/', 20, '2025-01-31 13:30:54', '2025-01-31 13:35:05', NULL),
(440, 16, 20, 20, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 13:35:34', 100, '[Build - Website] - Layout Hal Sambutan CEO', NULL, '1738305334_ef0fde171958e0323f34.jpg', 'https://fe.desnet.online/indoasia/sambutan-ceo/', 20, '2025-01-31 13:31:19', '2025-01-31 13:35:34', NULL),
(441, 16, 20, 20, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 13:36:30', 100, '[Build - Website] - Layout Hal Artikel', NULL, '1738305390_d3c469fed51ea34b11b5.jpg', 'https://fe.desnet.online/indoasia/artikel/', 20, '2025-01-31 13:31:42', '2025-01-31 13:36:30', NULL),
(442, 16, 20, 20, 1, 3, '2025-01-31', NULL, NULL, 0, '[Build - Website] - Layout Hal Mitra', NULL, NULL, NULL, NULL, '2025-01-31 13:33:22', '2025-01-31 13:36:40', '2025-01-31 13:36:40'),
(443, 16, 20, 20, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 13:37:04', 100, '[Build - Website] - Layout Hal Kontak', NULL, '1738305424_2ed969ba3dcc6b895884.jpg', 'https://fe.desnet.online/indoasia/kontak/', 20, '2025-01-31 13:34:27', '2025-01-31 13:37:04', NULL),
(444, 20, 6, 6, 3, 9, '2025-01-31', '2025-01-31', '2025-01-31 14:19:10', 100, 'Meeting awal presales LDP Malang', NULL, '1738307950_a9050d173deab6c3676d.png', 'tidak ada', 6, '2025-01-31 13:51:01', '2025-01-31 14:19:10', NULL),
(445, 20, 37, 37, 3, 1, '2025-01-31', '2025-01-31', '2025-01-31 15:40:41', 100, 'Meeting Demo EOffice Presales LDP Malang', NULL, '1738306395_6c4e003836fd9b00ae78.png', 'https://meet.google.com/tjn-zkra-jyc', 6, '2025-01-31 13:52:31', '2025-01-31 15:40:41', NULL),
(446, 16, 20, 20, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 14:10:32', 100, '[Build-Website] - Layout Hal Mitra', NULL, '1738307432_060bc57ae3b929ab91d2.jpg', 'https://fe.desnet.online/indoasia/klien-kami/', 20, '2025-01-31 14:10:03', '2025-01-31 14:10:32', NULL),
(447, 18, 23, 17, 1, 3, '2025-02-05', NULL, NULL, 0, 'Fitur Data Tenaga Keolahragaan => Form Add Update', NULL, NULL, NULL, NULL, '2025-01-31 14:12:21', '2025-02-05 09:34:34', '2025-02-05 09:34:34'),
(448, 18, 10, 17, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 15:44:27', 100, 'Fitur Master Data => Get cabor', NULL, '1738312648_00fce632913c6537a548.png', '{{site_url}}/api/select-cabor/', 6, '2025-01-31 14:17:17', '2025-01-31 15:44:27', NULL),
(449, 18, 10, 17, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 15:44:25', 100, 'Fitur Master Data => Get tingkat sekolah', NULL, '1738312678_c0e70839221be50c95ee.png', '{{site_url}}/api/select-tingkat-pendidikan/', 6, '2025-01-31 14:18:11', '2025-01-31 15:44:25', NULL),
(450, 18, 7, 17, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 20:50:14', 100, 'Fitur Master Data => Get Kabupaten', NULL, '1738331414_0ff93e9c19a6664ae3da.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-01-31 14:19:04', '2025-01-31 20:50:14', NULL),
(451, 18, 7, 17, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 20:50:52', 100, 'Fitur Master Data => Get Kecamatan', NULL, '1738331452_96e5560789bc4b40be81.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-01-31 14:19:37', '2025-01-31 20:50:52', NULL),
(452, 18, 7, 17, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 20:51:29', 100, 'Fitur Master Data => Get Keluarahan', NULL, '1738331489_cc77b3c687c94a207a09.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-01-31 14:19:46', '2025-01-31 20:51:29', NULL),
(453, 18, 7, 17, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 20:52:22', 100, 'Fitur Master Data => Get Tenaga Olahraga', NULL, '1738331542_d262a8355f24aa19cc37.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-01-31 14:20:16', '2025-01-31 20:52:22', NULL),
(454, 18, 17, 17, 3, 7, '2025-01-31', '2025-01-31', '2025-01-31 14:23:04', 100, 'Pembuatan form kasaran data atlet', NULL, '1738308184_316c4080e7b4db1346a0.png', 'https://www.figma.com/design/0EFNzQhYaHEVEZ4QqxcYFA/SIMPORA?node-id=0-1&p=f&t=E2NcKlviZQKrSFCY-0', 17, '2025-01-31 14:22:25', '2025-01-31 14:23:04', NULL),
(455, 18, 17, 17, 3, 7, '2025-01-31', '2025-01-31', '2025-01-31 14:23:34', 100, 'Pembuatan form kasaran data tenaga olahraga', NULL, '1738308214_9d386e040fcc5dc502f6.png', 'https://www.figma.com/design/0EFNzQhYaHEVEZ4QqxcYFA/SIMPORA?node-id=0-1&p=f&t=E2NcKlviZQKrSFCY-0', 17, '2025-01-31 14:22:38', '2025-01-31 14:23:34', NULL),
(456, 1, 23, 37, 3, 3, '2025-02-03', '2025-02-03', '2025-02-06 03:44:07', 100, 'Setting Tahun Anggaran', NULL, '1738544648_af2f25ed4f5707c5ed58.png', 'http://git.desnet.id/alfikri/inventory/commit/837e7cb3c258b5d77e48c95fa5a599f832a27535', 1, '2025-01-31 14:49:55', '2025-02-06 03:44:07', NULL),
(457, 2, 37, 37, 3, 1, '2025-01-31', '2025-01-31', '2025-01-31 15:49:26', 100, 'Perbaikan Laporan harian dan bulanan (ditambahkan tahun anggaran) DLH kota Semarang', NULL, '1738311462_7df7f69a2ecb5eeafcd1.png', 'http://157.119.220.46/public/index.php/laporan-harian', 6, '2025-01-31 15:16:41', '2025-01-31 15:49:26', NULL),
(458, 9, 15, 15, 2, 3, '2025-01-31', '2025-01-31', NULL, 100, 'SIMRS CEPU penyesuaian tab resep pada module HEMODIALISA', NULL, '1738314815_69ad810fe71915745226.png', 'http://localhost/simrs/simrs/index.php/hemodialisa/pelayanan/periksa/2310110049/2501310002#resep', NULL, '2025-01-31 16:11:37', '2025-01-31 16:13:35', NULL),
(459, 10, 10, 10, 3, 1, '2025-01-31', '2025-01-31', '2025-02-06 04:40:38', 100, 'Pengecekan job title karyawan dan menambahkan job title dalam list permission form registrasi corporate', NULL, '1738315432_93d4562e9b47aa1e5d98.jpg', '-', 1, '2025-01-31 16:23:29', '2025-02-06 04:40:38', NULL),
(460, 9, 15, 15, 2, 3, '2025-01-31', '2025-01-31', NULL, 100, 'SIMRS CEPU permintaan untuk pendaftaran hemodealisa dibuat seperti pendaftaran rawat jalan. no rujukanya otomatis muncul', NULL, '1738315947_034c86b88eedf183af0f.png', 'Sudah tak update di git dan server CEPU', NULL, '2025-01-31 16:30:28', '2025-01-31 16:32:27', NULL),
(461, 2, 12, 12, 3, 1, '2025-01-31', '2025-02-06', '2025-02-06 19:27:54', 100, 'Laporan Helpdesk 31 Januari 2025 Status : Clear - Wazapbro - Kendala broadcast pesan (Solusi Intira) - Cepu - nama dokter peresep tidak sesuai dengan data pada combobox dokter - Cepu - pendaftaran hemodealisa dibuat seperti pendaftaran rawat jalan - Notaris - Kendala proses login - Alkabapay - Request pengatifan cicilan tagihan - Alkabapay - Request update notif tagihan - Alkabapay - Request penyesuaian data tagihan siswa - Bonafide - Kendala data dokumen tidak tersimpan/tertukar - DLHK - Masih muncul banyak data 2024 - DLHK - Pasar F disesuaikan ke paling atas - Malinda - request delivery bisa paling atas yg status new/baru - SIPB - Kendala publish data berita Status : On Progress - SIPB - tanggal laporan msh mengikuti tanggal kejadian bencana yg di input - SIPB - Kendala simpan laporan kaji cepat di mobile', NULL, '1738836549_13f3db884a56cec6644e.png', 'tanpa tautan', 7, '2025-01-31 16:38:52', '2025-02-06 19:27:54', NULL),
(462, 3, 22, 22, 3, 1, '2025-01-31', '2025-01-31', '2025-02-03 11:13:57', 100, 'Update konten PPDB MAN Kota Magelang pada halaman Jadwal', NULL, '1738317653_42a527b47e0cfde731c8.png', 'https://ppdb.mankotamagelang.sch.id/jadwal/', 20, '2025-01-31 17:00:25', '2025-02-03 11:13:57', NULL),
(463, 3, 22, 22, 3, 1, '2025-01-31', '2025-01-31', '2025-02-03 11:14:14', 100, 'Update konten halaman berkas pada website PPDB MAN Kota Magelang', NULL, '1738322265_6ac99cd22298a347fba5.png', 'https://ppdb.mankotamagelang.sch.id/berkas/', 20, '2025-01-31 18:17:16', '2025-02-03 11:14:14', NULL),
(464, 18, 10, 17, 3, 3, '2025-02-04', '2025-02-04', '2025-02-06 03:46:09', 100, 'Fitur Data Atlet Prestasi => API => Add', NULL, '1738654641_da4b03cf7353c8f498b9.png', '-', 1, '2025-01-31 19:49:30', '2025-02-06 03:46:09', NULL),
(465, 18, 10, 17, 3, 3, '2025-02-04', '2025-02-04', '2025-02-06 03:46:25', 100, 'Fitur Data Atlet Prestasi => API => Get Atlet Pelajar', NULL, '1738655753_fb313c6640ef53950dea.png', '-', 1, '2025-01-31 19:50:09', '2025-02-06 03:46:25', NULL),
(466, 18, 10, 17, 2, 3, '2025-02-07', '2025-02-07', NULL, 100, 'Fitur Data Prestasi => API => Get', NULL, '1738918291_32da092935425117eeee.png', '-', NULL, '2025-01-31 19:50:53', '2025-02-07 15:51:31', NULL),
(467, 18, 13, 17, 1, 3, '2025-02-06', NULL, NULL, 0, 'Fitur Data Prestasi => Form Add Update', NULL, NULL, NULL, NULL, '2025-01-31 19:51:44', '2025-02-07 16:33:11', '2025-02-07 16:33:11'),
(468, 18, 13, 17, 3, 3, '2025-02-06', '2025-02-06', '2025-02-06 20:26:34', 100, 'Fitur Data Atlet Prestasi => Form Add Update', NULL, '1738848394_0573a6861503f0c6a09d.png', 'http://localhost/simpora-new/public/index.php/atlet-prestasi/edit', 13, '2025-01-31 19:52:25', '2025-02-06 20:26:34', NULL),
(469, 18, 7, 17, 3, 3, '2025-02-05', '2025-02-05', '2025-02-05 20:41:45', 100, 'Fitur Data Klub/Akademi => API => Get', NULL, '1738762905_a5516a8f80e5fecfb83d.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-01-31 19:53:43', '2025-02-05 20:41:45', NULL),
(470, 18, 23, 17, 1, 3, '2025-02-06', NULL, NULL, 0, 'Fitur Data Klub/Akademi => Form Add Update', NULL, NULL, NULL, NULL, '2025-01-31 19:54:10', '2025-02-07 16:37:24', '2025-02-07 16:37:24'),
(471, 18, 7, 17, 3, 3, '2025-02-07', '2025-02-07', '2025-02-07 17:47:01', 100, 'Fitur Relasi Klub dengan Atlet => API => Add', NULL, '1738925221_bb3ebbb3491204dbd8b7.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-01-31 19:55:00', '2025-02-07 17:47:01', NULL),
(472, 18, 23, 17, 1, 3, '2025-02-07', NULL, NULL, 0, 'Fitur Relasi Klub dengan Atlet => Form Add Update', NULL, NULL, NULL, NULL, '2025-01-31 19:55:27', '2025-02-07 16:37:52', '2025-02-07 16:37:52'),
(473, 18, 7, 17, 3, 3, '2025-01-31', '2025-01-31', '2025-01-31 21:00:47', 100, 'Fitur Data Tenaga Keolahragaan => API => Add Update Get Delete', NULL, '1738332047_469957b0fa5cb7ea1b3f.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-01-31 20:57:04', '2025-01-31 21:00:47', NULL),
(474, 4, 8, 8, 3, 1, '2025-01-31', '2025-01-31', '2025-02-03 21:03:28', 100, 'support SOS', NULL, '1738332899_7d91f62beabbb1fe7385.png', 'http://10.254.10.5/samsat/index.php          https://sos.desnet.id/rt/Ticket/Create.html?Queue=3', 7, '2025-01-31 21:09:51', '2025-02-03 21:03:28', NULL),
(475, 2, 18, 18, 2, 3, '2025-01-31', '2025-01-31', NULL, 100, 'Sorting modul just delivery', NULL, '1738337909_a29e397c6e867032d398.png', 'https://malindaapps.com/', NULL, '2025-01-31 22:36:08', '2025-01-31 22:38:29', NULL),
(476, 2, 18, 18, 2, 3, '2025-01-31', '2025-01-31', NULL, 100, 'Validitas Bonafid - data di dashboard sign off banyak duplikat (tidak ada group by) - dokumen tertukar/tidak tersimpan', NULL, '1738337956_f3f47009ff6d0875bc30.png', 'https://crewvb.com/public/', NULL, '2025-01-31 22:37:30', '2025-01-31 22:39:16', NULL),
(477, 2, 18, 18, 2, 3, '2025-02-03', '2025-02-03', NULL, 100, 'Tiketing Baluran - Modul Rekap Rekonsiliasi QR BRI', NULL, '1738545452_bc758b3a3325008a4dbb.png', 'blm ada', NULL, '2025-01-31 22:39:57', '2025-02-03 08:17:32', NULL),
(479, 2, 11, 11, 1, 5, '2025-02-20', NULL, NULL, 60, 'Pembuatan Userguide Sikajeng Rehabilitasi Web Admin', NULL, NULL, NULL, NULL, '2025-02-03 07:00:51', '2025-02-03 16:58:14', NULL),
(480, 2, 11, 11, 1, 5, '2025-02-20', NULL, NULL, 0, 'Pembuatan Userguide Aplikasi Sikajeng Aplikasi Mobile', NULL, NULL, NULL, NULL, '2025-02-03 07:01:34', '2025-02-03 07:01:46', NULL),
(481, 2, 11, 11, 1, 5, '2025-02-20', NULL, NULL, 0, 'Pembuatan Laporan Akhir Aplikasi Sikajeng Rehabilitasi', NULL, NULL, NULL, NULL, '2025-02-03 07:02:17', '2025-02-03 07:02:17', NULL),
(482, 2, 11, 11, 2, 1, '2025-02-04', '2025-02-03', NULL, 100, 'Pembuatan Rating Link Survey Kepuasan Layanan Aplikasi Desnet', NULL, '1738541339_76cd1be9527989873662.xlsx', 'https://bit.ly/ratingdesnet', NULL, '2025-02-03 07:05:56', '2025-02-03 07:08:59', NULL),
(483, 15, 22, 22, 3, 3, '2025-02-04', '2025-02-03', '2025-02-03 11:15:35', 100, 'Membuat Halaman Tentang Kami', NULL, '1738546010_7cf15502841a7ade0b99.png', 'https://fe.desnet.online/pronatech/tentang/', 20, '2025-02-03 08:22:08', '2025-02-03 11:15:35', NULL),
(484, 15, 22, 22, 3, 3, '2025-02-04', '2025-02-03', '2025-02-03 11:15:42', 100, 'Membuat Halaman Service', NULL, '1738546160_39e36ffed8e9a5e1b727.png', 'https://fe.desnet.online/pronatech/service/', 20, '2025-02-03 08:22:38', '2025-02-03 11:15:42', NULL),
(485, 15, 22, 22, 3, 3, '2025-02-04', '2025-02-03', '2025-02-03 11:15:48', 100, 'Membuat Halaman Galeri', NULL, '1738546195_4c901a8980582fdc5819.png', 'https://fe.desnet.online/pronatech/galeri/', 20, '2025-02-03 08:23:04', '2025-02-03 11:15:48', NULL),
(486, 15, 22, 22, 3, 3, '2025-02-04', '2025-02-03', '2025-02-03 11:16:38', 100, 'Membuat Halaman Berita', NULL, '1738546239_00b9d0eb7b895ca83890.png', 'https://fe.desnet.online/pronatech/berita/', 20, '2025-02-03 08:23:32', '2025-02-03 11:16:38', NULL),
(487, 15, 22, 22, 3, 3, '2025-02-04', '2025-02-03', '2025-02-03 11:16:44', 100, 'Membuat Halaman Kontak Kami', NULL, '1738546276_8749380bc62af29817c3.png', 'https://fe.desnet.online/pronatech/kontak-kami/', 20, '2025-02-03 08:25:51', '2025-02-03 11:16:44', NULL),
(488, 2, 7, 7, 1, 3, '2025-02-14', NULL, NULL, 0, 'pku gamping - penambahan export excel kritik saran', NULL, NULL, NULL, NULL, '2025-02-03 10:03:21', '2025-02-04 18:08:13', NULL),
(489, 2, 7, 7, 1, 3, '2025-02-14', NULL, NULL, 0, 'pku gamping - penambahan input testimoni di web', NULL, NULL, NULL, NULL, '2025-02-03 10:03:48', '2025-02-04 18:08:03', NULL),
(490, 7, 26, 26, 3, 3, '2025-02-06', '2025-02-03', '2025-02-04 16:02:02', 100, 'Menambah alert pada form Kelompok dan penanaman jika terdapat data yang kosong.', NULL, '1738554929_b48f0759f9df889b7e1b.jpeg', 'http://git.desnet.id/dlhk_jateng/sikajeng_mobile', 1, '2025-02-03 10:17:30', '2025-02-04 16:02:02', NULL),
(491, 3, 22, 22, 3, 9, '2025-02-03', '2025-02-03', '2025-02-04 10:02:32', 100, 'Training website BPR ARTO MORO', NULL, '1738573079_e8326aa7c9d0fbea1724.jpg', 'https://bprartomoro.co.id/', 20, '2025-02-03 10:46:32', '2025-02-04 10:02:32', NULL),
(492, 4, 8, 8, 3, 1, '2025-02-03', '2025-02-03', '2025-02-03 21:03:39', 100, 'support SOS', NULL, '1738576821_f76c9989d0198e4edb93.png', 'https://sos.desnet.id/rt/Ticket/Create.html?Queue=3        http://10.254.10.5/samsat/index.php/menu', 7, '2025-02-03 10:54:02', '2025-02-03 21:03:39', NULL),
(493, 21, 16, 16, 3, 7, '2025-02-03', '2025-02-03', '2025-02-06 03:47:27', 100, 'Penyesuaian Database', NULL, '1738575901_87434c91de67d5f6c99a.png', 'Eksekusi di database demo', 1, '2025-02-03 10:58:40', '2025-02-06 03:47:27', NULL),
(494, 21, 16, 16, 3, 7, '2025-02-04', '2025-02-04', '2025-02-06 03:47:39', 100, 'Penyesuaian warna template, background dan logo', NULL, '1738655700_3f2f7335ea840846e5a5.png', 'https://simrs.desnet.online/anjungan_satmoko/', 1, '2025-02-03 10:59:18', '2025-02-06 03:47:39', NULL),
(495, 21, 15, 16, 3, 3, '2025-02-05', '2025-02-05', '2025-02-06 03:47:51', 100, 'Ambil Antrian menggunakan NIK', NULL, '1738742347_82f4ff04f41d903bf2f5.png', 'http://localhost/anjungan_satmoko/index.php/web/pend_offline/kunjungan_baru', 1, '2025-02-03 10:59:45', '2025-02-06 03:47:51', NULL),
(496, 21, 15, 16, 2, 3, '2025-02-07', '2025-02-07', NULL, 100, 'Ambil Antrian menggunakan No RM', NULL, '1738922164_9697f236b35fe53495d5.png', 'http://localhost/anjungan_satmoko/index.php/web/pend_offline/kunjungan_baru', NULL, '2025-02-03 11:00:28', '2025-02-07 16:56:04', NULL),
(497, 21, 15, 16, 3, 3, '2025-02-11', '2025-02-05', '2025-02-06 03:48:02', 100, 'Cetak Antrian pasien datang langsung', NULL, '1738742727_7193672793c14809070c.png', 'http://localhost/anjungan_satmoko/index.php/web/pend_offline/data_pasien/000003?jenispasien_id=01&no_kartu=&jenisjkn_cd=&hak_kelas_id=&nik=&no_telp=&no_rujukan=&no_surat_kontrol=&poli=&lokasi_id=01.05&dokter_id=00005', 1, '2025-02-03 11:01:39', '2025-02-06 03:48:02', NULL),
(498, 21, 15, 16, 1, 3, '2025-02-13', NULL, NULL, 0, 'Pasien MJKN memasukkan no bpjs untuk ambil antrian', NULL, NULL, NULL, NULL, '2025-02-03 11:02:36', '2025-02-03 11:02:36', NULL),
(499, 21, 15, 16, 1, 3, '2025-02-14', NULL, NULL, 0, 'Cetak antrian pasien MJKN', NULL, NULL, NULL, NULL, '2025-02-03 11:03:12', '2025-02-03 11:03:12', NULL),
(500, 21, 15, 16, 1, 3, '2025-02-18', NULL, NULL, 0, 'Menampilkan jadwal dokter berdasarkan filter tanggal yang dipilih', NULL, NULL, NULL, NULL, '2025-02-03 11:04:14', '2025-02-03 11:04:14', NULL),
(501, 19, 20, 20, 3, 3, '2025-02-03', '2025-02-03', '2025-02-03 13:46:59', 100, '[Build-Website] - Instalasi WP', NULL, '1738565219_74e91a38cec00e1b2e5d.jpg', 'https://fe.desnet.online/foodpackagingjaya', 20, '2025-02-03 11:18:19', '2025-02-03 13:46:59', NULL),
(502, 19, 20, 20, 3, 3, '2025-02-03', '2025-02-03', '2025-02-03 13:47:56', 100, '[Build-Website] - Instal DB', NULL, '1738565276_de6f840c52b4ed61b57b.jpg', 'https://fe.desnet.online/foodpackagingjaya', 20, '2025-02-03 11:18:59', '2025-02-03 13:47:56', NULL),
(503, 19, 20, 20, 3, 3, '2025-02-04', '2025-02-03', '2025-02-03 16:04:01', 100, '[Build-Website] - Instal Plugin2 & Persiapan Menu2 Website', NULL, '1738573441_fa7632484f50393fdb18.jpg', 'https://fe.desnet.online/foodpackagingjaya/', 20, '2025-02-03 11:19:54', '2025-02-03 16:04:01', NULL),
(504, 18, 10, 17, 3, 3, '2025-02-04', '2025-02-04', '2025-02-06 03:46:35', 100, 'Fitur Data Atlet Prestasi => API => Update', NULL, '1738655660_6a7cefd12895781a2714.png', '-', 1, '2025-02-03 11:42:00', '2025-02-06 03:46:35', NULL),
(505, 18, 10, 17, 3, 3, '2025-02-04', '2025-02-04', '2025-02-06 03:46:46', 100, 'Fitur Data Atlet Prestasi => API => Get', NULL, '1738655691_c1aa1b6defe730db15ba.png', '-', 1, '2025-02-03 11:42:17', '2025-02-06 03:46:46', NULL),
(506, 18, 10, 17, 3, 3, '2025-02-04', '2025-02-04', '2025-02-06 03:46:56', 100, 'Fitur Data Atlet Prestasi => API => Delete', NULL, '1738654672_30e41e3c4227e2d3b05c.png', '-', 1, '2025-02-03 11:42:38', '2025-02-06 03:46:56', NULL),
(507, 18, 7, 17, 3, 3, '2025-02-05', '2025-02-05', '2025-02-05 20:42:19', 100, 'Fitur Data Klub/Akademi => API => Add', NULL, '1738762939_5f9b1226dfea41a78f1f.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-02-03 11:44:43', '2025-02-05 20:42:19', NULL),
(508, 18, 7, 17, 3, 3, '2025-02-05', '2025-02-05', '2025-02-05 20:43:13', 100, 'Fitur Data Klub/Akademi => API => Delete', NULL, '1738762993_287af5fc5800737368ac.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-02-03 11:46:04', '2025-02-05 20:43:13', NULL),
(509, 18, 7, 17, 3, 3, '2025-02-05', '2025-02-05', '2025-02-05 20:43:34', 100, 'Fitur Data Klub/Akademi => API => Update', NULL, '1738763014_1a62e0f5ed2355ce3678.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-02-03 11:46:33', '2025-02-05 20:43:34', NULL),
(510, 18, 10, 17, 2, 3, '2025-02-07', '2025-02-07', NULL, 100, 'Fitur Data Prestasi => API => Add', NULL, '1738918308_2a368ba4091af348134d.png', '-', NULL, '2025-02-03 11:48:31', '2025-02-07 15:51:48', NULL),
(511, 18, 10, 17, 2, 3, '2025-02-07', '2025-02-07', NULL, 100, 'Fitur Data Prestasi => API => Update', NULL, '1738918326_f4b45c6ce8459960c1a5.png', '-', NULL, '2025-02-03 11:49:30', '2025-02-07 15:52:06', NULL),
(512, 18, 10, 17, 2, 3, '2025-02-07', '2025-02-07', NULL, 100, 'Fitur Data Prestasi => API => Delete', NULL, '1738918342_d6ebc7efbabce438844c.png', '-', NULL, '2025-02-03 11:50:41', '2025-02-07 15:52:22', NULL);
INSERT INTO `task` (`id_task`, `id_pekerjaan`, `id_user`, `creator`, `id_status_task`, `id_kategori_task`, `tgl_planing`, `tgl_selesai`, `tgl_verifikasi_diterima`, `persentase_selesai`, `deskripsi_task`, `alasan_verifikasi`, `bukti_selesai`, `tautan_task`, `verifikator`, `created_at`, `updated_at`, `deleted_at`) VALUES
(513, 2, 14, 14, 2, 9, '2025-02-03', '2025-02-03', NULL, 100, '[baluran tiketing] Rapat persiapan launching SiOra dan Sobat Banteng dan Cashless Payment', NULL, '1738563213_e763b18292211d2345e6.png', 'https://us02web.zoom.us/j/83694287384?pwd=5BSwh8aChRNBs9pZl2hPFukl0wOB0l.1', NULL, '2025-02-03 13:10:02', '2025-02-03 13:13:33', NULL),
(514, 2, 14, 14, 2, 1, '2025-02-04', '2025-02-05', NULL, 100, '[baluran tiketing] migrasi & testing produksi', NULL, '1738748178_dbf6e71c9b0f363e6679.png', 'https://sobatbanteng.id', NULL, '2025-02-03 13:11:08', '2025-02-05 16:36:18', NULL),
(515, 2, 25, 25, 2, 3, '2025-02-03', '2025-02-03', NULL, 100, 'Tiket Baluran - Penanganan Image QR App Production Tidak Muncul / Error', NULL, '1738571124_6a4369b7dc21c9eb0000.pdf', 'https://descloud.desnet.id/s/TfjR3dkWX67SEk9', NULL, '2025-02-03 13:19:22', '2025-02-03 15:25:24', NULL),
(516, 18, 7, 17, 3, 3, '2025-02-03', '2025-02-03', '2025-02-03 15:55:38', 100, 'Fitur Data Tenaga Keolahragaan => API => Datatable', NULL, '1738572938_9d9695a0111ae399fed4.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-02-03 13:20:18', '2025-02-03 15:55:38', NULL),
(517, 18, 7, 17, 3, 3, '2025-02-07', '2025-02-07', '2025-02-07 17:47:23', 100, 'Fitur Relasi Klub dengan Atlet => API => Get', NULL, '1738925243_18889bd06f78f1a64f2a.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-02-03 13:22:34', '2025-02-07 17:47:23', NULL),
(518, 18, 7, 17, 3, 3, '2025-02-07', '2025-02-07', '2025-02-07 17:47:44', 100, 'Fitur Relasi Klub dengan Atlet => API => Update', NULL, '1738925264_6aec6048dad89b459741.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-02-03 13:22:37', '2025-02-07 17:47:44', NULL),
(519, 18, 7, 17, 3, 3, '2025-02-07', '2025-02-07', '2025-02-07 17:48:25', 100, 'Fitur Relasi Klub dengan Atlet => API => Delete', NULL, '1738925305_30506d06c99416f3d00d.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-02-03 13:23:49', '2025-02-07 17:48:25', NULL),
(520, 18, 10, 17, 3, 3, '2025-02-03', '2025-02-03', '2025-02-06 03:44:51', 100, 'Fitur Data Atlet Pelajar API => Update', NULL, '1738573561_86b0625bc9c388e09fc5.png', 'http://git.desnet.id/SIMPORA/web-new-simpora/commit/38f0b99aa3035e47606bcaae91a248f042d7d119', 1, '2025-02-03 13:24:36', '2025-02-06 03:44:51', NULL),
(521, 18, 10, 17, 3, 3, '2025-02-03', '2025-02-03', '2025-02-06 03:45:02', 100, 'Fitur Data Atlet Pelajar API => Get', NULL, '1738573592_e34f50dc7d2e3bac7794.png', 'http://git.desnet.id/SIMPORA/web-new-simpora/commit/38f0b99aa3035e47606bcaae91a248f042d7d119', 1, '2025-02-03 13:25:11', '2025-02-06 03:45:02', NULL),
(522, 18, 10, 17, 3, 3, '2025-02-03', '2025-02-03', '2025-02-06 03:45:16', 100, 'Fitur Data Atlet Pelajar API => Delete', NULL, '1738573648_f638e83a7eba5e2fe2ed.png', 'http://git.desnet.id/SIMPORA/web-new-simpora/commit/38f0b99aa3035e47606bcaae91a248f042d7d119', 1, '2025-02-03 13:25:31', '2025-02-06 03:45:16', NULL),
(523, 3, 20, 20, 3, 1, '2025-02-03', '2025-02-03', '2025-02-03 13:30:01', 100, '[Request-Web RSUD Pemalang] - Request List Dokter tidak biar tidak bisa diklik', NULL, '1738564201_b8269a50bb6534dcfb63.jpg', 'https://rsudashari.pemalangkab.go.id/jadwal-dokter/', 20, '2025-02-03 13:29:18', '2025-02-03 13:30:01', NULL),
(524, 18, 7, 17, 3, 3, '2025-02-10', '2025-02-10', '2025-02-10 20:48:01', 100, 'Fitur Verifikasi Data Dokumen => API => Save Verifikasi', NULL, '1739195281_727801b816704fb01ca7.png', 'https://descloud.desnet.id/index.php/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-02-03 13:33:29', '2025-02-10 20:48:01', NULL),
(525, 18, 7, 17, 3, 3, '2025-02-11', '2025-02-11', '2025-02-11 18:26:18', 100, 'Fitur Data Pegiat Olahraga Masyarakat => API => Add', NULL, '1739273178_dc98aa69583e3061329d.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-02-03 13:34:30', '2025-02-11 18:26:18', NULL),
(526, 18, 7, 17, 3, 3, '2025-02-11', '2025-02-11', '2025-02-11 18:27:32', 100, 'Fitur Data Pegiat Olahraga Masyarakat => API => Update', NULL, '1739273252_2a57d9ba93a619b48938.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-02-03 13:34:48', '2025-02-11 18:27:32', NULL),
(527, 18, 7, 17, 3, 3, '2025-02-11', '2025-02-11', '2025-02-11 18:27:56', 100, 'Fitur Data Pegiat Olahraga Masyarakat => API => Get', NULL, '1739273276_172c0271df6bb007bb98.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-02-03 13:35:02', '2025-02-11 18:27:56', NULL),
(528, 18, 7, 17, 3, 3, '2025-02-11', '2025-02-11', '2025-02-11 18:28:37', 100, 'Fitur Data Pegiat Olahraga Masyarakat => API => Delete', NULL, '1739273317_c383078b3290505d860d.png', 'https://descloud.desnet.id/apps/onlyoffice/6324522?filePath=%2FBacklog%20Pengembangan%20Simpora%202025.xlsx', 7, '2025-02-03 13:35:16', '2025-02-11 18:28:37', NULL),
(529, 18, 10, 17, 1, 3, '2025-02-12', NULL, NULL, 0, 'Fitur Import Data Atlet Pelajar => API', NULL, NULL, NULL, NULL, '2025-02-03 13:58:20', '2025-02-11 23:58:53', NULL),
(530, 15, 24, 24, 3, 7, '2025-02-03', '2025-02-03', '2025-02-04 10:02:03', 100, 'membuat desain user guide', NULL, '1738566930_79d66158427f1072df0b.docx', 'membuat di MS word', 20, '2025-02-03 14:11:57', '2025-02-04 10:02:03', NULL),
(531, 15, 24, 24, 3, 7, '2025-02-03', '2025-02-03', '2025-02-04 10:02:08', 100, 'membuat Cover & CD label', NULL, '1738567155_327777b6790a071f50bf.jpg', 'membuatnya di adobe photoshop', 20, '2025-02-03 14:16:47', '2025-02-04 10:02:08', NULL),
(532, 10, 37, 37, 3, 1, '2025-02-03', '2025-02-03', '2025-02-06 04:39:19', 100, 'penyesuaian tandatangan pada halaman invoice absenku', NULL, '1738567067_3d3efb00db67c0392eff.png', 'https://office.absenku.com/index.php/', 1, '2025-02-03 14:17:23', '2025-02-06 04:39:19', NULL),
(533, 4, 7, 7, 3, 3, '2025-02-03', '2025-02-03', '2025-02-03 14:19:00', 100, 'perbaikan h2h realtime', NULL, '1738567140_af35691f3d73afc86f20.png', 'http://10.254.10.5/samsat/index.php/H2h_realtime', 7, '2025-02-03 14:18:16', '2025-02-03 14:19:00', NULL),
(534, 10, 37, 37, 3, 1, '2025-02-03', '2025-02-03', '2025-02-06 04:39:29', 100, 'penyesuaian harga layanan', NULL, '1738567156_a79b287a0d6bdcaf6a69.png', 'office.desnet.id', 1, '2025-02-03 14:18:55', '2025-02-06 04:39:29', NULL),
(535, 15, 24, 24, 3, 7, '2025-02-03', '2025-02-03', '2025-02-04 10:02:14', 100, 'membuat desain CD label', NULL, '1738567238_a9fc279dc85e0908b660.jpg', 'membuat di adobe photoshop', 20, '2025-02-03 14:19:55', '2025-02-04 10:02:14', NULL),
(536, 3, 20, 20, 3, 1, '2025-02-03', '2025-02-03', '2025-02-03 14:40:36', 100, '[Support - Web KSPPNU] - Update Plugin', NULL, '1738568436_4bebc4a26404940bc57e.jpg', 'https://ksppsnus.com/', 20, '2025-02-03 14:35:21', '2025-02-03 14:40:36', NULL),
(537, 3, 20, 20, 3, 1, '2025-02-03', '2025-02-03', '2025-02-03 15:04:17', 100, '[Support-Website KSPPNU] - Instal FIrewall Website', NULL, '1738569857_25111c8a5de7b2fbb51b.jpg', 'https://ksppsnus.com/', 20, '2025-02-03 15:02:26', '2025-02-03 15:04:17', NULL),
(538, 2, 11, 11, 2, 1, '2025-02-03', '2025-02-03', NULL, 100, 'Melakukan Survey Pengiriman Rating Kepuasaan Pelanggan Desnet PT. Validitas Bonafid PIC Dengan Bapak Rice', NULL, '1738571013_03f74417e43d9aed87ec.png', 'https://descloud.desnet.id/apps/onlyoffice/6275048?filePath=%2F2025%2FTimeline%20Userguide%2C%20Testing%2C%20Rating%20Aplikasi%202025.xlsx', NULL, '2025-02-03 15:22:36', '2025-02-03 15:23:33', NULL),
(539, 2, 11, 11, 2, 1, '2025-02-03', '2025-02-03', NULL, 100, 'Melakukan Survey Pengiriman Rating Kepuasaan Pelanggan Desnet Disporapar Jateng (Simpora) Pak Faizin', NULL, '1738571124_427d177b57a499247898.png', 'https://descloud.desnet.id/apps/onlyoffice/6275048?filePath=%2F2025%2FTimeline%20Userguide%2C%20Testing%2C%20Rating%20Aplikasi%202025.xlsx', NULL, '2025-02-03 15:24:29', '2025-02-03 15:25:24', NULL),
(540, 4, 7, 7, 3, 3, '2025-02-03', '2025-02-03', '2025-02-03 15:57:47', 100, 'perbaikan rekapitulasi penerbitan skpd', NULL, '1738573067_32b6b0da927e7071da8e.jpg', 'http://10.254.10.5/samsat/index.php/Laporan/bulanan_31/2/-/21/2025-01-31', 7, '2025-02-03 15:56:27', '2025-02-03 15:57:47', NULL),
(541, 15, 22, 22, 3, 3, '2025-02-03', '2025-02-03', '2025-02-04 10:01:35', 100, 'Migrasi web dari demo ke produksi', NULL, '1738576858_a7387b8c671266f549d3.png', 'https://pronatechindoengineering.com/', 20, '2025-02-03 15:58:36', '2025-02-04 10:01:35', NULL),
(542, 2, 10, 10, 2, 1, '2025-02-03', '2025-02-03', NULL, 100, 'Ubah email user IKAFH notarisrikabudiantawati@gmail.com - Email lama Rikabudiantawatish@gmail.com -> Email baru', NULL, '1738573867_eee95968b7af16e62d5f.jpg', 'merupakan perubahan email', NULL, '2025-02-03 16:09:58', '2025-02-03 16:11:07', NULL),
(543, 2, 10, 10, 2, 1, '2025-02-03', '2025-02-03', NULL, 100, 'Kirim ulang email reset password user IKAFH atas nama kbuntoro@gmail.com', NULL, '1738573930_57725c3a987840b73806.jpg', '-', NULL, '2025-02-03 16:11:56', '2025-02-03 16:12:10', NULL),
(544, 2, 10, 10, 2, 1, '2025-02-03', '2025-02-03', NULL, 100, 'Pengecekan akun IKAFH atas nama amarilmiawan@gmail.com', NULL, '1738574001_f4585771640ce8c4a546.jpg', '-', NULL, '2025-02-03 16:13:06', '2025-02-03 16:13:21', NULL),
(545, 2, 10, 10, 2, 1, '2025-02-03', '2025-02-03', NULL, 100, 'Hapus akun atas nama Agnes Retno Meiviva dari daftar peserta MUNAS 3', NULL, '1738574189_a3e07fa78d8b050cf2e0.png', '-', NULL, '2025-02-03 16:14:16', '2025-02-03 16:16:29', NULL),
(546, 10, 37, 37, 3, 1, '2025-02-03', '2025-02-03', '2025-02-06 04:39:39', 100, 'penyesuaian tampilan data pelanggan pada tiket MS', NULL, '1738574231_ba9dd31143a630ea43e1.png', 'office.desnet.id', 1, '2025-02-03 16:16:36', '2025-02-06 04:39:39', NULL),
(547, 2, 10, 10, 2, 1, '2025-02-03', '2025-02-03', NULL, 100, 'Kirim ulang email reset password akun IKAFH atas nama mohamad_dadi@yahoo.com', NULL, '1738574305_b8d524638e5f76364cd5.jpeg', '-', NULL, '2025-02-03 16:17:29', '2025-02-03 16:18:25', NULL),
(548, 10, 10, 10, 3, 1, '2025-02-03', '2025-02-03', '2025-02-06 04:39:49', 100, 'kirim ulang email dengan subject #WO [2232] DESAccess Metro Gold BPJS Ketenagakerjaan Makassar Kota Makassar', NULL, '1738574531_23faa66a563728e63e71.png', '-', 1, '2025-02-03 16:20:52', '2025-02-06 04:39:49', NULL),
(549, 2, 12, 12, 3, 1, '2025-02-03', '2025-02-06', '2025-02-06 19:27:44', 100, 'Laporan Helpdesk 3 Februari 2025 Status : Clear - Wazapbro - Kendala masa aktif expired (Multindo) - Munas - Kendala terkait akun alumni - Munas - Kendala tidak dapat link verifikasi ubah password - Munas - Request hapus data alumni - Desfiber - request penyesuaian status pembayaran - Desfiber - request pengecekan data tagihan di xendit - Supriyadi - Request penyesuaian 2 data tagihan siswa - KSPPS Nus - Kendala webste terinject judi online - Arjatel - Kendala voucher nyangkut - Alkabapay - Request penyesuaian data tagihan siswa - Alkabapay - Request pengecekan data tagihan siswa - PMB - Kendala saat akses template hasil observasi Status : On Progress - Spectrum - Target PO bulanan tidak muncul - Wazapro - Request resolve percakapan tahun 2024 kebawah (Kaltimtara)', NULL, '1738836460_04c4ff6b4fca7a79fa88.png', 'tanpa tautan', 7, '2025-02-03 16:43:06', '2025-02-06 19:27:44', NULL),
(550, 2, 18, 18, 2, 3, '2025-02-03', '2025-02-03', NULL, 100, 'Revisi aplikasi dishub kab Semarang - Data Pemilik Hanya Jawa Tengah - Filter Data Kendaraan (masih akan digali lagi kebutuhannya) Aktif/Hapus 25 tahun - Data Kendaraan Button form blm ada tooltips - No Kendaraan,Rangka,Mesin,Uji ditambahkan perlu check data dulu - Alert notifikasi wajib isi form kurang jelas - Data Kendaraan Ketika sudah diaatas 25 tahun di non aktifkan,ketika dibawah 25 bisa di non aktifkan mandiri jadi tambah status saja aktif/non aktif - Angkutan Barang dihapus -Bus,mobil penumpang, Data Trayek diberi validasi kode nya tidak boleh sama Retribusi_1 = Mobil Penumpang Retribusi_2 = Bus Kecil Retribusi_3 = Bus Sedang Retribusi_4 = Bus Besar', NULL, '1738576222_4579da60a1d787edd120.png', 'https://demo81.desnet.online/dishub_kab_smg/public/', NULL, '2025-02-03 16:49:34', '2025-02-03 16:50:22', NULL),
(551, 15, 22, 22, 3, 3, '2025-02-03', '2025-02-03', '2025-02-04 10:01:41', 100, 'Mengubah URL default halaman login admin wordpress', NULL, '1738577593_fe96962dd69f90a03b5b.png', 'https://pronatechindoengineering.com/kelola', 20, '2025-02-03 17:10:24', '2025-02-04 10:01:41', NULL),
(552, 15, 22, 22, 3, 3, '2025-02-03', '2025-02-03', '2025-02-04 10:01:47', 100, 'Menambahkan plugin firewall wordfence', NULL, '1738577645_3681953ddfc180f05e8d.png', 'https://pronatechindoengineering.com/wp-admin/admin.php?page=Wordfence', 20, '2025-02-03 17:11:01', '2025-02-04 10:01:47', NULL),
(553, 15, 22, 22, 3, 3, '2025-02-03', '2025-02-03', '2025-02-04 10:01:52', 100, 'Menambahkan plugin SEO RankMath', NULL, '1738577692_736f0a0702e3cfa1a910.png', 'https://pronatechindoengineering.com/wp-admin/admin.php?page=rank-math', 20, '2025-02-03 17:11:30', '2025-02-04 10:01:52', NULL),
(554, 15, 22, 22, 3, 3, '2025-02-03', '2025-02-03', '2025-02-04 10:01:58', 100, 'Mengaktifkan plugin anti spam Akismet', NULL, '1738577750_28c7894ef736db88bc8e.png', 'https://pronatechindoengineering.com/wp-admin/options-general.php?page=akismet-key-config', 20, '2025-02-03 17:12:03', '2025-02-04 10:01:58', NULL),
(555, 3, 22, 22, 3, 1, '2025-02-03', '2025-02-03', '2025-02-04 10:02:26', 100, 'Menampilkan foto di detail dokter website RSUD dr M. Ashari Pemalang', NULL, '1738577980_408027b78422f03665d5.png', 'https://rsudashari.pemalangkab.go.id/dr-abdul-haris-malik-sp-b-k/', 20, '2025-02-03 17:16:53', '2025-02-04 10:02:26', NULL),
(556, 8, 6, 6, 3, 9, '2025-02-03', '2025-02-03', '2025-02-03 21:21:46', 100, 'meeting VA dengan kominfo', NULL, '1738592506_d0e014e95b192c923f76.jpeg', 'tidak ada', 6, '2025-02-03 21:21:26', '2025-02-03 21:21:46', NULL),
(557, 2, 6, 6, 3, 1, '2025-02-03', '2025-02-03', '2025-02-03 21:23:59', 100, 'Support update nominal', NULL, '1738592639_9d760eb0ba918a012df5.png', 'tidk ada', 6, '2025-02-03 21:22:22', '2025-02-03 21:23:59', NULL),
(558, 3, 20, 20, 3, 1, '2025-02-04', '2025-02-04', '2025-02-04 10:38:58', 100, '[Request-Website Paroki] - Minta dibuatkan halaman Maintenance', NULL, '1738640338_4d050ac5101c20610758.jpg', 'https://pangruktilaya.parokiungaran.or.id/', 20, '2025-02-04 10:38:13', '2025-02-04 10:38:58', NULL),
(559, 2, 9, 9, 2, 7, '2025-02-04', '2025-02-04', NULL, 100, 'Hapus background icon dan logo SimKlinik Satmoko', NULL, '1738646977_6cc1cf41a88929f5c457.jpg', 'tidak ada', NULL, '2025-02-04 12:27:28', '2025-02-04 12:29:37', NULL),
(560, 4, 7, 7, 3, 3, '2025-02-04', '2025-02-04', '2025-02-04 22:31:48', 100, 'penyesuaian rekon penerimaan bulanan bersih pokok', NULL, '1738683108_7b4493abf43a3cd9e90d.png', 'http://10.254.10.5/samsat/index.php/Laporan_excel/Rekon_pnr_bersih_pokok/?&end=2025-02-04&start=2025-02-04&up3ad=00', 7, '2025-02-04 12:51:13', '2025-02-04 22:31:48', NULL),
(561, 4, 7, 7, 3, 3, '2025-02-06', '2025-02-06', '2025-02-06 19:25:55', 100, 'penyesuaian rekon penerimaan bulanan bersih sanksi', NULL, '1738844755_65424c36ece3f7b7ec22.png', 'http://[::1]/samsat/index.php/Laporan_excel/Rekon_pnr_bersih_denda/?&end=2025-02-06&start=2025-02-06&up3ad=00', 7, '2025-02-04 12:51:45', '2025-02-06 19:25:55', NULL),
(562, 4, 8, 8, 3, 1, '2025-02-04', '2025-02-04', '2025-02-04 21:04:44', 100, 'support SOS', NULL, '1738662768_d72458b8b8b79c807e38.png', 'https://sos.desnet.id/rt/    http://10.254.10.5/samsat/index.php/menu', 7, '2025-02-04 12:59:55', '2025-02-04 21:04:44', NULL),
(563, 2, 25, 25, 2, 3, '2025-02-05', '2025-02-04', NULL, 100, 'Tiket Baluran - Perbaikan Error pada input jumlah tiket yang harusnya tidak boleh NULL & memastikan Scrollable UI tidak ada kendala', NULL, '1738658899_4675e572c8449058ef50.pdf', 'https://descloud.desnet.id/s/TfjR3dkWX67SEk9', NULL, '2025-02-04 13:19:11', '2025-02-04 15:48:19', NULL),
(564, 7, 26, 26, 3, 3, '2025-02-06', '2025-02-04', '2025-02-04 16:01:25', 100, 'Revisi ubah password', NULL, '1738650731_4670a62177aa73263693.jpeg', 'http://git.desnet.id/dlhk_jateng/sikajeng_mobile', 1, '2025-02-04 13:20:07', '2025-02-04 16:01:25', NULL),
(565, 7, 26, 26, 3, 3, '2025-02-06', '2025-02-04', '2025-02-04 16:01:52', 100, 'Menambahkan button tambah lokasi di halaman map. Mengatur padding pada form di KTH dan Penyuluh.', NULL, '1738650758_b8024265dfc435c4615c.jpeg', 'http://git.desnet.id/dlhk_jateng/sikajeng_mobile', 1, '2025-02-04 13:24:01', '2025-02-04 16:01:52', NULL),
(566, 18, 10, 10, 3, 9, '2025-02-04', '2025-02-04', '2025-02-06 03:45:27', 100, 'Pembahasan terkait PPDB', NULL, '1738651446_2d6469da1d4e47259abf.png', '-', 1, '2025-02-04 13:42:51', '2025-02-06 03:45:27', NULL),
(567, 22, 20, 20, 1, 9, '2025-02-05', NULL, NULL, 0, 'Meeting Kick Off Pekerjaan (Direschedule tgl 5 Jam 14.00)', NULL, NULL, NULL, NULL, '2025-02-04 13:47:37', '2025-02-06 08:35:31', '2025-02-06 08:35:31'),
(568, 10, 10, 10, 3, 1, '2025-02-04', '2025-02-04', '2025-02-06 04:39:59', 100, 'Ubah partner operator pada data po upstream belum aktif atas ID FAB Desfiber 4156', NULL, '1738653015_0efbe8cbe8f46f4cd160.png', '-', 1, '2025-02-04 14:09:15', '2025-02-06 04:39:59', NULL),
(569, 21, 16, 16, 1, 4, '2025-02-19', NULL, NULL, 0, 'Testing Internal', NULL, NULL, NULL, NULL, '2025-02-04 15:11:46', '2025-02-04 15:11:46', NULL),
(570, 21, 16, 16, 1, 4, '2025-02-20', NULL, NULL, 0, 'Testing di kKlinik Satmoko', NULL, NULL, NULL, NULL, '2025-02-04 15:12:17', '2025-02-04 15:12:17', NULL),
(571, 2, 25, 25, 2, 3, '2025-02-07', '2025-02-05', NULL, 100, 'Tiket Baluran - Penambahan fitur rekap data kegiatan & jumlah pendapatan kegiatan', NULL, '1738749169_296fbe0b7d6be58b69ab.png', 'https://descloud.desnet.id/s/TfjR3dkWX67SEk9', NULL, '2025-02-04 15:47:01', '2025-02-05 16:52:49', NULL),
(572, 2, 12, 12, 3, 1, '2025-02-04', '2025-02-04', '2025-02-04 21:04:54', 100, 'Laporan Helpdesk 4 Februari 2025 Status : Clear - Wazapbro - Credit broadcast belum terupdate (Adi Husada) - Web ParokiUngaran - Request pembuatan tampilan \"Under Construction\" - Munas - request kirim ulang link verifikasi akun - Munas - Request ubah email akun user - Supriyadi - request penyesuaian data tagihan siswa - Alkabapay - request penyesuaian 4 data tagihan siswa - Alkabapay - Request pengaktifan data tagihan siswa Status : On Progress - None', NULL, '1738662743_01234cfba45fa0eda129.png', 'tanpa tautan', 7, '2025-02-04 16:51:09', '2025-02-04 21:04:54', NULL),
(573, 6, 9, 9, 3, 7, '2025-02-07', '2025-02-07', '2025-02-08 09:53:07', 100, 'Flyer DesFiber Makassar Bonus Speedboost 1 tahun', NULL, '1738929079_bf8559156debf485225b.jpg', 'tidak ada', 20, '2025-02-04 17:08:50', '2025-02-08 09:53:07', NULL),
(574, 2, 6, 6, 3, 1, '2025-02-04', '2025-02-04', '2025-02-04 20:14:37', 100, 'support supriyadi', NULL, '1738674877_00e351c0c91ea58f32c3.png', 'tidak ada', 6, '2025-02-04 20:12:39', '2025-02-04 20:14:37', NULL),
(575, 2, 6, 6, 3, 3, '2025-02-04', '2025-02-04', '2025-02-04 20:17:17', 100, 'perubahan metode dari _server to _session', NULL, '1738675037_2b062ec7663b871d476b.png', 'tidak ada', 6, '2025-02-04 20:16:52', '2025-02-04 20:17:17', NULL),
(576, 1, 37, 37, 3, 9, '2025-02-04', '2025-02-04', '2025-02-06 03:43:10', 100, 'Review pekerjaan internal', NULL, '1738675291_58a5ef3daf68f1eaeed9.png', 'localhost/alfikri_inventory', 1, '2025-02-04 20:19:33', '2025-02-06 03:43:10', NULL),
(577, 10, 37, 37, 3, 1, '2025-02-04', '2025-02-04', '2025-02-06 04:40:09', 100, 'perubahan data layanan', NULL, '1738675415_3791350144abd14c5f90.png', 'office.desnet.id', 1, '2025-02-04 20:23:09', '2025-02-06 04:40:09', NULL),
(578, 2, 37, 37, 2, 1, '2025-02-04', '2025-02-04', NULL, 100, 'kendala input lpj oleh admin smp', NULL, '1738675555_82940d73ff485b748ba7.png', 'https://keuangan.alazharkalibanteng.or.id/', NULL, '2025-02-04 20:24:55', '2025-02-04 20:25:55', NULL),
(579, 4, 7, 7, 3, 3, '2025-02-04', '2025-02-04', '2025-02-04 22:33:41', 100, 'penambahan laporan rekap penerimaan opsen bank', NULL, '1738683221_892cbee17ebaff5178dc.png', 'http://10.254.10.5/samsat/index.php/Rekap_harian_bank/rekap_penerimaan_opsen/?&end=2025-02-04&start=&uptb=00&samsat=-&jenis=2', 7, '2025-02-04 22:23:48', '2025-02-04 22:33:41', NULL),
(580, 19, 23, 23, 3, 3, '2025-02-05', '2025-02-05', '2025-02-06 03:48:16', 100, 'install theme', NULL, '1738726492_71d67ce3968234e439c7.png', 'install theme child', 1, '2025-02-05 00:24:54', '2025-02-06 03:48:16', NULL),
(581, 19, 23, 23, 3, 3, '2025-02-05', '2025-02-05', '2025-02-06 03:48:29', 100, 'create header', NULL, '1738726575_b06956e73a79f63f1d6b.png', 'header layoting', 1, '2025-02-05 00:25:21', '2025-02-06 03:48:29', NULL),
(582, 19, 23, 23, 3, 3, '2025-02-05', '2025-02-05', '2025-02-06 03:48:40', 100, 'create footer', NULL, '1738726598_0c9c789fa921f61b2f43.png', 'footer layouting', 1, '2025-02-05 00:25:46', '2025-02-06 03:48:40', NULL),
(583, 4, 8, 8, 3, 1, '2025-02-05', '2025-02-05', '2025-02-06 19:27:34', 100, 'support SOS', NULL, '1738765149_22b0876e8cdc368564ae.png', 'https://sos.desnet.id/rt/Ticket/Create.html?Queue=3     http://10.254.10.5/samsat/index.php/login', 7, '2025-02-05 08:45:03', '2025-02-06 19:27:34', NULL),
(584, 9, 15, 15, 2, 3, '2025-02-05', '2025-02-05', NULL, 100, 'SIMRS CEPU penambahan filter status pulang di pendaftaran ranap', NULL, '1738720170_02404ade39b13bbe91cb.png', 'Sudah tak update di git dan server CEPU', NULL, '2025-02-05 08:48:33', '2025-02-05 08:49:30', NULL),
(585, 2, 15, 15, 2, 3, '2025-02-05', '2025-02-05', NULL, 100, 'SCCR Fix bug ketika update monitoring muncul alert data tidak lengkap, tetapi sudah tersimpan', NULL, '1738720409_dcca113b55d32863a26c.png', 'https://sso.sccr.id/index.php/pasien/periksa/detail/485', NULL, '2025-02-05 08:50:27', '2025-02-05 08:53:29', NULL),
(586, 4, 7, 7, 3, 3, '2025-02-05', '2025-02-05', '2025-02-05 20:48:28', 100, 'penyesuaian sp piutang/ pembayaran piutang di akhir hari', NULL, '1738763308_f8fea5201fce90075102.png', 'sp_r_pembayaran', 7, '2025-02-05 09:14:10', '2025-02-05 20:48:28', NULL),
(587, 4, 7, 7, 1, 3, '2025-02-05', NULL, NULL, 0, 'penambahan data opsen pada laporan bulanan no 6', NULL, NULL, NULL, NULL, '2025-02-05 09:24:56', '2025-02-05 20:48:45', '2025-02-05 20:48:45'),
(588, 4, 7, 7, 3, 3, '2025-02-05', '2025-02-05', '2025-02-05 20:49:24', 100, 'penyesuaian tgl surat bengkel tdk readonly', NULL, '1738763364_fa3a9ada40effa3f95ce.jpg', 'controller kutipan', 7, '2025-02-05 09:29:43', '2025-02-05 20:49:24', NULL),
(589, 1, 23, 23, 3, 9, '2025-02-05', '2025-02-05', '2025-02-06 03:43:19', 100, 'Review 1', NULL, '1738722868_386626a1cf98a4bf3560.png', 'meeting 4 februari', 1, '2025-02-05 09:32:40', '2025-02-06 03:43:19', NULL),
(590, 3, 22, 22, 3, 1, '2025-02-05', '2025-02-05', '2025-02-06 08:21:21', 100, 'Dokumen pdf risalah tidak terbaca pada website JDIH DPRD Wonogiri', NULL, '1738739188_a35b713ae575f3977369.png', 'https://jdihdprd.wonogirikab.go.id/risalah-rapat/', 20, '2025-02-05 09:52:45', '2025-02-06 08:21:21', NULL),
(591, 3, 23, 23, 2, 9, '2025-02-05', '2025-02-05', NULL, 100, 'Meeting Support PPDB Man Kota Magelang', NULL, '1738725685_7d20362eefbeb6a5d802.png', 'meeting membahas persiapan ppdb 2025', NULL, '2025-02-05 10:08:08', '2025-02-05 10:21:25', NULL),
(592, 3, 23, 23, 2, 1, '2025-02-05', '2025-02-05', NULL, 100, 'reset Database PPDB MAN KOTA MAGELANG', NULL, '1738725724_aad41c1d8b3e36d17571.png', 'reset database forminator supaya id peserta reset jadi 1', NULL, '2025-02-05 10:08:57', '2025-02-05 10:22:04', NULL),
(593, 3, 23, 23, 2, 1, '2025-02-05', '2025-02-05', NULL, 100, 'testing FORMINATOR ppdb', NULL, '1738725876_30be9b70ce0dcd823675.png', 'testing send email, spreadsheet, pdf dll', NULL, '2025-02-05 10:15:07', '2025-02-05 10:24:36', NULL),
(594, 3, 23, 23, 2, 1, '2025-02-05', '2025-02-05', NULL, 100, 'penyesuaian forminator & e2pdf ppdb 2025', NULL, '1738725647_415bf9dc6d267d4efc7c.png', 'penyesuaian pada tahun ppdb 2024-2025', NULL, '2025-02-05 10:18:20', '2025-02-05 10:20:47', NULL),
(595, 3, 23, 23, 2, 1, '2025-02-05', '2025-02-05', NULL, 100, 'support perubahan konten web man kota magelang', NULL, '1738726374_1dbbe4b6296250daee39.png', 'update konten web', NULL, '2025-02-05 10:31:35', '2025-02-05 10:32:54', NULL),
(596, 4, 7, 7, 3, 3, '2025-02-11', '2025-02-11', '2025-02-11 18:30:20', 100, 'perubahan laporan tunggakan', NULL, '1739273420_0208a16821333223af6c.png', 'http://10.254.10.5/samsat/index.php/Lap_excel', 7, '2025-02-05 12:01:05', '2025-02-11 18:30:20', NULL),
(597, 9, 16, 16, 2, 3, '2025-02-05', '2025-02-05', NULL, 100, 'penyesuaian redaksional dan logo cetak etiket antrian - Klinik Satu Sehat', NULL, '1738738852_21805a4ee00145dc49d6.png', 'https://kliniksatusehat.desmedic.id/index.php/pendaftaran/cetak/cetak_antrean/2502050003', NULL, '2025-02-05 13:58:48', '2025-02-05 14:00:52', NULL),
(598, 9, 16, 16, 2, 3, '2025-02-05', '2025-02-05', NULL, 100, 'Penyesuaian redaksional form pendaftaran pasien baru', NULL, '1738738966_ac40d8ac857203224321.pdf', 'https://kliniksatusehat.desmedic.id/index.php/pendaftaran/pendaftaran_rajal/cetak_form_pendaftaran/2502050003', NULL, '2025-02-05 14:01:36', '2025-02-05 14:02:46', NULL),
(599, 3, 22, 22, 3, 3, '2025-02-05', '2025-02-05', '2025-02-06 08:21:33', 100, 'Launching / Open website Dermanina setelah sebelumnya dalam mode maintenance coming soon', NULL, '1738743075_c369e7769b468f1fd6ed.png', 'https://dermanina.id/', 20, '2025-02-05 15:08:30', '2025-02-06 08:21:33', NULL),
(600, 3, 22, 22, 3, 3, '2025-02-05', '2025-02-05', '2025-02-06 08:21:38', 100, 'Menginstal dan konfigurasi plugin SEO RankMath di website Dermanina', NULL, '1738743120_c22647b236b4f0a56a42.png', 'https://dermanina.id/wp-admin/admin.php?page=rank-math-options-general', 20, '2025-02-05 15:09:51', '2025-02-06 08:21:38', NULL),
(601, 9, 23, 23, 2, 3, '2025-02-07', '2025-02-05', NULL, 100, 're layouting page login DESMEDIC Klinik', NULL, '1738750618_46267127cded7bf195d6.png', 'http://git.desnet.id/Adekurniawan07/simklinik/commit/633c81b86298143a447f0c274cead796d65a908a', NULL, '2025-02-05 15:10:42', '2025-02-05 17:16:58', NULL),
(602, 9, 23, 23, 2, 3, '2025-02-07', '2025-02-05', NULL, 100, 're layouting page login DESMEDIC RS', NULL, '1738745759_ce662f31beafd87850fc.png', 'http://git.desnet.id/DianRama/simrs/commit/90b176e6a820f54fdbf2f696ae7c36f64dffe4c5', NULL, '2025-02-05 15:11:07', '2025-02-05 15:55:59', NULL),
(603, 2, 11, 11, 2, 1, '2025-02-05', '2025-02-05', NULL, 100, 'Melakukan Survey Pengiriman Rating Kepuasaan Pelanggan Desnet Dinas pertanian dan ketahanan pangan kab. brebes PIC Dengan Bapak Didit', NULL, '1738743315_50a37a74d4e3ab388a23.png', 'https://bit.ly/ratingdesnet', NULL, '2025-02-05 15:13:01', '2025-02-05 15:15:15', NULL),
(604, 2, 11, 11, 2, 1, '2025-02-05', '2025-02-05', NULL, 100, 'Melakukan Survey Pengiriman Rating Kepuasaan Pelanggan Desnet Dinas Trajumastra PIC Dengan Ibu Kanti Kabag', NULL, '1738743367_d956c0ac9266b509e9e2.png', 'https://bit.ly/ratingdesnet', NULL, '2025-02-05 15:14:01', '2025-02-05 15:16:07', NULL),
(605, 2, 18, 18, 2, 3, '2025-02-05', '2025-02-05', NULL, 100, 'Malinda -upload PDF di modul Just Delivery (web + api)', NULL, '1738746765_a331a7fa115bdc3c530e.png', 'https://malindaapps.com', NULL, '2025-02-05 16:09:18', '2025-02-05 16:12:45', NULL),
(606, 2, 18, 18, 2, 3, '2025-02-05', '2025-02-05', NULL, 100, 'Malinda -input data customer bisa di open dulu pak untuk email dan password (di ganti create data customer langsung create data user jadi tidak create data user)', NULL, '1738746782_d7320b7192600982b7cf.png', 'https://malindaapps.com/', NULL, '2025-02-05 16:10:12', '2025-02-05 16:13:02', NULL),
(607, 2, 18, 18, 2, 1, '2025-02-05', '2025-02-05', NULL, 100, 'Spectrum format import excel target bulanan,karyawan,tahunan', NULL, '1738746795_9fbd111a784208b68888.png', 'https://crm01.spectrum-unitec.com/', NULL, '2025-02-05 16:10:44', '2025-02-05 16:13:15', NULL),
(608, 2, 10, 10, 2, 1, '2025-02-05', '2025-02-05', NULL, 100, 'Perbarui email link verifikasi pendaftaran IKAFH UNDIP', NULL, '1738747990_6970c70301661c361104.png', '-', NULL, '2025-02-05 16:32:22', '2025-02-05 16:33:10', NULL),
(609, 2, 10, 10, 2, 3, '2025-02-05', '2025-02-05', NULL, 100, 'fitur export detail pemilih formatur', NULL, '1738748202_853264e78808fb5a4210.png', 'https://ikafh.desnet.online/index.php/data/voting/export_pemilih/8ab5a791b78fc94eff8603bcb40bd42680702a4dccac9bbc10c982cb791b5d50c085749031546fd58864c93601a4a8f619eca858c1c66c2f344128a7c35b7f99gjWapPlQIR-AVU-hbjYww7RUhn3cVRFHgycb8R7N-nE~/xls', NULL, '2025-02-05 16:33:51', '2025-02-05 16:36:42', NULL),
(610, 2, 10, 10, 2, 3, '2025-02-05', '2025-02-05', NULL, 100, 'fitur export detail pemilih keputusan', NULL, '1738748276_2443f3d47cb128d2c1d0.png', 'https://ikafh.desnet.online/index.php/data/voting/export_pemilih_keputusan/52a77f8c59fa31a0fb1ea732f29982336f118a9fe6082abccbbd539877904e795f45a4940ef8ca9601a8616b634a1db2c4977f677ed8bf71a846dcd90bef5ee86V5xgYuRMKFtL6rm1eR_30UiLdg-ZaO-aWo0RZJ6s_I~/1/xls', NULL, '2025-02-05 16:37:24', '2025-02-05 16:37:56', NULL),
(611, 2, 14, 14, 2, 9, '2025-02-05', '2025-02-05', NULL, 100, '[baluran ticketing] koordinasi pra opening loket', NULL, '1738748327_da564fe9ab1c54e235a4.png', 'onsite', NULL, '2025-02-05 16:37:41', '2025-02-05 16:38:47', NULL),
(612, 18, 10, 10, 3, 9, '2025-02-05', '2025-02-05', '2025-02-06 03:45:41', 100, 'Review mingguan', NULL, '1738748331_623a92cdf594b635483a.jpg', 'meet onsite di karangrejo', 1, '2025-02-05 16:38:27', '2025-02-06 03:45:41', NULL),
(613, 2, 14, 14, 2, 1, '2025-02-05', '2025-02-05', NULL, 100, '[alfikri alkabapay] aktivasi tagihan up dan spp bulan february anak pindahan a/n - Safaraz Jarvis - M. Haza Akmal - Dashel Aufa - Cairolima Daud - Nabiha Hafshah', NULL, '1738748687_c3d5acf506bb1243db00.png', 'https://alkabapay.alazharkalibanteng.or.id/', NULL, '2025-02-05 16:43:08', '2025-02-05 16:44:47', NULL),
(614, 2, 25, 25, 2, 3, '2025-02-06', '2025-02-06', NULL, 100, 'Tiket Baluran - Penambahan info & perbaikan jam pada cetak tiket', NULL, '1738829423_02dc4f3a91b0587e4e12.jpeg', 'https://descloud.desnet.id/s/TfjR3dkWX67SEk9', NULL, '2025-02-05 16:54:07', '2025-02-06 15:10:23', NULL),
(615, 2, 25, 25, 2, 3, '2025-02-07', '2025-02-07', NULL, 100, 'Malinda - Tambah upload lampiran pada Just Delivery & tambah menu sales order untuk admin inventory', NULL, '1738913552_0eb5fb41f040bba730d0.pdf', 'https://play.google.com/store/apps/details?id=com.desnet.malinda', NULL, '2025-02-05 16:55:04', '2025-02-07 14:32:32', NULL),
(616, 2, 12, 12, 3, 1, '2025-02-05', '2025-02-11', '2025-02-11 18:31:44', 100, 'Laporan Helpdesk 5 Februari 2025 Status : Clear - Cepu - Untuk data yang ditampilkan agar List Data Pasien yang belum pulang saja - Wazapbro - kalau kirim message ke nomor non indo bisa? (TerjemahanPro) - Spectrum - Request pengecekan file excel target bulanan all sales - Munas - Kendala link verifikasi expired - Wazapbro - Kendala pesan terkirim berulang (WK Japan) - Wazapbro - Kendala pesan terkirim berulang (DJP Kaltimtara) - Malinda - Akun admin WH bukaian modul barang keluar - Malinda - untuk role Inventory bisa di bukakan untuk Sales order - Wazapbro - Request penambahan Bank BRI (Agricon) - E-Tirta - Kendala tidak dapat preview foto Status : On Progress - Cepu - Request pengecekan pada semua laporan di modul laporan - Cepu - mohon ditambah fitur cetak data format excel, modul Kepegawaian - Sikajeng - Kendala data penyuluh tidak dapat disimpan', NULL, '1739267081_0025299ee5c0a54f1fe1.png', 'tanpa tautan', 7, '2025-02-05 16:57:36', '2025-02-11 18:31:44', NULL),
(617, 9, 23, 23, 2, 3, '2025-02-07', '2025-02-05', NULL, 100, 'responsive page login DESMEDIC KLINIK', NULL, '1738750736_7cedece63858477acd28.png', 'RESPONSIVE LAYOUT', NULL, '2025-02-05 17:17:53', '2025-02-05 17:18:56', NULL),
(618, 9, 23, 23, 2, 3, '2025-02-07', '2025-02-05', NULL, 100, 'responsive page login DESMEDIC RS', NULL, '1738750852_7f73427df96c4e52c868.png', 'RESPONSIVE LAYOUT', NULL, '2025-02-05 17:18:19', '2025-02-05 17:20:52', NULL),
(619, 10, 37, 37, 3, 1, '2025-02-05', '2025-02-05', '2025-02-06 04:40:18', 100, 'Penyesuaian fitur generate faktur', NULL, '1738758801_147ca391ce8103c2e3d2.png', 'office.desnet.id', 1, '2025-02-05 19:32:59', '2025-02-06 04:40:18', NULL),
(620, 10, 37, 37, 3, 1, '2025-02-05', '2025-02-05', '2025-02-06 04:40:28', 100, 'kendala pembayaran VA BSI EOffice LDP', NULL, '1738758893_32622ef688c28691e837.png', 'apps.iprime.id', 1, '2025-02-05 19:33:51', '2025-02-06 04:40:28', NULL),
(621, 8, 7, 7, 3, 3, '2025-02-05', '2025-02-05', '2025-02-05 20:45:24', 100, 'revisi enkripsi data pribadi organisasi/relawan apps dan db', NULL, '1738763124_bfe9d9899cca6d0627ab.png', 'http://localhost/titir2/public/titircp/pantau-bencana/organisasi-relawan', 7, '2025-02-05 20:44:13', '2025-02-05 20:45:24', NULL),
(622, 2, 6, 6, 3, 1, '2025-02-05', '2025-02-05', '2025-02-05 23:46:06', 100, 'fixing code trajumastra', NULL, '1738773966_1fde9ac78bdce0901739.png', 'tidak ada', 6, '2025-02-05 23:42:13', '2025-02-05 23:46:06', NULL),
(623, 2, 6, 6, 3, 1, '2025-02-05', '2025-02-05', '2025-02-05 23:46:22', 100, 'fixing code PSIS', NULL, '1738773982_44a7b9de0a97bc1fbb66.png', 'tidak ada', 6, '2025-02-05 23:43:05', '2025-02-05 23:46:22', NULL),
(624, 8, 6, 6, 3, 3, '2025-02-05', '2025-02-05', '2025-02-05 23:49:47', 100, 'exif_read_data, validasi upload file yang diinject', NULL, '1738774187_3be7cb48322d2892cf6a.png', 'tidak ada', 6, '2025-02-05 23:48:31', '2025-02-05 23:49:47', NULL),
(625, 23, 16, 16, 3, 3, '2025-02-06', '2025-02-06', '2025-02-06 03:47:11', 100, 'Integrasi ke satu sehat', NULL, '1738788146_3e65b53b85efd740b31d.png', 'https://klinik.dermanina.id/', 1, '2025-02-06 03:40:20', '2025-02-06 03:47:11', NULL),
(626, 24, 13, 13, 3, 9, '2025-02-06', '2025-02-06', '2025-02-06 04:02:54', 100, 'Review', NULL, '1738789374_075191f147ba8058a6d7.png', 'https://iateundip.id', 13, '2025-02-06 04:00:13', '2025-02-06 04:02:54', NULL),
(627, 3, 22, 22, 3, 1, '2025-02-06', '2025-02-06', '2025-02-06 08:21:43', 100, 'Backup berkala bulan Februari 2025 website RSUD dr. M Ashari Pemalang ke drive email app@ptdes.net', NULL, '1738804720_4cb2f7338acc8c05e717.png', 'https://drive.google.com/drive/folders/1jkOfs6p9Xv2EfFAvjM7Xr-jXe8tVyY5k', 20, '2025-02-06 08:17:37', '2025-02-06 08:21:43', NULL),
(628, 22, 20, 20, 3, 9, '2025-02-06', '2025-02-06', '2025-02-06 08:35:44', 100, '[Meeting - KickOff]', NULL, '1738805744_9953a526b49dab2087b1.jpeg', 'https://meet.google.com/jsf-tkjq-oro', 20, '2025-02-06 08:34:48', '2025-02-06 08:35:44', NULL),
(629, 9, 15, 15, 2, 3, '2025-02-06', '2025-02-06', NULL, 100, 'KLINIK SATMOKO Menambahkan no.antrean di reg pasien online modal saat tambah pendaftaran rajal', NULL, '1738808481_86ea0208714330814efc.png', 'https://kliniksatmoko.desmedic.id/index.php/pendaftaran/pendaftaran_rajal/get_data_online', NULL, '2025-02-06 09:20:02', '2025-02-06 09:21:21', NULL),
(630, 4, 7, 7, 3, 3, '2025-02-06', '2025-02-06', '2025-02-06 19:26:48', 100, 'penyesuaian opsi opsen di laporan rekon penerimaan bersih dan kotor', NULL, '1738844808_3c03067c387698db7e31.jpg', 'http://10.254.10.5/samsat/index.php/Laporan_excel', 7, '2025-02-06 10:00:35', '2025-02-06 19:26:48', NULL),
(631, 4, 8, 8, 3, 1, '2025-02-06', '2025-02-06', '2025-02-07 17:48:44', 100, 'support SOS', NULL, '1738846613_86b792b15ad60b98480d.png', 'https://sos.desnet.id/rt/Search/Simple.html      http://10.254.10.5/samsat/index.php/login', 7, '2025-02-06 10:02:55', '2025-02-07 17:48:44', NULL),
(632, 9, 15, 15, 2, 3, '2025-02-06', '2025-02-06', NULL, 100, 'SIMRS CEPU 1. Tambah fitur export excel di menu data pegawai 2. Data yg ditampilkan sesuai dengan filter yg dipilih', NULL, '1738812867_ac26e21452aa46db28fe.png', 'http://localhost/simrs/simrs/index.php/kepegawaian/data_pegawai', NULL, '2025-02-06 10:31:38', '2025-02-06 10:34:27', NULL),
(633, 3, 22, 22, 3, 1, '2025-02-06', '2025-02-06', '2025-02-07 16:45:44', 100, 'Unblock IP klien yang terblokir saat melakukan login admin website SMP Muhammadiyah 3 Yogyakarta', NULL, '1738814254_bdf19743913061aa67bb.png', 'https://smpmugayogya.sch.id/kelola_web/admin.php?page=hmwp_brute#tab=blocked', 20, '2025-02-06 10:57:05', '2025-02-07 16:45:44', NULL),
(634, 2, 11, 11, 2, 1, '2025-02-06', '2025-02-06', NULL, 100, 'Pembuatan Form Survey Kepuasan Rating Pelanggan Web Desain PT Des Teknologi Informasi (DESNET)', NULL, '1738859512_dc7be0c323d339d788c9.png', 'https://bit.ly/ratingwebsite', NULL, '2025-02-06 11:41:14', '2025-02-06 23:31:52', NULL),
(635, 4, 7, 7, 1, 3, '2025-02-12', NULL, NULL, 0, 'penambahan opsi opsen rekap bk 21', NULL, NULL, NULL, NULL, '2025-02-06 15:41:10', '2025-02-11 18:29:25', NULL),
(636, 10, 10, 10, 2, 1, '2025-02-06', '2025-02-06', NULL, 100, 'Perbaikan upload faktur', NULL, '1738832339_2a5862716cff08b8b045.png', '-', NULL, '2025-02-06 15:58:01', '2025-02-06 15:58:59', NULL),
(637, 10, 10, 10, 2, 1, '2025-02-06', '2025-02-06', NULL, 100, 'Tambah usergroup branch yogyakarta untuk list marketing pada form registrasi corporate', NULL, '1738832533_094e0dab1f20a824814e.png', 'https://office.desnet.id/index.php/fab_online_non_desfiber/tambah_data', NULL, '2025-02-06 15:59:56', '2025-02-06 16:02:13', NULL),
(638, 2, 10, 10, 2, 9, '2025-02-06', '2025-02-06', NULL, 100, 'vicon simulasi munas internal di server produksi', NULL, '1738832613_21565be42ec6ba55b9b7.jpg', 'https://meet.google.com/pqy-dqpg-ijr', NULL, '2025-02-06 16:02:49', '2025-02-06 16:03:33', NULL),
(639, 10, 10, 10, 1, 9, '2025-02-06', NULL, NULL, 0, 'Zoom simulasi Munas 3 dengan peserta', NULL, NULL, NULL, NULL, '2025-02-06 16:04:03', '2025-02-06 16:22:34', '2025-02-06 16:22:34'),
(640, 9, 16, 16, 2, 9, '2025-02-06', '2025-02-06', NULL, 100, 'Evaluasi Bulanan SIMRS - RSUD M. Ashari Pemalang', NULL, '1738833485_1fcce1fa0098dabc6b9e.png', 'DESNET is inviting you to a scheduled Zoom meeting.  Topic: Evaluasi Bulanan SIMRS RSUD M. Ashari Pemalang Time: Feb 6, 2025 09:30 Bangkok Join Zoom Meeting https://us06web.zoom.us/j/88512775146?pwd=nTelaDLyTgPkPdmqHiAzRWY6x6O7bQ.1  Meeting ID: 885 1277 5146 Passcode: 755174  ---  One tap mobile +17193594580,,88512775146#,,,,*755174# US +19292056099,,88512775146#,,,,*755174# US (New York)  ---  Dial by your location • +1 719 359 4580 US • +1 929 205 6099 US (New York) • +1 253 205 0468 US • +1 253 215 8782 US (Tacoma) • +1 301 715 8592 US (Washington DC) • +1 305 224 1968 US • +1 309 205 3325 US • +1 312 626 6799 US (Chicago) • +1 346 248 7799 US (Houston) • +1 360 209 5623 US • +1 386 347 5053 US • +1 507 473 4847 US • +1 564 217 2000 US • +1 646 931 3860 US • +1 669 444 9171 US • +1 669 900 6833 US (San Jose) • +1 689 278 1000 US  Meeting ID: 885 1277 5146 Passcode: 755174  Find your local number: https://us06web.zoom.us/u/kc7556QkrL', NULL, '2025-02-06 16:16:34', '2025-02-06 16:18:05', NULL),
(641, 2, 10, 10, 2, 9, '2025-02-06', '2025-02-07', NULL, 100, 'Zoom simulasi munas 3 dengan peserta', NULL, '1738893041_f3088effa0b3b27e58bf.jpg', 'https://telkomsel.zoom.us/j/84316161867?pwd=REtRter7Q29Xp2BE12j4QRbbiqIGek.1#success', NULL, '2025-02-06 16:22:59', '2025-02-07 08:50:41', NULL),
(642, 2, 10, 10, 2, 1, '2025-02-06', '2025-02-06', NULL, 100, 'Perpanjang expired date verifikasi pendaftar', NULL, '1738833852_1bf717a5442b36daad25.png', 'perpanjang masa expired', NULL, '2025-02-06 16:23:44', '2025-02-06 16:24:12', NULL),
(643, 2, 12, 12, 3, 1, '2025-02-06', '2025-02-11', '2025-02-11 18:31:55', 100, 'Laporan Helpdesk 6 Februari 2025 Status : Clear - Mabaji - Kendala saat proses simpan data - Satmoko - Request penambahan nomor antrean - Satmoko - Kendala tampilan odontogram tidak dapat digeser - Web SMP Muga - Kendala IP terblokir - Malinda - Request di tambahkan tombol edit dimodul tiket komplain - Malinda - untuk role admin warehouse bisa di open proses done tiket komplain - Munas - Request ubah email & renew link verifikasi Status : On Progress - LDP - Kendala terkait input data layanan - Satmoko - Request no rm terkecil di sesuaikan di atas', NULL, '1739267132_5dae6064e85f9292683d.png', 'tanpa tautan', 7, '2025-02-06 17:06:23', '2025-02-11 18:31:55', NULL),
(644, 2, 6, 6, 3, 1, '2025-02-06', '2025-02-06', '2025-02-06 18:49:51', 100, 'Support sentra mabaji', NULL, '1738842591_00ff518aeea558c771b9.jpg', 'Tidak ada', 6, '2025-02-06 18:49:01', '2025-02-06 18:49:51', NULL),
(645, 2, 37, 37, 2, 1, '2025-02-06', '2025-02-06', NULL, 100, 'Kendala pencarian surat keluar', NULL, '1738846836_382eaea8a9761807bf1f.jpg', 'Simnadin.id', NULL, '2025-02-06 19:59:54', '2025-02-06 20:00:36', NULL),
(646, 10, 37, 37, 2, 1, '2025-02-06', '2025-02-06', NULL, 100, 'Perbaikan pagination pada halaman pendapatan desfiber', NULL, '1738846907_08ad4fc7606cd29efa2a.jpg', 'Office.desnet.id', NULL, '2025-02-06 20:01:12', '2025-02-06 20:01:47', NULL),
(647, 10, 37, 37, 2, 1, '2025-02-06', '2025-02-06', NULL, 100, 'Perbaikan fungsi sort pada halaman pendapatan desfiber', NULL, '1738846985_acee0b42d137d096ae49.jpg', 'Office.desnet.id', NULL, '2025-02-06 20:02:37', '2025-02-06 20:03:05', NULL),
(648, 2, 11, 11, 2, 1, '2025-02-06', '2025-02-06', NULL, 100, 'Support Mobile Pull Git Penyesuaian Terbaru Dan Update Descloud Aplikasi Lalu Menginformasikan Aplikasi Terbaru Ke Group SIPB', NULL, '1738859722_7ff478c58b41fd08f845.png', 'https://descloud.desnet.id/s/Bpbd_brebes', NULL, '2025-02-06 23:33:29', '2025-02-06 23:35:22', NULL),
(649, 2, 18, 18, 2, 3, '2025-02-07', '2025-02-07', NULL, 100, 'Malinda - Request di tambahkan tombol edit dimodul tiket komplain', NULL, '1738893442_2007a23b299087720758.png', 'https://malindaapps.com/', NULL, '2025-02-07 08:54:52', '2025-02-07 08:57:22', NULL),
(650, 2, 18, 18, 2, 3, '2025-02-07', '2025-02-07', NULL, 100, 'Malinda - untuk role admin warehouse bisa di open proses done tiket komplain', NULL, '1738893429_49d02b9e767c821acc01.png', 'https://malindaapps.com/', NULL, '2025-02-07 08:55:36', '2025-02-07 08:57:09', NULL),
(651, 2, 18, 18, 2, 3, '2025-02-07', '2025-02-07', NULL, 100, 'Malinda - Perubahan menu mobile melalui api,untuk kedepan request penambahan menu user sudah tidak perlu update apk', NULL, '1738893415_9886c08c765e9933256b.png', 'https://malindaapps.com/', NULL, '2025-02-07 08:56:08', '2025-02-07 08:56:55', NULL),
(652, 4, 13, 13, 3, 1, '2025-02-07', '2025-02-07', '2025-02-07 09:09:57', 100, 'insert transaksi piutang tanggal 10-12-2024 sd 04-02-2025', NULL, '1738894197_30f7d6a26cd70bd9aa7f.png', 'membuat SP di produksi', 13, '2025-02-07 09:09:27', '2025-02-07 09:09:57', NULL),
(653, 7, 13, 13, 1, 4, '2025-02-10', NULL, NULL, 0, 'mengetest semua fitur dan alur', NULL, NULL, NULL, NULL, '2025-02-07 09:12:54', '2025-02-07 09:12:54', NULL),
(654, 7, 13, 13, 3, 3, '2025-02-07', '2025-02-07', '2025-02-07 15:18:58', 100, 'menggabungkan tabel dan data dengan sikajeng sebelumnya', NULL, '1738916338_af2efe8125b501d9b747.png', 'http://103.30.180.120/dbakses-des/index.php?db=sikajeng', 13, '2025-02-07 09:13:59', '2025-02-07 15:18:58', NULL),
(655, 1, 15, 15, 2, 3, '2025-02-07', '2025-02-07', NULL, 100, '-Membantu bagian FE untuk membuat pendataan inventory dan detail inventory', NULL, '1738913309_5591a3fb79c7565cb362.png', 'http://localhost/alfikri/public/index.php/data-inventory || http://localhost/alfikri/public/index.php/data-inventory/detail/5b384ce32d8cdef02bc3a139d4cac0a22bb029e8', NULL, '2025-02-07 14:26:21', '2025-02-07 14:28:29', NULL),
(656, 1, 15, 15, 2, 3, '2025-02-10', '2025-02-07', NULL, 100, 'FE: Cetak label batch di menu Inventory dan cetak label yang diceklist di detail inventory', NULL, '1738913629_857a75b3e49b56a559a5.png', 'http://localhost/alfikri/public/index.php/data-inventory/detail/5b384ce32d8cdef02bc3a139d4cac0a22bb029e8', NULL, '2025-02-07 14:30:47', '2025-02-07 14:33:49', NULL),
(657, 4, 8, 8, 3, 1, '2025-02-07', '2025-02-07', '2025-02-07 17:49:05', 100, 'support SOS', NULL, '1738922183_81deec2e97d31f172f88.png', 'http://10.254.10.5/samsat/index.php          https://sos.desnet.id/rt/Ticket/Create.html?Queue=3', 7, '2025-02-07 15:07:51', '2025-02-07 17:49:05', NULL),
(658, 18, 13, 13, 1, 3, '2025-02-07', NULL, NULL, 0, 'copy template aplikasi', NULL, NULL, NULL, NULL, '2025-02-07 15:22:42', '2025-02-07 15:25:42', '2025-02-07 15:25:42'),
(659, 20, 6, 6, 3, 5, '2025-02-07', '2025-02-07', '2025-02-07 15:27:12', 100, 'Pembuatan dokumen presales', NULL, '1738916832_df0f31503ff51188e0d9.png', 'https://descloud.desnet.id/s/Qw73D6wjngmopGW', 6, '2025-02-07 15:25:44', '2025-02-07 15:27:12', NULL),
(660, 20, 37, 6, 2, 2, '2025-02-07', '2025-02-07', NULL, 100, 'Analisis Eoffice LDP', NULL, '1738934861_da6ea7036b4719618865.jpg', 'Office.desnet.id', NULL, '2025-02-07 15:27:47', '2025-02-07 20:27:41', NULL),
(661, 2, 6, 6, 3, 3, '2025-02-07', '2025-02-07', '2025-02-07 15:29:58', 100, 'demokit erdkk', NULL, '1738916998_12a20199f4bcc3372e96.png', 'tidak ada', 6, '2025-02-07 15:28:42', '2025-02-07 15:29:58', NULL),
(662, 2, 6, 6, 3, 3, '2025-02-07', '2025-02-07', '2025-02-07 15:30:26', 100, 'demokit ketahanan pangan', NULL, '1738917026_ec1bcaf09521f2a58a25.png', 'tidak ada', 6, '2025-02-07 15:28:57', '2025-02-07 15:30:26', NULL),
(663, 22, 20, 20, 3, 2, '2025-02-07', '2025-02-07', '2025-02-07 16:18:53', 100, '[Planing- Website] Bikin Siteplan Web PPID', NULL, '1738919933_54743e9a4ad9139dc0b5.jpg', 'https://www.figma.com/board/nRhTm0faOIYjTnmgjB10jU/Sitemap-Pekerjaan-Website-PPID-Dinas-Pertanian-Brebes?node-id=0-1&t=4UfYZFQcz2KmLg6C-1', 20, '2025-02-07 15:37:09', '2025-02-07 16:18:53', NULL),
(664, 10, 10, 10, 2, 1, '2025-02-07', '2025-02-07', NULL, 100, 'Pengecekan data layanan LDP pelanggan atas nama PT Lynn Properti', NULL, '1738918449_7f20e9fca0c215e412b3.jpg', '-', NULL, '2025-02-07 15:53:54', '2025-02-07 15:54:09', NULL),
(665, 2, 10, 10, 2, 1, '2025-02-07', '2025-02-07', NULL, 100, 'Update email akun atas nama Bambang Heryanto', NULL, '1738918581_66e55cf802b069eda02e.png', '-', NULL, '2025-02-07 15:56:04', '2025-02-07 15:56:21', NULL),
(666, 2, 10, 10, 2, 1, '2025-02-07', '2025-02-07', NULL, 100, 'Hapus peserta munas atas nama Agnes Retno', NULL, '1738918666_beaf1e7c7c7840adf1c4.png', '-', NULL, '2025-02-07 15:57:29', '2025-02-07 15:57:46', NULL),
(667, 2, 10, 10, 2, 1, '2025-02-07', '2025-02-07', NULL, 100, 'Export data pendaftar yang terverifikasi hari ini', NULL, '1738918943_797576e7587b7cb5d349.png', '-', NULL, '2025-02-07 16:02:05', '2025-02-07 16:02:23', NULL),
(668, 22, 20, 20, 3, 2, '2025-02-07', '2025-02-07', '2025-02-07 16:45:16', 100, '[Planning] - Bikin Sitemap Website Official Dinas Pertanian Brebes', NULL, '1738921516_3eeac9d07c213ab0426a.jpg', 'https://www.figma.com/board/PfTnKt4DHG9BlH0eb02EGC/Sitemap-Website-Official-Dinas-Pertanian-Brebes?node-id=0-1&t=UO6eXqJxejtzk2Ox-1', 20, '2025-02-07 16:22:27', '2025-02-07 16:45:16', NULL),
(669, 18, 13, 17, 1, 3, '2025-02-12', NULL, NULL, 0, 'Fitur Data Klub/Akademi => Form Add Update', NULL, NULL, NULL, NULL, '2025-02-07 16:37:39', '2025-02-11 22:43:31', NULL),
(670, 18, 13, 17, 1, 3, '2025-02-12', NULL, NULL, 0, 'Fitur Relasi Klub dengan Atlet => Form Add Update', NULL, NULL, NULL, NULL, '2025-02-07 16:38:08', '2025-02-11 22:43:39', NULL),
(671, 18, 13, 17, 1, 3, '2025-02-12', NULL, NULL, 0, 'Fitur Data Prestasi => Form Add Update', NULL, NULL, NULL, NULL, '2025-02-07 16:40:44', '2025-02-11 22:43:18', NULL),
(672, 2, 18, 18, 2, 3, '2025-02-07', '2025-02-07', NULL, 100, 'Malinda - penambahan set customer di work order yang terbaru dari tiket komplain ketika data di edit kembali oleh admin', NULL, '1738921810_f59b0c973e30a6a809af.png', 'https://malindaapps.com/', NULL, '2025-02-07 16:49:41', '2025-02-07 16:50:10', NULL),
(673, 2, 12, 12, 3, 1, '2025-02-07', '2025-02-10', '2025-02-10 19:34:39', 100, 'Laporan Helpdesk 7 Februari 2025 Status : Clear - App Mangrove - Request link app mobile terbaru - Sikajeng - Request akses login web demo - Satmoko - Kendala list data rujukan tidak muncul - SIPB - Tulisan romawi pada laporan kaji cepat & perkembangan tidak sesuai - SIPB - Suara notifikasi belum muncul - SIPB - Tampilan informasi pada laporan di mobile belum sesuai - Wazapbro - Kendala template ter reject (Solusi Intira) - Wazapbro - Kendala submit template broadcast (Solusi Intira) - Malinda - Tiket sudah di tutup, tapi fotonya hilang - Munas - Request ubah email Alumni - Munas - Request hapus data alumni Status : On Progress - Alkabapay - Request penyesuaian data tagihan', NULL, '1739181281_90cdf39c9d744f080f3f.png', 'tanpa tautan', 7, '2025-02-07 16:53:16', '2025-02-10 19:34:39', NULL),
(674, 2, 9, 9, 2, 7, '2025-02-07', '2025-02-07', NULL, 100, 'Revisi Screen Feature e-Pasien SIMAS', NULL, '1738929179_c4c5852135e550ef44d0.jpg', 'tidak ada', NULL, '2025-02-07 18:52:31', '2025-02-07 18:52:59', NULL),
(675, 25, 37, 37, 2, 9, '2025-02-07', '2025-02-07', NULL, 100, 'Capture kebutuhan', NULL, '1738935234_97ccd9c3fc21d246e2ff.jpg', 'Destask', NULL, '2025-02-07 20:33:02', '2025-02-07 20:33:54', NULL),
(676, 4, 8, 8, 3, 1, '2025-02-10', '2025-02-10', '2025-02-10 19:34:24', 100, 'support SOS', NULL, '1739179482_1ed659fc74f8ee178014.png', 'https://sos.desnet.id/rt/Ticket/Create.html?Queue=3   http://10.254.10.5/samsat/index.php/menu', 7, '2025-02-10 09:05:37', '2025-02-10 19:34:24', NULL),
(677, 10, 37, 37, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, 'Memetakan kategori produk desfiber', NULL, '1739163732_86acbf75c5e2d65b1ddd.png', 'office.desnet.id', NULL, '2025-02-10 10:42:33', '2025-02-10 12:02:12', NULL),
(678, 25, 37, 37, 2, 5, '2025-02-10', '2025-02-10', NULL, 100, 'pembuatan MOM', NULL, '1739163803_3bd1a3c463b862ad4fce.png', 'mom bpr maa', NULL, '2025-02-10 12:02:40', '2025-02-10 12:03:23', NULL);
INSERT INTO `task` (`id_task`, `id_pekerjaan`, `id_user`, `creator`, `id_status_task`, `id_kategori_task`, `tgl_planing`, `tgl_selesai`, `tgl_verifikasi_diterima`, `persentase_selesai`, `deskripsi_task`, `alasan_verifikasi`, `bukti_selesai`, `tautan_task`, `verifikator`, `created_at`, `updated_at`, `deleted_at`) VALUES
(679, 3, 20, 20, 3, 1, '2025-02-10', '2025-02-10', '2025-02-10 12:11:45', 100, '[Support-Website Gatetechno] - DIbantu Website kena Judol', NULL, '1739164305_5adacc131350255ab6c7.jpeg', 'https://gatetechno.com/', 20, '2025-02-10 12:10:59', '2025-02-10 12:11:45', NULL),
(680, 3, 20, 20, 3, 1, '2025-02-10', '2025-02-10', '2025-02-10 12:13:19', 100, '[Support - Website DLHKProv Jateng] Minta dihilangkan Form Pengaduan Pencemaran', NULL, '1739164399_a9271b700fe0f9dc1807.jpeg', 'https://dlhk.jatengprov.go.id/v1/', 20, '2025-02-10 12:12:55', '2025-02-10 12:13:19', NULL),
(681, 22, 20, 20, 3, 5, '2025-02-10', '2025-02-10', '2025-02-10 12:15:26', 100, '[Planning] - Membuat Backlog Pekerjaan dan planing personil', NULL, '1739164526_e3be367fa72aa150135b.jpg', 'https://descloud.desnet.id/apps/onlyoffice/s/HWZQeNWnbNBNzgm?fileId=6342568', 20, '2025-02-10 12:14:56', '2025-02-10 12:15:26', NULL),
(682, 22, 20, 20, 1, 7, '2025-02-12', NULL, NULL, 40, '[Design Altv01] - Design Home Page', NULL, NULL, NULL, NULL, '2025-02-10 12:20:02', '2025-02-11 17:29:37', NULL),
(683, 2, 14, 14, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, '[alfikri alkabapay] fix data nis tagihan a/n Safaraz Jarvis', NULL, '1739172537_977c3220c0fa47a21b32.png', 'https://alkabapay.alazharkalibanteng.or.id/', NULL, '2025-02-10 14:23:14', '2025-02-10 14:28:57', NULL),
(684, 2, 14, 14, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, '[alfikri alkabapay] fix jumlah cicilan terecord a/n Zidna \'Aina Salsabila', NULL, '1739172560_10d0b6cd69d909d04852.png', 'https://alkabapay.alazharkalibanteng.or.id/', NULL, '2025-02-10 14:24:24', '2025-02-10 14:29:20', NULL),
(685, 2, 14, 14, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, '[baluran ticketing] update export rekap pendapatan tiket', NULL, '1739172586_3f1a98f0ba49c650d978.png', 'https://sobatbanteng.id', NULL, '2025-02-10 14:25:13', '2025-02-10 14:29:46', NULL),
(686, 2, 14, 14, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, '[bpbd brebes] fix cetak laporan kaji cepat & laporan perkembangan', NULL, '1739172621_52c61b57482496e148af.png', 'http://git.desnet.id/bpbd-kab-brebes/web_app_new.git', NULL, '2025-02-10 14:26:10', '2025-02-10 14:30:21', NULL),
(687, 2, 14, 14, 1, 1, '2025-02-14', NULL, NULL, 15, '[trajumastra] penambahan filter xss', NULL, NULL, NULL, NULL, '2025-02-10 14:27:24', '2025-02-10 14:28:23', NULL),
(688, 2, 25, 25, 2, 3, '2025-02-11', '2025-02-11', NULL, 100, 'Tiket Baluran - Ubah urutan input form & request tambah Loading pada button proses', NULL, '1739269076_d8c0fe31127804abc4aa.png', 'https://descloud.desnet.id/s/TfjR3dkWX67SEk9', NULL, '2025-02-10 15:29:46', '2025-02-11 17:17:56', NULL),
(689, 9, 15, 15, 2, 3, '2025-02-10', '2025-02-10', NULL, 100, 'SIMKLINIK SATMOKO: Fix stok opname. -Jika obat diverif akan mengurangi stok -jika obat dibatal verif akan mengembalikan stok', NULL, '1739176298_35470700f3b6e22e3409.png', 'http://localhost/simklinik_satmoko/index.php/farmasi/gudang/stok_opname', NULL, '2025-02-10 15:30:47', '2025-02-10 15:31:38', NULL),
(690, 9, 15, 15, 2, 3, '2025-02-10', '2025-02-10', NULL, 100, 'SIMKLINIK SATMOKO -Penyesuaian Verif resep racik bisa dibuat secara global seperti verif non racik jadi tidak perlu verif obat 1 per 1', NULL, '1739176435_31d191c89e0a9ebb700a.png', 'http://localhost/simklinik_satmoko/index.php/farmasi/apotek/resep/form/2502100009#', NULL, '2025-02-10 15:32:55', '2025-02-10 15:33:55', NULL),
(691, 2, 15, 15, 2, 3, '2025-02-11', '2025-02-10', NULL, 100, 'Update Migrasi SIMAS JATENG ke domain simasjateng.id', NULL, '1739180461_c07f2e4f40c8f9b3fafe.png', 'https://simasjateng.id/', NULL, '2025-02-10 15:58:31', '2025-02-10 16:41:01', NULL),
(692, 2, 15, 15, 1, 4, '2025-02-11', NULL, NULL, 0, 'Testing fungsi fungsi di SIMAS JATENG jika ada yg error', NULL, NULL, NULL, NULL, '2025-02-10 15:59:58', '2025-02-11 09:16:36', '2025-02-11 09:16:36'),
(693, 10, 37, 37, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, 'Pengecekan blocking email heriew@gmail.com', NULL, '1739179126_5ba78a052b05d8fcc857.png', 'office.desnet.id', NULL, '2025-02-10 16:17:41', '2025-02-10 16:18:46', NULL),
(694, 2, 37, 37, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, 'penghapusan data kasbon double dan tidak muncul tombol approval', NULL, '1739179235_63fae09dca920130a628.png', 'keuangan alfikri', NULL, '2025-02-10 16:20:15', '2025-02-10 16:20:35', NULL),
(695, 2, 37, 37, 2, 9, '2025-02-10', '2025-02-10', NULL, 100, 'meeting dengan bina insani', NULL, '1739179287_8aa7b3189952b88cc630.png', 'kpi bina insani', NULL, '2025-02-10 16:21:02', '2025-02-10 16:21:27', NULL),
(696, 2, 12, 12, 3, 1, '2025-02-10', '2025-02-11', '2025-02-11 18:31:00', 100, 'Laporan Helpdesk 10 Februari 2025 Status : Clear - Munas - Kendala link aktivasi akun expired - Munas - Kendala link verifikasi ubah email expired - Alkabapay - Kendala data tagihan terbaca ganda - Asikmas - Kendala data review survey bulan Januari tidak muncul Status : On Progress - Desfiber - Kendala saat download BAAL', NULL, '1739267025_70c645723851e692a7c8.png', 'tanpa tautan', 7, '2025-02-10 16:53:46', '2025-02-11 18:31:00', NULL),
(697, 2, 10, 10, 2, 9, '2025-02-10', '2025-02-10', NULL, 100, 'Vicon terkait support BTKLPP dengan Mas Ade', NULL, '1739184531_243e20eb6dc26ab2d9cd.jpg', 'https://meet.google.com/bnc-dgwm-cnf', NULL, '2025-02-10 17:48:17', '2025-02-10 17:48:51', NULL),
(698, 2, 10, 10, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, 'Menghilangkan tabel pernyataan pada export kajian ulang BTKLPP', NULL, '1739184660_ff82b311681de39cbe33.png', '-', NULL, '2025-02-10 17:50:44', '2025-02-10 17:51:00', NULL),
(699, 9, 10, 10, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, 'Penyesuaian kolom kelompok umur pada modul laporan submenu Data tindakan ICD9', NULL, '1739184825_bcc922bca0a755c7dd1e.png', '-', NULL, '2025-02-10 17:52:58', '2025-02-10 17:53:45', NULL),
(700, 9, 10, 10, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, 'Penambahan submenu Data tindakan ICDX', NULL, '1739184845_33ac70aafd1bfb266393.png', '-', NULL, '2025-02-10 17:53:27', '2025-02-10 17:54:05', NULL),
(701, 10, 10, 10, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, 'Penyesuaian pembayaran ke CID baru dari CID 5218 ke CID 5609', NULL, '1739185041_76f5306c7fcf73a92188.png', '-', NULL, '2025-02-10 17:57:05', '2025-02-10 17:57:21', NULL),
(702, 2, 10, 10, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, 'Penyesuaian permission untuk usergroup admin Resort/Seksi dan admin Destinasi pada Booking merbabu', NULL, '1739185176_de33767c18890b73efa2.png', '-', NULL, '2025-02-10 17:59:14', '2025-02-10 17:59:36', NULL),
(703, 2, 10, 10, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, 'Ubah query pada menu log verifikasi, data pendaki tab verifikasi dan export log verifikasi', NULL, '1739185238_6588cf996cc6366cec3f.png', '-', NULL, '2025-02-10 18:00:23', '2025-02-10 18:00:38', NULL),
(704, 2, 10, 10, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, 'Renew link verifikasi IKAFH', NULL, '1739185332_3b725ff2af78045e96b1.png', '-', NULL, '2025-02-10 18:01:56', '2025-02-10 18:02:12', NULL),
(705, 2, 10, 10, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, 'Renew link username dengan email: danisnayla@gmail.com', NULL, '1739185430_e01d9a3fe804a6bcefc8.png', '-', NULL, '2025-02-10 18:03:31', '2025-02-10 18:03:50', NULL),
(706, 2, 10, 10, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, 'Pengecekan verifikator', NULL, '1739185526_d2bea9197b2e9387d9c5.png', '-', NULL, '2025-02-10 18:05:09', '2025-02-10 18:05:26', NULL),
(707, 2, 10, 10, 2, 1, '2025-02-10', '2025-02-10', NULL, 100, 'renew link verifkasi pendaftaran IKAFH', NULL, '1739185598_b3509449ed3a85db8a56.png', '-', NULL, '2025-02-10 18:06:22', '2025-02-10 18:06:38', NULL),
(708, 22, 9, 9, 1, 7, '2025-02-13', NULL, NULL, 30, 'Halaman Home', NULL, NULL, NULL, NULL, '2025-02-10 18:38:04', '2025-02-10 18:38:14', NULL),
(709, 4, 7, 7, 3, 3, '2025-02-10', '2025-02-10', '2025-02-10 19:36:55', 100, 'perbaikan login dan menu', NULL, '1739191015_82ca29036cde229de717.png', 'http://10.254.10.5/samsat/index.php/menu', 7, '2025-02-10 19:35:35', '2025-02-10 19:36:55', NULL),
(710, 9, 23, 23, 2, 3, '2025-02-10', '2025-02-10', NULL, 100, 'layouting halaman dashboard', NULL, '1739204890_58bebcb5da73e3ee38ce.png', 'http://git.desnet.id/DianRama/simrs/commits/master', NULL, '2025-02-10 23:25:28', '2025-02-10 23:28:10', NULL),
(711, 9, 23, 23, 2, 3, '2025-02-10', '2025-02-10', NULL, 100, 'responsive halaman dashboard', NULL, '1739204873_e54bf72353626939f6e2.png', 'http://git.desnet.id/DianRama/simrs/commits/master', NULL, '2025-02-10 23:25:53', '2025-02-10 23:27:53', NULL),
(712, 9, 23, 23, 2, 3, '2025-02-10', '2025-02-10', NULL, 100, 'perbaikan responsive drawer menu', NULL, '1739204977_122cacfa470aa098b47d.png', 'http://git.desnet.id/DianRama/simrs/commits/master', NULL, '2025-02-10 23:29:19', '2025-02-10 23:29:37', NULL),
(713, 26, 6, 6, 3, 9, '2025-02-10', '2025-02-10', '2025-02-10 23:31:06', 100, 'Meeting perdana', NULL, '1739205066_9a46ee2ed8f5168ee4eb.jpg', 'Tidak ada', 6, '2025-02-10 23:30:30', '2025-02-10 23:31:06', NULL),
(714, 3, 22, 22, 3, 1, '2025-02-11', '2025-02-11', '2025-02-11 17:29:01', 100, 'Menambahkan user baru di website KSPPS BMT NU Sejahtera', NULL, '1739242108_6479c37875c2f5b79a2c.png', 'https://ksppsnus.com/wp-admin/users.php', 20, '2025-02-11 09:45:31', '2025-02-11 17:29:01', NULL),
(715, 3, 22, 22, 3, 1, '2025-02-11', '2025-02-11', '2025-02-11 17:29:08', 100, 'Menambahkan halaman Loker di submenu profile website SMAN 14 Semarang', NULL, '1739242145_badc21f4bfcf54b8d5ee.png', 'https://sman14-smg.sch.id/loker/', 20, '2025-02-11 09:46:21', '2025-02-11 17:29:08', NULL),
(716, 2, 22, 22, 2, 1, '2025-02-11', '2025-02-11', NULL, 100, 'Memperbaiki posisi button close popup di home web RS PKU Muhammadiyah Gamping', NULL, '1739246364_785fc4daec2bfe92b463.png', 'https://pkugamping.com/', NULL, '2025-02-11 10:58:19', '2025-02-11 10:59:24', NULL),
(717, 2, 37, 37, 2, 1, '2025-02-11', '2025-02-11', NULL, 100, 'Pengecekan approval pv minus pada aplikasi keuangan alfikri', NULL, '1739254615_2a6903c985dbdee88422.png', 'keuangan alfikri', NULL, '2025-02-11 13:16:38', '2025-02-11 13:16:55', NULL),
(718, 3, 22, 22, 3, 1, '2025-02-11', '2025-02-11', '2025-02-11 17:29:13', 100, 'Mereset password login website Yayasan Pendidikan Islam Al Khoiriyyah karena password yang lama sudah tidak bisa dipakai', NULL, '1739256388_93e95f14616aaf69df64.png', 'https://www.alkhoiriyyah.sch.id/wp-admin/users.php', 20, '2025-02-11 13:30:51', '2025-02-11 17:29:13', NULL),
(719, 3, 22, 22, 3, 1, '2025-02-11', '2025-02-11', '2025-02-11 17:29:17', 100, 'Tidak bisa login web prodi UPW Poltekpar Makassar', NULL, '1739257176_3223d60d0f842e9199eb.png', 'https://upw.poltekparmakassar.ac.id/wp-admin/?sucuriscan_lastlogin=1', 20, '2025-02-11 13:39:50', '2025-02-11 17:29:17', NULL),
(720, 2, 14, 14, 2, 9, '2025-02-11', '2025-02-11', NULL, 100, 'koordinasi internal wo dishub', NULL, '1739258719_85d36a31a01131668833.png', 'https://meet.google.com/zep-nrxv-mjy', NULL, '2025-02-11 14:23:28', '2025-02-11 14:25:19', NULL),
(721, 4, 8, 8, 3, 1, '2025-02-11', '2025-02-11', '2025-02-11 18:30:35', 100, 'support SOS', NULL, '1739266753_03b1282cfdea58435930.png', 'https://sos.desnet.id/rt/      http://10.254.10.5/samsat/index.php/menu', 7, '2025-02-11 14:51:16', '2025-02-11 18:30:35', NULL),
(722, 7, 26, 26, 1, 3, '2025-02-12', NULL, NULL, 70, 'Memuncul dropdown jenis bibit extra apabila telah memilih jenis bibit', NULL, NULL, NULL, NULL, '2025-02-11 15:46:46', '2025-02-11 15:47:06', NULL),
(723, 9, 23, 23, 2, 3, '2025-02-12', '2025-02-11', NULL, 100, 'relayouting page dashboard desmedic klinik', NULL, '1739279748_3689acf5ada61082b251.png', 'http://git.desnet.id/Adekurniawan07/simklinik/commit/b2952d94ef0a5fc61d6ef93bdb5c53945f7deee1', NULL, '2025-02-11 15:50:03', '2025-02-11 20:15:48', NULL),
(724, 9, 23, 23, 2, 3, '2025-02-12', '2025-02-11', NULL, 100, 'perbaikan responsive dashboard desmedic klinik', NULL, '1739279953_f8ad36edbe369236aa13.png', 'http://git.desnet.id/Adekurniawan07/simklinik/commit/e279c48aea25f09509325a956f446667d7643cc5', NULL, '2025-02-11 15:50:31', '2025-02-11 20:19:13', NULL),
(725, 7, 13, 13, 3, 9, '2025-02-11', '2025-02-11', '2025-02-11 16:13:28', 100, 'review dengan DLHK DKP BPDAS', NULL, '1739265208_799a91c489e682b8efda.png', 'https://demo81.desnet.online/sikajeng-hibah/', 13, '2025-02-11 16:11:58', '2025-02-11 16:13:28', NULL),
(726, 2, 12, 12, 1, 1, '2025-02-11', NULL, NULL, 90, 'Laporan Helpdesk 11 Februari 2025 Status : Clear - Munas - Kendala saat paste email terbaca tidak valid - Munas - Request perubahan email alumni - Web KSPPS Nus - Request penyesuaian user administrator - PKU Gamping - Keredirect ke halaman RTF ketika klik \"X\" pada pop up iklan - Desfiber - Kendala saat create layanan - Puri Nirmala - Kendala data status pasien belum sesuai - SIPB - Request hapus data bencana - Sportax - Request ubah gambar screenshot pada playstore Status : On Progress - RME KSS - apakah RME kita sudah bisa verifikasi profil pasien aplikasi Satu Sehat Kemenkes? - Sipentol - Kendala saat input jadwal pelatihan', NULL, NULL, NULL, NULL, '2025-02-11 16:42:52', '2025-02-11 16:45:42', NULL),
(727, 2, 19, 19, 2, 1, '2025-02-11', '2025-02-11', NULL, 100, 'Ubah preview aplikasi mobile pada playstore fotografer indonesia', NULL, '1739267922_e7447b1c72ec7f0f9c29.jpeg', 'https://drive.google.com/drive/folders/13TXOJoT__i5zfmoPymkBhTcqLOyBN8mb?usp=drive_link', NULL, '2025-02-11 16:57:57', '2025-02-11 16:58:42', NULL),
(728, 2, 18, 18, 2, 9, '2025-02-11', '2025-02-11', NULL, 100, 'Presales pengembangan validitas bonafid', NULL, '1739268092_437a7558eeb0c3bd00f6.docx', 'lupa ss', NULL, '2025-02-11 17:00:52', '2025-02-11 17:01:32', NULL),
(729, 3, 20, 20, 3, 1, '2025-02-11', '2025-02-11', '2025-02-11 17:34:41', 100, '[Support-Website DLHK] - Minta tlg dicekkan hasil input formnya masuk tidak', NULL, '1739270081_6ad8295b058dc25a8519.jpg', 'https://ppid.dlhk.jatengprov.go.id/formulir-pengaduan/', 20, '2025-02-11 17:30:40', '2025-02-11 17:34:41', NULL),
(730, 3, 20, 20, 3, 1, '2025-02-11', '2025-02-11', '2025-02-11 17:36:47', 100, '[SUpport -Website Poltekpar Makassar - ada notif kemasukan File Indexing Google html (indikasi Judol)', NULL, '1739270207_2ae65ca4291cb79d04e4.jpeg', 'https://poltekparmakassar.ac.id/', 20, '2025-02-11 17:35:35', '2025-02-11 17:36:47', NULL),
(731, 2, 10, 10, 2, 1, '2025-02-11', '2025-02-11', NULL, 100, 'Hapus file ijazah dari luar FH UNDIP', NULL, '1739285385_0135c620900893f28392.png', '-', NULL, '2025-02-11 21:49:17', '2025-02-11 21:49:45', NULL),
(732, 2, 10, 10, 2, 1, '2025-02-11', '2025-02-11', NULL, 100, 'Ubah email lama ke email baru pendaftaran akun IKAFH UNDIP - email lama : devi.ariyanti@gmail.com - email baru : listingbydevi@gmail.com', NULL, '1739285448_f58571cba553371af8bf.png', '-', NULL, '2025-02-11 21:50:33', '2025-02-11 21:50:48', NULL),
(733, 2, 10, 10, 2, 1, '2025-02-11', '2025-02-11', NULL, 100, 'revisi email batch', NULL, '1739285548_2d81de72871f2d097b77.png', '-', NULL, '2025-02-11 21:52:13', '2025-02-11 21:52:28', NULL),
(734, 2, 10, 10, 2, 1, '2025-02-11', '2025-02-11', NULL, 100, 'set session flag munas setelah klik daftar munas', NULL, '1739285633_ec95989d35a03db536e4.png', '-', NULL, '2025-02-11 21:53:34', '2025-02-11 21:53:53', NULL),
(735, 10, 10, 10, 2, 1, '2025-02-11', '2025-02-11', NULL, 100, 'Perbaikan download BAAL', NULL, '1739285735_569457f2e2f425d8f6e3.png', '-', NULL, '2025-02-11 21:55:19', '2025-02-11 21:55:35', NULL),
(736, 10, 10, 10, 2, 1, '2025-02-11', '2025-02-11', NULL, 100, 'fix error edit tanggal BAAL', NULL, '1739285837_b4e55ad63322045bb304.png', '-', NULL, '2025-02-11 21:56:59', '2025-02-11 21:57:17', NULL),
(737, 10, 10, 10, 2, 1, '2025-02-11', '2025-02-11', NULL, 100, 'Perbaikan Data Teknis', NULL, '1739285920_7bea8f97cf0c2f857568.png', '-', NULL, '2025-02-11 21:58:25', '2025-02-11 21:58:40', NULL),
(738, 10, 10, 10, 2, 1, '2025-02-11', '2025-02-11', NULL, 100, 'pengecekan gagal input data layanan', NULL, '1739286010_5017ec1b57f8def89501.png', '-', NULL, '2025-02-11 21:59:52', '2025-02-11 22:00:10', NULL),
(739, 2, 10, 10, 1, 1, '2025-02-12', NULL, NULL, 0, 'Pengecekan gagal edit data pribadi user IKAFH', NULL, NULL, NULL, NULL, '2025-02-11 22:01:07', '2025-02-11 22:01:07', NULL),
(740, 9, 10, 10, 2, 1, '2025-02-11', '2025-02-11', NULL, 100, 'Penambahan kolom total sesuai kategori pada data tindakan ICD9 dan data penyakit ICDX', NULL, '1739286226_0c27d253207507907667.png', 'http://git.desnet.id/simklinik/simklinik_satu_sehat/commit/e7e649358eadc0ed3ac789e57a9c415bb31af434', NULL, '2025-02-11 22:02:37', '2025-02-11 22:03:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_usergroup` int(11) UNSIGNED DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_level` enum('staff','supervisi','admin','direksi','hod') DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `foto_profil` varchar(100) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `id_usergroup`, `username`, `email`, `password`, `user_level`, `nama`, `foto_profil`, `reset_password_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, 'ade.kurniawan@ptdes.net', 'ade.kurniawan@ptdes.net', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'hod', 'Ade Kurniawan', '1736749526_82bb616eefa51a2e905a.jpg', NULL, '2024-07-31 14:29:06', '2025-01-13 13:25:26', NULL),
(5, 5, 'iman@ptdes.net', 'iman@ptdes.net', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'hod', 'Nur Imanullah', '', NULL, '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(6, 2, 'romadhoni@desnet.id', 'romadhoni@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'supervisi', 'Romadhoni Rosyid', '', NULL, '2024-07-31 14:29:06', '2025-01-15 09:37:47', NULL),
(7, 6, 'fariz@desnet.id', 'fariz@desnet.id', '68ce40cf5b550d4d90c39869611fd3a5', 'supervisi', 'Fariz Bagus Putratama', '', NULL, '2024-07-31 14:29:06', '2025-01-15 09:12:49', NULL),
(8, 6, 'hadanil@desnet.id', 'hadanil@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'staff', 'Muhammad Najih Hadanil Atqo', '', NULL, '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(9, 1, 'thio@desnet.id', 'thio@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'staff', 'Thio Tadjudin', '', NULL, '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(10, 2, 'dini@desnet.id', 'dini@desnet.id', 'a5fc01cc7487590d03aa98b452faaefc', 'staff', 'Granika Nur Andini', '', NULL, '2024-07-31 14:29:06', '2025-01-20 12:48:47', NULL),
(11, 3, 'erwan@desnet.id', 'erwan@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'staff', 'Erwan Santoso', '', NULL, '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(12, 6, 'halda@desnet.id', 'halda@desnet.id', '8b64d4984b78e21099b6e449c669e217', 'staff', 'Halda Fitra Pratama', '', '07cd76877263a886b53a668ba084c33bf4810da8422151e7d111ef9d589cdae6', '2024-07-31 14:29:06', '2025-01-14 11:48:45', NULL),
(13, 2, 'ligat@desnet.id', 'ligat@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'supervisi', 'Ligat Yayan Subachti', '', NULL, '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(14, 2, 'huda@desnet.id', 'huda@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'staff', 'Manarul Huda', '', NULL, '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(15, 2, 'Irsad@desnet.id', 'Irsad@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'staff', 'Irsad Syarifuddin', '', NULL, '2024-07-31 14:29:06', '2025-01-15 13:19:43', NULL),
(16, 2, 'dian@desnet.id', 'dian@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'staff', 'Dian Ramadhan', '', NULL, '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(17, 3, 'habib@desnet.id', 'habib@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'supervisi', 'Habib Maulana', '', NULL, '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(18, 2, 'bayu@desnet.id', 'bayu@desnet.id', '9c7a03864783d2e582baf161a758aae6', 'staff', 'Bayu Christian', '', NULL, '2024-07-31 14:29:06', '2025-01-23 16:23:07', NULL),
(19, 3, 'anggy@desnet.id', 'anggy@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'staff', 'Anggyanisa Mutia Putri', '', NULL, '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(20, 1, 'vembri@desnet.id', 'vembri@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'supervisi', 'Vembri Eko Haryono', '', '87eb9f2cc049acedb1c5faef5d6109fed8f1e960e9037645f498e8d29b694460', '2024-07-31 14:29:06', '2025-01-15 12:31:34', NULL),
(21, 2, 'revika@desnet.id', 'revika@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'staff', 'Revika Nurlitasari', '', NULL, '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(22, 1, 'erlangga@desnet.id', 'erlangga@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'staff', 'Erlangga Hariadi Putra', '', NULL, '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(23, 2, 'berliansyah@desnet.id', 'berliansyah@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'staff', 'Muhammad Berliansyah', '', NULL, '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(24, 1, 'gusat@desnet.id', 'gusat@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'staff', 'Gusat Yusaryanto', '', NULL, '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(25, 3, 'ian@desnet.id', 'ian@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'staff', 'Ian Aditiawan', '', NULL, '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(26, 3, 'fajar@desnet.id', 'fajar@desnet.id', 'ae61f37bbaddb9bf5b8419f8ea3f15a8', 'staff', 'Ananda Fajar', '', NULL, '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(37, 2, 'iasa@desnet.id', 'iasa@desnet.id', '1bff5e7606c164cdde293e2f7b1ba2ca', 'staff', 'Iasa Kurniasari', '', NULL, '2024-07-31 14:29:06', '2025-01-22 14:37:58', NULL),
(39, 5, 'candra@ptdes.net', 'candra@ptdes.net', 'd0b3499cfb938b2a187751e583ddb7ce', 'hod', 'Candra Sulistya Aji', '', '87eb9f2cc049acedb1c5faef5d6109fed8f1e960e9037645f498e8d29b694460', '2024-07-31 14:29:06', '2025-01-20 16:43:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usergroup`
--

CREATE TABLE `usergroup` (
  `id_usergroup` int(11) UNSIGNED NOT NULL,
  `nama_usergroup` varchar(30) DEFAULT NULL,
  `deskripsi_usergroup` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `usergroup`
--

INSERT INTO `usergroup` (`id_usergroup`, `nama_usergroup`, `deskripsi_usergroup`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Design', 'Divisi Design bertanggung jawab untuk merancang antarmuka pengguna yang menarik dan fungsional, memastikan pengalaman online yang optimal bagi pengguna.', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(2, 'Web', 'Divisi Pengembangan Web bertanggung jawab merancang dan memelihara infrastruktur teknis situs web. Mereka mengimplementasikan desain menggunakan bahasa pemrograman terkini, bekerja sama dengan divisi desain, dan memastikan keamanan serta kinerja situs optimal.', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(3, 'Mobile', 'Divisi Mobile menciptakan aplikasi inovatif dengan antarmuka responsif. Tim fokus pada kebutuhan pengguna dan selalu mengikuti perkembangan teknologi mobile. Tujuannya: memberikan pengalaman pengguna terbaik.', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(4, 'Tester', 'Divisi Tester bertanggung jawab untuk melakukan pengujian perangkat lunak secara menyeluruh sebelum dirilis ke pengguna akhir. Tugas utama divisi ini adalah memverifikasi kepatuhan perangkat lunak terhadap spesifikasi yang telah ditetapkan, menemukan dan melaporkan bug atau masalah fungsional, serta memastikan bahwa perangkat lunak berfungsi sesuai dengan harapan.', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(5, 'Admin', 'Divisi Admin bertanggung jawab untuk mengelola dan menjaga infrastruktur serta sumber daya yang digunakan dalam organisasi. Tugas-tugas divisi ini meliputi administrasi server, manajemen database, manajemen jaringan, manajemen perangkat keras dan perangkat lunak, serta pemeliharaan keamanan sistem.', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL),
(6, 'Helpdesk', 'Divisi Helpdesk bertanggung jawab untuk memberikan dukungan teknis dan bantuan kepada pengguna akhir yang mengalami masalah atau kesulitan saat menggunakan produk atau layanan perusahaan. Tugas utama divisi ini adalah merespons pertanyaan, permintaan bantuan, dan pelaporan masalah dari pengguna, serta memberikan solusi atau bantuan teknis yang diperlukan.', '2024-07-31 14:29:06', '2024-07-31 14:29:06', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bobot_kategori_task`
--
ALTER TABLE `bobot_kategori_task`
  ADD PRIMARY KEY (`id_bobot_kategori_task`),
  ADD KEY `bobot_kategori_task_id_kategori_task_foreign` (`id_kategori_task`),
  ADD KEY `bobot_kategori_task_id_usergroup_foreign` (`id_usergroup`);

--
-- Indexes for table `hari_libur`
--
ALTER TABLE `hari_libur`
  ADD PRIMARY KEY (`id_hari_libur`);

--
-- Indexes for table `kategori_pekerjaan`
--
ALTER TABLE `kategori_pekerjaan`
  ADD PRIMARY KEY (`id_kategori_pekerjaan`);

--
-- Indexes for table `kategori_task`
--
ALTER TABLE `kategori_task`
  ADD PRIMARY KEY (`id_kategori_task`);

--
-- Indexes for table `kinerja`
--
ALTER TABLE `kinerja`
  ADD PRIMARY KEY (`id_kinerja`),
  ADD KEY `kinerja_id_user_foreign` (`id_user`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`),
  ADD KEY `pekerjaan_id_status_pekerjaan_foreign` (`id_status_pekerjaan`),
  ADD KEY `pekerjaan_id_kategori_pekerjaan_foreign` (`id_kategori_pekerjaan`);

--
-- Indexes for table `personil`
--
ALTER TABLE `personil`
  ADD PRIMARY KEY (`id_personil`),
  ADD KEY `personil_id_user_foreign` (`id_user`),
  ADD KEY `personil_id_pekerjaan_foreign` (`id_pekerjaan`);

--
-- Indexes for table `status_pekerjaan`
--
ALTER TABLE `status_pekerjaan`
  ADD PRIMARY KEY (`id_status_pekerjaan`);

--
-- Indexes for table `status_task`
--
ALTER TABLE `status_task`
  ADD PRIMARY KEY (`id_status_task`);

--
-- Indexes for table `target_poin_harian`
--
ALTER TABLE `target_poin_harian`
  ADD PRIMARY KEY (`id_target_poin_harian`),
  ADD KEY `target_poin_harian_id_usergroup_foreign` (`id_usergroup`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id_task`),
  ADD KEY `task_id_pekerjaan_foreign` (`id_pekerjaan`),
  ADD KEY `task_id_user_foreign` (`id_user`),
  ADD KEY `task_id_status_task_foreign` (`id_status_task`),
  ADD KEY `task_id_kategori_task_foreign` (`id_kategori_task`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `user_id_usergroup_foreign` (`id_usergroup`);

--
-- Indexes for table `usergroup`
--
ALTER TABLE `usergroup`
  ADD PRIMARY KEY (`id_usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bobot_kategori_task`
--
ALTER TABLE `bobot_kategori_task`
  MODIFY `id_bobot_kategori_task` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `hari_libur`
--
ALTER TABLE `hari_libur`
  MODIFY `id_hari_libur` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori_pekerjaan`
--
ALTER TABLE `kategori_pekerjaan`
  MODIFY `id_kategori_pekerjaan` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori_task`
--
ALTER TABLE `kategori_task`
  MODIFY `id_kategori_task` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kinerja`
--
ALTER TABLE `kinerja`
  MODIFY `id_kinerja` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personil`
--
ALTER TABLE `personil`
  MODIFY `id_personil` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `status_pekerjaan`
--
ALTER TABLE `status_pekerjaan`
  MODIFY `id_status_pekerjaan` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `status_task`
--
ALTER TABLE `status_task`
  MODIFY `id_status_task` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `target_poin_harian`
--
ALTER TABLE `target_poin_harian`
  MODIFY `id_target_poin_harian` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id_task` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=741;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `usergroup`
--
ALTER TABLE `usergroup`
  MODIFY `id_usergroup` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bobot_kategori_task`
--
ALTER TABLE `bobot_kategori_task`
  ADD CONSTRAINT `bobot_kategori_task_id_kategori_task_foreign` FOREIGN KEY (`id_kategori_task`) REFERENCES `kategori_task` (`id_kategori_task`),
  ADD CONSTRAINT `bobot_kategori_task_id_usergroup_foreign` FOREIGN KEY (`id_usergroup`) REFERENCES `usergroup` (`id_usergroup`);

--
-- Constraints for table `kinerja`
--
ALTER TABLE `kinerja`
  ADD CONSTRAINT `kinerja_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD CONSTRAINT `pekerjaan_id_kategori_pekerjaan_foreign` FOREIGN KEY (`id_kategori_pekerjaan`) REFERENCES `kategori_pekerjaan` (`id_kategori_pekerjaan`),
  ADD CONSTRAINT `pekerjaan_id_status_pekerjaan_foreign` FOREIGN KEY (`id_status_pekerjaan`) REFERENCES `status_pekerjaan` (`id_status_pekerjaan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
