<?php
session_start();
$_SESSION["accresult"] = "";
// to change a session variable, just overwrite it
$servername = "localhost";
$username = "root";
$password = "";
$database = "artisan";
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
	  // collect value of input field
	  $webnewname = $conn -> real_escape_string($_POST['newname']);
	  $webnewpassword = $conn -> real_escape_string($_POST['newpassword']); 
	  
	  
	  $sql = "INSERT INTO login (username, password)
		VALUES ('$webnewname', '$webnewpassword')";

	if ($conn->query($sql) === TRUE) {
	  $_SESSION["accresult2"] = "Account details updated. Please login again to reflect changes";
	  header("Location: home.html");
	} else {
	  echo "Error: " . $sql . "<br>" . $conn->error;
	}
}
$conn -> close();
?>