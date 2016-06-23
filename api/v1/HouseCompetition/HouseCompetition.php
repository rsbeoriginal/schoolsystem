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

function getAllCompetitions(){
	global $conn;
	$sql_comm="SELECT * FROM HouseCompetition ORDER BY Id";
	$result=$conn->query($sql_comm);	
	$json = array();
	$json_array= array();

	while($row = $result->fetch()){
		
		$json['id']=$row['id'];
		$json['competition_id']=$row['competition_id'];
		$json['competition_name']=$row['competition_name'];
		$json['date']=$row['date'];		
		$json['day']=$row['day'];
		$json['no_of_students']=$row['no_of_students'];
		$json['type']=$row['type'];
		$json['duration']=$row['duration'];
		array_push($json_array, $json);
 	}
	echo json_encode(array_values($json_array));
}

function getGroupCompetitions($group){
	
	global $conn;
	//$str=str_replace('_','-',$group);
	$sql_comm="SELECT * FROM HouseCompetition WHERE group_sec='".$group."' ORDER BY Id";
	try{
		$result=$conn->query($sql_comm);
	}catch(Exception $e){
		echo $e->getMessage();
	}	
	$json = array();
	$json_array= array();

	while($row = $result->fetch()){
		
		$json['id']=$row['Id'];
		$json['competition_id']=$row['competition_id'];
		$json['competition_name']=$row['competition_name'];
		$json['date']=$row['date'];		
		$json['day']=$row['day'];
		$json['no_of_students']=$row['no_of_students'];
		$json['type']=$row['type'];
		$json['duration']=$row['duration'];
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

}else if(isset($_GET['group'])){
	getGroupCompetitions($_GET['group']);
}else{
	getAllCompetitions();
}

?>