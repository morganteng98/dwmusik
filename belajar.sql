-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Okt 2019 pada 02.25
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', 'admin123', 'Admin Bengkel Online'),
(2, 'admin2', 'admin123', 'Morgan Ardianto');

-- --------------------------------------------------------

--
-- Struktur dari tabel `antrian`
--

CREATE TABLE `antrian` (
  `id_antrian` int(11) NOT NULL,
  `plat_nomer` varchar(15) NOT NULL,
  `warna_kendaraan` varchar(100) NOT NULL,
  `waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `antrian`
--

INSERT INTO `antrian` (`id_antrian`, `plat_nomer`, `warna_kendaraan`, `waktu`) VALUES
(19, 'P4841ZO', 'biru', '2019-01-17'),
(20, 'P1234ZO', 'Merah', '2019-10-02'),
(21, 'P1234ZO', 'merah', '2019-10-07'),
(22, 'P1009bn', 'KUNING', '2019-10-07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(3) NOT NULL,
  `hari` varchar(50) DEFAULT NULL,
  `jam_kerja` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `hari`, `jam_kerja`) VALUES
(43, 'Senin-kamis', '07.30-17.00 WIB'),
(44, 'Jumat', '07.00-10.30 WIB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mekanik`
--

CREATE TABLE `mekanik` (
  `id_mekanik` int(7) NOT NULL,
  `nama_mekanik` varchar(50) DEFAULT NULL,
  `no_telepon` varchar(20) DEFAULT NULL,
  `alamat_mk` varchar(100) DEFAULT NULL,
  `username_mk` varchar(20) DEFAULT NULL,
  `password_mk` varchar(20) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mekanik`
--

INSERT INTO `mekanik` (`id_mekanik`, `nama_mekanik`, `no_telepon`, `alamat_mk`, `username_mk`, `password_mk`, `level`) VALUES
(1043, 'Arif Adi', '083847711540', 'Jl Bengawan Solo, Sumbersari', 'Arif Adi', 'arifadi123', 'mekanik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(10) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `tarif`) VALUES
(1, 'Jember', 20000),
(2, 'Lumajang', 20000),
(3, 'Banyuwangi', 20000),
(4, 'Bondowoso', 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(100) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `nomer_telepon` varchar(25) NOT NULL,
  `alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `nomer_telepon`, `alamat_pelanggan`) VALUES
(16, 'morganardianto12@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Morgan Ardianto', '+62853-3043-4053', 'Jl Seruji 002/001 Kalibaru Banyuwangi'),
(17, 'tester@gmail.com', 'f5d1278e8109edd94e1e4197e04873b9', 'Tester', '0812345567', 'Jl Sumatra');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `bukti_pembayaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `bank`, `jumlah`, `tanggal`, `bukti_pembayaran`) VALUES
(28, 59, 'Morgan Ardianto', 'BRI', 270000, '2019-01-16', '20190116232113Salah-satu-bukti-print-pembayaran-pinjaman-PT-Antigo.jpg'),
(29, 60, 'Tester', 'bri', 1000, '2019-10-07', '20191007045457IMG_20190720_100731.png'),
(30, 61, 'hjhj', 'gh', 345454, '2019-10-07', '20191007045715IMG_20190720_100731.png'),
(31, 64, 'Tester', 'adasd', 10000, '2019-10-07', '20191007050340IMG_20190720_100731.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `alamat_pengiriman` varchar(250) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `status_pembelian` varchar(100) NOT NULL DEFAULT 'tertunda',
  `resi_pengiriman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_ongkir`, `alamat_pengiriman`, `nama_kota`, `tarif`, `tanggal_pembelian`, `total_pembelian`, `status_pembelian`, `resi_pengiriman`) VALUES
(59, 16, 1, 'Jln Seruji Kalibaru Banyuwangi\r\n', 'Jember', 20000, '2019-01-16', 270000, 'barang dikirim', '145435136134613'),
(60, 17, 1, 'Jl karimata 78', 'Jember', 20000, '2019-10-07', 670000, 'batal', '0971623'),
(61, 17, 2, 'diski sab', 'Lumajang', 20000, '2019-10-07', 55000, 'sudah kirim pembayaran', ''),
(62, 17, 1, 'diski', 'Jember', 20000, '2019-10-07', 340000, 'tertunda', ''),
(63, 17, 1, 'diski', 'Jember', 20000, '2019-10-07', 520000, 'tertunda', ''),
(64, 17, 1, 'asadasd', 'Jember', 20000, '2019-10-07', 210000, 'barang dikirim', '0971623'),
(65, 17, 1, 'QDISKI', 'Jember', 20000, '2019-10-07', 90000, 'tertunda', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `nama`, `harga`, `jumlah`, `subharga`) VALUES
(42, 1, 16, 'Aki Yuasa', 12000, 2, 24000),
(43, 2, 22, 'Ban', 400000, 1, 400000),
(44, 2, 23, 'Aki Astra', 250000, 1, 250000),
(45, 3, 19, 'Piringan Cakram', 190000, 1, 190000),
(46, 3, 20, 'Piringan Cakram', 460000, 1, 460000),
(47, 4, 22, 'Ban', 400000, 1, 400000),
(48, 5, 21, 'Aki / Accu', 250000, 12, 3000000),
(49, 6, 21, 'Aki / Accu', 250000, 1, 250000),
(50, 7, 23, 'Aki Astra', 250000, 1, 250000),
(51, 8, 23, 'Aki Astra', 250000, 1, 250000),
(52, 8, 21, 'Aki / Accu', 250000, 2, 500000),
(53, 10, 21, 'Aki / Accu', 250000, 1, 250000),
(54, 10, 23, 'Aki Astra', 250000, 1, 250000),
(55, 11, 19, 'Piringan Cakram', 190000, 12, 2280000),
(56, 41, 21, 'Aki / Accu', 250000, 1, 250000),
(57, 42, 19, 'Piringan Cakram', 190000, 1, 190000),
(58, 43, 21, 'Aki / Accu', 250000, 1, 250000),
(59, 44, 23, 'Aki Astra', 250000, 1, 250000),
(60, 45, 21, 'Aki / Accu', 250000, 1, 250000),
(61, 46, 21, 'Aki / Accu', 250000, 1, 250000),
(62, 47, 23, 'Aki Astra', 250000, 1, 250000),
(63, 48, 21, 'Aki / Accu', 250000, 1, 250000),
(64, 49, 23, 'Aki Astra', 250000, 1, 250000),
(65, 50, 29, 'Baher', 35000, 1, 35000),
(66, 51, 21, 'Aki / Accu', 250000, 1, 250000),
(67, 52, 29, 'Baher', 35000, 1, 35000),
(68, 53, 21, 'Aki / Accu', 250000, 1, 250000),
(69, 54, 21, 'Aki / Accu', 250000, 1, 250000),
(70, 55, 29, 'Baher', 35000, 1, 35000),
(71, 56, 21, 'Aki / Accu', 250000, 1, 250000),
(72, 57, 23, 'Aki Astra', 250000, 2, 500000),
(73, 58, 22, 'Ban', 400000, 1, 400000),
(74, 59, 23, 'Aki Astra', 250000, 1, 250000),
(75, 60, 23, 'Aki Astra', 250000, 1, 250000),
(76, 60, 22, 'Ban', 400000, 1, 400000),
(77, 61, 29, 'Baher', 35000, 1, 35000),
(78, 62, 29, 'Baher', 35000, 2, 70000),
(79, 62, 21, 'Aki / Accu', 250000, 1, 250000),
(80, 63, 23, 'Aki Astra', 250000, 1, 250000),
(81, 63, 21, 'Aki / Accu', 250000, 1, 250000),
(82, 64, 19, 'Piringan Cakram', 190000, 1, 190000),
(83, 65, 29, 'Baher', 35000, 1, 35000),
(84, 65, 25, 'Busi', 35000, 1, 35000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jenis_produk` varchar(100) NOT NULL,
  `stok` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `jenis_produk`, `stok`, `foto_produk`, `deskripsi`, `harga_produk`) VALUES
(19, 'Piringan Cakram', 'cakram', 9, 'Piringan_disc_cakram_depan_NINJA_250_karburator.jpg', '								Piringan cakram depan NINJA 250							', 190000),
(20, 'Piringan Cakram', 'cakram', 21, 'Piringan_Cakram_Depan_Pulsar_180_UG4___P200___P220___Enduran.png', '		Piringan Cakram Depan Pulsar		', 460000),
(21, 'Aki / Accu', 'aki', 17, 'KAWASAKI GENUE PART BATTERY FTX9-BS 1741000.jpg', 'Aki Kawasi FTX9', 250000),
(22, 'Ban', 'ban', 20, 'Ban FDR 100 80-17 Sport XR Evo.png', 'Ban FDR 100 80-17 Sport XR Evo', 400000),
(23, 'Aki Astra', 'aki', 2, 'Aki Kering Astra Otopart GTZ-5S For Semua MAtic dan Bebek 180000.jpg', '				Aki Kering Astra				', 250000),
(25, 'Busi', 'Busi', 19, 'Busi_Motor_Brisk_Premium_LGS.png', '		Busi motor		', 35000),
(26, 'Ban Honda Beat', 'ban', 30, 'ban.jpg', '-', 45000),
(27, 'Knalpot Brong', 'knalpot', 23, 'knalpot.jpg', '-', 145000),
(28, 'Radiator', 'radiator', 24, 'Honda Genuine Parts Coolant Air Radiator [08CLA] 27900.jpg', '		-		', 50000),
(29, 'Baher', 'baher', 11, 'IBC High Speed 956000.jpg', '-', 35000),
(30, 'Bearing 99', 'bearing', 19, 'Laher Bearing Roda Depan Tracker KLX 150 25000.jpg', '-', 45000),
(31, 'Spion Beat', 'spion', 12, 'spion.jpg', '-', 45000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `servis`
--

CREATE TABLE `servis` (
  `id_servis` int(10) NOT NULL,
  `nama_jasa` varchar(30) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `harga_jasa` int(10) NOT NULL,
  `jasa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `servis`
--

INSERT INTO `servis` (`id_servis`, `nama_jasa`, `keterangan`, `harga_jasa`, `jasa`) VALUES
(4, 'Ganti oli', '-', 12000, 'Servis Ringan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suplier`
--

CREATE TABLE `suplier` (
  `id_suplier` int(11) NOT NULL,
  `nama_suplier` varchar(30) NOT NULL,
  `alamat_suplier` varchar(100) NOT NULL,
  `notelp_suplier` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `suplier`
--

INSERT INTO `suplier` (`id_suplier`, `nama_suplier`, `alamat_suplier`, `notelp_suplier`) VALUES
(1, 'Arif Adi', 'Jl Bengawan Solo, Sumbersari', '08123456789'),
(2, 'Sandistya Diski A', 'keramat', '08123412'),
(3, 'Hadana Sabilal', 'Arjasa,Jember', '08123412'),
(4, 'Morgan Ardianto', 'Perum Gn Batu , Sumbersari', '+1 555 123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang`
--

CREATE TABLE `tentang` (
  `id_ttg` int(3) NOT NULL,
  `nama_bengkel` varchar(50) DEFAULT NULL,
  `nama_pemilik` varchar(50) DEFAULT NULL,
  `deskripsi` text,
  `no_telepon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tentang`
--

INSERT INTO `tentang` (`id_ttg`, `nama_bengkel`, `nama_pemilik`, `deskripsi`, `no_telepon`) VALUES
(1, 'Bengkel Online', 'Arifabisandismorgan', 'Bengkol merupakan singkatan dari Bengkel Online sebuah website yang melayani penjualana suku cadang dan antrian servis kendaran sepeda motor', '085330434053');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `antrian`
--
ALTER TABLE `antrian`
  ADD PRIMARY KEY (`id_antrian`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `mekanik`
--
ALTER TABLE `mekanik`
  ADD PRIMARY KEY (`id_mekanik`);

--
-- Indeks untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `servis`
--
ALTER TABLE `servis`
  ADD PRIMARY KEY (`id_servis`);

--
-- Indeks untuk tabel `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`id_suplier`);

--
-- Indeks untuk tabel `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`id_ttg`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `antrian`
--
ALTER TABLE `antrian`
  MODIFY `id_antrian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `mekanik`
--
ALTER TABLE `mekanik`
  MODIFY `id_mekanik` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1044;

--
-- AUTO_INCREMENT untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `servis`
--
ALTER TABLE `servis`
  MODIFY `id_servis` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `suplier`
--
ALTER TABLE `suplier`
  MODIFY `id_suplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id_ttg` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
