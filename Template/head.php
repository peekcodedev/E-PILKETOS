<?php
require_once 'Core/init.php';
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
?>
<!DOCTYPE html>
<html lang="id">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>E-PILKETOS SMK NURUL ISLAM JEPARA</title>
	<link rel="stylesheet" href="Assets/css/bootstrap.min.css">
	<link rel="shortcut icon" href="Assets/img/icon.png">
	<link rel="stylesheet" href="Assets/css/index.css">
	<link rel="stylesheet" href="Assets/css/sweetalert.css">
	<script src="Assets/js/sweetalert.min.js"></script>
	<!-- <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
</head>
<body>

<?php
if(isset($_POST['login'])){
	$user = trim($_POST['username']);
	$pass = trim($_POST['password']);

	if(!empty($user) && !empty($pass)){
		// Fungsi Login_user diasumsikan sudah ada di Core/init.php
		if(Login_user($user, $pass)){
			$_SESSION['user'] = $user;
			header("Location: pilih.php");
			exit(); // Penting untuk menghentikan eksekusi lebih lanjut setelah redirect
		}else{
			echo '<script>swal("Oops...", "Username atau Password salah/tidak terdaftar/sudah memilih", "error");</script>';
		}
	}else{
		echo '<script>swal("Oops...", "Form tidak boleh kosong", "error");</script>';
	}
}

if(isset($_POST['id'])){
	$nis = $_POST['id'];
	$detail = mysqli_query($koneksi, "SELECT * FROM data WHERE nis='$nis'");
	$ss = mysqli_fetch_assoc($detail); // Menggunakan mysqli_fetch_assoc untuk mengambil data
}
?>

<nav id="nav" class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">
        <img style="height: 100%;" alt="Brand" src="Assets/img/ee.png">
      </a>
    </div>
    <ul class="nav navbar-nav navbar-right">
    	<li>
    		<img style="height: 100%;" src="Assets/img/user_.png">
    	</li>
    	<li><br>
	        <b id="txt" style="padding-top: 8px; color: #3c78b5;">Selamat Datang</b><br>
	        <i>
	        	<?php
	        	if(isset($_SESSION['user'])){
	        		$sesi = $_SESSION['user'];
	        		tampil($sesi); // Fungsi tampil diasumsikan sudah ada
	        	}
	        	?>
	        	<?php
	        	// Memastikan $ss sudah diinisialisasi dan memiliki data
	        	if(isset($ss['nama2'])){
	        		echo htmlspecialchars($ss['nama2']);
	        	}
	        	?>
	        </i>
        </li>
    </ul>
  </div>
</nav>
</body>
</html>