<?php
$server_name = "localhost";
$username = "root";
$password = "root";
$db_name = "millionaire";

$connection =  mysqli_connect($server_name, $username, $password, $db_name);

if (!$connection) {
    die("error " . mysqli_connect_error());
}
$connection->set_charset("utf8mb4");

?>