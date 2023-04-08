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
    function check_signup($firstName, $lastName,$phone, $email, $password, $password2) {
        //check first name
        if (strlen($firstName) < 2 || strlen($firstName) > 30) $firstNameErr = 'length';
        else $firstNameErr = 'good';

        //check last name
        if (strlen($lastName) < 2 || strlen($lastName) > 30) $lastNameErr = 'length';
        else $lastNameErr = 'good'; 

        //check phone

        include('model/db.php');

        if (strlen($phone) == 0) $phoneErr='missing';
        else {
            $searchPhone = "SELECT * FROM customers WHERE phone = '$phone'";
            $resultPhone = mysqli_query($conn, $searchPhone);
            if (mysqli_num_rows($resultPhone) != 0) $phoneErr = 'hasUsed';
            else $phoneErr = 'good';
        }

        //check email
        if (strlen($email) == 0) $emailErr='missing';
        else {
            $searchEmail = "SELECT * FROM customers WHERE email = '$email'";
            $resultEmail = mysqli_query($conn, $searchEmail);
            if (mysqli_num_rows($resultEmail) != 0) $emailErr = 'hasUsed';
            else $emailErr = 'good';
        }

        //check password
        if (strlen($password) < 8 || strlen($password) > 16) $passwordErr = 'length';
        else $passwordErr = 'good';

        //check password 2
        if ($password != $password2) $password2Err = 'matching';
        else $password2Err = 'good';

        $errArr = array('firstNameErr' => $firstNameErr,
                        'lastNameErr' => $lastNameErr,
                        'phoneErr' => $phoneErr,
                        'emailErr' => $emailErr,
                        'passwordErr' => $passwordErr,
                        'password2Err' => $password2Err);
        return $errArr;
    }
    function addCustomer($firstName, $lastName,$phone, $email, $password) {
        //add customer to database
        require("model/db.php");
        $fullName = $firstName . ' ' . $lastName;
        $addInfo = "INSERT INTO customers (name, password, email, phone)
                    Value ('$fullName', '$password', '$email', '$phone')";
        $result = mysqli_query($con, $addInfo);
    }
?>