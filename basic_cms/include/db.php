<?php
	$host='localhost';
	$user='root';
	$pass='';
	$db='basic_cms';

 $con= new mysqli($host,$user,$pass,$db);

	if(!$con){
		die("connection failed:" .mysqli_connect_error());
	}




?>