<?php
session_start();
$_SESSION["result"] = "";

// to change a session variable, just overwrite it
$servername = "localhost";
$username = "root";
$password = "";
$database = "trainmanager";
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
//echo "Connected successfully";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // collect value of input field
  $webname = $conn -> real_escape_string($_POST['username']);
  $webpassword = $conn -> real_escape_string($_POST['password']); 
 


	$query = "SELECT username, password FROM login WHERE username='$webname' AND password='$webpassword'";
	// Perform Query
	$result = $conn->query($query);
	// Check result
	// This shows the actual query sent to MySQL, and the error. Useful for debugging.
	if (!$result) {
		die($message);
	} 
	if ($result->num_rows > 0) {
	  // output data of each row
	  while($row = $result->fetch_assoc()) {
		$_SESSION["id"] = $row["username"];
		$_SESSION["password"] = $row["password"];
		$_SESSION["valid"] = "yes";
		$_SESSION["result"] = "";
		header("Location: home.html");
	  }
	} else {
		$_SESSION["result"] = "Invalid Phone / Password";
		$_SESSION["valid"] = "no";
		header("Location: index.html");
		//die();
	}
} 
$conn -> close();
?>