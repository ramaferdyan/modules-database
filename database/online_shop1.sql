-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2020 pada 03.30
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shop1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_hapus`
--

CREATE TABLE `produk_hapus` (
  `id_brg` int(11) NOT NULL DEFAULT '0',
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(70) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL,
  `tgl_hapus` date DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk_hapus`
--

INSERT INTO `produk_hapus` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`, `tgl_hapus`, `username`) VALUES
(74, 'Keyboard Gaming Corsair V10', 'Keyboard Gaming', 'Aksesoris', 2600000, 10, 'oi3.jpg', '2020-05-06', 'root@localhost'),
(73, 'Keyboard Gaming Corsair V1', 'Keyboard Gaming', 'Aksesoris', 2400000, 6, 'oi1.jpg', '2020-05-06', 'root@localhost'),
(30, 'Laptop Gaming MSI Alpha', 'Laptop Gaming High End', 'Elektronik', 16000000, 20, 'lili.jpg', '2020-05-06', 'root@localhost'),
(56, 'Game Fortnite ', 'Game Fortnite Ps4', 'Permainan', 800000, 20, 'game2.jpg', '2020-06-12', 'root@localhost');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(70) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Laptop Asus ROG', 'Laptop Asus ROG GT31', 'Elektronik', 26000000, 10, 'laptop.jpg'),
(2, 'Laptop Asus Tuf', 'Laptop Asus Tuf Gaming FX505 DT', 'Elektronik', 12000000, 6, 'tuf.jpg'),
(3, 'Laptop Lenovo Legion', 'Laptop Gaming High_End Lenovo ', 'Elektronik', 17000000, 10, 'legion.jpg'),
(4, 'Laptop Gaming MSI', 'Laptop Gaming Murah', 'Elektronik', 14000000, 4, 'msi.jpg'),
(16, 'Laptop Gaming Acer Predator', 'Laptop Gaming Murah', 'Elektronik', 13000000, 21, 'acer.jpg'),
(17, 'Laptop Gaming Acer Triton', 'Laptop Creator dan Gaming', 'Elektronik', 55000000, 5, 'triton.jpg'),
(21, 'Laptop Gaming HP Omen 15', 'Laptop Gaming Creator', 'Elektronik', 18000000, 7, 'omen.jpg'),
(22, 'Laptop Gaming HP Pavillion', 'Laptop Gaming Murah', 'Elektronik', 14000000, 11, 'hp.jpg'),
(23, 'Laptop Asus ROG Zephyrus', 'Laptop Creator dan Gaming', 'Elektronik', 24500000, 4, 'zepy.jpg'),
(25, 'Laptop Lenovo Legion Y7000', 'Laptop Creator dan Gaming', 'Elektronik', 17000000, 7, 'y70001.JPG'),
(26, 'Laptop Gaming Acer Triton 900', 'Laptop Creator dan Gaming', 'Elektronik', 80199000, 3, '900.jpg'),
(31, 'Asus ROG Phone 2', 'Handphone Gaming', 'Handphone', 8000000, 10, 'hz2.jpg'),
(32, 'ZTE Nubia Red Magic', 'Handphone Gaming', 'Handphone', 6600000, 9, 'hz.png'),
(33, 'Razer Phone 2', 'Handphone Gaming', 'Handphone', 12200000, 5, 'razer-phone.jpg'),
(34, 'Xiaomi Black Shark', 'Handphone Gaming', 'Handphone', 8000000, 10, 'shark.jpg'),
(35, 'Iphone 11 Pro', 'Handphone Mahal', 'Handphone', 11000000, 4, 'ip.jpg'),
(40, 'Samsung S10 Pro', 'Handphone Mahal', 'Handphone', 11000000, 8, 'ip11.jpg'),
(41, 'Oppo Find X1', 'Handphone Mahal', 'Handphone', 9500000, 4, 'new5.jpg'),
(42, 'Samsung Galaxy 10', 'Handphone Mahal', 'Handphone', 14000000, 3, 'new7.jpg'),
(43, 'Samsung J7 Plush', 'Handphone Murah', 'Handphone', 6000000, 11, 'new3.jpg'),
(44, 'Vivo Y35', 'Handphone Murah', 'Handphone', 5000000, 21, 'new4.jpg'),
(45, 'Huawaei P30 Pro', 'Handphone Mahal', 'Handphone', 13000000, 5, 'new9.jpg'),
(46, 'Huawaei Y7 Pro', 'Handphone Murah', 'Handphone', 6000000, 10, 'new8.jpg'),
(47, 'God Of War PS4', 'Game God Of War Ps4', 'Permainan', 8000000, 9, 'god11.jpeg'),
(48, 'Dragoin Ball Z Kakarot', 'Game Dragon Ball Ps4', 'Permainan', 855000, 12, 'game9.jpg'),
(49, 'Assasin Creed Odisy', 'Game Assasin Creed Ps4', 'Permainan', 755000, 8, 'game8.jpg'),
(50, 'Player Battleground ', 'Game PUBG Ps4', 'Permainan', 800000, 11, 'game7.jpg'),
(51, 'Red Dead Redeption', 'Game RDR For Ps4', 'Permainan', 900000, 15, 'game6.jpg'),
(52, 'Battlefield 5', 'Game Battlefield 5', 'Permainan', 950000, 22, 'game1.jpg'),
(53, 'Need For Speed Heat', 'Game NFS Heat For PS4', 'Permainan', 950000, 8, 'game3.jpg'),
(54, 'Fifa 2019', 'Game Fifa 2019 For Ps4', 'Permainan', 650000, 20, 'game4.jpg'),
(55, 'Uncharted The Lost', 'Game Uncharted Ps4', 'Permainan', 700000, 9, 'game5.jpg'),
(57, 'Minecraft Story Mode', 'Game Minecraft For Ps4', 'Permainan', 950000, 19, 'game10.jpg'),
(58, 'Star Wars The Last Jedi', 'Game Star Wars For Xbox', 'Permainan', 855000, 13, 'game11.jpg'),
(59, 'Headset Gaming Rexus Vr1', 'Heaset Gamimg Rexus', 'Aksesoris', 500000, 10, 'rex1.jpeg'),
(60, 'Headset Gaming Rexus Y1', 'Heaset Gamimg Rexus', 'Aksesoris', 450000, 11, 'ok1.jpg'),
(61, 'Headset Gaming Rexus X2', 'Heaset Gamimg Rexus', 'Aksesoris', 550000, 12, 'ok3.jpg'),
(62, 'Headset Gaming Rexus F1', 'Heaset Gamimg Rexus', 'Aksesoris', 650000, 5, 'ok4.jpg'),
(63, 'Kursi Gaming Warfaction', 'Kursi Gaming', 'Aksesoris', 1200000, 8, 'kursi.jpg'),
(64, 'Kursi Gaming ST-Racing', 'Kursi Gaming', 'Aksesoris', 2300000, 3, 'yes3.jpg'),
(65, 'Kursi Gaming Rexus ZX1', 'Kursi Gaming', 'Aksesoris', 1500000, 6, 'yes1.jpg'),
(66, 'Kursi Gaming Rexus VR-2', 'Kursi Gaming', 'Aksesoris', 1900000, 2, 'yes2.jpg'),
(67, 'Mouse Rexus R1', 'Gaming Mouse Rexus', 'Aksesoris', 350000, 12, 'rex5.jpg'),
(68, 'Mouse Rexus R2', 'Gaming Mouse Rexus', 'Aksesoris', 250000, 13, 'yoi1.jpg'),
(69, 'Mouse Rexus X4', 'Gaming Mouse Rexus', 'Aksesoris', 450000, 11, 'yoi2.jpg'),
(70, 'Mouse Rexus Wirelles', 'Gaming Mouse Rexus', 'Aksesoris', 300000, 16, 'yoi3.jpg'),
(71, 'Keyboard Gaming Logitech', 'Keyboard Gaming', 'Aksesoris', 1500000, 24, 'log1.jpg'),
(72, 'Keyboard Gaming MSI-K4', 'Keyboard Gaming', 'Aksesoris', 1200000, 18, 'oi2.jpg'),
(73, 'aweaa', 'adad', 'Elektronik', 1200000, 32, '');

--
-- Trigger `tb_barang`
--
DELIMITER $$
CREATE TRIGGER `hapus_barang` AFTER DELETE ON `tb_barang` FOR EACH ROW BEGIN
    insert into produk_hapus
    (id_brg, nama_brg, keterangan, kategori, harga, stok, gambar, tgl_hapus, username)
    values
    (OLD.id_brg, OLD.nama_brg, OLD.keterangan, OLD.kategori, OLD.harga, OLD.stok, OLD.gambar, sysdate(), current_user);

    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Neru Ferdyan', 'Bekasi Jawa Barat', '2020-04-03 15:47:19', '2019-12-03 15:47:19'),
(11, 'Budi', 'Bogor', '2020-04-03 16:34:33', '2020-04-04 16:34:33'),
(14, 'Rama Yagami', 'Purwodadi Kuripan', '2020-04-04 12:57:19', '2020-04-05 12:57:19'),
(15, 'aku', 'kuripan', '2020-04-09 13:57:53', '2020-04-10 13:57:53'),
(16, 'ferdyan sinaga', 'Jl. Mawarsari No.1', '2020-06-12 18:06:48', '2020-06-13 18:06:48'),
(17, 'nerurama', 'JL. Mugas No.2', '2020-06-12 20:21:28', '2020-06-13 20:21:28'),
(18, 'kuririn', 'selowati', '2020-07-02 16:14:04', '2020-07-03 16:14:04'),
(19, 'Halda Fitra', 'sukorejo', '2020-07-02 17:05:06', '2020-07-03 17:05:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 7, 1, 'Laptop Asus ROG', 1, 26000000, ''),
(11, 12, 16, 'Laptop Gaming Acer Predator', 1, 13000000, ''),
(12, 13, 30, 'Laptop Gaming MSI Alpha', 2, 16000000, ''),
(13, 14, 2, 'Laptop Asus Tuf', 1, 12000000, ''),
(14, 14, 70, 'Mouse Rexus Wirelles', 1, 300000, ''),
(15, 14, 48, 'Dragoin Ball Z Kakarot', 1, 855000, ''),
(16, 15, 2, 'Laptop Asus Tuf', 1, 12000000, ''),
(17, 16, 3, 'Laptop Lenovo Legion', 1, 17000000, ''),
(18, 16, 35, 'Iphone 11 Pro', 1, 11000000, ''),
(19, 17, 25, 'Laptop Lenovo Legion Y7000', 1, 17000000, ''),
(20, 18, 3, 'Laptop Lenovo Legion', 1, 17000000, ''),
(21, 19, 47, 'God Of War PS4', 1, 8000000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL,
  `email` varchar(30) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`, `email`, `is_active`, `date_created`) VALUES
(1, 'admin', 'admin', '123', 1, '', 0, 0),
(2, 'user', 'user', '12345', 2, '', 0, 0),
(3, 'Rama', 'Rama Ferdyan', '12345', 2, '', 0, 0),
(4, 'neru yagami', 'neruferdyan', '098765', 2, '', 0, 0),
(6, 'ramacinta', 'ramacintu', '098', 2, 'holicbima@yahoo.com', 0, 0),
(7, 'rina atika', 'rinatika', '0987', 2, 'rinatikas@yahoo.com', 2, 1589534918),
(8, 'erik', 'erika', '543', 2, 'erikta@gmail.com', 0, 1589535025),
(12, 'rama ', 'Rama Yagami', '123', 2, 'holicbima@gmail.com', 0, 1589542623),
(13, 'ramadesu', 'Rama Yagami', '123', 2, 'holicbima@gmail.com', 0, 1589545838),
(15, 'rima ', 'rimawahyu', '098765', 2, 'rimawahyu@gmail.com', 0, 1589965105),
(16, 'Gilang', 'Gilang Oktavian', '12345', 2, 'gilangoktavian@gmail.com', 0, 1593695744),
(17, 'Gilang', 'Gilang Oktavian', '321', 2, 'gilangoktavian@gmail.com', 0, 1593695880),
(18, 'Gilang', 'Gilang Oktavian', '12345', 2, 'holicbima@gmail.com', 0, 1593695978),
(19, 'Halda', 'halda fitra', '098765', 2, 'lucaslowenhart@gmail.com', 0, 1593697002);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(3, 'holicbima@gmail.com', 'vO1/NbKr4MSFX6woYXIhzXHNyCwAxqZnWl7qqHQRibw=', 1589545838),
(5, 'rimawahyu@gmail.com', 'UmZLV3OGgn1+CPMu6I+4/6/9UsR0i86Q+VLIBEJFQl0=', 1589965105),
(6, 'gilangoktavian@gmail.com', 'U2NJC0QsyzmB5RNp5mjqoRuQ/AGLsHpWWtY5fHFp4XA=', 1593695744),
(7, 'gilangoktavian@gmail.com', '+OCFO1xudNniLCAZVPYXAGQlx/mEb9GF9MKooWBpJUk=', 1593695880),
(8, 'holicbima@gmail.com', 'WTsQuA+YXXYGbALJLfRkthlIto9CsJxqY4xYTq5xe/M=', 1593695978),
(9, 'lucaslowenhart@gmail.com', 'X/DYN3lynWu0jhA91hSkniD/7JBtvqZqLzutDmlwy4k=', 1593697002);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
