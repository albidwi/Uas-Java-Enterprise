-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27 Des 2016 pada 03.54
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `klinik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE IF NOT EXISTS `dokter` (
  `kd_dokter` varchar(4) NOT NULL,
  `nm_dokter` varchar(40) NOT NULL,
  `jeniskelamin` varchar(12) NOT NULL,
  `specialist` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `tlp` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`kd_dokter`, `nm_dokter`, `jeniskelamin`, `specialist`, `alamat`, `tlp`, `password`) VALUES
('d4', 'kupak', 'Laki-Laki', 'ac', 'ddd', '222', 'aaa'),
('d5', 'aa', 'Laki-Laki', 'aa', 'aa', 'aaa', 'cccc'),
('D50', 'Suparman', 'Laki-Laki', 'Jantung', 'JL sd Inpres', '0813', 'salambambu'),
('d8', 'aa', 'Laki-Laki', 'cc', 'ccc', '3333', 'ccc'),
('d88', 'aa', 'Laki-Laki', 'aaa', 'aa', '222', 'aaa'),
('d90', 'aceng', 'Laki-Laki', 'bbb', 'aaa', '444', '666');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE IF NOT EXISTS `obat` (
  `kd_obat` varchar(10) NOT NULL,
  `nm_obat` varchar(25) DEFAULT NULL,
  `jenisobat` enum('kapsul','cair','tablet') NOT NULL,
  `tglkadaluarsa` varchar(14) NOT NULL,
  `harga` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`kd_obat`, `nm_obat`, `jenisobat`, `tglkadaluarsa`, `harga`) VALUES
('b1', 'insana', 'kapsul', '2016-11-03', '21000'),
('b2', 'aa', 'tablet', '2017-12-04', '25000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE IF NOT EXISTS `pasien` (
  `kd_pasien` varchar(4) NOT NULL,
  `nm_pasien` varchar(20) NOT NULL,
  `jeniskelamin` varchar(12) NOT NULL,
  `up` varchar(22) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tlp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`kd_pasien`, `nm_pasien`, `jeniskelamin`, `up`, `alamat`, `tlp`) VALUES
('p1', 'Andien', 'Perempuan', '22', 'ggg', '222');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resep`
--

CREATE TABLE IF NOT EXISTS `resep` (
`index` int(11) NOT NULL,
  `kd_resep` varchar(4) NOT NULL,
  `kd_dokter` varchar(4) NOT NULL,
  `kd_pasien` varchar(4) NOT NULL,
  `jp` varchar(22) NOT NULL,
  `tglresep` varchar(14) NOT NULL,
  `kd_obat` varchar(4) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `resep`
--

INSERT INTO `resep` (`index`, `kd_resep`, `kd_dokter`, `kd_pasien`, `jp`, `tglresep`, `kd_obat`) VALUES
(1, 'r5', 'd4', 'p1', 'aaa', '2016-11-19', 'b1'),
(2, 'r5', 'd4', 'p1', 'aaa', '2016-11-19', 'b2'),
(3, 'r5', 'd4', 'p1', 'ccc', '2016-11-19', 'b2'),
(4, 'r6', 'd4', 'p1', 'Gondok', '2016-10-10', 'b1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
 ADD PRIMARY KEY (`kd_dokter`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
 ADD PRIMARY KEY (`kd_obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
 ADD PRIMARY KEY (`kd_pasien`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
 ADD PRIMARY KEY (`index`), ADD KEY `kd_obat` (`kd_obat`), ADD KEY `kd_obat_2` (`kd_obat`), ADD KEY `kd_dokter` (`kd_dokter`), ADD KEY `kd_pasien` (`kd_pasien`), ADD KEY `kd_obat_3` (`kd_obat`), ADD KEY `kd_dokter_2` (`kd_dokter`), ADD KEY `kd_pasien_2` (`kd_pasien`), ADD KEY `kd_obat_4` (`kd_obat`), ADD KEY `kd_dokter_3` (`kd_dokter`), ADD KEY `kd_pasien_3` (`kd_pasien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `resep`
--
ALTER TABLE `resep`
MODIFY `index` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `resep`
--
ALTER TABLE `resep`
ADD CONSTRAINT `resep_ibfk_1` FOREIGN KEY (`kd_obat`) REFERENCES `obat` (`kd_obat`),
ADD CONSTRAINT `resep_ibfk_2` FOREIGN KEY (`kd_pasien`) REFERENCES `pasien` (`kd_pasien`),
ADD CONSTRAINT `resep_ibfk_3` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
