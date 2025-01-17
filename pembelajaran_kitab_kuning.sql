-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jan 2025 pada 18.03
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
  `urutan_bab` int(11) NOT NULL,
  `isi_bab` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bab_kitab`
--

INSERT INTO `bab_kitab` (`id_bab_kitab`, `id_kitab`, `judul_bab_kitab`, `urutan_bab`, `isi_bab`) VALUES
(3, 5, 'Pendahuluan', 1, '<h3><span style=\"font-size: 18px;\"><font color=\"#000000\" style=\"\"><b>Pendahuluan</b></font></span></h3><h3><span style=\"font-size: 14px;\">\r\n</span><p><span style=\"font-size: 14px;\">Pengurusan jenazah adalah salah satu kewajiban fardhu kifayah bagi umat Islam. Artinya, kewajiban ini harus dilakukan oleh sebagian umat Muslim, dan jika tidak ada yang melakukannya, maka seluruh umat berdosa. Proses pengurusan jenazah merupakan bentuk penghormatan terakhir kepada seorang Muslim yang telah meninggal dunia, sesuai dengan ajaran syariat Islam.</span></p><span style=\"font-size: 14px;\">\r\n</span><p><span style=\"font-size: 14px;\">Pengurusan jenazah mencakup beberapa tahapan penting yang dimulai dari memandikan, mengkafani, menshalatkan, hingga menguburkan jenazah. Setiap tahap memiliki tata cara dan ketentuan tertentu yang harus dilakukan dengan penuh keikhlasan, kehati-hatian, dan penghormatan.</span></p><span style=\"font-size: 14px;\">\r\n</span><p><span style=\"font-size: 14px;\">Proses ini juga mengajarkan pentingnya solidaritas, kasih sayang, serta tanggung jawab sosial dalam komunitas Muslim. Selain itu, pengurusan jenazah menjadi pengingat bagi umat Islam akan kefanaan hidup di dunia dan pentingnya mempersiapkan amal untuk kehidupan akhirat.</span><span style=\"font-size: 12px; color: var(--bs-heading-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"font-size: 12px; color: var(--bs-heading-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); text-align: var(--bs-body-text-align);\"><br></span></p><p><img src=\"data:image/jpeg;base64,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\" data-filename=\"download.jpeg\" style=\"width: 189px;\"><span style=\"font-size: 12px; color: var(--bs-heading-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); text-align: var(--bs-body-text-align);\"><br></span></p><p><span style=\"font-size: 12px; color: var(--bs-heading-color); background-color: var(--bs-card-bg); font-family: var(--bs-body-font-family); text-align: var(--bs-body-text-align);\">﻿</span></p></h3><h3><span style=\"font-size: 14px;\"><b>Tahap-Tahap Pengurusan Jenazah dalam Islam</b></span></h3><p><span style=\"font-size: 14px;\">Pengurusan jenazah dalam Islam dilakukan secara berurutan dengan mengikuti syariat yang telah diajarkan. Berikut adalah tahapan-tahapannya:</span></p><h4><span style=\"font-size: 14px;\">1. </span><strong><span style=\"font-size: 14px;\">Memandikan Jenazah</span></strong></h4><ul><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Hukum</span></strong><span style=\"font-size: 14px;\">: Fardhu kifayah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Tata Cara</span></strong><span style=\"font-size: 14px;\">:\r\n</span><ol><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Letakkan jenazah di tempat yang tertutup dan terjaga kehormatannya.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Lepaskan pakaian jenazah, tetapi tetap tutupi auratnya.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Bersihkan tubuh jenazah dari najis, termasuk di bagian kemaluan dengan menggunakan kain atau sarung tangan.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Wudukan jenazah seperti tata cara wudu orang hidup.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Cuci seluruh tubuh jenazah, dimulai dari sisi kanan lalu kiri, sebanyak 1–3 kali atau lebih jika diperlukan.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Gunakan air yang bersih dan suci, serta sabun atau daun bidara jika tersedia.</span></li><span style=\"font-size: 14px;\">\r\n</span></ol><span style=\"font-size: 14px;\">\r\n</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Catatan</span></strong><span style=\"font-size: 14px;\">:\r\n</span><ul><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Jenazah laki-laki dimandikan oleh laki-laki, dan jenazah perempuan oleh perempuan kecuali oleh suami/istri atau mahram.</span></li><span style=\"font-size: 14px;\">\r\n</span></ul><span style=\"font-size: 14px;\">\r\n</span></li><span style=\"font-size: 14px;\">\r\n</span></ul><h4><span style=\"font-size: 14px;\">2. </span><strong><span style=\"font-size: 14px;\">Mengkafani Jenazah</span></strong></h4><ul><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Hukum</span></strong><span style=\"font-size: 14px;\">: Fardhu kifayah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Tata Cara</span></strong><span style=\"font-size: 14px;\">:\r\n</span><ol><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Siapkan kain kafan, biasanya tiga lapis untuk laki-laki dan lima lapis untuk perempuan.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Taburkan wewangian seperti kapur barus atau minyak wangi pada kain kafan.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Letakkan jenazah di atas kain kafan, lalu bungkus jenazah dengan rapi mulai dari kepala hingga kaki.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Ikat bagian ujung-ujung kain kafan untuk memastikan jenazah tertutup rapat.</span></li><span style=\"font-size: 14px;\">\r\n</span></ol><span style=\"font-size: 14px;\">\r\n</span></li><span style=\"font-size: 14px;\">\r\n</span></ul><h4><span style=\"font-size: 14px;\">3. </span><strong><span style=\"font-size: 14px;\">Menshalatkan Jenazah</span></strong></h4><ul><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Hukum</span></strong><span style=\"font-size: 14px;\">: Fardhu kifayah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Tata Cara</span></strong><span style=\"font-size: 14px;\">:\r\n</span><ol><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Letakkan jenazah di depan imam dengan posisi kepala di sebelah kiri imam.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Lakukan shalat jenazah dengan empat takbir tanpa ruku dan sujud:\r\n</span><ul><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Takbir Pertama</span></strong><span style=\"font-size: 14px;\">: Membaca niat dan Al-Fatihah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Takbir Kedua</span></strong><span style=\"font-size: 14px;\">: Membaca shalawat kepada Nabi Muhammad SAW.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Takbir Ketiga</span></strong><span style=\"font-size: 14px;\">: Membaca doa untuk jenazah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Takbir Keempat</span></strong><span style=\"font-size: 14px;\">: Membaca doa untuk umat Muslim dan mendoakan jenazah.</span></li><span style=\"font-size: 14px;\">\r\n</span></ul><span style=\"font-size: 14px;\">\r\n</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Akhiri dengan salam.</span></li><span style=\"font-size: 14px;\">\r\n</span></ol><span style=\"font-size: 14px;\">\r\n</span></li><span style=\"font-size: 14px;\">\r\n</span></ul><h4><span style=\"font-size: 14px;\">4. </span><strong><span style=\"font-size: 14px;\">Menguburkan Jenazah</span></strong></h4><ul><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Hukum</span></strong><span style=\"font-size: 14px;\">: Fardhu kifayah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Tata Cara</span></strong><span style=\"font-size: 14px;\">:\r\n</span><ol><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Gali kubur dengan kedalaman yang cukup, biasanya sesuai syariat untuk mencegah bau dan menjaga kehormatan jenazah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Letakkan jenazah di liang lahad dengan posisi miring ke kanan dan wajah menghadap kiblat.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Tutup liang lahad dengan papan atau material lainnya sebelum ditimbun tanah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Timbun kubur hingga membentuk gundukan setinggi satu jengkal.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Bacakan doa untuk jenazah setelah penguburan selesai.</span></li><span style=\"font-size: 14px;\">\r\n</span></ol><span style=\"font-size: 14px;\">\r\n</span></li><span style=\"font-size: 14px;\">\r\n</span></ul><h4><span style=\"font-size: 14px;\">5. </span><strong><span style=\"font-size: 14px;\">Berdoa dan Bersedekah untuk Jenazah</span></strong></h4><ul><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Setelah penguburan, disunnahkan untuk mendoakan jenazah agar diampuni dosa-dosanya dan diterima amal ibadahnya.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Keluarga jenazah dianjurkan untuk bersedekah dan terus memohonkan doa bagi almarhum.</span></li><span style=\"font-size: 14px;\">\r\n</span></ul><p><span style=\"font-size: 14px;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</span></p><p><span style=\"font-size: 14px;\">Tahapan-tahapan ini mencerminkan keagungan ajaran Islam yang menghormati manusia bahkan setelah kematiannya.</span></p>');

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
(5, 'pengurusan jenazah', 'alm. KH. Abdurrahman Nawi', 0, '2025-01-17 23:01:52');

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

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id_log`, `isi_log`, `tgl_log`, `id_user`) VALUES
(1, 'User andrifirmansaputra1@gmail.com berhasil login!', '2025-01-17 15:55:20', 2),
(2, 'Profile berhasil diperbaharui!', '2025-01-17 15:56:01', 2),
(3, 'Password berhasil diperbaharui!', '2025-01-17 15:56:21', 2),
(4, 'Password berhasil diperbaharui!', '2025-01-17 15:56:26', 2),
(5, 'User andrifirmansaputra1@gmail.com berhasil logout!', '2025-01-17 15:56:32', 2),
(6, 'User hurul2104@gmail.com berhasil login!', '2025-01-17 15:56:49', 1),
(7, 'User andrifirmansaputra1@gmail.com berhasil diubah!', '2025-01-17 15:58:24', 1),
(8, 'User andrifirmansaputra1@gmail.com berhasil diubah!', '2025-01-17 15:58:31', 1),
(9, 'User andrifirmansaputra1@gmail.com berhasil diubah!', '2025-01-17 15:58:35', 1),
(10, 'User andrifirmansaputra1@gmail.com berhasil dihapus!', '2025-01-17 15:58:37', 1),
(11, 'User andrifirmansaputra1@gmail.com gagal ditambahkan!', '2025-01-17 15:59:24', 1),
(12, 'User andrifirmansaputra1@gmail.com berhasil ditambahkan!', '2025-01-17 16:00:25', 1),
(13, 'Kitab pengurusan jenazah  berhasil dihapus!', '2025-01-17 16:01:16', 1),
(14, 'Kitab pengurusan jenazah berhasil ditambahkan!', '2025-01-17 16:01:44', 1),
(15, 'Kitab pengurusan jenazah123 berhasil diubah!', '2025-01-17 16:01:47', 1),
(16, 'Kitab pengurusan jenazah123 berhasil dihapus!', '2025-01-17 16:01:49', 1),
(17, 'Kitab pengurusan jenazah berhasil ditambahkan!', '2025-01-17 16:01:52', 1),
(18, 'Kitab Pendahuluan berhasil ditambahkan!', '2025-01-17 16:02:07', 1),
(19, 'Kitab Pendahuluan gagal dihapus!', '2025-01-17 16:02:13', 1),
(20, 'Bab  Pendahuluan berhasil dihapus!', '2025-01-17 16:05:00', 1),
(21, 'Kitab Pendahuluan berhasil ditambahkan!', '2025-01-17 16:05:05', 1),
(22, 'Kitab Pendahuluan123 gagal diubah!', '2025-01-17 16:07:01', 1),
(23, 'Bab  Pendahuluan berhasil dihapus!', '2025-01-17 16:08:45', 1),
(24, 'Kitab Pendahuluan berhasil ditambahkan!', '2025-01-17 16:08:52', 1),
(25, 'Kitab Pendahuluan123 berhasil diubah!', '2025-01-17 16:08:55', 1),
(26, 'Kitab Pendahuluan123 berhasil diubah!', '2025-01-17 16:08:57', 1),
(27, 'Kitab Pendahuluan berhasil diubah!', '2025-01-17 16:09:39', 1),
(28, 'Bab Pendahuluan1 berhasil diubah!', '2025-01-17 16:10:39', 1),
(29, 'Bab Pendahuluan12 berhasil diubah!', '2025-01-17 16:11:16', 1),
(30, 'Bab Pendahuluan12 berhasil diubah!', '2025-01-17 16:11:40', 1),
(31, 'Bab Pendahuluan berhasil diubah!', '2025-01-17 16:11:44', 1),
(32, 'Bab  Pendahuluan berhasil dihapus!', '2025-01-17 16:26:34', 1),
(33, 'Kitab Pendahuluan gagal ditambahkan!', '2025-01-17 16:30:25', 1),
(34, 'Kitab Pendahuluan berhasil ditambahkan!', '2025-01-17 16:30:40', 1),
(35, 'Kitab Latar belakang berhasil ditambahkan!', '2025-01-17 16:30:49', 1),
(36, 'Kitab tes berhasil ditambahkan!', '2025-01-17 16:31:27', 1),
(37, 'Kitab asd berhasil ditambahkan!', '2025-01-17 16:31:31', 1),
(38, 'Kitab Pendahuluan berhasil ditambahkan!', '2025-01-17 16:33:41', 1),
(39, 'Bab  Pendahuluan berhasil dihapus!', '2025-01-17 16:33:43', 1),
(40, 'Kitab Pendahuluan berhasil ditambahkan!', '2025-01-17 16:42:36', 1),
(41, 'Bab  Pendahuluan berhasil dihapus!', '2025-01-17 16:43:07', 1),
(42, 'Kitab Pendahuluan berhasil ditambahkan!', '2025-01-17 16:44:51', 1),
(43, 'Bab Pendahuluan berhasil diubah!', '2025-01-17 16:53:11', 1),
(44, 'Bab Pendahuluan berhasil diubah!', '2025-01-17 16:54:05', 1),
(45, 'User hurul2104@gmail.com berhasil logout!', '2025-01-17 16:55:08', 1),
(46, 'User andrifirmansaputra1@gmail.com berhasil login!', '2025-01-17 16:55:12', 3),
(47, 'User andrifirmansaputra1@gmail.com berhasil logout!', '2025-01-17 17:02:05', 3),
(48, 'User hurul2104@gmail.com berhasil login!', '2025-01-17 17:02:10', 1),
(49, 'Bab Pendahuluan berhasil diubah!', '2025-01-17 17:03:10', 1);

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
(3, 'Andri Firman Saputra', 'andrifirmansaputra1@gmail.com', '$2y$10$lxOLCcDBfSotPfP.XuZd2elqTqk.Ph7OWl29aSlcESYuThxCiYezK', 'pengguna', '678a7e99ae056_1737129625_65483768.jpeg', 1, '2025-01-17 23:00:25');

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
  MODIFY `id_bab_kitab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kitab`
--
ALTER TABLE `kitab`
  MODIFY `id_kitab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bab_kitab`
--
ALTER TABLE `bab_kitab`
  ADD CONSTRAINT `bab_kitab_ibfk_1` FOREIGN KEY (`id_kitab`) REFERENCES `kitab` (`id_kitab`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
