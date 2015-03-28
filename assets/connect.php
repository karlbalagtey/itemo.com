<?php
 	$username = getenv('C9_USER');
 	$password = '';
 	$server = getenv('IP');
 	$db = 'c9';
	$dbport = 3306;
	
	$conn = mysqli_connect($server, $username, $password, $db, $dbport);

	if(!$conn){
		die (mysqli_error());
	} else{
		echo "connected sucessfully!";
	}

?>