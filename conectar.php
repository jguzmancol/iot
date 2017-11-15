<?php
function conex(){
$conexion = mysqli_connect("localhost","jguzman","oracle10g578213A","iot");

if (!$conexion) {
	    die('No se pudo conectar: ' . mysql_error());
}else{
	return $conexion;
}}

function cc($con){
mysqli_close($con);
}

function consulta_sql($con,$sql){
$query_r = mysqli_query($con,$sql);
return $query_r;
cc($con);
}

function insertData($con,$sql){
mysqli_query($con,$sql);
cc($con);
}

?>
