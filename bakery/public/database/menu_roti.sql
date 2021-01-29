-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jan 2021 pada 16.51
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menu_roti`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-01-26-145825', 'App\\Database\\Migrations\\ProdukRoti', 'default', 'App', 1611673297, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Dina Pratiwi S.Sos', 'Gg. Rumah Sakit No. 690, Blitar 96363, JaTeng', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(2, 'Kamaria Hamima Mardhiyah M.M.', 'Jr. Pasirkoja No. 668, Payakumbuh 98689, KalTeng', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(3, 'Lalita Farah Yulianti S.Sos', 'Gg. Bara Tambar No. 162, Serang 99809, JaTeng', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(4, 'Dina Maya Mandasari', 'Gg. Siliwangi No. 158, Bengkulu 34269, NTB', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(5, 'Zulaikha Ellis Suartini', 'Ki. Basmol Raya No. 588, Batu 12701, SulTra', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(6, 'Embuh Cemeti Pratama', 'Dk. Bah Jaya No. 394, Probolinggo 47005, Banten', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(7, 'Lidya Permata', 'Ds. Dr. Junjunan No. 519, Jambi 28777, KalTim', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(8, 'Adhiarja Sihotang', 'Ds. Thamrin No. 957, Tegal 96120, Riau', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(9, 'Ina Yuniar', 'Psr. Antapani Lama No. 243, Malang 97223, Lampung', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(10, 'Cinta Anggraini', 'Jr. Pasteur No. 805, Sorong 82855, SulTeng', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(11, 'Enteng Gunarto', 'Dk. Wahidin Sudirohusodo No. 356, Denpasar 35181, Gorontalo', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(12, 'Fitria Novitasari', 'Jln. Reksoninten No. 447, Palu 97522, PapBar', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(13, 'Laila Restu Purwanti S.I.Kom', 'Psr. Jaksa No. 387, Banjarbaru 84593, Riau', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(14, 'Hartana Widodo', 'Dk. Baing No. 668, Pagar Alam 52246, DKI', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(15, 'Nabila Hasanah', 'Jln. Wahidin No. 59, Batam 34504, SulTeng', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(16, 'Gaman Karya Najmudin', 'Kpg. Bakau Griya Utama No. 902, Padangpanjang 61272, KepR', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(17, 'Baktiadi Prayoga', 'Jln. Uluwatu No. 170, Blitar 52282, SumSel', '2021-01-26 10:08:21', '2021-01-26 10:08:21'),
(18, 'Tantri Namaga', 'Jr. Krakatau No. 183, Tebing Tinggi 21295, PapBar', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(19, 'Kani Winarsih', 'Ds. Perintis Kemerdekaan No. 627, Dumai 52182, NTT', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(20, 'Vanya Yuniar S.Psi', 'Gg. Yohanes No. 150, Surakarta 80796, Maluku', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(21, 'Dina Wastuti', 'Jr. B.Agam 1 No. 904, Tebing Tinggi 47002, SulSel', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(22, 'Ilyas Tamba', 'Dk. Gegerkalong Hilir No. 897, Bontang 27582, SumSel', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(23, 'Kayla Agustina', 'Jln. Basuki No. 844, Serang 82508, Jambi', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(24, 'Arsipatra Maryadi', 'Dk. Lada No. 819, Tangerang Selatan 56162, NTB', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(25, 'Darsirah Permadi', 'Gg. Teuku Umar No. 699, Payakumbuh 98417, SulSel', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(26, 'Kamila Hassanah', 'Ki. Padma No. 640, Cirebon 22290, SulSel', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(27, 'Intan Rahmawati S.Pd', 'Jln. Baja Raya No. 626, Parepare 78141, MalUt', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(28, 'Bajragin Endra Suwarno', 'Jr. Honggowongso No. 210, Cilegon 91079, MalUt', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(29, 'Lurhur Budi Najmudin S.Gz', 'Psr. Suharso No. 698, Malang 28149, Riau', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(30, 'Ihsan Firmansyah', 'Gg. Kusmanto No. 8, Sukabumi 93860, Bali', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(31, 'Raden Wasita', 'Ki. Suniaraja No. 295, Bogor 95803, DIY', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(32, 'Liman Saptono', 'Ds. Dipatiukur No. 919, Solok 97212, JaBar', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(33, 'Shakila Pudjiastuti', 'Ki. Taman No. 351, Tasikmalaya 85480, SulBar', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(34, 'Mala Laksmiwati', 'Dk. Dago No. 784, Malang 31066, KalSel', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(35, 'Siska Susanti M.M.', 'Gg. Gatot Subroto No. 108, Palembang 24662, BaBel', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(36, 'Tasnim Sidiq Waluyo M.Pd', 'Gg. Warga No. 429, Kendari 51023, SumBar', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(37, 'Aslijan Winarno', 'Jln. Tambun No. 291, Lhokseumawe 21474, Banten', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(38, 'Kawaca Tampubolon', 'Ds. Bayam No. 55, Mataram 63027, PapBar', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(39, 'Dwi Wardaya Siregar S.Farm', 'Dk. Raya Ujungberung No. 294, Jayapura 83106, Riau', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(40, 'Umaya Adika Permadi M.M.', 'Kpg. Merdeka No. 241, Administrasi Jakarta Barat 99370, DIY', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(41, 'Fitriani Prastuti', 'Jln. Salak No. 352, Banda Aceh 55255, SumSel', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(42, 'Siti Ika Pudjiastuti S.Kom', 'Jln. Kali No. 806, Pekanbaru 62078, SulSel', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(43, 'Balangga Saptono', 'Ds. Imam No. 756, Tidore Kepulauan 44982, Bali', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(44, 'Wirda Novitasari', 'Jr. Abdul. Muis No. 59, Magelang 99590, KepR', '2021-01-26 10:08:22', '2021-01-26 10:08:22'),
(45, 'Halima Cinta Suartini S.I.Kom', 'Gg. Wahid Hasyim No. 363, Padangpanjang 65082, NTT', '2021-01-26 10:08:23', '2021-01-26 10:08:23'),
(46, 'Yani Wastuti', 'Dk. Baja Raya No. 732, Binjai 70425, JaTeng', '2021-01-26 10:08:23', '2021-01-26 10:08:23'),
(47, 'Vanesa Utami S.Ked', 'Ki. Baabur Royan No. 514, Jayapura 46014, BaBel', '2021-01-26 10:08:23', '2021-01-26 10:08:23'),
(48, 'Fitriani Namaga', 'Jln. Katamso No. 28, Administrasi Jakarta Timur 21209, NTT', '2021-01-26 10:08:23', '2021-01-26 10:08:23'),
(49, 'Rahayu Wulandari', 'Jln. Tambak No. 444, Probolinggo 88135, KalBar', '2021-01-26 10:08:23', '2021-01-26 10:08:23'),
(50, 'Jail Maryadi', 'Jln. Ters. Jakarta No. 234, Madiun 85578, DKI', '2021-01-26 10:08:23', '2021-01-26 10:08:23'),
(51, 'Anastasia Rahimah S.Gz', 'Jln. Bahagia  No. 325, Sabang 26199, DKI', '2021-01-26 11:24:30', '2021-01-26 11:24:30'),
(52, 'Sarah Winarsih M.Farm', 'Dk. Bah Jaya No. 690, Bima 22286, KalTim', '2021-01-26 11:24:30', '2021-01-26 11:24:30'),
(53, 'Rini Zulaika', 'Kpg. Moch. Yamin No. 968, Banjarmasin 52204, BaBel', '2021-01-26 11:24:30', '2021-01-26 11:24:30'),
(54, 'Luthfi Simanjuntak', 'Jln. Yos Sudarso No. 628, Sabang 10626, Aceh', '2021-01-26 11:24:30', '2021-01-26 11:24:30'),
(55, 'Lintang Aryani S.Sos', 'Dk. Ters. Jakarta No. 792, Padang 38653, MalUt', '2021-01-26 11:24:30', '2021-01-26 11:24:30'),
(56, 'Nyoman Candrakanta Waskita S.Farm', 'Ds. Umalas No. 269, Payakumbuh 59291, Maluku', '2021-01-26 11:24:30', '2021-01-26 11:24:30'),
(57, 'Sidiq Nashiruddin', 'Ds. Banal No. 448, Probolinggo 83050, JaBar', '2021-01-26 11:24:30', '2021-01-26 11:24:30'),
(58, 'Zaenab Astuti S.E.I', 'Ki. Salam No. 547, Gorontalo 52433, Papua', '2021-01-26 11:24:30', '2021-01-26 11:24:30'),
(59, 'Chelsea Puput Sudiati', 'Dk. Abang No. 435, Tangerang Selatan 40518, BaBel', '2021-01-26 11:24:30', '2021-01-26 11:24:30'),
(60, 'Candrakanta Pranowo', 'Dk. Teuku Umar No. 492, Sukabumi 84428, SumUt', '2021-01-26 11:24:30', '2021-01-26 11:24:30'),
(61, 'Banara Kadir Dongoran S.H.', 'Ki. Dago No. 805, Tanjungbalai 45806, Gorontalo', '2021-01-26 11:24:30', '2021-01-26 11:24:30'),
(62, 'Puspa Nasyidah', 'Jln. Gambang No. 526, Depok 66932, Bali', '2021-01-26 11:24:30', '2021-01-26 11:24:30'),
(63, 'Nabila Tira Halimah', 'Dk. Setiabudhi No. 953, Mojokerto 54064, Gorontalo', '2021-01-26 11:24:30', '2021-01-26 11:24:30'),
(64, 'Alambana Ega Santoso S.Farm', 'Psr. Kyai Gede No. 641, Batam 39761, Riau', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(65, 'Karen Safitri', 'Ds. Bakin No. 688, Makassar 57172, Maluku', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(66, 'Kani Wijayanti', 'Ds. Adisumarmo No. 163, Banjar 86095, SulBar', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(67, 'Wirda Paramita Pratiwi', 'Ki. Raya Setiabudhi No. 221, Administrasi Jakarta Utara 89688, SulBar', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(68, 'Garang Nashiruddin', 'Ds. Wahidin Sudirohusodo No. 880, Administrasi Jakarta Barat 99547, Bali', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(69, 'Garan Ardianto M.Pd', 'Jln. Sudirman No. 7, Sorong 25549, Riau', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(70, 'Hesti Laksmiwati', 'Jln. Yohanes No. 927, Singkawang 94306, SumUt', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(71, 'Jelita Nurul Novitasari', 'Psr. Baladewa No. 264, Probolinggo 23667, SulTra', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(72, 'Mulya Wahyu Hidayat S.Ked', 'Ds. Ters. Buah Batu No. 417, Padangpanjang 30603, NTT', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(73, 'Zulfa Hassanah', 'Kpg. Basoka Raya No. 270, Dumai 26048, KepR', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(74, 'Bella Karen Usamah', 'Dk. Yos Sudarso No. 5, Tomohon 69112, SulUt', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(75, 'Rahman Halim', 'Jln. Camar No. 110, Tasikmalaya 65144, Lampung', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(76, 'Farhunnisa Permata S.E.I', 'Gg. Basoka No. 403, Parepare 37718, SumBar', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(77, 'Liman Mumpuni Saptono S.Kom', 'Kpg. Bara Tambar No. 68, Padang 72424, KalTeng', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(78, 'Zelda Mila Hassanah', 'Ki. Surapati No. 505, Padangpanjang 66196, Jambi', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(79, 'Rahmi Rahmi Rahayu', 'Kpg. Barat No. 906, Sorong 98215, KalUt', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(80, 'Syahrini Salimah Puspasari', 'Gg. Babadan No. 28, Pariaman 28261, Aceh', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(81, 'Fathonah Pratiwi S.Psi', 'Psr. Asia Afrika No. 511, Yogyakarta 72161, PapBar', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(82, 'Maimunah Kusmawati', 'Kpg. Gatot Subroto No. 908, Gorontalo 88779, Aceh', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(83, 'Kasim Mandala', 'Ds. Kalimalang No. 346, Pariaman 13979, SulTeng', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(84, 'Malik Kardi Sihombing', 'Ki. Warga No. 371, Solok 41909, JaTeng', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(85, 'Cemeti Indra Permadi', 'Jr. Sugiono No. 905, Sorong 31466, SulTeng', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(86, 'Ade Lukman Nababan', 'Kpg. Salatiga No. 907, Yogyakarta 45152, SumUt', '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(87, 'Kamaria Pudjiastuti', 'Ds. Sunaryo No. 927, Palangka Raya 83128, JaTim', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(88, 'Irnanto Nugroho', 'Ki. PHH. Mustofa No. 787, Administrasi Jakarta Timur 73118, Lampung', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(89, 'Prakosa Januar', 'Jln. Cihampelas No. 146, Padangpanjang 71468, DIY', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(90, 'Ibrahim Manullang', 'Ki. Padang No. 464, Surabaya 10734, SumUt', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(91, 'Yuliana Wijayanti', 'Gg. Industri No. 327, Depok 22175, SumSel', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(92, 'Baktiadi Pratama S.Sos', 'Dk. Tubagus Ismail No. 403, Probolinggo 74712, SulTeng', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(93, 'Estiono Gamani Saragih', 'Ds. M.T. Haryono No. 838, Sabang 85490, Aceh', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(94, 'Liman Situmorang', 'Jr. Muwardi No. 938, Semarang 14329, Gorontalo', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(95, 'Clara Wahyuni', 'Psr. Babadak No. 26, Sawahlunto 81110, SulUt', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(96, 'Ifa Elma Utami', 'Jr. Ronggowarsito No. 89, Tebing Tinggi 65674, SumBar', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(97, 'Latika Andriani', 'Jln. Aceh No. 668, Tidore Kepulauan 76631, JaTim', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(98, 'Jessica Suartini S.Farm', 'Gg. Hang No. 83, Singkawang 84276, Maluku', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(99, 'Arta Tasnim Tarihoran', 'Jr. Baya Kali Bungur No. 186, Solok 69427, JaTeng', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(100, 'Legawa Tamba', 'Psr. Abdul. Muis No. 699, Pasuruan 39931, JaTeng', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(101, 'Bahuwirya Anggriawan', 'Dk. Cikapayang No. 975, Banjarbaru 75740, Gorontalo', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(102, 'Victoria Hartati', 'Ds. Mulyadi No. 891, Depok 27433, KepR', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(103, 'Edison Maryadi', 'Kpg. Baan No. 178, Tangerang 73302, SulTra', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(104, 'Mahmud Manah Adriansyah M.Kom.', 'Dk. Bakau Griya Utama No. 373, Magelang 39446, KepR', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(105, 'Novi Novitasari', 'Kpg. Kalimantan No. 910, Banjar 35653, Papua', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(106, 'Zalindra Purnawati', 'Gg. Setiabudhi No. 19, Palopo 14728, SumBar', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(107, 'Darmana Luhung Sihombing', 'Jln. Antapani Lama No. 718, Probolinggo 74830, JaBar', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(108, 'Yuliana Usamah', 'Gg. Bakin No. 768, Blitar 47935, NTT', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(109, 'Baktiadi Wahyudin', 'Jln. Urip Sumoharjo No. 959, Bekasi 39848, SumSel', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(110, 'Jumari Himawan Sinaga', 'Kpg. Achmad No. 399, Tegal 34161, SulTra', '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(111, 'Muhammad Tamba', 'Kpg. Gading No. 463, Jambi 24413, KalTeng', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(112, 'Eli Wahyuni', 'Jln. Basuki Rahmat  No. 506, Gorontalo 82155, Maluku', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(113, 'Iriana Nuraini', 'Gg. Setiabudhi No. 435, Cimahi 24910, PapBar', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(114, 'Karna Jarwi Mahendra', 'Kpg. Zamrud No. 66, Pariaman 30110, Banten', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(115, 'Lutfan Adriansyah', 'Ds. Banal No. 127, Tidore Kepulauan 96356, Lampung', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(116, 'Indah Mayasari', 'Kpg. Sutami No. 66, Manado 57080, DIY', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(117, 'Kezia Riyanti', 'Gg. Rajiman No. 111, Sukabumi 32058, KalTim', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(118, 'Setya Widodo', 'Jln. Gegerkalong Hilir No. 164, Sibolga 64365, SumBar', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(119, 'Kasiyah Ophelia Riyanti S.H.', 'Jln. Surapati No. 629, Padang 40509, SulSel', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(120, 'Rafid Saadat Situmorang', 'Kpg. Bakaru No. 553, Sungai Penuh 91305, SulTeng', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(121, 'Karta Saefullah', 'Kpg. Baranang No. 205, Singkawang 33874, SulBar', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(122, 'Mursinin Marpaung S.Pt', 'Gg. Banal No. 329, Tebing Tinggi 44220, SumBar', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(123, 'Ayu Rina Winarsih', 'Gg. Basuki Rahmat  No. 449, Denpasar 52624, DKI', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(124, 'Balijan Siregar', 'Psr. Rajawali No. 631, Palangka Raya 54264, SumUt', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(125, 'Erik Ardianto', 'Psr. B.Agam Dlm No. 714, Bima 66169, KalTim', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(126, 'Anastasia Namaga S.Gz', 'Ds. Sutarto No. 83, Makassar 87162, BaBel', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(127, 'Cakrabuana Lurhur Waskita S.H.', 'Ds. Jagakarsa No. 220, Tidore Kepulauan 62872, JaTim', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(128, 'Estiawan Anggriawan', 'Jr. Pacuan Kuda No. 827, Malang 14690, SulTra', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(129, 'Darsirah Pratama', 'Gg. Flores No. 158, Parepare 54925, NTT', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(130, 'Jono Thamrin', 'Gg. Flores No. 123, Samarinda 67109, SulBar', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(131, 'Raihan Prayoga', 'Ds. Pasteur No. 787, Denpasar 96206, PapBar', '2021-01-26 11:24:33', '2021-01-26 11:24:33'),
(132, 'Siti Carla Maryati M.M.', 'Ds. Bayan No. 877, Semarang 67063, KalUt', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(133, 'Irwan Thamrin', 'Psr. S. Parman No. 495, Langsa 31623, SulUt', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(134, 'Natalia Susanti', 'Jr. Ters. Kiaracondong No. 877, Subulussalam 42786, Papua', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(135, 'Bahuwarna Firmansyah', 'Psr. Wahid No. 575, Ternate 79896, BaBel', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(136, 'Daniswara Wibisono', 'Kpg. Baranang Siang Indah No. 549, Bitung 89100, BaBel', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(137, 'Yuni Agustina S.E.', 'Psr. Ir. H. Juanda No. 430, Pasuruan 54506, Maluku', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(138, 'Taswir Dabukke', 'Jr. Yoga No. 274, Administrasi Jakarta Barat 63144, SulTra', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(139, 'Harimurti Jatmiko Damanik', 'Jln. Moch. Ramdan No. 887, Payakumbuh 39115, KalTim', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(140, 'Kemal Harjaya Najmudin S.Farm', 'Dk. Banceng Pondok No. 31, Cirebon 26520, KalUt', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(141, 'Maya Vanesa Susanti', 'Psr. Peta No. 146, Sorong 21316, Gorontalo', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(142, 'Victoria Astuti', 'Jr. Rajiman No. 145, Kediri 84160, Jambi', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(143, 'Vanesa Vicky Wastuti', 'Gg. Baiduri No. 700, Palu 25571, PapBar', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(144, 'Sari Anita Mardhiyah', 'Gg. Warga No. 167, Bengkulu 13348, KalTeng', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(145, 'Zelaya Hassanah M.Farm', 'Ki. Sugiyopranoto No. 846, Pontianak 97969, SumBar', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(146, 'Puji Zulaika', 'Ds. Sadang Serang No. 353, Sungai Penuh 42651, SumSel', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(147, 'Yuliana Gabriella Hasanah', 'Dk. Pahlawan No. 781, Gunungsitoli 67838, PapBar', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(148, 'Hasta Prayogo Maryadi S.Gz', 'Ds. Wahid Hasyim No. 600, Bandar Lampung 16533, Jambi', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(149, 'Kayla Riyanti S.IP', 'Kpg. Cikutra Barat No. 628, Pematangsiantar 57686, Banten', '2021-01-26 11:24:34', '2021-01-26 11:24:34'),
(150, 'Ika Anita Rahimah', 'Dk. Diponegoro No. 796, Administrasi Jakarta Barat 90037, SulUt', '2021-01-26 11:24:34', '2021-01-26 11:24:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roti`
--

CREATE TABLE `roti` (
  `id` int(11) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sampul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `roti`
--

INSERT INTO `roti` (`id`, `jenis`, `slug`, `nama`, `harga`, `stock`, `created_at`, `updated_at`, `sampul`) VALUES
(30, 'BREADS BAKERY', 'long-jon-coklat', 'Long jon coklat', 'Rp 7.500', 12, '2021-01-29 01:55:35', '2021-01-29 01:55:35', '1611906935_3c835a94ea9acc28fcab.jpg'),
(31, 'BREADS BAKERY', 'long-jon-keju', 'long jon keju', 'Rp 7.500', 10, '2021-01-29 02:07:38', '2021-01-29 02:07:38', '1611907658_ed30ead1f67f3b24b3ca.jpg'),
(32, 'BREADS BAKERY', 'choco-stick', 'Choco stick', 'Rp 3.500', 20, '2021-01-29 02:08:19', '2021-01-29 02:08:19', '1611907699_87a1d88fd4151249b34d.jpg'),
(33, 'BREADS BAKERY', 'bolen-coklat', 'Bolen coklat', 'Rp 7.500', 50, '2021-01-29 02:08:55', '2021-01-29 02:08:55', '1611907735_cd53f6ae95d43e0b8186.jpg'),
(34, 'BREADS BAKERY', 'bolen-keju', 'Bolen Keju', 'Rp 7.500', 35, '2021-01-29 02:09:39', '2021-01-29 02:09:39', '1611907779_a3a028ac296cd5d6eb38.jpg'),
(35, 'BREADS BAKERY', 'double-cheese', 'Double Cheese', 'Rp 12.000', 40, '2021-01-29 02:10:25', '2021-01-29 02:10:25', '1611907825_73d6e24792bd4f65c2e9.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roti`
--
ALTER TABLE `roti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT untuk tabel `roti`
--
ALTER TABLE `roti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
