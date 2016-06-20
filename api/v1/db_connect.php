<?php

define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_HOST', 'localhost');
define('DB_NAME', 'school');

global $conn;
try {
$conn = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USERNAME,DB_PASSWORD);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
/*$sql_comm="SELECT * FROM news";
$result=$conn->query($sql_comm);
//if($result->rowCount() != NULL) echo '<strong>id title    body   status </strong><br>';
$json = array();
$json_array= array();

while($row = $result->fetch()){
	//echo "<i>".$row['id'].' '.$row['title'].' '.$row['body'].' '.$row['status'].' </i><br>';
	$json['id']=$row['id'];
	$json['title']=$row['title'];
	$json['body']=$row['body'];
	$json['status']=$row['status'];
	array_push($json_array, $json);
}
echo json_encode(array_values($json_array));
*/
//echo 'connected';
}catch(PDOException $e){
	//die($e.getMessage());
	die('notconnected '.$e->getMessage());

}

function getAllNews(){
	global $conn;
$sql_comm="SELECT * FROM news";
$result=$conn->query($sql_comm);
//if($result->rowCount() != NULL) echo '<strong>id title    body   status </strong><br>';
$json = array();
$json_array= array();

while($row = $result->fetch()){
	//echo "<i>".$row['id'].' '.$row['title'].' '.$row['body'].' '.$row['status'].' </i><br>';
	$json['id']=$row['id'];
	$json['title']=$row['title'];
	$json['body']=$row['body'];
	$json['status']=$row['status'];
	array_push($json_array, $json);
 }
echo json_encode(array_values($json_array));
}

getAllNews();

?>