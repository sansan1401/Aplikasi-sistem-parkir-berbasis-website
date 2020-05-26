<?php
include_once("function/helper.php");
include_once("function/function.php");
include_once('navbar.php');
$masuk = query("SELECT * FROM `kendaraan` INNER JOIN  jeniskendaraan ON kendaraan.jenis_id = jeniskendaraan.jenis_id WHERE keterangan = 'Masuk' ORDER BY keterangan ASC");
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Kendaraan Keluar</title>
	</head>
	<body>
		<div id="pebungkus">
			<div class="card">
				<h4 class="card-header">Kendaraan keluar</h4>
				<div class="card-body">
					<form action="" method="post">
						<input type="seacrh" name="keyword" placeholder="Cari Nomor Polisi" autofocus autocomplete="off" id="keyword">
					</form><br>
					<div class="table-responsive">
						<form  method="post" class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
							<table>
								<tr>
									<th>No</th>
									<th>Jenis Kendaraan</th>
									<th>Nomor Polisi</th>
									<th>Waktu Masuk</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
								<?php $i =1; ?>
								<!-- <?php mysqli_connect() ?> -->
								
								<?php foreach ($masuk as $msk): ?>
								
								
								
								<tr>
									<td><?php echo $i ?></td>
									<td><?php echo $msk["jeniskendaraan"] ?></td>
									<td><?php echo $msk["nomor_polisi"] ?></td>
									<td><?php echo $msk["waktu_masuk"] ?></td>
									<td><?php echo $msk["keterangan"] ?></td>
									<td>
										<?php ini_set('date.timezone', 'Asia/Jakarta');?>
										<a href='module/keluar/action.php?id=<?= $msk["kendaraan_id"]?>&bayar=<?=$msk["bayar"]?>&waktu=<?= date("Y-m-d H:i:s")?>' class="btn btn-primary" >Konfirmasi</a>
									</td>
								</tr>
								<?php $i++; ?>
								<?php endforeach ?>
							</table>
						</form>
					</div>
				</div>
				
			</div>
		</div>
		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/script.js"></script>
	</body>
</html>