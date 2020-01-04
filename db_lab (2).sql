-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2020 pada 10.33
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lab`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggaran`
--

CREATE TABLE `anggaran` (
  `id_agr` int(11) NOT NULL,
  `peralatan` varchar(120) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL,
  `sumber` varchar(255) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggaran`
--

INSERT INTO `anggaran` (`id_agr`, `peralatan`, `jumlah`, `satuan`, `harga`, `sumber`, `gambar`) VALUES
(1, 'Komputeraa', 10, '', 8000000, 'basing', ''),
(2, 'pena', 1, '', 1000, 'prodi', 'gadget.jpg'),
(9, 'pena', 2, 'UNIT', 2, '2', ''),
(10, '2', 2, 'UNIT', 2, '2', ''),
(11, '', 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` varchar(350) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `pesan`, `gambar`) VALUES
(2, 'satria', 'xyelea@gmail.com', 'asda', 'gadget1.jpg'),
(3, 'as', 'magiushyouka@gmail.com', 'asdas', 'Screenshot_8.png'),
(4, 'Satria Efriya', 'xyelea@gmail.com', 'kelasB,', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mhs` int(11) NOT NULL,
  `npm` varchar(11) NOT NULL,
  `nama_lengkap` varchar(120) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(120) NOT NULL,
  `kontak` varchar(20) NOT NULL,
  `tempat_lahir` varchar(120) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(120) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mhs`, `npm`, `nama_lengkap`, `alamat`, `email`, `kontak`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `photo`) VALUES
(1, 'G1A018069', 'dak tau ', 'basing', 'ngalir@gmail.com', '081532394055', 'ngalir', '2019-12-09', 'Laki - Laki', ''),
(3, 'asd', 'asdaaa', 'asda', 'asda', 'asdasd', 'asda', '2019-12-18', '', ''),
(4, 'G1A017071', 'dak tau a', 'basinga', 'magiushyouka@gmail.com', '81532394055', 'lahat', '2019-12-19', 'Perempuan', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_matakuliah` varchar(10) NOT NULL,
  `nama_matakuliah` varchar(100) NOT NULL,
  `sks` int(5) NOT NULL,
  `semester` int(10) NOT NULL,
  `dosen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode_matakuliah`, `nama_matakuliah`, `sks`, `semester`, `dosen`) VALUES
('TIF-110', 'Jaringan Komputera', 0, 5, 'aswasd'),
('TIF-111', 'Lingkungan Komputasi', 2, 1, 'Whidia Octoeberza S.t, M.eng'),
('TIF-112', 'Proyek Perangkat Lunak', 0, 5, 'Ferzha Putra Utama S.t, M.eng'),
('TIF-69', 'Kalkulus I', 0, 1, 'deky'),
('TIF-1101', 'jarkom', 3, 2, 'gina');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_akademik`
--

CREATE TABLE `tahun_akademik` (
  `id_thn_akad` int(11) NOT NULL,
  `tahun_akademik` varchar(20) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tahun_akademik`
--

INSERT INTO `tahun_akademik` (`id_thn_akad`, `tahun_akademik`, `semester`, `status`) VALUES
(7, '2019/2020', 'Ganjil', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_asdos`
--

CREATE TABLE `tb_asdos` (
  `id_asdos` int(11) NOT NULL,
  `id_thn_akad` int(10) NOT NULL,
  `npm` varchar(10) NOT NULL,
  `kontak` bigint(12) NOT NULL,
  `kode_matakuliah` varchar(50) NOT NULL,
  `Kelas` varchar(2) NOT NULL,
  `nilai` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_asdos`
--

INSERT INTO `tb_asdos` (`id_asdos`, `id_thn_akad`, `npm`, `kontak`, `kode_matakuliah`, `Kelas`, `nilai`) VALUES
(13, 7, 'G1A018069', 0, 'TIF-111', '', ''),
(14, 7, 'G1A018069', 0, 'TIF-112', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id_nilai` int(11) NOT NULL,
  `npm` varchar(20) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `kelas` varchar(1) NOT NULL,
  `mata_kuliah` varchar(50) NOT NULL,
  `nilai` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_nilai`
--

INSERT INTO `tb_nilai` (`id_nilai`, `npm`, `nama`, `kelas`, `mata_kuliah`, `nilai`) VALUES
(3, 'G1A017077', 'Triska Mardiansyah', 'C', 'asdasasda', 'D');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` enum('kalab','laboran') NOT NULL,
  `blokir` enum('N','Y') NOT NULL,
  `id_session` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `level`, `blokir`, `id_session`) VALUES
(2, 'laboran', '6685f00d07945ccaef2097ce44b9c0d4', 'magiushyouka@gmail.com', 'laboran', 'N', ''),
(3, 'Satria', '477054c78baea7a1242f79d898a2ca46', 'sqlblank@gmail.com', 'kalab', 'N', 'd41d8cd98f00b204e9800998ecf8427e'),
(4, 'Gina', '7df27de84ed79a46d75c7c57ad00f76f', 'ginalaxmiyolanda@gmail.com', 'laboran', 'N', 'd41d8cd98f00b204e9800998ecf8427e'),
(7, 'kalab', '966676a567d83cf0fbeb8cd5c280a589', 'asnadansda', 'kalab', 'Y', 'd41d8cd98f00b204e9800998ecf8427e');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggaran`
--
ALTER TABLE `anggaran`
  ADD PRIMARY KEY (`id_agr`);

--
-- Indeks untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indeks untuk tabel `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  ADD PRIMARY KEY (`id_thn_akad`);

--
-- Indeks untuk tabel `tb_asdos`
--
ALTER TABLE `tb_asdos`
  ADD PRIMARY KEY (`id_asdos`);

--
-- Indeks untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggaran`
--
ALTER TABLE `anggaran`
  MODIFY `id_agr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  MODIFY `id_thn_akad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_asdos`
--
ALTER TABLE `tb_asdos`
  MODIFY `id_asdos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
