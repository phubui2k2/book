<?php
    function login($username,$password){
        require("../model/database.php");
        $username = stripslashes($username);
        $username = mysqli_real_escape_string($conn,$username);
        $password = stripslashes($password);
        $password = mysqli_real_escape_string($conn,$password);
    
        $query = "SELECT * FROM user WHERE userName == $username AND password == $password";
        $result = mysqli_query($conn, $query);
        if (mysqli_num_rows($result) == 1) return true;
    }
?>