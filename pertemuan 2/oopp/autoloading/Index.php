<?php

require_once 'App/init.php';

// instasiasi
$Produk1 = new Komik("Naruto", "Masashi Kishimoto", "Shonen Jump", 30000, 100);
$Produk2 = new Game("Uncharted", "Neil Druckman", "Sony Computer", 250000, 50);

$cetakProduk = new CetakInfoProduk();
$cetakProduk->tambahProduk($Produk1);
$cetakProduk->tambahProduk($Produk2);
echo $cetakProduk->cetak();
