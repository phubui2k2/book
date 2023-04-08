<?php
    function check_login($username,$password){
        require('model/database.php');
        if ($username == '' && $password == '') return 'missingBoth';
        if ($username == '') return 'missingUsername';
        if ($password == '') return 'missingPassword';
        //search for email in database
        $search_username = "SELECT * FROM customers WHERE username = '$username'";
        $result_username = mysqli_query($conn, $search_username);
        if (mysqli_num_rows($result_username) == 0) return "username_Error";
        $username_Obj = mysqli_fetch_object($result_username);
        if ($username_Obj->password != $password) return "passwordErr";
        session_start();
        $_SESSION['username'] = $_POST['username'];
        $_SESSION['name'] = $username_Obj->name;
        return "good";
    }
?>