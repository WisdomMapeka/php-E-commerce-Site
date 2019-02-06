<?php
$totalquantity=0;
if (session_status() == PHP_SESSION_NONE) {
session_start();
}

$host = "localhost";
$user = "root";
$pass = "1234567wiz";
$database = "shopping";

$connect = mysqli_connect($host, $user, $pass , $database) or die
						("Please, check the server connection.");

$sess = session_id();
$query="select * from cart where cart_sess = '$sess'";
$results = mysqli_query($connect, $query) or die(mysql_error());
while ($row = mysqli_fetch_array($results, MYSQLI_ASSOC)) {
extract($row);
$totalquantity = $totalquantity + $cart_quantity;
}
echo $totalquantity;
?>