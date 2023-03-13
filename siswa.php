<?php

session_start();
include('system/auth.php');
include('system/fungsi.php');
$auth = new Login;
$fungsi = new Fungsi;

if(!isset($_SESSION['siswa'])){
    header('location: index.php');
}

if(empty($_GET['aksi'])){
    header('location: siswa.php?aksi=dataku');
}


include('Layouts/header.php');

if($_GET['aksi'] == 'dataku'){
    include('user/dataku.php');
}

include('Layouts/footer.php');
?>
