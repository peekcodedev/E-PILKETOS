-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Okt 2024 pada 19.27
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pilketos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `user`, `pass`, `mail`) VALUES
(1, 'Administrator', 'admin', '$2y$10$DebigZP2keqA7vrn.OtHke5xpM836B28RYlVqbAqXUPPZ5cuwBOP2', 'mail@mail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon`
--

CREATE TABLE `calon` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `organisasi` varchar(50) NOT NULL,
  `visi` varchar(5000) NOT NULL,
  `misi` varchar(5000) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `hasil` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `calon`
--

INSERT INTO `calon` (`id`, `nama`, `kelas`, `organisasi`, `visi`, `misi`, `foto`, `hasil`) VALUES
(5, 'M. Rizqi Gunawan & Dekhy Ade Hikmawan', 'XI TKJ dan X TBSM', 'OSIS DAN PRAMUKA', '<p>Menjadikan OSIS sebagai tempat untuk menyuarakan aspirasi siswa.</p>', '<p>Menjadi wadah untuk mengembangkan keterampilan, kepemimpinan dan karakter siswa untuk mewujudkan lingkungan sekolah yang kreatif dan berdaya saing tinggi.</p>', '../Assets/img/calon/CALON 1.jpeg_1728324898.jpg', '0'),
(6, 'Zahrotul Anifa & A. Hendrik Ardiansyah', 'XI AKL & X TBSM', 'OSIS DAN PRAMUKA', '<p>Mewujudkan OSIS yang berwawasan luas, berkepribadian baik dan bergotong-royong.</p>\r\n<div id=\"simple-translate\" class=\"simple-translate-system-theme\">&nbsp;</div>', '<ul>\r\n<li>Mengembangkan bakat dan potensi siswa</li>\r\n<li>Meningkatkan daya baca di kalangan para siswa</li>\r\n<li>Menyelenggarakan kegiatan sosial yang berlandaskan asas gotong royong.</li>\r\n</ul>', '../Assets/img/calon/CALON 2.jpeg_1728324997.jpg', '0'),
(7, 'Siti Nisrina A.F & M. Darul Khuluq', 'XI AKL & X TKJ', 'OSIS DAN PRAMUKA', '<ul>\r\n<li>Menjadikan OSIS sebagai wadah penampungan dan memberikan aspirasi kepada siswa SMK NURUL ISLAM</li>\r\n<li>Membentuk karakter dan meningkatkan SDM di SMK NURUL ISLAM.</li>\r\n</ul>', '<ul>\r\n<li>Menyelenggarakan beberapa event - event di Hari besar (tertentu)</li>\r\n<li>Melanjutkan proker yang belum tercapai sebelumnya.</li>\r\n<li>Meningkatkan kinerja OSIS SMK NURUL ISLAM yang lebih berkualitas dan berintegritas</li>\r\n</ul>\r\n<div id=\"simple-translate\" class=\"simple-translate-system-theme\">&nbsp;</div>', '../Assets/img/calon/CALON 3.jpeg_1728325046.jpg', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `nis` char(10) NOT NULL,
  `nama2` varchar(25) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id`, `nis`, `nama2`, `nama`, `kelas`, `jk`, `status`) VALUES
(380, '236537', 'AFRI ARIF MUNDHOFAR', '236537', 'XI TSM', 'L', 1),
(381, '236538', 'AHMAD ALI ', '236538', 'XI TSM', 'L', 1),
(382, '236539', 'AHMAD ANDIKA KHOIRUL HUDA', '236539', 'XI TSM', 'L', 1),
(383, '236540', 'AHMAD MAULANA ATIF MUAFAK', '236540', 'XI TSM', 'L', 1),
(384, '236541', 'AHMAD NAFIUDDIN', '236541', 'XI TSM', 'L', 1),
(385, '236542', 'AHMAD NALAL IZZA', '236542', 'XI TSM', 'L', 1),
(386, '236544', 'AHMAD RIZKY FANDIKA PUTRA', '236544', 'XI TSM', 'L', 1),
(387, '236547', 'AHMAD ZAKY JUNIANTO', '236547', 'XI TSM', 'L', 1),
(388, '236548', 'ALFAREZA AZLUL RAMANA', '236548', 'XI TSM', 'L', 1),
(389, '236549', 'ALI MUKHIDIN ', '236549', 'XI TSM', 'L', 1),
(390, '236550', 'DENIS WAHYU SAPUTRO', '236550', 'XI TSM', 'L', 1),
(391, '236551', 'ERGALIH FATKHUSSANI', '236551', 'XI TSM', 'L', 1),
(392, '236552', 'FRENDY WAHYU SANTOSO', '236552', 'XI TSM', 'L', 1),
(393, '236553', 'GALANG EKA SAPUTRA', '236553', 'XI TSM', 'L', 1),
(394, '236554', 'IKHWANUL MUQORROBIN', '236554', 'XI TSM', 'L', 1),
(395, '236555', 'MIFTAKHUL MAJID', '236555', 'XI TSM', 'L', 1),
(396, '236556', 'MUHAMMAD ADITYA ', '236556', 'XI TSM', 'L', 1),
(397, '236557', 'MUHAMMAD AKMAL KHUSAINI', '236557', 'XI TSM', 'L', 1),
(398, '236558', 'MUHAMMAD DONI TRI PRASETY', '236558', 'XI TSM', 'L', 1),
(399, '236559', 'MUHAMMAD ILYAS', '236559', 'XI TSM', 'L', 1),
(400, '236560', 'MUHAMMAD LUDFIYANA SAPUTR', '236560', 'XI TSM', 'L', 1),
(401, '236561', 'MUHAMMAD RASYA ADITYA SAP', '236561', 'XI TSM', 'L', 1),
(402, '236562', 'MUHAMMAD REVAN MAULANA', '236562', 'XI TSM', 'L', 1),
(403, '236563', 'MUHAMMAD SYAHRIZAL YUSUF', '236563', 'XI TSM', 'L', 1),
(404, '236564', 'MUHHAMAD ARDANI ABIYUSA ', '236564', 'XI TSM', 'L', 1),
(405, '236565', 'NANDA TRISNAWAN', '236565', 'XI TSM', 'L', 1),
(406, '236566', 'RANGGA PERWIRA PANGESTU', '236566', 'XI TSM', 'L', 1),
(407, '236567', 'SAFRI SAMSUDIN', '236567', 'XI TSM', 'L', 1),
(408, '236568', 'SAHRIL MAULANA EKA SAPUTR', '236568', 'XI TSM', 'L', 1),
(409, '236569', 'SATRIO  YULIAN LEKSANA', '236569', 'XI TSM', 'L', 1),
(410, '236570', 'VINO SETIAWAN ', '236570', 'XI TSM', 'L', 1),
(411, '236571', 'WAHYU AJI SANTOSO', '236571', 'XI TSM', 'L', 1),
(412, '236572', 'YUSFA TAMAM WAHDIYUNA ', '236572', 'XI TSM', 'L', 1),
(413, '236529', 'CHERYL NAJWA AURELYA ', '236529', 'XI AKL', 'P', 1),
(414, '236530', 'EKA AULIA', '236530', 'XI AKL', 'P', 1),
(415, '236531', 'RENI KURNIA WATI', '236531', 'XI AKL', 'P', 1),
(416, '236532', 'ROSYIDAH', '236532', 'XI AKL', 'P', 1),
(417, '236533', 'SITI NISRINA AFIFATUL ALI', '236533', 'XI AKL', 'P', 1),
(418, '236534', 'TRIANA TOGATOROP', '236534', 'XI AKL', 'P', 1),
(419, '236535', 'YESIE IRMAYANTI', '236535', 'XI AKL', 'P', 1),
(420, '236536', 'ZAHROTUL ANIFAH', '236536', 'XI AKL', 'P', 1),
(446, '236573', 'A LAZUWAR FIRDAUS', '236573', 'XI TKJ', 'L', 1),
(447, '236574', 'ABIE YANSYAH', '236574', 'XI TKJ', 'L', 1),
(448, '236575', 'AHMAD DONY SETYAWAN', '236575', 'XI TKJ', 'L', 1),
(449, '236592', 'AHMAD SALABI', '236592', 'XI TKJ', 'L', 1),
(450, '236576', 'AHMAD SHOLIKUL RIZQI', '236576', 'XI TKJ', 'L', 1),
(451, '236578', 'ASTI AMELIA ', '236578', 'XI TKJ', 'P', 1),
(452, '236579', 'DIMAS RANDI WAHYUDA', '236579', 'XI TKJ', 'L', 1),
(453, '236580', 'FARISA AZKA MAULIDIYAH', '236580', 'XI TKJ', 'P', 1),
(454, '236581', 'FERI KURNIAWAN', '236581', 'XI TKJ', 'L', 1),
(455, '236582', 'M. HAMDAN AJIGUNA', '236582', 'XI TKJ', 'L', 1),
(456, '236583', 'MUHAMMAD PASYA ABDUS SALA', '236583', 'XI TKJ', 'L', 1),
(457, '236584', 'MUHAMMAD RASYA FERI IRWAN', '236584', 'XI TKJ', 'L', 1),
(458, '236585', 'MUHAMMAD RIZQI GUNAWAN', '236585', 'XI TKJ', 'L', 1),
(459, '236586', 'NOR ARIF SETIAWAN ', '236586', 'XI TKJ', 'L', 1),
(460, '236588', 'RETNO NOVI JULIANA', '236588', 'XI TKJ', 'P', 1),
(461, '236589', 'SELVI PUTRI AULIYA', '236589', 'XI TKJ', 'P', 1),
(462, '236590', 'SOFIA NAILAL MUNA', '236590', 'XI TKJ', 'P', 1),
(463, '236591', 'ZAKIYAHTUL MUNAWARAH', '236591', 'XI TKJ', 'P', 1),
(464, '236577', 'AISYAH NISWATUL MARIFAH', '236577', 'XI TKJ', 'P', 1),
(465, '246593', 'DINI MARSELINA', '246593', 'X AKL', 'P', 1),
(466, '246594', 'DUWI NOVAILIL TAQWA RILVA', '246594', 'X AKL', 'P', 1),
(467, '246595', 'JUWANITA VIKA AGUSTINA', '246595', 'X AKL', 'P', 1),
(468, '246596', 'KHOIRUN NISA', '246596', 'X AKL', 'P', 1),
(469, '246597', 'NEYSILA RAMADHANI', '246597', 'X AKL', 'P', 1),
(470, '246598', 'RINI AYU KUMALA SARI', '246598', 'X AKL', 'P', 1),
(471, '246599', 'RISMA WULANSARI', '246599', 'X AKL', 'P', 1),
(472, '246600', 'SAFA MAULUDIYAH', '246600', 'X AKL', 'P', 1),
(473, '246601', 'SIFAUL KHOIRUNISA', '246601', 'X AKL', 'P', 1),
(474, '246639', 'MUTIA FITRIANI', '246639', 'X AKL', 'P', 1),
(475, '246603', 'ADEK SAPUTRA', '246603', 'X TSM', 'L', 1),
(476, '246604', 'AFIAN SAPUTRA', '246604', 'X TSM', 'L', 1),
(477, '246605', 'AHMAD AGUNG DERMAWAN', '246605', 'X TSM', 'L', 1),
(478, '246607', 'AHMAD FAREL SYAIFUDIN', '246607', 'X TSM', 'L', 1),
(479, '246608', 'AHMAD FATKHUR ROZI', '246608', 'X TSM', 'L', 1),
(480, '246609', 'AHMAD HENDRIK ARDIANSYAH', '246609', 'X TSM', 'L', 1),
(481, '246610', 'AHMAD KHAFIDUL LUKMAN', '246610', 'X TSM', 'L', 1),
(482, '246611', 'AHMAD NOR SHOLEH', '246611', 'X TSM', 'L', 1),
(483, '246612', 'AHMAD RAIHAN DZIYAUL HAQ ', '246612', 'X TSM', 'L', 1),
(484, '246613', 'AHMAD RIFAN', '246613', 'X TSM', 'L', 1),
(485, '246614', 'ARIS YUSUF ARIYANTO', '246614', 'X TSM', 'L', 1),
(486, '246615', 'DEKHY ADE HIKMAWAN', '246615', 'X TSM', 'L', 1),
(487, '246616', 'DIVO AMRIYADI SAPUTRA', '246616', 'X TSM', 'L', 1),
(488, '246617', 'FARISQI SAPUTRA', '246617', 'X TSM', 'L', 1),
(489, '246618', 'M DIMAS KURNIA RAMADHAN', '246618', 'X TSM', 'L', 1),
(490, '246619', 'MUHAMAD AMIRUL HUDA', '246619', 'X TSM', 'L', 1),
(491, '246620', 'MUHAMMAD ARFAN SYARIF', '246620', 'X TSM', 'L', 1),
(492, '246621', 'MUHAMMAD DARUL KHULUQ', '246621', 'X TSM', 'L', 1),
(493, '246622', 'MUHAMMAD FAIS ALDI AKIYAR', '246622', 'X TSM', 'L', 1),
(494, '246623', 'MUHAMMAD HENDRI DANANG AF', '246623', 'X TSM', 'L', 1),
(495, '246624', 'MUHAMMAD RENDY AMIRULLAH', '246624', 'X TSM', 'L', 1),
(496, '246625', 'MUHAMMAD REYHANUL WAHAB', '246625', 'X TSM', 'L', 1),
(497, '246626', 'MUHAMMAD REZKY PRATAMA', '246626', 'X TSM', 'L', 1),
(498, '246627', 'MUHAMMAD RIKO SAPUTRA ', '246627', 'X TSM', 'L', 1),
(499, '246628', 'MUHAMMAD RIZQI ADITYA IRA', '246628', 'X TSM', 'L', 1),
(500, '246630', 'MUHAMMAD UMAR AINUL AMIN', '246630', 'X TSM', 'L', 1),
(501, '246631', 'RAKA EKA FARIS APRILIAN', '246631', 'X TSM', 'L', 1),
(502, '246632', 'RIFKI MAULANA RUSDIANSAH', '246632', 'X TSM', 'L', 1),
(503, '246633', 'SAFTA SIFA MAULANA', '246633', 'X TSM', 'L', 1),
(504, '246634', 'YOGI FINANDA', '246634', 'X TSM', 'L', 1),
(505, '246634', 'DIMAS ANDREAN SAPUTRA', '246634', 'X TKJ', 'L', 1),
(506, '246635', 'MAULANA RIZKI SAMPURNA AJ', '246635', 'X TKJ', 'L', 1),
(507, '246636', 'MUHAMMAD AMIRUL WILDAN AL', '246636', 'X TKJ', 'L', 1),
(508, '246637', 'MUHAMMAD FAHRI ARDIANSYAH', '246637', 'X TKJ', 'L', 1),
(509, '246638', 'MUHAMMAD ANNUR DAFA', '246638', 'X TKJ', 'L', 1),
(510, '226473', 'Anindita Zahrotus Sita', '226473', 'XII AKL', 'P', 1),
(511, '226474', 'Atika Sari Devi', '226474', 'XII AKL', 'P', 1),
(512, '226475', 'Desy Nirmala Putri', '226475', 'XII AKL', 'P', 1),
(513, '226476', 'Dwi Cahyono', '226476', 'XII AKL', 'L', 1),
(514, '226477', 'Fela Fuji Lestari', '226477', 'XII AKL', 'P', 1),
(515, '226478', 'Kamila Nuri Cahyani', '226478', 'XII AKL', 'P', 1),
(516, '226479', 'Kayla Zahrotun Nisa ', '226479', 'XII AKL', 'P', 1),
(517, '226480', 'Marcelia Putri Lestari', '226480', 'XII AKL', 'P', 1),
(518, '226481', 'Muhammad Rico Saputra', '226481', 'XII AKL', 'L', 1),
(519, '226482', 'Nova Febriyanti', '226482', 'XII AKL', 'P', 1),
(520, '226483', 'Siti Muthmainnah', '226483', 'XII AKL', 'P', 1),
(521, '226484', 'Afansa Dila Sugiarto', '226484', 'XII TSM', 'L', 1),
(522, '226485', 'Ahmad David Saputra', '226485', 'XII TSM', 'L', 1),
(523, '226486', 'Ahmad Mauladani Syafii', '226486', 'XII TSM', 'L', 1),
(524, '226487', 'Ahmad Viki Maulana', '226487', 'XII TSM', 'L', 1),
(525, '226489', 'Andika Tripratama Saputra', '226489', 'XII TSM', 'L', 1),
(526, '226490', 'Angga Nugroho', '226490', 'XII TSM', 'L', 1),
(527, '226492', 'Diki Saputra', '226492', 'XII TSM', 'L', 1),
(528, '226493', 'Dwi Imam Prayoga', '226493', 'XII TSM', 'L', 1),
(529, '226495', 'Ikmal Akbar', '226495', 'XII TSM', 'L', 1),
(530, '226496', 'Jawahir Khalimal Alam', '226496', 'XII TSM', 'L', 1),
(531, '226497', 'M. Deny Anjas Firmansyah', '226497', 'XII TSM', 'L', 1),
(532, '226498', 'M. Ilham Saputra', '226498', 'XII TSM', 'L', 1),
(533, '226499', 'M.Sigit Aqila', '226499', 'XII TSM', 'L', 1),
(534, '226503', 'Muhammad Rizal Saputro', '226503', 'XII TSM', 'L', 1),
(535, '226504', 'Muhammad Zainul Muali', '226504', 'XII TSM', 'L', 1),
(536, '226505', 'Riski Bagas Pratama', '226505', 'XII TSM', 'L', 1),
(537, '226506', 'Syahrul Adam', '226506', 'XII TSM', 'L', 1),
(538, '226507', 'Wisnu Wahid Walidani', '226507', 'XII TSM', 'L', 1),
(539, '226508', 'Zaenal Arifin', '226508', 'XII TSM', 'L', 1),
(540, '226509', 'Ahsinul Khuluq', '226509', 'XII TKJ', 'L', 1),
(541, '226510', 'Devi Rismayanti', '226510', 'XII TKJ', 'P', 1),
(542, '226511', 'Erlangga Aditya Pratama', '226511', 'XII TKJ', 'L', 1),
(543, '226513', 'Maftukhatur Rizqia', '226513', 'XII TKJ', 'L', 1),
(544, '226514', 'Muhammad Ikhfaru', '226514', 'XII TKJ', 'L', 1),
(545, '226515', 'Muhammad Reza Faiq Muamma', '226515', 'XII TKJ', 'L', 1),
(546, '226516', 'Raka Pandu Saputra', '226516', 'XII TKJ', 'L', 1),
(547, '226517', 'Reza Ristiani Shifa', '226517', 'XII TKJ', 'L', 1),
(548, '226518', 'Riski Khoirul Umar', '226518', 'XII TKJ', 'L', 1),
(549, '226519', 'Sintiya Novia', '226519', 'XII TKJ', 'P', 1),
(550, '226520', 'Siti Fadia Meisaroh', '226520', 'XII TKJ', 'P', 1),
(551, '226521', 'Siti Kholisatun Rondiyah', '226521', 'XII TKJ', 'P', 1),
(552, '226522', 'Tirta Kurniawan', '226522', 'XII TKJ', 'L', 1),
(553, '226524', 'Vicky Muhammad Satria', '226524', 'XII TKJ', 'L', 1),
(554, '226526', 'Zasqia Linailin Nawa', '226526', 'XII TKJ', 'P', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `calon`
--
ALTER TABLE `calon`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `calon`
--
ALTER TABLE `calon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=555;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
