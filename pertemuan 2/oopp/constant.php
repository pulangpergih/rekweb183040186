<?php

define('NAMA', 'Raka');

echo NAMA;
echo "<br>";
const UMUR = 20;
echo UMUR;

echo "<hr>";

class coba
{
    const NAMA = "Raka";
}

echo coba::NAMA;

echo "<hr>";

class coba1
{
    public $kelas = __CLASS__;
}

$obj = new coba1;
echo $obj->kelas;
