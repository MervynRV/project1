<?php
include('connection.php');
$username = $_REQUEST['username'];
$password = $_REQUEST['password'];
$email = $_REQUEST['email'];

//to prevent from mysqli injection  
$username = stripcslashes($username);
$password = stripcslashes($password);
$email = stripcslashes($email);
$username = mysqli_real_escape_string($con, $username);
$password = mysqli_real_escape_string($con, $password);
$email = mysqli_real_escape_string($con, $email);

if (isset($_POST['username']) && ($_POST['password']) && ($_POST['email'])) {
    $sql = "insert into login (username, password, email) values ('$username', '$password', '$email')";
}
if ($con->query($sql) === TRUE) {
    header("Location: main.html");
    exit;
} else {
    echo "Error: Couldn't register" .mysqli_error($con);
}