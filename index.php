<?php require_once 'Template/head.php';
if(isset($_SESSION['user'])){
	header('Location: pilih.php');
}else{
?>

<div class="container">
	<div id="row" class="row">
		<div class="col-md-3 col-sm-6">
		<img id="kpo" src="Assets\img\kpo.png" class="img-responsive" alt="Komisi Pemilihan OSIS">
		</div>
		<div class="col-md-3 col-sm-6">
			<p id="cara" class="pull-left">
				<b id="txt"><u>Cara Memilih :</u></b><br>
				Masukan ID dan Password yang sudah ditentukan oleh KPO untuk melakuakan pemilihan Ketua OSIS,
				pilih Calon Ketua OSIS dengan menekan tombol PILIH.
			</p>
		</div>
		<div class="col-md-6 col-sm-12">
			<h1>E-PILKETOS</h1><h1 id="h2">Pemilihan Ketua OSIS </br>SMK NURUL ISLAM JEPARA </br><?=date('Y'); ?></h1>
			<center>
				<div id="default" class="panel panel-default">
					<div class="panel-body">
						<form action="" method="post">
							<div class="form-group">
								<label for="username">ID Pemilih</label>
								<input type="text" name="username" class="form-control" autocomplete="off" placeholder="ID" autofocus>
							</div>
							<div class="form-group">
								<label for="password">Password</label>
								<input type="password" name="password" class="form-control" autocomplete="off" placeholder="Password">
							</div>
							<input type="submit" id="primary" name="login" class="btn btn-primary" value="Login">
						</form>
					</div>
				</div>
			</center>
		</div>
	</div>
</div>

<?php } require_once 'Template/foot.php'; ?>
