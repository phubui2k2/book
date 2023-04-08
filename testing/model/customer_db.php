<?php
    function checkLogin($phone, $password) {
        require('model/db.php');
        if ($phone == '' && $password == '') return 'missingBoth';
        if ($phone == '') return 'missingPhone';
        if ($password == '') return 'missingPassword';
        //search for email in database
        $searchPhone = "SELECT * FROM customers WHERE phone = '$phone'";
        $resultPhone = mysqli_query($con, $searchPhone);
        if (mysqli_num_rows($resultPhone) == 0) return "phoneErr";
        $phoneObj = mysqli_fetch_object($resultPhone);
        if ($phoneObj->password != $password) return "passwordErr";
        session_start();
        $_SESSION['phone'] = $_POST['phone'];
        $_SESSION['name'] = $phoneObj->name;
        return "good";
    }

    function checkSignUp($firstName, $lastName,$phone, $email, $password, $password2) {
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
            $resultPhone = mysqli_query($con, $searchPhone);
            if (mysqli_num_rows($resultPhone) != 0) $phoneErr = 'hasUsed';
            else $phoneErr = 'good';
        }

        //check email
        if (strlen($email) == 0) $emailErr='missing';
        else {
            $searchEmail = "SELECT * FROM customers WHERE email = '$email'";
            $resultEmail = mysqli_query($con, $searchEmail);
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
    function getCustomerByPhone($phone) {
        require('model/db.php');
        $searchPhone = "SELECT * FROM customers WHERE phone = '$phone'";
        $resultPhone = mysqli_query($con, $searchPhone);
        return json_encode(mysqli_fetch_object($resultPhone));
        
    }
    function addCustomer($firstName, $lastName,$phone, $email, $password) {
        //add customer to database
        require("model/db.php");
        $fullName = $firstName . ' ' . $lastName;
        $addInfo = "INSERT INTO customers (name, password, email, phone)
                    Value ('$fullName', '$password', '$email', '$phone')";
        $result = mysqli_query($con, $addInfo);
    }
    
    function getName($phone) {
        require('model/db.php');
        $searchPhone = "SELECT * FROM customers WHERE phone = '$phone'";
        $resultPhone = mysqli_query($con, $searchPhone);
        if (mysqli_num_rows($resultPhone) == 0) return "Undefinded";
        $phoneObj = mysqli_fetch_object($resultPhone);
        return $phoneObj->name;
    }
    
?>