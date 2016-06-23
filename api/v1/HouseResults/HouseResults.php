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

//getAllNews
function getAllCompetitionResults(){
	global $conn;
	$sql_comm="SELECT * FROM housecompetitionresults";
	$result=$conn->query($sql_comm);	
	$json = array();
	$json_array= array();

	while($row = $result->fetch()){
		
		$json['id']=$row['id'];
		$json['CompetitionId']=$row['CompetitionId'];
		$json['CompetitionName']=$row['CompetitionName'];
		$json['FirstHouse']=$row['FirstHouse'];
		$json['FirstStudent']=$row['FirstStudent'];
		$json['SecondHouse']=$row['SecondHouse'];
		$json['SecondStudent']=$row['SecondStudent'];
		$json['ThirdHouse']=$row['ThirdHouse'];
		$json['ThirdStudent']=$row['ThirdStudent'];
		array_push($json_array, $json);
 	}
	echo json_encode(array_values($json_array));
}

function getCompetitionbyId($id){
	global $conn;
	$sql_comm="SELECT * FROM housecompetitionresults WHERE id=".$id;
	$result=$conn->query($sql_comm);	
	$json = array();
	if($result->rowCount() == NULL) {		
		$json['error']='id not found';
		http_response_code(400);
	}
	while($row = $result->fetch()){		
		$json['id']=$row['id'];
		$json['CompetitionId']=$row['CompetitionId'];
		$json['CompetitionName']=$row['CompetitionName'];
		$json['FirstHouse']=$row['FirstHouse'];
		$json['FirstStudent']=$row['FirstStudent'];
		$json['SecondHouse']=$row['SecondHouse'];
		$json['SecondStudent']=$row['SecondStudent'];
		$json['ThirdHouse']=$row['ThirdHouse'];
		$json['ThirdStudent']=$row['ThirdStudent'];
 	}
	echo json_encode($json);
}

function getMaxId(){
	global $conn;
	$sql_comm="SELECT MAX(id) FROM housecompetitionresults";
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


function getCompetitionRange($id){
	global $conn;
	$sql_comm="SELECT * FROM housecompetitionresults WHERE id>=".$id;
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
		$json['CompetitionId']=$row['CompetitionId'];
		$json['CompetitionName']=$row['CompetitionName'];
		$json['FirstHouse']=$row['FirstHouse'];
		$json['FirstStudent']=$row['FirstStudent'];
		$json['SecondHouse']=$row['SecondHouse'];
		$json['SecondStudent']=$row['SecondStudent'];
		$json['ThirdHouse']=$row['ThirdHouse'];
		$json['ThirdStudent']=$row['ThirdStudent'];
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
				getCompetitionRange($_GET['id']);
			}else{
				http_response_code(400);				
			}
			
	}

}else if(isset($_GET['id'])){
	getCompetitionbyId($_GET['id']);
}else{
	getAllCompetitionResults();
}

?>