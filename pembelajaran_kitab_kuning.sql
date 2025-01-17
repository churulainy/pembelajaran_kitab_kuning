-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jan 2025 pada 17.54
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
(3, 5, 'Pendahuluan', 1, '<h3><span style=\"font-size: 14px;\">Pendahuluan</span></h3><h3><span style=\"font-size: 14px;\">\r\n</span><p><span style=\"font-size: 14px;\">Pengurusan jenazah adalah salah satu kewajiban fardhu kifayah bagi umat Islam. Artinya, kewajiban ini harus dilakukan oleh sebagian umat Muslim, dan jika tidak ada yang melakukannya, maka seluruh umat berdosa. Proses pengurusan jenazah merupakan bentuk penghormatan terakhir kepada seorang Muslim yang telah meninggal dunia, sesuai dengan ajaran syariat Islam.</span></p><span style=\"font-size: 14px;\">\r\n</span><p><span style=\"font-size: 14px;\">Pengurusan jenazah mencakup beberapa tahapan penting yang dimulai dari memandikan, mengkafani, menshalatkan, hingga menguburkan jenazah. Setiap tahap memiliki tata cara dan ketentuan tertentu yang harus dilakukan dengan penuh keikhlasan, kehati-hatian, dan penghormatan.</span></p><span style=\"font-size: 14px;\">\r\n</span><p><span style=\"font-size: 14px;\">Proses ini juga mengajarkan pentingnya solidaritas, kasih sayang, serta tanggung jawab sosial dalam komunitas Muslim. Selain itu, pengurusan jenazah menjadi pengingat bagi umat Islam akan kefanaan hidup di dunia dan pentingnya mempersiapkan amal untuk kehidupan akhirat.</span></p><p><br></p></h3><h3><span style=\"font-size: 14px;\">Tahap-Tahap Pengurusan Jenazah dalam Islam</span></h3><p><span style=\"font-size: 14px;\">Pengurusan jenazah dalam Islam dilakukan secara berurutan dengan mengikuti syariat yang telah diajarkan. Berikut adalah tahapan-tahapannya:</span></p><h4><span style=\"font-size: 14px;\">1. </span><strong><span style=\"font-size: 14px;\">Memandikan Jenazah</span></strong></h4><ul><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Hukum</span></strong><span style=\"font-size: 14px;\">: Fardhu kifayah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Tata Cara</span></strong><span style=\"font-size: 14px;\">:\r\n</span><ol><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Letakkan jenazah di tempat yang tertutup dan terjaga kehormatannya.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Lepaskan pakaian jenazah, tetapi tetap tutupi auratnya.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Bersihkan tubuh jenazah dari najis, termasuk di bagian kemaluan dengan menggunakan kain atau sarung tangan.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Wudukan jenazah seperti tata cara wudu orang hidup.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Cuci seluruh tubuh jenazah, dimulai dari sisi kanan lalu kiri, sebanyak 1–3 kali atau lebih jika diperlukan.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Gunakan air yang bersih dan suci, serta sabun atau daun bidara jika tersedia.</span></li><span style=\"font-size: 14px;\">\r\n</span></ol><span style=\"font-size: 14px;\">\r\n</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Catatan</span></strong><span style=\"font-size: 14px;\">:\r\n</span><ul><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Jenazah laki-laki dimandikan oleh laki-laki, dan jenazah perempuan oleh perempuan kecuali oleh suami/istri atau mahram.</span></li><span style=\"font-size: 14px;\">\r\n</span></ul><span style=\"font-size: 14px;\">\r\n</span></li><span style=\"font-size: 14px;\">\r\n</span></ul><h4><span style=\"font-size: 14px;\">2. </span><strong><span style=\"font-size: 14px;\">Mengkafani Jenazah</span></strong></h4><ul><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Hukum</span></strong><span style=\"font-size: 14px;\">: Fardhu kifayah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Tata Cara</span></strong><span style=\"font-size: 14px;\">:\r\n</span><ol><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Siapkan kain kafan, biasanya tiga lapis untuk laki-laki dan lima lapis untuk perempuan.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Taburkan wewangian seperti kapur barus atau minyak wangi pada kain kafan.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Letakkan jenazah di atas kain kafan, lalu bungkus jenazah dengan rapi mulai dari kepala hingga kaki.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Ikat bagian ujung-ujung kain kafan untuk memastikan jenazah tertutup rapat.</span></li><span style=\"font-size: 14px;\">\r\n</span></ol><span style=\"font-size: 14px;\">\r\n</span></li><span style=\"font-size: 14px;\">\r\n</span></ul><h4><span style=\"font-size: 14px;\">3. </span><strong><span style=\"font-size: 14px;\">Menshalatkan Jenazah</span></strong></h4><ul><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Hukum</span></strong><span style=\"font-size: 14px;\">: Fardhu kifayah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Tata Cara</span></strong><span style=\"font-size: 14px;\">:\r\n</span><ol><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Letakkan jenazah di depan imam dengan posisi kepala di sebelah kiri imam.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Lakukan shalat jenazah dengan empat takbir tanpa ruku dan sujud:\r\n</span><ul><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Takbir Pertama</span></strong><span style=\"font-size: 14px;\">: Membaca niat dan Al-Fatihah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Takbir Kedua</span></strong><span style=\"font-size: 14px;\">: Membaca shalawat kepada Nabi Muhammad SAW.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Takbir Ketiga</span></strong><span style=\"font-size: 14px;\">: Membaca doa untuk jenazah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Takbir Keempat</span></strong><span style=\"font-size: 14px;\">: Membaca doa untuk umat Muslim dan mendoakan jenazah.</span></li><span style=\"font-size: 14px;\">\r\n</span></ul><span style=\"font-size: 14px;\">\r\n</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Akhiri dengan salam.</span></li><span style=\"font-size: 14px;\">\r\n</span></ol><span style=\"font-size: 14px;\">\r\n</span></li><span style=\"font-size: 14px;\">\r\n</span></ul><h4><span style=\"font-size: 14px;\">4. </span><strong><span style=\"font-size: 14px;\">Menguburkan Jenazah</span></strong></h4><ul><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Hukum</span></strong><span style=\"font-size: 14px;\">: Fardhu kifayah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><strong><span style=\"font-size: 14px;\">Tata Cara</span></strong><span style=\"font-size: 14px;\">:\r\n</span><ol><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Gali kubur dengan kedalaman yang cukup, biasanya sesuai syariat untuk mencegah bau dan menjaga kehormatan jenazah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Letakkan jenazah di liang lahad dengan posisi miring ke kanan dan wajah menghadap kiblat.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Tutup liang lahad dengan papan atau material lainnya sebelum ditimbun tanah.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Timbun kubur hingga membentuk gundukan setinggi satu jengkal.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Bacakan doa untuk jenazah setelah penguburan selesai.</span></li><span style=\"font-size: 14px;\">\r\n</span></ol><span style=\"font-size: 14px;\">\r\n</span></li><span style=\"font-size: 14px;\">\r\n</span></ul><h4><span style=\"font-size: 14px;\">5. </span><strong><span style=\"font-size: 14px;\">Berdoa dan Bersedekah untuk Jenazah</span></strong></h4><ul><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Setelah penguburan, disunnahkan untuk mendoakan jenazah agar diampuni dosa-dosanya dan diterima amal ibadahnya.</span></li><span style=\"font-size: 14px;\">\r\n</span><li><span style=\"font-size: 14px;\">Keluarga jenazah dianjurkan untuk bersedekah dan terus memohonkan doa bagi almarhum.</span></li><span style=\"font-size: 14px;\">\r\n</span></ul><p><span style=\"font-size: 14px;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</span></p><p><span style=\"font-size: 14px;\">Tahapan-tahapan ini mencerminkan keagungan ajaran Islam yang menghormati manusia bahkan setelah kematiannya.</span></p>');

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
(44, 'Bab Pendahuluan berhasil diubah!', '2025-01-17 16:54:05', 1);

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
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
