<?php
    $servername = "localhost";

    $username = "root";
    $password = "";
    $database = "";

    $conn = new mysqli($servername, $username, $password, $database);

    if ($conn -> connect_errno) {
        echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
        exit();
    }
    
?>