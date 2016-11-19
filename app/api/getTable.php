<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "skillsnavigator";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$tableName = $_GET['tableName'];

$sql = "SELECT * FROM $tableName";
$result = mysqli_query($conn, $sql);

$temp = array();
$temp = $result->fetch_assoc();

echo $json_response = json_encode($temp);

mysqli_close($conn);
?>