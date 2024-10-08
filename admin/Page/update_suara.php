<?php
include 'koneksi.php';

// Fungsi untuk mendapatkan jumlah suara masuk
$masuk = mysqli_num_rows(sudah());
$jumlah = mysqli_num_rows(jumlah());
$sudah = mysqli_num_rows(sudah());
$belum = mysqli_num_rows(belum());

$data = [
    'masuk' => $masuk,
    'jumlah' => $jumlah,
    'sudah' => $sudah,
    'belum' => $belum
];

echo json_encode($data);
?>
