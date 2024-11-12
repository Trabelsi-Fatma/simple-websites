<?php
$con=mysqli_connect("localhost","root")or die("problem connexion");
mysqli_select_db($con,bdvoiture1);
$num=$_post['num'];
$num=$_post['nom'];
$num=$_post['pren'];
$req=select* from voiture