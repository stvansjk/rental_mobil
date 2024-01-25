-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Des 2017 pada 14.13
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(255) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`) VALUES
(1, 'Diki Alfarabi Hadi', 'admin', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kostumer`
--

CREATE TABLE `kostumer` (
  `kostumer_id` int(11) NOT NULL,
  `kostumer_nama` varchar(255) NOT NULL,
  `kostumer_alamat` text NOT NULL,
  `kostumer_jk` varchar(10) NOT NULL,
  `kostumer_hp` varchar(20) NOT NULL,
  `kostumer_ktp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kostumer`
--

INSERT INTO `kostumer` (`kostumer_id`, `kostumer_nama`, `kostumer_alamat`, `kostumer_jk`, `kostumer_hp`, `kostumer_ktp`) VALUES
(2, 'Zainal Abidin', 'Jl. gagak putih no 627, medan . Indonesia', 'L', '082737373787', '998798798798'),
(3, 'Marlon Suwanggai ', 'Jl. supapa no.23 , Bekasi. Indonesia', 'L', '081234554443', '434534343434'),
(4, 'Muhammad Zainal', 'jl. merpati putih 2. no.66 , Indonesia', 'L', '081212121212', '232323232330'),
(5, 'Ratna Dewi', 'Jl. ampera selatan. no. 67 , jawa barat, indonesia', 'L', '081112122219', '232231131313'),
(6, 'Samsul Bahri', 'jl. peletok. jawa timur. indonesia', 'L', '081212221221', '876876876786'),
(7, 'Diki Alfarabi Hadi', 'jl. badak utara. no.123, aceh, indonesia', 'L', '081221222212', '876876876876');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `mobil_id` int(11) NOT NULL,
  `mobil_merk` varchar(30) NOT NULL,
  `mobil_plat` varchar(20) NOT NULL,
  `mobil_warna` varchar(30) NOT NULL,
  `mobil_tahun` int(11) NOT NULL,
  `mobil_status` int(11) NOT NULL COMMENT '1 = tersedia, 2 = di pinjam'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`mobil_id`, `mobil_merk`, `mobil_plat`, `mobil_warna`, `mobil_tahun`, `mobil_status`) VALUES
(2, 'Toyota Avanza', 'B 7777 xx', 'Hitam Metalik', 2018, 1),
(3, 'Honda Brio', 'B 1111 AA', 'Putih Mutiara', 2016, 1),
(4, 'Toyota Fortuner', 'BK 2222 XX', 'Hitam Metalik', 2017, 1),
(5, 'Suzuki Swift', 'B 2333 B', 'Putih', 2016, 1),
(6, 'Toyota Innova', 'B 1222 BB', 'Hitam', 2015, 1),
(7, 'Toyota Agya', 'B 6666 B', 'Putih', 2017, 1),
(8, 'Daihatsu Xenia', 'B 6666 GG', 'Hitam', 2017, 1),
(9, 'Honda HR-V', 'B 123 NN', 'Hitam Metalik', 2017, 1),
(10, 'Suzuki Ertiga', 'BG 7777 HG', 'Putih', 2017, 1),
(11, 'Daihatsu Sigra', 'B 7767 B', 'Biru Muda', 2017, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_karyawan` int(11) NOT NULL,
  `transaksi_kostumer` int(11) NOT NULL,
  `transaksi_mobil` int(11) NOT NULL,
  `transaksi_tgl_pinjam` date NOT NULL,
  `transaksi_tgl_kembali` date NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  `transaksi_denda` int(11) NOT NULL,
  `transaksi_tgl` date NOT NULL,
  `transaksi_totaldenda` int(11) NOT NULL,
  `transaksi_status` int(11) NOT NULL,
  `transaksi_tgldikembalikan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_karyawan`, `transaksi_kostumer`, `transaksi_mobil`, `transaksi_tgl_pinjam`, `transaksi_tgl_kembali`, `transaksi_harga`, `transaksi_denda`, `transaksi_tgl`, `transaksi_totaldenda`, `transaksi_status`, `transaksi_tgldikembalikan`) VALUES
(1, 1, 2, 5, '2017-10-29', '2017-10-31', 500000, 100000, '2017-10-29', 200000, 1, '2017-11-02'),
(2, 1, 3, 2, '2017-10-29', '2017-10-30', 100000, 200000, '2017-10-30', 0, 1, '2017-10-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `kostumer`
--
ALTER TABLE `kostumer`
  ADD PRIMARY KEY (`kostumer_id`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`mobil_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kostumer`
--
ALTER TABLE `kostumer`
  MODIFY `kostumer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `mobil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
