-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jan 2025 pada 08.15
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pembelajaran_kitab_kuning`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bab_kitab`
--

CREATE TABLE `bab_kitab` (
  `id_bab_kitab` int(11) NOT NULL,
  `id_kitab` int(11) NOT NULL,
  `judul_bab_kitab` varchar(255) NOT NULL,
  `urutan_bab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bab_kitab`
--

INSERT INTO `bab_kitab` (`id_bab_kitab`, `id_kitab`, `judul_bab_kitab`, `urutan_bab`) VALUES
(2, 3, 'Pendahuluan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi_kitab`
--

CREATE TABLE `isi_kitab` (
  `id_isi_kitab` int(11) NOT NULL,
  `id_bab` int(11) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kitab`
--

CREATE TABLE `kitab` (
  `id_kitab` int(11) NOT NULL,
  `nama_kitab` varchar(255) NOT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `jumlah_dibaca` int(11) DEFAULT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kitab`
--

INSERT INTO `kitab` (`id_kitab`, `nama_kitab`, `pengarang`, `jumlah_dibaca`, `dibuat_pada`) VALUES
(3, 'pengurusan jenazah ', 'alm. KH. Abdurrahman Nawi', 0, '2025-01-13 15:29:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `isi_log` text NOT NULL,
  `tgl_log` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','pengguna') NOT NULL,
  `foto` text NOT NULL,
  `is_active` int(1) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `email`, `password`, `role`, `foto`, `is_active`, `dibuat_pada`) VALUES
(1, 'Churul Ain Yahya', 'hurul2104@gmail.com', '$2y$10$P3E5eYX.1Ev9LvofreAICO68miyvOh8lCHQKwPJHLNHbqHDwnKbSG', 'admin', '6788ad08db0a6_1737010440_default.jpg', 0, '2025-01-16 13:52:23'),
(2, 'Andri Firman Saputra', 'andrifirmansaputra1@gmail.com', '$2y$10$bTQCDif9ykRqt74tbLPPqO1jllERRN2/deLi2AxwlKSyTmDkBOwCu', 'pengguna', 'default.jpg', 0, '2025-01-16 15:45:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bab_kitab`
--
ALTER TABLE `bab_kitab`
  ADD PRIMARY KEY (`id_bab_kitab`),
  ADD KEY `id_kitab` (`id_kitab`);

--
-- Indeks untuk tabel `isi_kitab`
--
ALTER TABLE `isi_kitab`
  ADD PRIMARY KEY (`id_isi_kitab`),
  ADD KEY `id_bab` (`id_bab`);

--
-- Indeks untuk tabel `kitab`
--
ALTER TABLE `kitab`
  ADD PRIMARY KEY (`id_kitab`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bab_kitab`
--
ALTER TABLE `bab_kitab`
  MODIFY `id_bab_kitab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `isi_kitab`
--
ALTER TABLE `isi_kitab`
  MODIFY `id_isi_kitab` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kitab`
--
ALTER TABLE `kitab`
  MODIFY `id_kitab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bab_kitab`
--
ALTER TABLE `bab_kitab`
  ADD CONSTRAINT `bab_kitab_ibfk_1` FOREIGN KEY (`id_kitab`) REFERENCES `kitab` (`id_kitab`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `isi_kitab`
--
ALTER TABLE `isi_kitab`
  ADD CONSTRAINT `isi_kitab_ibfk_1` FOREIGN KEY (`id_bab`) REFERENCES `bab_kitab` (`id_bab_kitab`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
