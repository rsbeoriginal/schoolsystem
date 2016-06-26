<?php

define('DB_USERNAME', 'rishi');
define('DB_PASSWORD', 'vissr@0797');
define('DB_HOST', 'schoolsystem.database.windows.net');
define('DB_NAME', 'School');

global $conn;
try {
//$conn = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USERNAME,DB_PASSWORD);
$conn = new PDO ("sqlsrv:server = ".DB_HOST.";Database = ".DB_NAME, DB_USERNAME,DB_PASSWORD);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(PDOException $e){	
	die('notconnected '.$e->getMessage());
}


function getAllTest(){
	global $conn;
	$sql_comm="SELECT * FROM MondayTestSchedule";
	$result=$conn->query($sql_comm);	
	$json = array();
	$json_array= array();

	while($row = $result->fetch()){
		
		$json['id']=$row['id'];
		$json['date']=$row['date'];
		$json['V']=$row['V'];
		$json['VI']=$row['VI'];
		$json['VII']=$row['VII'];
		$json['VIII']=$row['VIII'];
		$json['IX']=$row['IX'];
		$json['X']=$row['X'];
		array_push($json_array, $json);
 	}
	echo json_encode(array_values($json_array));
}

function getTestbyClass($class){
	global $conn;
	$sql_comm="SELECT id,date,".$class." FROM MondayTestSchedule";
	$result=$conn->query($sql_comm);	
	$json = array();
	if($result->rowCount() == NULL) {		
		$json['error']='id not found';
		http_response_code(400);
	}
	while($row = $result->fetch()){		
		$json['id']=$row['id'];
		$json['date']=$row['date'];
		$json[$class]=$row[$class];		
		
 	}
	echo json_encode($json);
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

}else if(isset($_GET['class'])){
	getTestbyClass($_GET['class']);
}else{
	getAllTest();
}

?>