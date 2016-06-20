<?php

define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_HOST', 'localhost');
define('DB_NAME', 'school');

global $conn;
try {
$conn = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USERNAME,DB_PASSWORD);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(PDOException $e){	
	die('notconnected '.$e->getMessage());
}

//getAllNews
function getAllNews(){
	global $conn;
	$sql_comm="SELECT * FROM news WHERE status NOT LIKE 'HIDE' ORDER BY id DESC";
	$result=$conn->query($sql_comm);	
	$json = array();
	$json_array= array();

	while($row = $result->fetch()){
		
		$json['id']=$row['id'];
		$json['title']=$row['title'];
		$json['body']=$row['body'];
		$json['status']=$row['status'];
		array_push($json_array, $json);
 	}
	echo json_encode(array_values($json_array));
}

function getNewsbyId($id){
	global $conn;
	$sql_comm="SELECT * FROM news WHERE id=".$id;
	$result=$conn->query($sql_comm);	
	$json = array();
	if($result->rowCount() == NULL) {		
		$json['error']='id not found';
		http_response_code(400);
	}
	while($row = $result->fetch()){		
		$json['id']=$row['id'];
		$json['title']=$row['title'];
		$json['body']=$row['body'];
		$json['status']=$row['status'];
		
 	}
	echo json_encode($json);
}

function getMaxId(){
	global $conn;
	$sql_comm="SELECT MAX(id) FROM news";
	$result=$conn->query($sql_comm);	
	$json = array();
	if($result->rowCount() == NULL) {		
		$json['error']='No records in News';
		http_response_code(400);
	}
	while($row = $result->fetch()){		
		$json['id']=$row['MAX(id)'];	
		
 	}
	echo json_encode($json);
}


function getNewsRange($id){
	global $conn;
	$sql_comm="SELECT * FROM news WHERE id>=".$id;
	$result=$conn->query($sql_comm);	
	$json = array();
	$json_array= array();
	if($result->rowCount() == NULL) {		
		$json['error']='id not found';
		array_push($json_array, $json);
		http_response_code(400);
	}
	while($row = $result->fetch()){
		
		$json['id']=$row['id'];
		$json['title']=$row['title'];
		$json['body']=$row['body'];
		$json['status']=$row['status'];
		array_push($json_array, $json);
 	}
	echo json_encode(array_values($json_array));	
}


if(isset($_GET['function'])){

	switch($_GET['function']){
		case 'MAX':
			getMaxId();
			break;
		case 'RANGE':
			if(isset($_GET['id'])){
				getNewsRange($_GET['id']);
			}else{
				http_response_code(400);				
			}
			
	}

}else if(isset($_GET['id'])){
	getNewsbyId($_GET['id']);
}else{
	getAllNews();
}

?>