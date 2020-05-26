<?php  

include_once("function/helper.php");
include_once("function/koneksi.php");

$username = $_POST["username"];
$password = $_POST["password"];

$query = mysqli_query($koneksi, "SELECT * FROM user WHERE username='$username' AND password='$password'");

if(mysqli_num_rows($query) == 0){
	header("Location: ".BASE_URL."index.php?notif=true");
}else{
	
	session_start();
	$_SESSION["login"] = true;

	header("location: ".BASE_URL."masuk.php");
};

?>